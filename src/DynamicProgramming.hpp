#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

class DynamicProgramming : public Algorithm
{
public:
    DynamicProgramming() = default;
    virtual ~DynamicProgramming() override = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;

private:
    std::vector<int> greedyIndependentSet(const Graph& graph);
};
