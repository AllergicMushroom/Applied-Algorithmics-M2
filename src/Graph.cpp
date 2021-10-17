#include "Graph.hpp"

#include <iostream>

Graph::Graph(const std::vector<std::vector<int>>& adjacencyList, const std::vector<int>& verticesColors) :
    mAdjacencyList(adjacencyList),
    mVerticesColors(verticesColors)
{

}

void Graph::computeDistances()
{
    /* Floyd-Warshall algorithm */
}

std::ostream& operator<<(std::ostream& out, const Graph& graph)
{
    for (int i = 0; i < graph.mAdjacencyList.size(); ++i)
    {
        out << i << " -> ";

        for (int j = 0; j < graph.mAdjacencyList[i].size() - 1; ++j)
        {
            out << graph.mAdjacencyList[i][j] << ", ";
        }

        out << graph.mAdjacencyList[i][graph.mAdjacencyList[i].size() - 1] << std::endl;
    }

    return out;
}