#include "AlgorithmBruteForce.hpp"

bool AlgorithmBruteForce::checkSolution(const Graph& graph, const std::vector<int>& solution, int radius)
{
    for (int i = 0; i < graph.getNbVertices(); ++i)
    {
        int minDist = graph.getDistance(i, solution.at(0));

        for (int center : solution)
        {
            int dist = graph.getDistance(i, center);
            if (dist < minDist)
                minDist = dist;
        }

        if (minDist > radius)
            return false;
    }

    return true;
}


Solution AlgorithmBruteForce::solveMinCenters(const Graph& graph, int radius)
{
    Solution solution = Solution();

    for (int nbCenters = 1; nbCenters < graph.getNbVertices(); ++nbCenters)
    {
        std::vector<int> sol = std::vector<int>(nbCenters, 0);

        bool allTested = false;
        while (!checkSolution(graph, sol, radius) && !allTested)
        {
            sol.at(0)++;

            int index = 0;
            while (sol.at(index) >= graph.getNbVertices())
            {
                sol.at(index) = 0;
                if (index < nbCenters-1)
                {
                    index++;
                    sol.at(index)++;
                }
                else
                {
                    allTested = true;
                }
            }
        }

        if(checkSolution(graph, sol, radius))
        {
            solution.isValid = true;
            solution.centers = sol;
            return solution;
        }
    }
}

Solution AlgorithmBruteForce::solveMinRadius(const Graph& graph, int nbCenters)
{
    // Todo
    return Solution();
}