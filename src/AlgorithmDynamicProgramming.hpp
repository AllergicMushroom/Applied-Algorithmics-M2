#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

class AlgorithmDynamicProgramming : public Algorithm
{
public:
    AlgorithmDynamicProgramming() = default;
    virtual ~AlgorithmDynamicProgramming() override = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;

private:
    std::vector<int> greedyIndependentSet(const Graph& graph);

    std::vector<std::vector<int>> transformToUnitGraph(const Graph& graph, int radius);
};
