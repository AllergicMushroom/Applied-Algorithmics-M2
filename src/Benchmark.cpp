#include <iostream>
#include "Algorithm.hpp"
#include "AlgorithmBranchAndBound.hpp"
#include "AlgorithmBruteForce.hpp"
#include "AlgorithmDynamicProgramming.hpp"
#include "AlgorithmMIP.hpp"
#include "AlgorithmMIP2.hpp"
#include "Checker.hpp"
#include "FileIO.hpp"
#include "Graph.hpp"

#include <chrono>

// benchmark
int benchmark()
{
    bool useBruteForce = false;
    bool useMIP1 = false;
    bool useMIP2 = true;
    bool useBranchAndBound = false;
    bool useDynProg = false;

    int radius = 4;

    std::vector<std::string> filenames = {};
    for (int i = 1; i < 15; ++i) {
        filenames.push_back("data/graphs/graph"+ std::to_string(i)+".txt");
    }
    for(const auto& filename:filenames){
        Graph graph = FileIO::readGraph(filename);
        if (graph.getNbVertices() <= 20)
        {
            std::cout << "Instance graph:\n";
            std::cout << graph;
        }

        Checker checker;

        if (useBruteForce)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* bf = new AlgorithmBruteForce();
            Solution s = bf->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by Brute Force: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (s.isValid)
            {
                std::cout << "Solution validity by algorithm: " << s.isValid << '\n';
                std::cout << "Solution validity by checker: " << checker.checkSolutionMinCenters(graph, s, radius) << '\n';
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << std::endl;
            }
        }

        if (useMIP1)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* mip1 = new AlgorithmMIP();
            Solution s = mip1->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by MIP1: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (s.isValid)
            {
                std::cout << "Solution validity by algorithm: " << s.isValid << '\n';
                std::cout << "Solution validity by checker: " << checker.checkSolutionMinCenters(graph, s, radius) << '\n';
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << std::endl;
            }
        }

        if (useMIP2)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* mip2 = new AlgorithmMIP2();
            Solution s = mip2->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by MIP2: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (s.isValid)
            {
                std::cout << "Solution validity by algorihtm: " << s.isValid << '\n';
                std::cout << "Solution validity by checker: " << checker.checkSolutionMinCenters(graph, s, radius) << '\n';
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << std::endl;
            }
        }

        if (useBranchAndBound)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* bb = new AlgorithmBranchAndBound();
            Solution s = bb->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by Branch and Bound: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (s.isValid)
            {
                std::cout << "Solution validity by algorihtm: " << s.isValid << '\n';
                std::cout << "Solution validity by checker: " << checker.checkSolutionMinCenters(graph, s, radius) << '\n';
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << std::endl;
            }
        }

        if (useDynProg)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* dynProg = new AlgorithmDynamicProgramming();
            Solution s = dynProg->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by Dynamic Program: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (s.isValid)
            {
                std::cout << "Solution validity by algorihtm: " << s.isValid << '\n';
                std::cout << "Solution validity by checker: " << checker.checkSolutionMinCenters(graph, s, radius) << '\n';
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << std::endl;
            }
        }
    }
    return 0;
}

//int main(int argc, char** argv)
//{
//    FileIO fileIO;
//
//    if (argc >= 2)
//    {
//        std::string mode = argv[1];
//
//        if (mode == "check")
//        {
//            if (argc == 4)
//            {
//                // Todo
//            }
//            else if (argc == 5)
//            {
//                // Todo
//            }
//            else
//            {
//                printUsage(argv[0]);
//                return -1;
//            }
//        }
//
//        fileIO.readGraph(std::string(argv[1]));
//    }
//    else if (argc == 3)
//    {
//        Settings settings = fileIO.readSettingFile(std::string(argv[2]));
//        fileIO.readBMP(std::string(argv[1]), settings);
//    }
//    else
//    {
//        printUsage(argv[0]);
//    }
//
//    return 0;
//}