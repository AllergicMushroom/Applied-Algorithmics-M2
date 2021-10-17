#include "Graph.hpp"

#include <iostream>

Graph::Graph(const std::vector<std::vector<int>>& adjacencyList, const std::vector<int>& verticesColors) :
    mAdjacencyList(adjacencyList),
    mVerticesColors(verticesColors)
{
    clearConnectedComponents();
    computeDistances();
}

void Graph::clearConnectedComponents()
{

}

void Graph::computeDistances()
{
    /* Floyd-Warshall algorithm */
    mDistances = std::vector<std::vector<int>>(mAdjacencyList.size(), std::vector<int>(mAdjacencyList.size(), std::numeric_limits<short int>::max()));

    for (int vertex1 = 0; vertex1 < mAdjacencyList.size(); ++vertex1)
    {
        mDistances[vertex1][vertex1] = 0;

        for (int vertex2 : mAdjacencyList[vertex1])
        {
            mDistances[vertex1][vertex2] = mVerticesColors[vertex1] + mVerticesColors[vertex2];
        }
    }

    for (int vertex3 = 0; vertex3 < mAdjacencyList.size(); ++vertex3)
    {
        for (int vertex1 = 0; vertex1 < mAdjacencyList.size(); ++vertex1)
        {
            for (int vertex2 = 0; vertex2 < mAdjacencyList.size(); ++vertex2)
            {
                int distance = mDistances[vertex1][vertex3] + mDistances[vertex3][vertex2];
                if (mDistances[vertex1][vertex2] > distance)
                {
                    mDistances[vertex1][vertex2] = distance;
                }
            }
        }
    }
}

std::ostream& operator<<(std::ostream& out, const Graph& graph)
{
    out << "Adjacecy list:\n";
    for (int i = 0; i < graph.mAdjacencyList.size(); ++i)
    {
        out << i << " -> ";

        for (int j = 0; j < graph.mAdjacencyList[i].size() - 1; ++j)
        {
            out << graph.mAdjacencyList[i][j] << ", ";
        }

        out << graph.mAdjacencyList[i][graph.mAdjacencyList[i].size() - 1] << '\n';
    }

    out << "Shortest paths's distances:\n";
    for (int vertex1 = 0; vertex1 < graph.mAdjacencyList.size(); ++vertex1)
    {
        for (int vertex2 = 0; vertex2 < graph.mAdjacencyList.size(); ++vertex2)
        {
            out << graph.mDistances[vertex1][vertex2] << ' ';
        }
        out << '\n';
    }

    out << std::endl;
    return out;
}