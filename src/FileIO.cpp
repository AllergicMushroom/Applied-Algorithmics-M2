#include "FileIO.hpp"

#include <map>
#include <cstring>
#include <fstream>
#include <iostream>

static constexpr const char* EOL = "\n";

static std::string readFileContent(const std::string& filepath);
static std::string readNextLine(const std::string& str, size_t& currentPosition);
static std::vector<std::string> tokenizeString(const std::string& str, const char* token);

struct Settings FileIO::readSettingFile(const std::string& filename, bool _verbose = false)
{
    std::string file = readFileContent(filename);
    size_t pos = -1; // It does not count the first line otherwise. TODO: Fix that.
    std::map<int, int> mapPixelValue;
    // Read first line (scale)
    std::string line = readNextLine(file, pos);
    int scale = atoi(line.c_str());
    // std::cout<<file<<"    "<<line<<"\n "<<scale<<" lalal";
    line = readNextLine(file, pos);
    while(!line.empty()){
        std::vector<std::string> tokens = tokenizeString(line, " ");
        if(tokens.size() != 4){
            std::cout<<"wrong line size ("<<tokens.size()<<") in \""<<line.c_str()<<"\"";
            exit(EXIT_FAILURE);
        }
        int pixelColor = atoi(tokens[1].c_str())*1000000+atoi(tokens[2].c_str())*1000+atoi(tokens[3].c_str()); // Convert (xxx,yyy,zzz) in Int(xxxyyyzzz) 
        int value = atoi(tokens[0].c_str());
        // std::cout<<" tady " << tokens[1].c_str() <<" "<<tokens[2].c_str()<< " " <<tokens[3].c_str() << " " << pixelColor <<" " << value<<"\n"; // tmp verif.
        mapPixelValue[pixelColor] = value;
        line = readNextLine(file, pos);
    }
    struct Settings params;
    params.scale = scale;
    params.mapPixelValue = mapPixelValue;
    if(_verbose){
        std::cout<<"<FileIO::readSettingFile> Display Settings:\n";
        printSettings(params);
    }
    return params;
}

void FileIO::printSettings(const Settings& settings)
{
    std::cout<<"scale: "<<settings.scale<<"\nPixel to int:\n";
    for(const auto& elem : settings.mapPixelValue)
    {
        std::string zeros;
        for(size_t i=0; i <(9-std::to_string(elem.first).length()); ++i)
            zeros += "0";
        std::cout << "  "<< zeros << elem.first << " => " << elem.second<<"\n";
    }
}

Graph FileIO::readBMP(const std::string& filename, const Settings& params)
{
    std::string file = readFileContent(filename);
    size_t pos = -1;

    // Read the first line, should be "P3" for rgb.
    std::string line = readNextLine(file, pos);
    if(line.compare("P3") != 1){
        printf("wrong color code. Should be <P3> on line 1.\n");
        exit(EXIT_FAILURE);
    }
    
    // Remove comments lines. and get to the image's dimension.
    line = readNextLine(file, pos);
    while(line[0] == '#')
        line = readNextLine(file, pos);
    
    // Read the dimension.
    std::vector<std::string> imgSize = tokenizeString(line, " ");
    if(imgSize.size() != 2){
        printf("wrong size. Should be a matrix.\n");
        exit(EXIT_FAILURE);
    }
    int width = atoi(imgSize[0].c_str());
    int height = atoi(imgSize[1].c_str());
    
    // Read the bound over the pixel color. Should be 255.
    line = readNextLine(file, pos);
    if( line != "255\n"){
        printf("wrong color cap. Should be a 255.\n");
        exit(EXIT_FAILURE);
    }

    std::vector<int> verticesColors(0);
    std::vector<std::vector<int>> adjancecyList(0);

    // Read the rest.
    for(int i = 0; i < height; ++i){
        for(int j = 0; j<width; ++j){
            int color = 0;
            for(int rgb = 0; rgb < 3; ++rgb){
                line = readNextLine(file, pos);
                color = color*1000 + atoi(line.c_str());
            }
            try
            {
                verticesColors.push_back(params.mapPixelValue.at(color));
            }
            catch(const std::exception& e)
            {
                std::cerr << e.what() << "\nColor " << color << " not found in settings.\n";
            }
            
            std::vector<int> adjListPoint;
            if(i != 0)
                adjListPoint.push_back(j + width*(i-1));
            if(i != height - 1)
                adjListPoint.push_back(j + width*(i+1));
            if(j != 0)
                adjListPoint.push_back(j - 1 + width*i);
            if(j != width - 1)
                adjListPoint.push_back(j + 1 + width*i);
            adjancecyList.push_back(adjListPoint);
        }
    }
    return Graph(adjancecyList, verticesColors);
}

Graph FileIO::readGraph(const std::string& filename)
{
    std::string instance = readFileContent(filename);

    std::vector<std::vector<int>> adjacencyList;
    std::vector<int> verticesColors;

    size_t currentPosition = 0;

    std::string line = instance.substr(0, instance.find_first_of(EOL));
    while (!line.empty())
    {
        std::vector<std::string> components = tokenizeString(line, ":");

        int vertex = std::atoi(components[0].c_str());
        std::vector<std::string> vertexNeighborsStr = tokenizeString(components[1], " ");

        std::vector<int> vertexNeighbors = std::vector<int>(vertexNeighborsStr.size());
        for (std::size_t i = 0; i < vertexNeighborsStr.size(); ++i)
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