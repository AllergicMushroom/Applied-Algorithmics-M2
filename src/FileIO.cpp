#include "FileIO.hpp"

#include <ifstream>

static std::string readFileContent(const std::string& filepath);
static std::string readNextLine(const std::string& str, size_t& currentPosition);
static std::vector<std::string> tokenizeString(const std::string& str, const char* token);

Graph FileIO::readBMP(const std::string& filename)
{
    return Graph(...);
}

Graph FileIO::readGraph(const std::string& filename)
{
    return Graph(...);
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
		APP_ERROR("Could not open instance file ({0})", filepath);

	return contents;
}

static std::string readNextLine(const std::string& str, size_t& currentPosition)
{
	size_t nextLinePosition = str.find(eol, currentPosition) + strlen(eol);
	size_t endOfLine = str.find(eol, nextLinePosition) + strlen(eol);

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