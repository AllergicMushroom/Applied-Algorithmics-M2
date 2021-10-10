#include <iostream>

#include "FileIO.hpp"

void printUsage()
{
    std::cout << "coucou\n";
}

int main(int argc, char** argv)
{
    FileIO fileIO = FileIO();
    Settings se = fileIO.readSettingFile("../data/Config1.txt");
    fileIO.printSettings(se);
    std::cout<<"\n";
    Graph g = fileIO.readBMP("../data/Img1.ppm", se);
    g.printGraph();
    std::cout<<"\n";
    return 0;
    if (argc  == 2)
    {

    }
    else if (argc == 3)
    {

    }
    else
    {
        printUsage();
    }
    return 0;
}