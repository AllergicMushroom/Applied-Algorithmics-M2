#include <iostream>

#include "FileIO.hpp"

void printUsage(std::string name)
{
    std::cout << "Usage: " << name << " <filename> <settings file if instance is bmp>\n";
}

#include <chrono>
// Development main
int main()
{
    std::string img = "data/Img1.ppm";
    std::string config = "data/Config1.txt";

    auto begin = std::chrono::steady_clock::now();
    Settings settings = FileIO::readSettingFile(config);
    auto end = std::chrono::steady_clock::now();
    std::cout << "Time reading settings: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

    std::cout << "Instance Settings:\n";
    std::cout << settings;

    begin = std::chrono::steady_clock::now();
    Graph graph = FileIO::readBMP(img, settings);
    end = std::chrono::steady_clock::now();
    std::cout << "Time reading graph: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << " ms" << std::endl;

    if (graph.getNbVertices() <= 100)
    {
        std::cout << graph;
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