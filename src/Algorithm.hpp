#pragma once

#include "Graph.hpp"
#include "Solution.hpp"

class Algorithm
{
public:
    virtual Solution solve(const Graph& graph) = 0;
};