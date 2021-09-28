#include "FileIO.hpp"
#include <map>
#include <iostream>

static std::string readFileContent(const std::string& filepath);
static std::string readNextLine(const std::string& str, size_t& currentPosition);
static std::vector<std::string> tokenizeString(const std::string& str, const char* token);

struct Settings FileIO::readSettingFile(const std::string& filename)
{
    std::string file = readFileContent(filename);
    size_t* pos = 0;
    std::map<int, int> mapPixelValue;
    
    // Read first line (scale)
    std::string line = readNextLine(file, *pos);
    int scale = atoi(line.c_str());

    while(line != ""){
        line = readNextLine(file, *pos);
        std::vector<std::string> tokens = tokenizeString(line, " ");
        if(tokens.size() != 4){
            printf("wrong line size in \"",line,"\"" );
            exit(EXIT_FAILURE);
        }
        int pixelColor = atoi((tokens[1]+tokens[2]+tokens[2]).c_str()); // Convert (xxx,yyy,zzz) in Int(xxxyyyzzz) 
        int value = atoi(tokens[0].c_str());
        printf(tokens[1].c_str(),tokens[2].c_str(),tokens[2].c_str(), " ", pixelColor," ", value); // tmp verif.
        mapPixelValue[pixelColor] = value;
    }
    struct Settings params;
    params.scale = scale;
    params.mapPixelValue = mapPixelValue;
    return params;
}

Graph FileIO::readBMP(const std::string& filename, const Settings& params)
{
    std::string file = readFileContent(filename);
    size_t* pos = 0;

    // Read the first line, should be "P3" for rgb.
    std::string line = readNextLine(file, *pos);
    if(line.compare("P3") != 1){
        printf("wrong color code. Should be <P3> on line 1.");
        exit(EXIT_FAILURE);
    }
    
    // Remove comments lines. and get to the image's dimension.
    line = readNextLine(file, *pos);
    while(line[0] == '#')
        line = readNextLine(file, *pos);
    
    // Read the dimension.
    std::vector<std::string> imgSize = tokenizeString(line, " ");
    if(imgSize.size() != 2){
        printf("wrong size. Should be a matrix.");
        exit(EXIT_FAILURE);
    }
    int width = atoi(imgSize[0].c_str());
    int height = atoi(imgSize[1].c_str());
    
    // Read the bound over the pixel color. Should be 255.
    line = readNextLine(file, *pos);
    if( line != "255\n"){
        printf("wrong color cap. Should be a 255.");
        exit(EXIT_FAILURE);
    }

    std::vector<int> verticesColors(0);
    std::vector<std::vector<int>> adjancecyList(0);

    // Read the rest.
    for(int i = 0; i < height; ++i){
        for(int j = 0; j<width; ++j){
            int color = 0;
            for(int rgb = 0; rgb < 3; ++rgb){
                line = readNextLine(file, *pos);
                color = color*1000 + atoi(line.c_str());
            }
            try
            {
                verticesColors.push_back(params.mapPixelValue.at(color));
            }
            catch(const std::exception& e)
            {
                std::cerr << e.what() << "\nColor ",color," not found in settings.\n";
            }
            
            std::vector<int> adjListPoint;
            if(i != 0)
                adjListPoint.push_back(j + width*(i-1));
            if(i != height - 1)
                adjListPoint.push_back(j + width*(i+1));
            if(j != 0)
                adjListPoint.push_back(j - 1 + width*i);
            if(j != width - 1)
                adjListPoint.push_back(j + 1 + width*1);
            adjancecyList.push_back(adjListPoint);
        }
    }

    return Graph(adjancecyList, verticesColors);
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