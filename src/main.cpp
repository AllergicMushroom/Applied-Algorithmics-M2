#include <iostream>

#include "Algorithm.hpp"
#include "Checker.hpp"
#include "AlgorithmDynamicProgramming.hpp"
#include "FileIO.hpp"
#include "Graph.hpp"
#include "AlgorithmBruteForce.hpp"
#include "AlgorithmMIP2.hpp"
#include "AlgorithmMIP.hpp"

void printUsage(std::string name)
{
    std::cout << "Usage: " << name << " <filename> <settings file if instance is bmp>\n";
}

#include <chrono>
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
        std::string filename = "data/graphs/graph9.txt";

        Graph graph = FileIO::readGraph(filename);
        if (graph.getNbVertices() <= 20)
        {
            std::cout << "Instance graph:\n";
            std::cout << graph;
        }

        Algorithm* mip2 = new AlgorithmMIP2();
        Solution s4 = mip2->solveMinCenters(graph, 5);

        Checker checker;
        bool isValid = checker.checkSolutionMinCenters(graph, s4, 5);
        std::cout << s4 << "is a valid solution for instance: " << isValid << std::endl;

        Algorithm* dynProg = new AlgorithmDynamicProgramming();
        //Solution s5 = dynProg->solveMinCenters(graph, 5);
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