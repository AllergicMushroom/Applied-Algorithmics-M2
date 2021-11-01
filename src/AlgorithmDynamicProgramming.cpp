#include "AlgorithmDynamicProgramming.hpp"

#include <algorithm>
#include <chrono>
#include <functional>
#include <unordered_map>

/*
* Todo: It doesn't work because 2^x is too big and overflows, leading to weird behaviour.
*/
Solution AlgorithmDynamicProgramming::solveMinCenters(const Graph& graph, int radius)
{
    Solution solution;

    Graph unweightedGraph = transformToUnitGraph(graph, radius);

    std::set<int> ISet = greedyIndependentSet(unweightedGraph);
    std::set<int> JSet;
    for (int vertex = 0; vertex < unweightedGraph.getNbVertices(); ++vertex)
    {
        /* If vertex isn't in I, add it to J. */
        if (ISet.find(vertex) == ISet.end())
        {
            JSet.insert(vertex);
        }
    }

    double z = 0.2271 * unweightedGraph.getNbVertices();

    if (ISet.size() >= z)
    {
        /* Obscure function taken from the web that generates all subsets of J. */
        std::vector<std::set<int>> JSubsets(std::pow(2, JSet.size()), std::set<int>());
        for (int index = 0; index < JSubsets.size(); ++index)
        {
            int t = index;
            std::set<int> subset;
            for (int vertex : JSet)
            {
                if (t & 1)
                {
                    subset.insert(vertex);
                }

                t >>= 1;
            }

            JSubsets[index] = subset;
        }

        /*
        * XIndex is the index for the subset in JSubsets.
        * nbAllowedVertices is the number of considered vertices from ISet.
        * opt is the minimum size subset of I that dominates X. A -1 in the first case indicates that it doesn't exist.
        */
        struct D
        {
            int XIndex;
            int nbAllowedVertices;

            std::set<int> opt;
        };

        auto begin = std::chrono::steady_clock::now();
        std::vector<D> opts;

        std::vector<int> ISetVec(ISet.size());
        std::copy(ISet.begin(), ISet.end(), ISetVec.begin());

        const std::function<std::set<int>(std::set<int>, int)> dynamicProgram = [&, ISetVec](std::set<int> X, int nbAllowedVertices)
        {
            if (X.size() == 0)
            {
                return std::set<int>();
            }

            if (nbAllowedVertices == 1)
            {
                int dominantVertex = ISetVec[0];

                for (int vertex : X)
                {
                    /* vertex is not dominated by dominantVertex. */
                    if (std::find(unweightedGraph.getNeighbors(dominantVertex).begin(), unweightedGraph.getNeighbors(dominantVertex).end(), vertex) == unweightedGraph.getNeighbors(dominantVertex).end())
                    {
                        std::set<int> res;
                        res.insert(-1);

                        return res;
                    }
                }

                std::set<int> res;
                res.insert(dominantVertex);

                return res;
            }

            std::set<int> set1 = dynamicProgram(X, nbAllowedVertices - 1);

            std::set<int> newX = X;
            for (int vertex : unweightedGraph.getNeighbors(ISetVec[nbAllowedVertices - 1]))
            {
                newX.erase(vertex);
            }
            newX.erase(ISetVec[nbAllowedVertices - 1]);

            std::set<int> set2 = dynamicProgram(newX, nbAllowedVertices - 1);
            set2.insert(ISetVec[nbAllowedVertices - 1]);

            std::set<int> res;
            if (*set1.begin() == -1 && *set2.begin() == -1)
            {
                res.insert(-1);
            }
            else if (*set1.begin() == -1)
            {
                res = set2;
            }
            else if (*set2.begin() == -1)
            {
                res = set1;
            }
            else
            {
                if (set1.size() <= set2.size())
                {
                    res = set1;
                }
                else
                {
                    res = set2;
                }
            }

            return res;
        };

        for (int index = 0; index < JSubsets.size(); ++index)
        {
            for (int nbAllowedVertices = 1; nbAllowedVertices <= ISet.size(); ++nbAllowedVertices)
            {
                std::set<int> opt = dynamicProgram(JSubsets[index], nbAllowedVertices);
                opts.push_back(D{ index, nbAllowedVertices, opt });
            }
        }
        auto end = std::chrono::steady_clock::now();
        std::cout << "Time for opts: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;
    }
    else
    {
        /* Subsets of V with size at most z. */
        std::vector<std::set<int>> VSubsets;

        int nbSubsets = std::pow(2, unweightedGraph.getNbVertices());
        for (int index = 0; index < nbSubsets; ++index)
        {
            int t = index;
            std::set<int> subset;
            for (int vertex : JSet)
            {
                if (t & 1)
                {
                    subset.insert(vertex);
                }

                t >>= 1;
            }

            if (subset.size() <= z)
            {
                VSubsets.push_back(subset);
            }
        }
    }

    return solution;
}

Solution AlgorithmDynamicProgramming::solveMinRadius(const Graph& graph, int nbCenters)
{
    Solution solution;

    // Todo

    return solution;
}

std::set<int> AlgorithmDynamicProgramming::greedyIndependentSet(const Graph &graph)
{
    // Todo: std::set?
    std::set<int> solution;
    std::vector<bool> markedVertices(graph.getNbVertices(), false);

    for (int vertex = 0; vertex < graph.getNbVertices(); ++vertex)
    {
        if (!markedVertices[vertex])
        {
            solution.insert(vertex);
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
