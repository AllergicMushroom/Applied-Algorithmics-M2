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

        inline int getNbVertices() const { return mAdjancencyList.size(); }
        
        inline const std::vector<int>& getNeighbors(int vertex) const { return mAdjancencyList[vertex]; }
        inline int getDistance(int vertex1, int vertex2) const { return mVerticesColors[i] + mVerticesColors[j]; }
        inline int getColor(int vertex) const { return mVerticesColors[vertex]; }

        void printGraph();
    private:
        std::vector<std::vector<int>> mAdjancencyList;
        std::vector<int> mVerticesColors; /* Used to compute distance between vertices, == 1 if graph wasn't read from image. */
};