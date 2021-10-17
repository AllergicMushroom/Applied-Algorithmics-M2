#pragma once

#include "Graph.hpp"
#include "Solution.hpp"

class Algorithm
{
public:
    Algorithm() = default;
    virtual ~Algorithm() = default;
    
    virtual Solution solveMinCenters(const Graph& graph, int radius) = 0;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) = 0;
};