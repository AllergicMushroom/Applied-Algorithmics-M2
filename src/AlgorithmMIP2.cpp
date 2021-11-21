#include "AlgorithmMIP2.hpp"

#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <iostream>
#include <fstream>
#include <algorithm>

#include "gurobi_c++.h"

class Callback : public GRBCallback
{
public:
    GRBVar* mX;
    const Graph& mGraph;

    Callback(GRBVar* x, const Graph& graph) :
        mX(x),
        mGraph(graph)
    {}

protected:
    void callback() {
        try {
            if (where == GRB_CB_MIPNODE) {
                if (getIntInfo(GRB_CB_MIPNODE_STATUS) == GRB_OPTIMAL)
                {
                    std::string results;
                    for (int i = 0; i < mGraph.getNbVertices(); ++i)
                    {
                        results += std::to_string(getNodeRel(mX[i])) + " ";
                    }

                    std::ofstream myFile;
                    myFile.open("relsols.txt", std::ios::out | std::ios::app);
                    myFile << results << std::endl;
                    myFile.close();
                }
            }
        }
        catch (GRBException e) {
            std::cout << "Error number: " << e.getErrorCode() << std::endl;
            std::cout << e.getMessage() << std::endl;
        }
        catch (...) {
            std::cout << "Error during callback" << std::endl;
        }
    }
};

Solution AlgorithmMIP2::solveMinCenters(const Graph& graph, int radius)
{
    std::vector<std::vector<bool>> isDistLessThanRadius = std::vector<std::vector<bool>>(graph.getNbVertices());
    for (int i = 0; i < graph.getNbVertices(); i++)
    {
        isDistLessThanRadius.at(i) = std::vector<bool>(graph.getNbVertices(), true);
    }

    for (int i = 0; i < graph.getNbVertices(); i++)
    {
        for (int j = i; j < graph.getNbVertices(); j++)
        {
            isDistLessThanRadius.at(i).at(j) = (graph.getDistance(i, j) <= radius);
            isDistLessThanRadius.at(j).at(i) = (graph.getDistance(i, j) <= radius);
        }
    }

    Solution solution = Solution();

    GRBVar* x;
    
    try
    {
        std::cout << "Creating the Gurobi environment... ";

        GRBEnv env = GRBEnv(true);
        env.start();

        std::cout << "done.\n";

        std::cout << "Creating the Gurobi model... ";

        GRBModel model = GRBModel(env);

        std::cout << "done.\n";

        std::cout << "Creating the variables... ";

        x = new GRBVar[graph.getNbVertices()];

        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            std::stringstream ss;
            ss << "x[" << vertex << "]";
            x[vertex] = model.addVar(0.0, 1.0, 0.0, GRB_BINARY, ss.str());
        }

        // --- Adding callback ---
        std::cout<<"--> Creating the callback"<<std::endl;
//        saveCallBack * myCallBack = new saveCallBack(x, graph.getNbVertices());
//        model.setCallback(myCallBack);
        std::cout << "done.\n";

        std::cout << "Creating the objective function... ";

        GRBLinExpr obj = 0;
        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            obj += x[vertex];
        }

        model.setObjective(obj);

        std::cout << "done.\n";

        std::cout << "Creating the constraints... ";

        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            GRBLinExpr lhs = 0;
            for (int center = 0; center < graph.getNbVertices(); ++center)
            {
                lhs += x[center] * isDistLessThanRadius[center][vertex];
            }
            model.addConstr(lhs >= 1);

            /* Neighboorhood reduction. */
            lhs = x[vertex];
            int count = 0;
            for (int neighbor = 0; neighbor < graph.getNbVertices(); ++neighbor)
            {
                if (isDistLessThanRadius[vertex][neighbor])
                {
                    lhs += x[neighbor];
                    count += 1;
                }
            }
            model.addConstr(lhs <= count);
        }

        /* Eliminate neighborhood variables */
        for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
        {
            for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
            {
                if (vertex1 == vertex2)
                {
                    continue;
                }

                bool neighborhoodIncluded = true;
                bool neighborhoodSame = true;
                for (int neighbor = 0; neighbor < graph.getNbVertices(); ++neighbor)
                {
                    if (isDistLessThanRadius[vertex1][neighbor])
                    {
                        /* N(vertex1) is not included in N(vertex2). */
                        if (!isDistLessThanRadius[vertex2][neighbor])
                        {
                            neighborhoodIncluded = false;
                            neighborhoodSame = false;
                            break;
                        }
                    }

                    if (isDistLessThanRadius[vertex2][neighbor])
                    {
                        if (!isDistLessThanRadius[vertex1][neighbor])
                        {
                            neighborhoodSame = false;
                        }
                    }
                }

                if (!neighborhoodIncluded)
                {
                    continue;
                }

                if (neighborhoodSame)
                {
                    model.addConstr(x[vertex1] + x[vertex2] <= 1);

                    GRBLinExpr lhs = 0;
                    for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
                    {
                        if (isDistLessThanRadius[vertex1][vertex])
                        {
                            lhs += x[vertex];
                        }
                    }
                    model.addConstr(lhs <= 1);
                }
                else
                {
                    model.addConstr(x[vertex1] == 0);
                }
            }
        }

        std::cout << "done.\n";

        std::cout << "Creating the callback... ";
        Callback* callback = new Callback(x, graph);
        model.setCallback(callback);
        std::cout << "done.\n";

        std::cout << "Configuring solver... ";

        model.set(GRB_DoubleParam_TimeLimit, 3600.0);
        model.set(GRB_IntParam_Threads, 1);

        std::cout << "done.\n";

        std::cout << "Running solver... ";

        model.optimize();
        model.write("model.lp");

        std::cout << "done.\n";

        int64_t status = model.get(GRB_IntAttr_Status);
        if (status == GRB_OPTIMAL || (status == GRB_TIME_LIMIT && model.get(GRB_IntAttr_SolCount) > 0))
        {
            solution.isValid = true;

            std::cout << "Success! Status: " << status << ".\n";

            std::cout << "Objective value: " << model.get(GRB_DoubleAttr_ObjVal) << '\n';

            for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
            {
                if (x[vertex].get(GRB_DoubleAttr_X) > 0.0)
                {
                    std::cout << "x[" << vertex << "]: " << x[vertex].get(GRB_DoubleAttr_X) << '\n';
                    solution.centers.push_back(vertex);
                }
            }
        }
        else
        {
            std::cout << "Fail! Status: " << status << ".\n";
        }
    }
    catch (GRBException e)
    {
        std::cout << "Gurobi failed with code " << e.getErrorCode() << ".\n";
        std::cout << e.getMessage() << '\n';
    }
    catch (...)
    {
        std::cout << "Gurobi failed with unknown exception.\n";
    }
    return solution;
}

Solution AlgorithmMIP2::solveMinRadius(const Graph& graph, int nbCenters)
{
    Solution solution;

    GRBVar r;
    GRBVar* x;
    GRBVar** c;

    try
    {
        std::cout << "Creating the Gurobi environment... ";

        GRBEnv env = GRBEnv(true);
        env.start();

        std::cout << "done.\n";

        std::cout << "Creating the Gurobi model... ";

        GRBModel model = GRBModel(env);

        std::cout << "done.\n";

        std::cout << "Creating the variables... ";

        int maxDist = 0;
        for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
        {
            for (int vertex2 = vertex1; vertex2 < graph.getNbVertices(); ++vertex2)
            {
                if (graph.getDistance(vertex1, vertex2) > maxDist)
                {
                    maxDist = graph.getDistance(vertex1, vertex2);
                }
            }
        }

        r = model.addVar(0.0, maxDist, 0.0, GRB_INTEGER, "r");

        x = new GRBVar[graph.getNbVertices()];
        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            std::stringstream ss;
            ss << "x[" << vertex << "]";
            x[vertex] = model.addVar(0.0, 1.0, 0.0, GRB_BINARY, ss.str());
        }

        c = new GRBVar * [graph.getNbVertices()];
        for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
        {
            c[vertex1] = new GRBVar[graph.getNbVertices()];
            for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
            {
                std::stringstream ss;
                ss << "c[" << vertex1 << "][" << vertex2 << "]";
                c[vertex1][vertex2] = model.addVar(0.0, 1.0, 0.0, GRB_BINARY, ss.str());
            }
        }

        std::cout << "done.\n";

        std::cout << "Creating the objective function... ";

        GRBLinExpr obj = r;
        model.setObjective(obj);

        std::cout << "done.\n";

        std::cout << "Creating the constraints... ";

        for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
        {
            for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
            {
                model.addConstr(graph.getDistance(vertex1, vertex2) * c[vertex1][vertex2] <= r);
            }
        }

        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            GRBLinExpr lhs = 0;
            for (int center = 0; center < graph.getNbVertices(); ++center)
            {
                lhs += c[center][vertex];
            }

            model.addConstr(lhs == 1);
        }

        for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
        {
            for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
            {
                model.addConstr(c[vertex1][vertex2] <= x[vertex1]);
            }
        }

        GRBLinExpr lhs = 0;
        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            lhs += x[vertex];
        }

        model.addConstr(lhs <= nbCenters);

        std::cout << "done.\n";

        std::cout << "Configuring solver... ";

        model.set(GRB_DoubleParam_TimeLimit, 600.0);
        model.set(GRB_IntParam_Threads, 24);

        std::cout << "done.\n";

        std::cout << "Running solver... ";

        model.optimize();
        model.write("model.lp");

        std::cout << "done.\n";

        int64_t status = model.get(GRB_IntAttr_Status);
        if (status == GRB_OPTIMAL || (status == GRB_TIME_LIMIT && model.get(GRB_IntAttr_SolCount) > 0))
        {
            solution.isValid = true;

            std::cout << "Success! Status: " << status << ".\n";

            std::cout << "Objective value: " << model.get(GRB_DoubleAttr_ObjVal) << '\n';

            for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
            {
                if (x[vertex].get(GRB_DoubleAttr_X) > 0.0)
                {
                    std::cout << "x[" << vertex << "]: " << x[vertex].get(GRB_DoubleAttr_X) << '\n';
                    solution.centers.push_back(vertex);
                }
            }

            for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
            {
                for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
                {
                    if (c[vertex1][vertex2].get(GRB_DoubleAttr_X) > 0.0)
                    {
                        std::cout << "c[" << vertex1 << "][" << vertex2 << "]: " << c[vertex1][vertex2].get(GRB_DoubleAttr_X) << '\n';
                    }
                }
            }
        }
        else
        {
            std::cout << "Fail! Status: " << status << ".\n";
        }
    }
    catch (GRBException e)
    {
        std::cout << "Gurobi failed with code " << e.getErrorCode() << ".\n";
        std::cout << e.getMessage() << '\n';
    }
    catch (...)
    {
        std::cout << "Gurobi failed with unknown exception.\n";
    }

    return solution;
}
