#pragma once

#include <vector>
#include <iostream>

class Graph
{
public:
    Graph() = delete;
    Graph(const std::vector<std::vector<int>>& adjacencyList, const std::vector<int>& verticesColors);

    ~Graph() = default;

    inline const std::vector<int>& getNeighbors(int vertex) const { return mAdjacencyList[vertex]; }

    inline int getColor(int vertex) { return mVerticesColors[vertex]; }
    inline int getNbVertices() const {return static_cast<int>(mAdjacencyList.size());}

    inline int getDistance(int vertex1, int vertex2) const { return mDistances[vertex1][vertex2]; }

    friend std::ostream& operator<<(std::ostream& out, const Graph& graph);

private:
    void clearConnectedComponents();
    void computeDistances();

private:
    std::vector<std::vector<int>> mAdjacencyList;
    std::vector<int> mVerticesColors;

    std::vector<std::vector<int>> mDistances;
};