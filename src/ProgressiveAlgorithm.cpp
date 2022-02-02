#include "ProgressiveAlgorithm.hpp"
#include "Checker.hpp"
#include <numeric> 
#include <algorithm>
#include <math.h> 

#include <sstream>
#include "gurobi_c++.h"

std::vector<unsigned long> generateProfils(const Graph& graph, int radius, const std::vector<int>& W){
    std::vector<unsigned long> profils(graph.getNbVertices(),0);
    for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
    {
        for (int uIndex = 0; uIndex < W.size(); uIndex++)
        {
            int u = W.at(uIndex);
            if(graph.getDistance(vertex,u) <= radius){
                unsigned long mask = 1 << uIndex;
                profils.at(vertex) = profils.at(vertex)|mask;
            }
        }
        
    }
    return profils;
}

void updateProfils(const Graph& graph, std::vector<unsigned long>& profils, int radius, std::vector<int>& W){
    for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
    {
        int u = W.at(W.size()-1);
        if(graph.getDistance(vertex,u) <= radius){
            unsigned long mask = (unsigned long) 1 << (W.size()-1);
            profils.at(vertex) = (profils.at(vertex)|mask);
        }
        
    }
}

bool checkSol(std::vector<bool> &sol, std::vector<unsigned long>& profils, std::vector<int> &usefullIndices, int sizeW){
    unsigned long value = 0;
    for (int index = 0; index < sol.size(); index++)
    {
        if(sol.at(index))
            value = (value | profils.at(usefullIndices.at(index)));
    }
    return value == (pow(2,sizeW)-1);
}

std::vector<bool> BruteForceW(std::vector<unsigned long> &profils, std::vector<int>& usefullIndices, int sizeSol, int sizeW)
{
    bool debug = false;

    if(sizeSol > sizeW) sizeSol = sizeW;
    if(sizeSol > usefullIndices.size()) sizeSol = usefullIndices.size();

    if(debug) std::cout<<"<ProgressiveAlgorithm::BruteForce> Launched with: |W| = " << sizeW<<", |sol| = " << sizeSol<<" |profiles| = " << usefullIndices.size() << ".\n";
    std::vector<bool> sol(usefullIndices.size(), 0);

    for (int j = 0; j < sizeSol; j++)
    {
        sol.at(j)=1;
    }
    int toMove = 0;
    if(checkSol(sol, profils, usefullIndices, sizeW)){
        if(debug) std::cout<<"<ProgressiveAlgorithm::BruteForce> Initial solution of size " << sizeSol<< " is valid.\n";
        return sol;
    }

    int currentIdx = sizeSol-1;
    int count = 1;
    if(debug) std::cout<<"<ProgressiveAlgorithm::BruteForce> Initialization done.\n";
    while(!checkSol(sol, profils, usefullIndices, sizeW)){
        count++;
        // for(auto v: sol)
        //     std::cout<<v<<" ";
        // std::cout<<" idx:"<<currentIdx<<"\n";
        if(currentIdx == usefullIndices.size()-1)
        {
            // std::cout<<"end of profiles reached.\n";
            toMove = 0;
            do{
                sol.at(currentIdx) = 0;
                currentIdx--;
                toMove++;
                if(currentIdx<0)
                    currentIdx = 0;
            }while(sol.at(currentIdx) == 1);
            // std::cout<<"current index: "<<currentIdx<<"\n";

            while(sol.at(currentIdx) == 0){
                if(currentIdx==0)
                {
                    if(debug) std::cout<<"<ProgressiveAlgorithm::BruteForce> No solution found for solutions of size " << sizeSol << ".\n";
                    return std::vector<bool>();
                } 
                currentIdx--;
            }
            // std::cout<<"current index: "<<currentIdx<<"\n";
            sol.at(currentIdx) = 0;
            currentIdx ++;
            for (int i = 0; i < toMove+1; i++)
            {
                sol.at(currentIdx) = 1;
                currentIdx++;
            }
            currentIdx--;
        }
        else{
            sol.at(currentIdx) = 0;
            sol.at(currentIdx+1) = 1;
            currentIdx++;
        }

    }
    if(debug) std::cout<<"<ProgressiveAlgorithm::BruteForce> Solution of size " << sizeSol << " found.\n";
    return sol;
}

std::vector<bool> PLNE(std::vector<unsigned long> &profils, std::vector<int>& usefullIndices, int sizeW)
{
    bool debug = false;

    std::vector<bool> solution(usefullIndices.size());

    GRBVar* x;
    
    try
    {
        GRBEnv env = GRBEnv(true);
        env.set(GRB_IntParam_OutputFlag, 0);
        env.start();

        GRBModel model = GRBModel(env);
        model.set(GRB_IntParam_OutputFlag, 0);
       
        x = new GRBVar[usefullIndices.size()];

        for (int vertex = 0; vertex < usefullIndices.size(); ++vertex)
        {
            std::stringstream ss;
            ss << "x[" << vertex << "]";
            x[vertex] = model.addVar(0.0, 1.0, 0.0, GRB_BINARY, ss.str());
        }

        GRBLinExpr obj = 0;
        for (int vertex = 0; vertex < usefullIndices.size(); ++vertex)
        {
            obj += x[vertex];
        }

        model.setObjective(obj);

        for (unsigned long vertex = 0; vertex < sizeW; ++vertex)
        {
            GRBLinExpr lhs = 0;
            for (int center = 0; center < usefullIndices.size(); ++center)
            {
                lhs += x[center] * (((profils[usefullIndices[center]] & ((unsigned long )1 << vertex)) == ((unsigned long )1 << vertex)));
            }
            model.addConstr(lhs >= 1);
        }

        model.set(GRB_DoubleParam_TimeLimit, 3600.0);
        model.set(GRB_IntParam_Threads, 8);
        
        model.optimize();

        int64_t status = model.get(GRB_IntAttr_Status);

        if (status == GRB_OPTIMAL || (status == GRB_TIME_LIMIT && model.get(GRB_IntAttr_SolCount) > 0))
        {
            for (int vertex = 0; vertex < usefullIndices.size(); ++vertex)
            {
                if (x[vertex].get(GRB_DoubleAttr_X) > 0.0)
                {
                    // std::cout << "x[" << vertex << "]: " << x[vertex].get(GRB_DoubleAttr_X) << '\n';
                    solution.at(vertex) = 1;
                }
            }
        }
        else
        {
            return std::vector<bool>(0);
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

std::vector<int> cleanProfiles(std::vector<unsigned long> profils,bool displayProfils=false){
    std::vector<int> sortedUniqueProfilsIndices(profils.size());
    std::iota(std::begin(sortedUniqueProfilsIndices), std::end(sortedUniqueProfilsIndices), 0);
    sort(sortedUniqueProfilsIndices.begin(), sortedUniqueProfilsIndices.end(), [profils](const int lhs, const int rhs){
        return profils.at(lhs) > profils.at(rhs);
        }
    );
    if(displayProfils){
        for(auto v: sortedUniqueProfilsIndices)
            std::cout<<v<<" ";
            std::cout<<"\n";
    }

    // Note that the following removes both the identical profiles, and the included consecutives profiles.
    auto last = std::unique(sortedUniqueProfilsIndices.begin(), sortedUniqueProfilsIndices.end(), [profils](const int lhs, const int rhs){
        return (profils.at(lhs)&profils.at(rhs)) == profils.at(rhs);
        });
    sortedUniqueProfilsIndices.erase(last, sortedUniqueProfilsIndices.end());
    // TODO find a way to remove included profils elegantly using next line.
// (profils.at(lhs)&profils.at(rhs)) == profils.at(rhs)
    return sortedUniqueProfilsIndices;
}

// return -1 if solution is realisable, and return the id of a non-covered vertex otherwise.
int isSolutionNotRealisable(const Graph& graph, int radius, Solution& solution){
    bool isCovered;
    for(int i = 0; i < graph.getNbVertices(); i++)
    {
        isCovered = false;
        for (int j = 0; j < solution.centers.size(); j++)
        {
            if(graph.getDistance(i,solution.centers.at(j)) <= radius){
                isCovered = true;
                break;
            }
        }
        if(isCovered == false)
            return i;
    }
    solution.isValid = true;
    return -1;
}

// return -1 if solution is realisable, and return the id of the farest non-covered vertex otherwise.
int isSolutionNotRealisableFarest(const Graph& graph, int radius, Solution& solution){
    std::vector<int> distances(graph.getNbVertices());
    for(int i = 0; i < graph.getNbVertices(); i++)
    {
        distances.at(i) = graph.getDistance(i,solution.centers.at(0));
        for (int j = 0; j < solution.centers.size(); j++)
        {
            if(graph.getDistance(i,solution.centers.at(j)) < distances.at(i))
                distances.at(i) = graph.getDistance(i,solution.centers.at(j));
            if(graph.getDistance(i,solution.centers.at(j)) <= radius){
                break;
            }
        }
    }
    int maxDist = distances.at(0);
    int index = 0;
    for(int i = 1; i < graph.getNbVertices(); i++){
        if(maxDist < distances.at(i) ){
            maxDist = distances.at(i);
            index = i;
        }
    }
    if(maxDist > radius)
        return index;
    solution.isValid = true;
    return -1;
}


Solution AlgoProgressive(const Graph& graph, int radius){
    bool displayProfils = false;
    Checker checker;
    Solution solution;
    std::vector<int> W{0, graph.getNbVertices()-1};

    std::vector<unsigned long> profils = generateProfils(graph, radius, W);
    while(W.size() <= graph.getNbVertices())
    {
        if(displayProfils){
            std::cout<<"profils:\n";
            for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
            {
                std::cout<<profils.at(vertex)<<" ";
                std::cout<<"\n";
            }
        }
        std::vector<int> sortedUniqueProfilsIndices = cleanProfiles(profils, displayProfils);
        std::vector<bool> tmp = PLNE(profils, sortedUniqueProfilsIndices, W.size());
        if(tmp.size() == 0) return Solution();

        std::vector<int> centers(0);
        for (int i = 0; i < tmp.size(); i++)
        {
            if(tmp.at(i) == true)
                centers.push_back(sortedUniqueProfilsIndices.at(i));
        }
        solution.centers = centers;
        int missingVertices = isSolutionNotRealisableFarest(graph, radius, solution);
        if(missingVertices == -1)
        {
            std::cout<<"W size: "<< W.size()<<"\n";
             return solution;
        }

        W.push_back(missingVertices);
        updateProfils(graph, profils, radius, W);
    }
    solution.centers = {};
    return solution;
}

Solution ProgressiveAlgorithm::solveMinCenters(const Graph& graph, int radius){
    Solution bestSol = AlgoProgressive(graph, radius);
    Checker checker;
    if( bestSol.centers.size() > 0)
        bestSol.isValid = checker.checkSolutionMinCenters(graph, bestSol, radius);
    else
        std::cout<<"No solution\n";
    return bestSol;

}


Solution ProgressiveAlgorithm::solveMinRadius(const Graph& graph, int nbCenters){
    Solution solution;
    return solution;
}