#pragma once

#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

class AlgorithmMIP2 : public Algorithm
{
public:
    AlgorithmMIP2() = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;
};