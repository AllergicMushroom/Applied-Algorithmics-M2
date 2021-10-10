#pragma once

#include <vector>
#include <lemon/list_graph.h>
#include <lemon/concepts/digraph.h>


class Graph
{
    public:
        Graph() = delete;
        Graph(const std::vector<std::vector<int>>& adjancecyList, const std::vector<int>&  verticesColors) :
            mAdjancencyList(adjancecyList),
            mVerticesColors(verticesColors)
<<<<<<< HEAD
        {
            generateDigraph();
            ProcessDistances();
        }
        void printGraph();
        void ProcessDistances();
        void generateDigraph();
        inline const std::vector<int>& getNeighbors(int vertex) { return mAdjancencyList[vertex]; }
        inline int getColor(int vertex) { return mVerticesColors[vertex]; }
        inline int getNbVertices(){return mAdjancencyList.size();}
        inline int getDistance(int vertex1, int vertex2) const { return mVerticesColors[vertex1] + mVerticesColors[vertex2]; }
    private:
        std::vector<std::vector<int>> mAdjancencyList;
        std::vector<int> mVerticesColors; /* Used to compute distance between vertices, == 1 if graph wasn't read from image. */
        std::vector<std::vector<int>> mDistance;
        lemon::ListDigraph* mGraph;
        std::vector<lemon::ListDigraph::Node> mNodes;
};