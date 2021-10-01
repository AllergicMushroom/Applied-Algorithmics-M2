#include "Checker.hpp"

#include <iostream>
#include <limits>

bool Checker::checkSolution(const Graph& graph, const std::vector<bool>& solution, int maxDistance)
{
    for (int i = 0; i < graph.getNbVertices(); ++i)
    {
        int minDist = std::numeric_limits<int>::infinity();

        for (bool centre : solution)
        {
            if (centre)
            {
                int dist = graph.getDistance(i, centre);
                if (dist < minDist)
                {
                    minDist = dist;
                }
            }
        }

        if (minDist < maxDistance)
        {
            std::cerr << "Vertex " << i << " doesn't have a vaccination centre near enough.\n";
            return false;
        }
    }

    return true;
}