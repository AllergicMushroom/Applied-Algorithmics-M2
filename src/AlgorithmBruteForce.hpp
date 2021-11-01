#pragma once

#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

class AlgorithmBruteForce : public Algorithm
{
public:
    AlgorithmBruteForce() = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;

private:
    bool checkSolution(const Graph& graph, const std::vector<int>& solution, int radius);
};