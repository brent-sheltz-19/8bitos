#pragma once
#include <string>

#include <iostream>

#include <thread>
#include<fstream>
#include<filesystem>
#include <fstream>
#include <iostream>
#include <filesystem>
#include <ios>
using namespace std;
class compiler
{
public:
	string instructions = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
		"k", "l", "m", "n", "o", "p", "q", "r", "d", "t", "u", "v", "w", "x", "y", "z" };
	int opcodes = {};
public:
	compiler();
	
	
	void compile(std::string path);
	int compileinst(std::string inst);
	~compiler();
};
compiler::compiler()
{
	instructions.append( (string)"if"); 
	instructions.append((string)"ifend");
	instructions.append((string) "while");
	instructions.append((string)"whileend");
};


}


inline void compiler::compile(std::string path)
{
	
	opcodes = { 0x01, 0x02,0x03,0x04,0x05,0x06,0x07,0x8,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F, };

	
}

inline int compiler::compileinst(std::string inst)
{
	return 0;
}

compiler::~compiler()
{
}
