#include <iostream>

#include "FileIO.hpp"

void printUsage()
{
    std::cout << "Usage: " << argv[1] << " <filename> <settings file if instance is bmp>\n";
}

int main(int argc, char** argv)
{
    FileIO fileIO = FileIO();

    if (argc >= 2)
    {
        mode = argv[2];

        if (mode == "check")
        {
            if (argc == 4)
            {

            }
            else if (argc == 5)
            {

            }
            else
            {
                printUsage();
                return -1;
            }
        }



        fileIO.readGraph(std::string(argv[1]));
    }
    else if (argc == 3)
    {
        Settings settings = fileIO.readSettingFile(std::string(argv[2]));
        fileIO.readBMP(std::string(argv[1]), settings);
    }
    else
    {
        printUsage();
    }

    return 0;
}