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
        
        struct Settings readSettingFile(const std::string& filename);
        void printSettings(const Settings& settings);
        Graph readBMP(const std::string& filename, const Settings& params);
        Graph readGraph(const std::string& filename);
        void printGraph(const Settings& settings);
};