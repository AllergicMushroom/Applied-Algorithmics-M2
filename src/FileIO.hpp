#pragma once

#include "Graph.hpp"
#include "Solution.hpp"

#include <iostream>
#include <unordered_map>
#include <string>

struct Settings
{
    int scale = 1;
    std::unordered_map<int, int> mapPixelValue; /* Key is rrrgggbbb, value is color index. */

    friend std::ostream& operator<<(std::ostream& out, const Settings& settings);
};

class FileIO
{
public:
    FileIO() = delete;
    ~FileIO() = delete;
        
    static Settings readSettings(const std::string& filename);

    static Graph readBMP(const std::string& filename, const Settings& settings);
    static Graph readGraph(const std::string& filename);

    static Solution readBMPSolution(const std::string& filename);
    static Solution readGraphSolution(const std::string& filename);
};