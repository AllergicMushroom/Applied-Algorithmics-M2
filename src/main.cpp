#include <iostream>

#include "FileIO.hpp"

void printUsage(std::string name)
{
    std::cout << "Usage: " << name << " <filename> <settings file if instance is bmp>\n";
}

int main(int argc, char** argv)
{
    FileIO fileIO;
    std::string img = "../data/Img1.ppm";
    std::string config = "../data/Config1.txt";

    Settings settings = fileIO.readSettingFile(config, true);
    Graph g = fileIO.readBMP(img, settings);
    g.printGraph();
    int a = 3;
    std::cout<<a+4;
    return 0;

//    if (argc >= 2)
//    {
//        std::string mode = argv[1];

//        if (mode == "check")
//        {
//            if (argc == 4)
//            {
//
//            }
//            else if (argc == 5)
//            {
//
//            }
//            else
//            {
//                printUsage(argv[0]);
//                return -1;
//            }
//        }

        fileIO.readGraph(std::string(argv[1]));
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
//    return 0;
//    std::cout<<"giga\n";
}