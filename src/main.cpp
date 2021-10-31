#include <iostream>

#include "Algorithm.hpp"
#include "Checker.hpp"
#include "AlgorithmDynamicProgramming.hpp"
#include "FileIO.hpp"
#include "Graph.hpp"
#include "AlgorithmBruteForce.hpp"
#include "AlgorithmMIP.hpp"
#include "AlgorithmMIP2.hpp"

#include <chrono>

void printUsage(std::string name)
{
    std::cout << "Usage: " << name << " <filename> <settings file if instance is bmp>\n";
}

// Development main
int main()
{
    if constexpr (false)
    {
        std::string img = "data/Img1.ppm";
        std::string config = "data/Config1.txt";

        auto begin = std::chrono::steady_clock::now();
        Settings settings = FileIO::readSettings(config);
        auto end = std::chrono::steady_clock::now();
        std::cout << "Time reading settings: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

        std::cout << "Instance Settings:\n";
        std::cout << settings;

        begin = std::chrono::steady_clock::now();
        Graph graph = FileIO::readBMP(img, settings);
        end = std::chrono::steady_clock::now();
        std::cout << "Time reading image: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

        if (graph.getNbVertices() <= 100)
        {
            std::cout << graph;
        }
    }
    else
    {
        std::string filename = "data/graphs/graph1.txt";

        Graph graph = FileIO::readGraph(filename);
        if (graph.getNbVertices() <= 20)
        {
            std::cout << "Instance graph:\n";
            std::cout << graph;
        }

        Checker checker;

        bool useBruteForce = true;
        bool useMIP1 = true;
        bool useMIP2 = true;
        bool useDynProg = true;

        int radius = 5;

        if (useBruteForce)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* bb = new AlgorithmBruteForce();
            Solution s = bb->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by Brute Force: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (graph.getNbVertices() <= 20)
            {
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << '\n';
                std::cout << "Validity: " << checker.checkSolutionMinCenters(graph, s, radius);
            }
        }

        if (useMIP1)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* mip1 = new AlgorithmMIP();
            Solution s = mip1->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by MIP1: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (graph.getNbVertices() <= 20)
            {
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << '\n';
                std::cout << "Validity: " << checker.checkSolutionMinCenters(graph, s, radius);
            }
        }

        if (useMIP2)
        {
            auto begin = std::chrono::steady_clock::now();
            Algorithm* mip2 = new AlgorithmMIP2();
            Solution s = mip2->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by MIP2: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            if (graph.getNbVertices() <= 20)
            {
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << '\n';
                std::cout << "Validity: " << checker.checkSolutionMinCenters(graph, s, radius);
            }
        }

        if (useDynProg)
        {
            auto begin = std::chrono::steady_clock::now();
            //Algorithm* dynProg = new AlgorithmDynamicProgramming();
            //Solution s = dynProg->solveMinCenters(graph, radius);
            auto end = std::chrono::steady_clock::now();

            std::cout << "Time used by Dynamic Program: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

            /*if (graph.getNbVertices() <= 20)
            {
                std::cout << "Computed solution:\n";
                std::cout << s;
                std::cout << '\n';
                std::cout << "Validity: " << checker.checkSolutionMinCenters(graph, s, radius);
            }*/
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