#pragma once

#include "Graph.hpp"

class Checker
{
public:
    Checker() = default;
    ~Checker() = default;

    bool checkSolution(const Graph& graph, const std::vector<bool>& solution, int distance);
};