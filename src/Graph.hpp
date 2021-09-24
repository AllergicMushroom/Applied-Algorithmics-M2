#pragma once

#include <vector>

class Graph
{
    public:
        Graph() = delete;
        Graph(const std::vector<std::vector<int>>& adjancecyList, const std::vector<int>&  verticesColors) :
            mAdjancencyList(adjancecyList),
            mVerticesColors(verticesColors)
        {}

        inline const std::vector<int>& getNeighbors(int vertex) { return mAdjancencyList[vertex]; }
        inline int getColor(int vertex) { return mVerticesColors[vertex]; }

    private:
        std::vector<std::vector<int>> mAdjancencyList;
        std::vector<int> mVerticesColors; /* Used to compute distance between vertices, == 1 if graph wasn't read from image. */
};