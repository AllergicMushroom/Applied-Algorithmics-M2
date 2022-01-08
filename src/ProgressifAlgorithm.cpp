#include "ProgressifAlgorithm.hpp"
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

std::vector<bool> BruteForceW(std::vector<int> profils, std::vector<int> usefullIndices, int sizeSol, int sizeW)
{

    std::vector<bool> sol(usefullIndices.size(), 0);

    for (int j = 0; j < sizeSol; j++)
    {
        sol.at(j)=1;
    }
    int toMove = 0;
    int currentIdx = sizeSol-1;
    while(!checkSol(sol, profils, usefullIndices, sizeW)){
        // for(auto v: sol)
        //     std::cout<<v<<" ";
        // std::cout<<" idx:"<<currentIdx<<"\n";
        if(currentIdx == usefullIndices.size()-1)
        {
            toMove = 0;
            do{
                sol.at(currentIdx) = 0;
                currentIdx--;
                toMove++;
            }while(sol.at(currentIdx) == 1);
            while(sol.at(currentIdx-1) == 0){
                currentIdx--;
                if(currentIdx==0)
                {
                    return std::vector<bool>(usefullIndices.size(), 1);
                } 
            }
            sol.at(currentIdx-1) = 0;
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

    auto last = std::unique(sortedUniqueProfilsIndices.begin(), sortedUniqueProfilsIndices.end(), [profils](const int lhs, const int rhs){
        return profils.at(lhs) == profils.at(rhs);
        });
    sortedUniqueProfilsIndices.erase(last, sortedUniqueProfilsIndices.end());
    // TODO find a way to remove included profils elegantly using next line.
    // (profils.at(lhs)&profils.at(rhs)) == profils.at(rhs);
    if(displayProfils){
        for(auto v: sortedUniqueProfilsIndices)
            std::cout<<v<<" ";
        std::cout<<"\n";
    }
    return sortedUniqueProfilsIndices;
}

Solution AlgoProgressif(const Graph& graph, int radius, int solCard){
    bool displayProfils = true;
    
    std::vector<int> W(6);
    W.at(1)=1;
    W.at(2)=2;
    W.at(3)=3;
    W.at(4)=4;
    W.at(5)=5;

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
    Solution solution;
    std::vector<bool> tmp = BruteForceW(profils, sortedUniqueProfilsIndices, 1, 6);
    std::cout<<"brute force sol: ";
    for(auto v: tmp)
        std::cout<<v<<" ";
    std::cout<<"\n";
    std::cout<< "sol valid ? :"<< checkSol(tmp, profils, sortedUniqueProfilsIndices, W.size())<<"\n";
    return solution;
}

Solution ProgressifAlgorithm::solveMinCenters(const Graph& graph, int radius){
    // Solution solution;
    return AlgoProgressif(graph, radius, 11);

}


Solution ProgressifAlgorithm::solveMinRadius(const Graph& graph, int nbCenters){
    Solution solution;
    return solution;
}