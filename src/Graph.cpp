#include "Graph.hpp"

#include <chrono>
#include <iostream>

Graph::Graph(const std::vector<std::vector<int>>& adjacencyList, const std::vector<int>& verticesColors) :
    mAdjacencyList(adjacencyList)
{
    clearConnectedComponents();

    if (verticesColors.size() == adjacencyList.size())
    {
        mVerticesColors = verticesColors;
        computeDistances();
    }
    else
    {
        mVerticesColors = std::vector<int>(adjacencyList.size(), 0);
    }
}

void Graph::clearConnectedComponents()
{

}

void Graph::computeDistances()
{
    auto begin = std::chrono::steady_clock::now();
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
    auto end = std::chrono::steady_clock::now();
    std::cout << "Time used by Floyd-Warshall: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;
}

std::ostream& operator<<(std::ostream& out, const Graph& graph)
{
    out << "Adjacency list:\n";
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