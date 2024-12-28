/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <iostream>
#include <string>
#include <cctype>
#include <vector>
#include <unordered_map>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <unordered_map>
#include <vector>
#include <regex>
#include "lexer.hpp"

class SimplePreprocessor {
public:
    // Process the entire input
    void process(const std::string& inputFile, const std::string& outputFile) {
        std::ifstream input(inputFile);
        std::ofstream output(outputFile);
        
        if (!input.is_open() || !output.is_open()) {
            std::cerr << "Error: Could not open file(s)!" << std::endl;
            return;
        }

        std::string line;
        bool inIfBlock = false;  // For handling #if and #endif

        while (std::getline(input, line)) {
            // Remove comments from the line
            line = removeComments(line);
            
            if (line.empty()) continue;

            // Handle the preprocessor directives
            if (line.starts_with("#define")) {
                handleDefine(line);
            } else if (line.starts_with("#include")) {
                handleInclude(line, output);
            } else if (line.starts_with("#if")) {
                inIfBlock = true;  // Add more logic to handle conditions if necessary
            } else if (line.starts_with("#endif")) {
                inIfBlock = false;  // Handle the end of #if block
            } else {
                // Expand macros and write the final line
                output << expandMacros(line) << '\n';
            }
        }

        input.close();
        output.close();
    }

private:
    // Map to store defined macros
    std::unordered_map<std::string, std::string> macros;

    // Remove comments (both single-line and block comments)
    std::string removeComments(const std::string& line) {
        std::string cleanedLine = line;

        // Remove single-line comments (//)
        size_t pos = cleanedLine.find("//");
        if (pos != std::string::npos) {
            cleanedLine = cleanedLine.substr(0, pos);
        }

        // Remove block comments (/* ... */)
        std::regex blockCommentPattern(R"(\/*.*?\*/)");
        cleanedLine = std::regex_replace(cleanedLine, blockCommentPattern, "");

        return cleanedLine;
    }

    // Handle macro definitions: #define <name> <value>
    void handleDefine(const std::string& line) {
        std::string macroLine = line.substr(8); // Skip "#define "
        size_t spacePos = macroLine.find(' ');
        if (spacePos != std::string::npos) {
            std::string name = macroLine.substr(0, spacePos);
            std::string value = macroLine.substr(spacePos + 1);
            macros[name] = value;
        }
    }

    // Handle #include directive
    void handleInclude(const std::string& line, std::ofstream& output) {
        // Simplified handling of #include directives for this example
        std::string includeFile = line.substr(8); // Skip "#include "
        includeFile = includeFile.substr(1, includeFile.size() - 2);  // Remove the surrounding quotes

        std::ifstream includedFile(includeFile);
        if (!includedFile.is_open()) {
            std::cerr << "Error: Could not open included file: " << includeFile << std::endl;
            return;
        }

        std::string includedLine;
        while (std::getline(includedFile, includedLine)) {
            // Remove comments and expand macros
            includedLine = removeComments(includedLine);
            if (!includedLine.empty()) {
                output << expandMacros(includedLine) << '\n';
            }
        }
        includedFile.close();
    }

    // Expand macros in the line
    std::string expandMacros(const std::string& line) {
        std::string expandedLine = line;

        // Check each macro and replace it with its value
        for (const auto& [macro, value] : macros) {
            size_t pos = expandedLine.find(macro);
            while (pos != std::string::npos) {
                expandedLine.replace(pos, macro.length(), value);
                pos = expandedLine.find(macro, pos + value.length());
            }
        }

        return expandedLine;
    }
};
// Function to check if a string is a keyword
bool is_keyword(const std::string& str) {
	static const std::unordered_map<std::string, bool> keywords = {
		{"char", true},
		{"int", true},
		{"long", true},
		{"long long", true},
		{"return", true},
		{"if", true},
		{"else", true}

	};
	
	return keywords.find(str) != keywords.end();
}

int main(int argc,char* argv[]) {
    Lexer lexer = Lexer();
	std::string infile = "main.8bc";
	std::string outfilename="a.p";
	SimplePreprocessor preprocessor;
    // The input C++ file and output file
    preprocessor.process(infile, outfilename);
    std::cout << "Preprocessing complete!" << std::endl;
    
    lexer.tokenize(infile);






	return 0;
}