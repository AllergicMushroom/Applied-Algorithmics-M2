#include "FileIO.hpp"

#include <cstring>
#include <fstream>
#include <iostream>

static constexpr const char* EOL = "\n";

static std::string readFileContent(const std::string& filepath);
static std::string readNextLine(const std::string& str, size_t& currentPosition);
static std::vector<std::string> tokenizeString(const std::string& str, const char* token);

// Graph FileIO::readBMP(const std::string& filename)
// {
//     return Graph(...);
// }

Graph FileIO::readGraph(const std::string& filename)
{
    std::string instance = readFileContent(filename);

    std::vector<std::vector<int>> adjacencyList;
    std::vector<int> verticesColors;

    size_t currentPosition = 0;

    std::string line = instance.substr(0, instance.find_first_of(EOL));
    while (line != "")
    {
        std::vector<std::string> components = tokenizeString(line, ":");

        int vertex = std::atoi(components[0].c_str());
        std::vector<std::string> vertexNeighborsStr = tokenizeString(components[1], " ");

        std::vector<int> vertexNeighbors = std::vector<int>(vertexNeighborsStr.size());
        for (int i = 0; i < vertexNeighborsStr.size(); ++i)
        {
            vertexNeighbors[i] = std::atoi(vertexNeighborsStr[i].c_str());
        }

        adjacencyList[vertex] = vertexNeighbors;

        line = readNextLine(instance, currentPosition);
    }

    return Graph(adjacencyList, std::vector<int>(adjacencyList.size(), 1));
}

static std::string readFileContent(const std::string& filepath)
{
	std::string contents;
	std::ifstream instanceFile(filepath, std::ios::in | std::ios::binary);
	if (instanceFile)
	{
		instanceFile.seekg(0, std::ios::end);
		contents.resize(instanceFile.tellg());

		instanceFile.seekg(0, std::ios::beg);
		instanceFile.read(&contents[0], contents.size());

		instanceFile.close();
	}
	else
    {
        std::cerr << "Could not open instance file " << filepath << ".\n";
    }

	return contents;
}

static std::string readNextLine(const std::string& str, size_t& currentPosition)
{
	size_t nextLinePosition = str.find(EOL, currentPosition) + strlen(EOL);
	size_t endOfLine = str.find(EOL, nextLinePosition) + strlen(EOL);

	currentPosition = nextLinePosition;
	return str.substr(nextLinePosition, endOfLine - nextLinePosition);
}

static std::vector<std::string> tokenizeString(const std::string& str, const char* token)
{
	size_t begin = 0;
	size_t position = begin;
	size_t end = str.length();

	std::vector<std::string> tokens(0);
	while (position != end)
	{
		position = str.find(token, begin);
		if (position == std::string::npos)
			position = end;

		tokens.push_back(str.substr(begin, position - begin)); // substr expects count as second parameters, not a position

		begin = str.find(token, position) + 1;
	}

	return tokens;
}