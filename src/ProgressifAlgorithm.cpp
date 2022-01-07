#include "ProgressifAlgorithm.hpp"

std::vector<std::vector<bool>> generateProfils(const Graph& graph, int radius, std::vector<int> W){
    std::vector<std::vector<bool>> profils(graph.getNbVertices());
    for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
    {
        profils.at(vertex) = std::vector<bool>(W.size(), false);
        for (int uIndex = 0; uIndex < W.size(); uIndex++)
        {
            int u = W.at(uIndex);
            profils.at(vertex).at(uIndex) = (graph.getDistance(vertex,u) <= radius);
        }
        
    }
    return profils;
}

Solution AlgoProgressif(const Graph& graph, int radius, int solCard){
    bool displayProfils = true;
    
    std::vector<int> W(0);

    std::vector<std::vector<bool>> profils = generateProfils(graph, radius, W);


    if(displayProfils){
        std::cout<<"profils:\n";
        for (int vertex = 0; vertex < graph.getNbVertices(); vertex++)
        {
            for (int vertex2 = 0; vertex2 < W.size(); vertex2++)
            {
                std::cout<<profils.at(vertex).at(vertex2)<<" ";
            }
            std::cout<<"\n";
        }
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