#pragma once

#include <string>

#include "Graph.hpp"

class FileIO
{
    public:
        FileIO() = default;

        Graph readBMP(const std::string& filename);
        Graph readGraph(const std::string& filename);
};