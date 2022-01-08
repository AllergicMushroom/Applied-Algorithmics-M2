#pragma once

#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

class ProgressiveAlgorithm : public Algorithm
{
public:
    ProgressiveAlgorithm() = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;
};