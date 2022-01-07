#include "ProgressifAlgorithm.hpp"
#include <numeric> 
#include <algorithm>

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

Solution AlgoProgressif(const Graph& graph, int radius, int solCard){
    bool displayProfils = true;
    
    std::vector<int> W(2);
    W.at(1)=3;

    std::vector<int> profils = generateProfils(graph, radius, W);
    if(displayProfils){
        std::cout<<"profils:\n";
        for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
        {
            std::cout<<profils.at(vertex)<<" ";
            std::cout<<"\n";
        }
    }
    
    std::vector<int> sortedProfilsIndices(graph.getNbVertices());
    std::iota(std::begin(sortedProfilsIndices), std::end(sortedProfilsIndices), 0);
    sort(sortedProfilsIndices.begin(), sortedProfilsIndices.end(), [profils](const int lhs, const int rhs){
        return profils.at(lhs) > profils.at(rhs);
        }
    );

    if(displayProfils){
        for(auto v: sortedProfilsIndices)
            std::cout<<v<<" ";
        std::cout<<"\n";
    }

    Solution solution;
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