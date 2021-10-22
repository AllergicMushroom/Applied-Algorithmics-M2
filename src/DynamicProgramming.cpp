#include "DynamicProgramming.hpp"

std::vector<int> DynamicProgramming::greedyIndependentSet(const Graph &graph)
{
    std::vector<int> solution;
    std::vector<bool> markedVertices(graph.getNbVertices(), false);

    for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
    {
        if (!markedVertices[vertex])
        {
            solution.push_back(vertex);
            markedVertices[vertex] = true;
            for (int vertexNeighbor : graph.getNeighbors(vertex))
            {
                markedVertices[vertexNeighbor] = true;
            }
        }
    }

    return solution;
}

std::vector<std::vector<int>> DynamicProgramming::transformToUnitGraph(const Graph &graph, int radius)
{
    std::vector<std::vector<int>> adjacencyList(graph.getNbVertices(), std::vector<int>());

    for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
    {
        for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
        {
            if (graph.getDistance(vertex1, vertex2) <= radius)
            {
                adjacencyList[vertex1].push_back(vertex2);
            }
        }
    }
    return adjacencyList;
}
