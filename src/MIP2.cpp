#include "MIP2.hpp"

#include <sstream>

#include "gurobi_c++.h"

Solution MIP2::solveMinCenters(const Graph& graph, int radius) {
    std::vector<std::vector<bool>*>* isDistLessThanRadius = new std::vector<std::vector<bool>*>(graph.getNbVertices());
    for (size_t i = 0; i < graph.getNbVertices(); i++)
        isDistLessThanRadius->at(i) = new std::vector<bool>(graph.getNbVertices(), true);
    for (size_t i = 0; i < graph.getNbVertices(); i++)
    {
        for (size_t j = i+1; j < graph.getNbVertices(); j++){
            isDistLessThanRadius->at(i)->at(j) = (graph.getDistance(i,j) <= radius);
            isDistLessThanRadius->at(j)->at(i) = (graph.getDistance(i,j) <= radius);
        }
    }
    std::cout<<"isDistLessThanArray generated.\n";
    Solution solution = Solution();

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

        x = new GRBVar[graph.getNbVertices()];
        for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
        {
            std::stringstream ss;
            ss << "x[" << vertex << "]";
            x[vertex] = model.addVar(0.0, 1.0, 0.0, GRB_BINARY, ss.str());
        }
        
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
                    lhs += x[center]*isDistLessThanRadius->at(center)->at(vertex);
            }
            model.addConstr(lhs >= 1);
        }

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

Solution MIP2::solveMinRadius(const Graph& graph, int nbCenters){
    return Solution();
}