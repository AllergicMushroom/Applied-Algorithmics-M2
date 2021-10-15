#pragma once

#include <string>
#include <map>
#include "Graph.hpp"


struct Settings{
    int scale;
    std::map<int, int> mapPixelValue;
};
class FileIO
{
    public:
        FileIO() = default;
        
        static struct Settings readSettingFile(const std::string& filename, bool _verbose);
        static void printSettings(const Settings& settings);
        static Graph readBMP(const std::string& filename, const Settings& params);
        static Graph readGraph(const std::string& filename);
        void printGraph(const Settings& settings);
};