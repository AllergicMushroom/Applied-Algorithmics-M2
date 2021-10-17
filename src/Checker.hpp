#pragma once

#include "Graph.hpp"
#include "Solution.hpp"

class Checker
{
public:
    Checker() = default;
    ~Checker() = default;

    bool checkSolutionMinCenters(const Graph& graph, const Solution& solution, int radius);
    bool checkSolutionMinRadius(const Graph& graph, const Solution& solution, int nbCenters);
};