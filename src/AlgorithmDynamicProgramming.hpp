#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

#include <set>

class AlgorithmDynamicProgramming : public Algorithm
{
public:
    AlgorithmDynamicProgramming() = default;
    virtual ~AlgorithmDynamicProgramming() override = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;

private:
    std::set<int> greedyIndependentSet(const Graph& graph);

    Graph transformToUnitGraph(const Graph& graph, int radius);
};
