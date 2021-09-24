#include <iostream>

#include "FileIO.hpp"

void printUsage()
{
    std::cout << "coucou\n";
}

int main(int argc, char** argv)
{
    FileIO fileIO = FileIO();

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