#include "AlgorithmDynamicProgramming.hpp"

#include "AlgorithmBruteForce.hpp"

#include <algorithm>
#include <chrono>
#include <functional>

Solution AlgorithmDynamicProgramming::solveMinCenters(const Graph& graph, int radius)
{
    Solution solution;

    Graph unweightedGraph = transformToUnitGraph(graph, radius);

    std::vector<int> ISet = greedyIndependentSet(unweightedGraph);
    std::vector<int> JSet;
    for (int vertex = 0; vertex < unweightedGraph.getNbVertices(); ++vertex)
    {
        /* If vertex isn't in I, add it to J. */
        if (std::find(ISet.begin(), ISet.end(), vertex) == ISet.end())
        {
            JSet.push_back(vertex);
        }
    }

    /* 31 because never use unsigned int. */
    if (JSet.size() > 31)
    {
        std::cerr << "Dynamic program: J subset is too big. Consider using another solve method.\n";
        solution.isValid = false;
        return solution;
    }

    double z = 0.2271 * unweightedGraph.getNbVertices();

    //if (ISet.size() >= z)
    if (true)
    {
        struct D
        {
            /* Bit representation */
            int X = -1;

            /* Number of allowed vertices from I. */
            int l = -1;

            /*
            * Bit representation of I's subset.
            * -1 indicates that it doesn't exist.  
            */
            int opt = -1;
            int optSize = -1;
        };

        /* Dxl[X][0] is wasted space for clarity. */
        std::vector<std::vector<D>> Dxl = std::vector<std::vector<D>>(std::pow(2, JSet.size()), std::vector<D>(ISet.size() + 1));

        const std::function<D(int, int)> dynamicProgram = [&](int X, int l)
        {
            D d;
            d.X = X;
            d.l = l;

            /* X is empty. */
            if (X == 0)
            {
                d.opt = 0; /* Empty set is dominated by empty set. */
                d.optSize = 0;

                return d;
            }

            if (l == 1)
            {
                int dominantVertex = ISet[0];

                int index = 0;
                int vertices = X;
                while (vertices != 0)
                {
                    if (vertices & 1)
                    {
                        /* X can't be dominated by the first vertex of I. */
                        if (std::find(unweightedGraph.getNeighbors(dominantVertex).begin(), unweightedGraph.getNeighbors(dominantVertex).end(), JSet[index]) == unweightedGraph.getNeighbors(dominantVertex).end())
                        {
                            /* Set a non valid D. */
                            d.opt = -1;
                            d.optSize = -1;

                            return d;
                        }
                    }

                    vertices >>= 1;
                    index += 1;
                }

                d.opt = 1; /* 0-th vertex of I.*/
                d.optSize = 1;

                return d;
            }

            D d1 = dynamicProgram(X, l - 1);

            int newX = X;

            int dominantVertex = ISet[l - 1];
            for (int dominatedVertexIndex = 0; dominatedVertexIndex < unweightedGraph.getNeighbors(dominantVertex).size(); ++dominatedVertexIndex)
            {
                int dominatedVertex = unweightedGraph.getNeighbors(dominantVertex)[dominatedVertexIndex];
                /* dominatedVertex is in X. */
                auto vertexIterator = std::find(JSet.begin(), JSet.end(), dominatedVertex);
                if (vertexIterator != JSet.end())
                {
                    int index = vertexIterator - JSet.begin();
                    /* Remove vertex at index position. */
                    newX = newX & ~(1 << index);
                }
            }

            D d2 = dynamicProgram(newX, l - 1);
            d2.opt += (1 << (l - 1));
            d2.optSize += 1;

            /* None of the subcalls is valid. */
            if (d1.opt == -1 && d2.opt == -1)
            {
                d.opt = -1;
                d.optSize = -1;
            }
            /* d2 is valid. */
            else if (d1.opt == -1)
            {
                d.opt = d2.opt;
                d.optSize = d2.optSize;
            }
            /* d1 is valid. */
            else if (d2.opt == -1)
            {
                d.opt = d1.opt;
                d.optSize = d1.optSize;
            }
            /* Both d1 and d2 are valid. */
            else
            {
                if (d1.optSize <= d2.optSize)
                {
                    d.opt = d1.opt;
                    d.optSize = d1.optSize;
                }
                else
                {
                    d.opt = d2.opt;
                    d.optSize = d2.optSize;
                }
            }

            return d;
        };

        auto begin = std::chrono::steady_clock::now();
        ///* Bit representation of X. */
        for (int subset = 0; subset < std::pow(2, JSet.size()); ++subset)
        {
            for (int l = 1; l <= ISet.size(); ++l)
            {
                Dxl[subset][l] = dynamicProgram(subset, l);
            }
        }
        
        auto end = std::chrono::steady_clock::now();
        std::cout << "Time for opts: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;
    }
    else
    {
        AlgorithmBruteForce bruteForce;
        return bruteForce.solveMinCenters(graph, radius);
    }
}

Solution AlgorithmDynamicProgramming::solveMinRadius(const Graph& graph, int nbCenters)
{
    Solution solution;

    // Todo

    return solution;
}

std::vector<int> AlgorithmDynamicProgramming::greedyIndependentSet(const Graph &graph)
{
    std::vector<int> solution;
    std::vector<bool> markedVertices(graph.getNbVertices(), false);

    for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
    {
        if (!markedVertices[vertex])
        {
            solution.push_back(vertex);
            markedVertices[vertex] = true;

            for (int vertexNeighbor : graph.getNeighbors(vertex))
            {
                markedVertices[vertexNeighbor] = true;
            }
        }
    }

    return solution;
}

Graph AlgorithmDynamicProgramming::transformToUnitGraph(const Graph &graph, int radius)
{
    std::vector<std::vector<int>> adjacencyList(graph.getNbVertices(), std::vector<int>());

    for (int vertex1 = 0; vertex1 < graph.getNbVertices(); ++vertex1)
    {
        for (int vertex2 = 0; vertex2 < graph.getNbVertices(); ++vertex2)
        {
            if (graph.getDistance(vertex1, vertex2) <= radius)
            {
                adjacencyList[vertex1].push_back(vertex2);
            }
        }
    }

    return Graph(adjacencyList);
}
