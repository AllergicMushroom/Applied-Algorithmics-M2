#include "Checker.hpp"

#include <iostream>

bool Checker::checkSolutionMinCenters(const Graph& graph, const Solution& solution, int radius)
{
    for (int i = 0; i < graph.getNbVertices(); ++i)
    {
        int minDist = graph.getDistance(i, solution.centers.at(0));;

        for (int center : solution.centers)
        {
            int dist = graph.getDistance(i, center);
            if (dist < minDist)
            {
                minDist = dist;
            }
        }

        if (minDist > radius)
        {
            std::cerr << "Vertex " << i << " doesn't have a vaccination centre near enough.\n";
            return false;
        }
    }

    return true;
}

bool Checker::checkSolutionMinRadius(const Graph& graph, const Solution& solution, int nbCenters)
{
    return solution.centers.size() <= nbCenters;
}