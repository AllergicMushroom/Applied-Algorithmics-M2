#include "Algorithm.hpp"
#include "Graph.hpp"
#include "Solution.hpp"

class AlgorithmBranchAndBound : public Algorithm
{
public:
    AlgorithmBranchAndBound() = default;
    virtual ~AlgorithmBranchAndBound() override = default;

    virtual Solution solveMinCenters(const Graph& graph, int radius) override;
    virtual Solution solveMinRadius(const Graph& graph, int nbCenters) override;

private:
    Solution branchAndBound(const Graph& graph, std::vector<int>& partialSolution, int nbCenters);

    Graph transformToUnitGraph(const Graph& graph, int radius);
};
