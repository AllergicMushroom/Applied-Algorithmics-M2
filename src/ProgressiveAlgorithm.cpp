#include "ProgressiveAlgorithm.hpp"
#include "Checker.hpp"
#include <numeric> 
#include <algorithm>
#include <math.h> 

std::vector<int> generateProfils(const Graph& graph, int radius, std::vector<int> W){
    std::vector<int> profils(graph.getNbVertices(),0);
    for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
    {
        for (int uIndex = 0; uIndex < W.size(); uIndex++)
        {
            int u = W.at(uIndex);
            if(graph.getDistance(vertex,u) <= radius){
                int mask = 1 << uIndex;
                profils.at(vertex) = profils.at(vertex)|mask;
            }
        }
        
    }
    return profils;
}

bool checkSol(std::vector<bool> sol, std::vector<int> profils, std::vector<int> usefullIndices, int sizeW){
    int value = 0;
    for (int index = 0; index < sol.size(); index++)
    {
        if(sol.at(index))
            value = (value | profils.at(usefullIndices.at(index)));
    }
    return value == (pow(2,sizeW)-1);
}

// TODO take initial solution as parameter. Since the sol s returned by BruteForceW over W is the first valid one encountered, no solution before s will cover W Union {u}, so we can restart the algo from the previous sol.
// TODO maybe design a better algorithm, like branch n bound.
std::vector<bool> BruteForceW(std::vector<int> profils, std::vector<int> usefullIndices, int sizeSol, int sizeW)
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

std::vector<int> cleanProfiles(std::vector<int> profils,bool displayProfils=false){
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

Solution AlgoProgressive(const Graph& graph, int radius, int solCard){
    bool displayProfils = false;
    Checker checker;
    Solution solution;
    int trueSolCard = solCard;
    std::vector<int> W{0, graph.getNbVertices()-1};

    while(W.size() <= graph.getNbVertices())
    {
        std::vector<int> profils = generateProfils(graph, radius, W);

        if(displayProfils){
            std::cout<<"profils:\n";
            for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
            {
                std::cout<<profils.at(vertex)<<" ";
                std::cout<<"\n";
            }
        }

        std::vector<int> sortedUniqueProfilsIndices = cleanProfiles(profils, displayProfils);
        std::vector<bool> tmp = BruteForceW(profils, sortedUniqueProfilsIndices, solCard, W.size());
        if(tmp.size() == 0) return Solution();

        std::vector<int> centers(0);
        for (int i = 0; i < tmp.size(); i++)
        {
            if(tmp.at(i) == true)
                centers.push_back(sortedUniqueProfilsIndices.at(i));
        }
        solution.centers = centers;
        int missingVertices = isSolutionNotRealisable(graph, radius, solution);
        // for(auto v:centers)
        //     std::cout<<v<<" ";
        // std::cout<<" centers missing vertex: "<<missingVertices<<"\n";
        if(missingVertices == -1)
        {
             return solution;
        }

        W.push_back(missingVertices);
    }
    std::cout<<"No solution\n";
    return solution;
}

Solution ProgressiveAlgorithm::solveMinCenters(const Graph& graph, int radius){
    int lowerBound = 1;
    int upperBound = graph.getNbVertices();
    Solution bestSol;
    while(lowerBound < upperBound){
        int average = int((upperBound-lowerBound)/2);
        std::cout<<"<ProgressiveAlgorithm::solveMinCenters> Lower Bound = "<<lowerBound<<" Upper Bound = "<<upperBound<<"\n";
        Solution sol = AlgoProgressive(graph, radius, lowerBound+average);
        if(sol.isValid){
            bestSol = sol;
            upperBound = lowerBound + average;
        }
        else
            lowerBound = 1+lowerBound+average;
    }
    std::cout<<"best sol: \n";
    for(auto v:bestSol.centers)
            std::cout<<v<<" ";
        std::cout<<"\n";
    return bestSol;

}


Solution ProgressiveAlgorithm::solveMinRadius(const Graph& graph, int nbCenters){
    Solution solution;
    return solution;
}