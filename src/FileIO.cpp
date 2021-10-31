#include "FileIO.hpp"

#include <array>
#include <fstream>
#include <iostream>

static constexpr const char* EOL = "\n";

Settings FileIO::readSettings(const std::string& filename)
{
    std::ifstream file(filename, std::ios::in);
    if (!file.good()) {
        std::cerr << "Read error: Could not open file " << filename << "." << std::endl;
        exit(EXIT_FAILURE);
    }

    Settings settings;

    std::string line;

    /* Get next line after empty lines and comments. */
    while (std::getline(file, line))
    {
        if (line.size() > 0)
        {
            if (line[0] != '#')
            {
                break;
            }
        }
    }

    settings.scale = std::stoi(line);

    while (std::getline(file, line))
    {
        /* Skip empty lines and comments. */
        int lineLength = static_cast<int>(line.size());
        if (lineLength == 0)
        {
            continue;
        }
        else
        {
            if (line[0] == '#')
            {
                continue;
            }
        }

        /*
        * 0 is for color index.
        * 1 is for red component.
        * 2 is for green component.
        * 3 is for blue component.
        */
        std::array<int, 4> colorValues;
        int i = 0;

        auto iterator = line.begin();
        while (iterator != line.end())
        {
            auto tokenBegin = line.find_first_not_of(' ', iterator - line.begin());
            auto tokenEnd = line.find_first_of(' ', iterator - line.begin());
            if (tokenEnd == std::string::npos)
            {
                tokenEnd = lineLength;
            }

            int result = std::stoi(line.substr(tokenBegin, tokenEnd - tokenBegin));
            if (i == 0 && result < 0)
            {
                std::cerr << "Read error: Color indices must be positive integers.\n";
                exit(EXIT_FAILURE);
            }

            if (i != 0 && (result < 0 || result > 255))
            {
                std::cerr << "Read error: (R, G, B) components must be integers between 0 and 255.\n";
                exit(EXIT_FAILURE);
            }

            colorValues[i] = result;
            i += 1;

            if (tokenEnd == lineLength)
            {
                iterator = line.end();
            }
            else
            {
                iterator += (tokenEnd - tokenBegin + 1);
            }
        }

        int color = 1000000 * colorValues[1] + 1000 * colorValues[2] + colorValues[3]; /* Hash color value. */
        settings.mapPixelValue[color] = colorValues[0];
    }

    return settings;
}

Graph FileIO::readBMP(const std::string& filename, const Settings& settings)
{
    std::ifstream file(filename, std::ios::in);
    if (!file.good()) {
        std::cerr << "Read error: Could not open file " << filename << "." << std::endl;
        exit(EXIT_FAILURE);
    }

    std::string line;

    /* Get next line after empty lines and comments. */
    while (std::getline(file, line))
    {
        if (line.size() > 0)
        {
            if (line[0] != '#')
            {
                break;
            }
        }
    }

    if (line.compare("P3") != 0)
    {
        std::cerr << "Read error: P3 PPM format is the only supported format.\n";
        exit(EXIT_FAILURE);
    }

    /* Get next line after empty lines and comments. */
    while (std::getline(file, line))
    {
        if (line.size() > 0)
        {
            if (line[0] != '#')
            {
                break;
            }
        }
    }

    int spaceIndex = static_cast<int>(line.find_first_of(' '));
    int width = std::stoi(line.substr(0, spaceIndex));
    int height = std::stoi(line.substr(spaceIndex + 1LL));

    /* Get next line after empty lines and comments. */
    while (std::getline(file, line))
    {
        if (line.size() > 0)
        {
            if (line[0] != '#')
            {
                break;
            }
        }
    }

    int colorSpace = std::stoi(line);
    if (colorSpace != 255)
    {
        std::cerr << "Read error: Color space must be 8 bits. Maximum value in PPM must be 255, while " << colorSpace << " was specified.\n";
        exit(EXIT_FAILURE);
    }

    std::vector<int> verticesColors(static_cast<long long>(width) * static_cast<long long>(height), -1);
    int vertex = 0;

    while (std::getline(file, line))
    {
        if (line.size() == 0)
        {
            continue;
        }
        else
        {
            if (line[0] == '#')
            {
                continue;
            }
        }

        std::array<unsigned char, 3> colorValues;

        int result = std::stoi(line); /* One int per line. */
        if (result < 0 || result > 255)
        {
            std::cerr << "Read error: (R, G, B) components must be integers between 0 and 255.\n";
            exit(EXIT_FAILURE);
        }

        colorValues[0] = static_cast<unsigned char>(result);

        /* Read next two lines for (R, G, B). */
        for (int i = 1; i <= 2; ++i)
        {
            std::getline(file, line);
            result = std::stoi(line);
            if (result < 0 || result > 255)
            {
                std::cerr << "Read error: (R, G, B) components must be integers between 0 and 255.\n";
                exit(EXIT_FAILURE);
            }

            colorValues[i] = static_cast<unsigned char>(result);
        }

        int color = 1000000 * colorValues[0] + 1000 * colorValues[1] + colorValues[2]; /* Hash color value. */
        try
        {
            verticesColors[vertex] = settings.mapPixelValue.at(color);
        }
        catch (std::out_of_range&)
        {
            std::cerr << "Read error: Image file contains color (" << colorValues[0] << ", " << colorValues[1] << ", " << colorValues[2] << "), which is not specified in configuration file.\n";
            exit(EXIT_FAILURE);
        }
        vertex += 1;
    }

    std::vector<std::vector<int>> adjacencyList(verticesColors.size(), std::vector<int>());

    auto coordinatesToIndex = [&, width](int x, int y) { return y * width + x; };

    /* Corners */
    adjacencyList[coordinatesToIndex(0, 0)].push_back(coordinatesToIndex(1, 0));
    adjacencyList[coordinatesToIndex(0, 0)].push_back(coordinatesToIndex(0, 1));

    adjacencyList[coordinatesToIndex(width - 1, 0)].push_back(coordinatesToIndex(width - 2, 0));
    adjacencyList[coordinatesToIndex(width - 1, 0)].push_back(coordinatesToIndex(width - 1, 1));

    adjacencyList[coordinatesToIndex(width - 1, height - 1)].push_back(coordinatesToIndex(width - 1, height - 2));
    adjacencyList[coordinatesToIndex(width - 1, height - 1)].push_back(coordinatesToIndex(width - 2, height - 1));

    adjacencyList[coordinatesToIndex(0, height - 1)].push_back(coordinatesToIndex(1, height - 1));
    adjacencyList[coordinatesToIndex(0, height - 1)].push_back(coordinatesToIndex(0, height - 2));

    /* Top row. */
    for (int x = 1; x < width - 1; ++x)
    {
        int neighbors[3][2] =
        {
            {x + 1, 0}, /* East. */
            {x, 1},     /* South. */
            {x - 1, 0}  /* West. */
        };

        for (const auto& neighbor : neighbors)
        {
            adjacencyList[coordinatesToIndex(x, 0)].push_back(coordinatesToIndex(neighbor[0], neighbor[1]));
        }
    }

    /* Right column. */
    for (int y = 1; y < height - 1; ++y)
    {
        int neighbors[3][2] =
        {
            {width - 1, y - 1}, /* North. */
            {width - 2, y},     /* West. */
            {width - 1, y + 1}  /* South. */
        };

        for (const auto& neighbor : neighbors)
        {
            adjacencyList[coordinatesToIndex(width - 1, y)].push_back(coordinatesToIndex(neighbor[0], neighbor[1]));
        }
    }

    /* Bottom row. */
    for (int x = 1; x < width - 1; ++x)
    {
        int neighbors[3][2] =
        {
            {x, height - 2},        /* North. */
            {x + 1, height - 1},    /* East. */
            {x - 1, height - 1}     /* West. */
        };

        for (const auto& neighbor : neighbors)
        {
            adjacencyList[coordinatesToIndex(x, height - 1)].push_back(coordinatesToIndex(neighbor[0], neighbor[1]));
        }
    }

    /* Left column. */
    for (int y = 1; y < height - 1; ++y)
    {
        int neighbors[3][2] =
        {
            {0, y - 1}, /* North. */
            {1, y},     /* East. */
            {0, y + 1}  /* South. */
        };

        for (const auto& neighbor : neighbors)
        {
            adjacencyList[coordinatesToIndex(0, y)].push_back(coordinatesToIndex(neighbor[0], neighbor[1]));
        }
    }

    /* Interior points. */
    for (int x = 1; x < width - 1; ++x)
    {
        for (int y = 1; y < height - 1; ++y)
        {
            int neighbors[4][2] =
            {
                /* Sorted by resulting index. */
                {x, y - 1}, /* North. */
                {x - 1, y}, /* West. */
                {x + 1, y}, /* East. */
                {x, y + 1}  /* South. */
            };

            for (const auto& neighbor : neighbors)
            {
                adjacencyList[coordinatesToIndex(x, y)].push_back(coordinatesToIndex(neighbor[0], neighbor[1]));
            }
        }
    }

    return Graph(adjacencyList, verticesColors);
}

Graph FileIO::readGraph(const std::string& filename)
{
    std::ifstream file(filename, std::ios::in);
    if (!file.good()) {
        std::cerr << "Read error: Could not open file " << filename << "." << std::endl;
        exit(EXIT_FAILURE);
    }

    std::vector<std::vector<int>> adjacencyList(1, std::vector<int>());

    std::string line;

    /* Get next line after empty lines and comments. */
    while (std::getline(file, line))
    {
        if (line.size() > 0)
        {
            if (line[0] != '#')
            {
                break;
            }
        }
    }

    int firstSpaceIndex = static_cast<int>(line.find_first_of(' '));
    line = line.substr(firstSpaceIndex + 1LL); /* Neighbors */

    int vertex = 0;

    auto iterator = line.begin();
    while (iterator != line.end())
    {
        auto tokenBegin = line.find_first_not_of(' ', iterator - line.begin());
        auto tokenEnd = line.find_first_of(' ', iterator - line.begin());
        if (tokenEnd == std::string::npos)
        {
            tokenEnd = line.size();
        }

        int result = std::stoi(line.substr(tokenBegin, tokenEnd - tokenBegin));
        if (result < 0)
        {
            std::cerr << "Read error: Vertex indices must be positive.\n";
            exit(EXIT_FAILURE);
        }

        adjacencyList[vertex].push_back(result);

        if (tokenEnd == line.size())
        {
            iterator = line.end();
        }
        else
        {
            iterator += (tokenEnd - tokenBegin + 1);
        }
    }

    vertex = 1;
    while (std::getline(file, line))
    {
        adjacencyList.push_back(std::vector<int>());

        firstSpaceIndex = static_cast<int>(line.find_first_of(' '));
        line = line.substr(firstSpaceIndex + 1LL); /* Neighbors */

        iterator = line.begin();
        while (iterator != line.end())
        {
            auto tokenBegin = line.find_first_not_of(' ', iterator - line.begin());
            auto tokenEnd = line.find_first_of(' ', iterator - line.begin());
            if (tokenEnd == std::string::npos)
            {
                tokenEnd = line.size();
            }

            int result = std::stoi(line.substr(tokenBegin, tokenEnd - tokenBegin));
            if (result < 0)
            {
                std::cerr << "Read error: Vertex indices must be positive.\n";
                exit(EXIT_FAILURE);
            }

            adjacencyList[vertex].push_back(result);

            if (tokenEnd == line.size())
            {
                iterator = line.end();
            }
            else
            {
                iterator += (tokenEnd - tokenBegin + 1);
            }
        }

        vertex += 1;
    }

    return Graph(adjacencyList, std::vector<int>(adjacencyList.size(), 1));
}

Solution FileIO::readBMPSolution(const std::string& filename)
{
    return Solution();
}

Solution FileIO::readGraphSolution(const std::string& filename)
{
    std::ifstream file(filename, std::ios::in);
    if (!file.good()) {
        std::cerr << "Read error: Could not open file " << filename << "." << std::endl;
        exit(EXIT_FAILURE);
    }

    Solution solution;

    std::string line;

    /* Get next line after empty lines and comments. */
    while (std::getline(file, line))
    {
        if (line.size() > 0)
        {
            if (line[0] != '#')
            {
                break;
            }
        }
    }

    auto iterator = line.begin();
    while (iterator != line.end())
    {
        auto tokenBegin = line.find_first_not_of(' ', iterator - line.begin());
        auto tokenEnd = line.find_first_of(' ', iterator - line.begin());
        if (tokenEnd == std::string::npos)
        {
            tokenEnd = line.size();
        }

        int result = std::stoi(line.substr(tokenBegin, tokenEnd - tokenBegin));
        if (result < 0)
        {
            std::cerr << "Read error: Vertex indices must be positive.\n";
            exit(EXIT_FAILURE);
        }

        solution.centers.push_back(result);

        if (tokenEnd == line.size())
        {
            iterator = line.end();
        }
        else
        {
            iterator += (tokenEnd - tokenBegin + 1);
        }
    }

    return solution;
}

std::ostream& operator<<(std::ostream& out, const Settings& settings)
{
    out << "Reduction scale: " << settings.scale << '\n';

    out << "Colors indices:\n";
    for (const auto& elem : settings.mapPixelValue)
    {
        std::string zeros;
        for (size_t i = 0; i < (9 - std::to_string(elem.first).length()); ++i)
            zeros += "0";
        out << '\t' << zeros << elem.first << " => " << elem.second << "\n";
    }

    return out;
}