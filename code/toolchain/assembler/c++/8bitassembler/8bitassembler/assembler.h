#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;
struct label
{
	string labelname;
	uint32_t address;
};
class assembler
{
public:
	enum bytecode { nop = 0 };
	
	string commands[4] = {"nop","b","c","f"};
	string errormessege;
	vector<string> lines;
	vector<label> labels;
	assembler()
	{
		
	}
	void assemble(string infilepath)
	{
		assemble(infilepath, "a.out");
	}
	void assemble(string infilepath,string outfilepath)
	{
		ifstream in;
		ofstream out;
		if (infilepath == "")
		{
			errormessege = "no file entered";
			return;
		}
		else
		{
			in.open(infilepath);
			out.open(outfilepath, ios::binary);
			if (!in.is_open())
			{
				errormessege = "failed to open input";
				in.close();
				out.close();
				return;
			}
			if (!in.is_open())
			{
				errormessege = "failed to open output";
				in.close();
				out.close();
				return;
			}

		}



		

	}
	uint16_t getCommand(assembler p,string command)
	{
		errormessege = "";
		int pos=0;
		if (command == commands[0])
		{
			return nop;
		}
		
		else
		{
			errormessege = "command not found";
			return 0xFF00;
		}

	}

};

