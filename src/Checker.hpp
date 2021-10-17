#pragma once

#include "Graph.hpp"
#include "Solution.hpp"

class Checker
{
public:
    Checker() = default;
    ~Checker() = default;

    bool checkSolution(const Graph& graph, const Solution& solution, int distance);
};