#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include "helper.h"
using namespace std;
class assembler
{
	enum bytecode {
		syscall, incr, incm, decr, decm, mov, ld, ldi, stx, sty, stz, std,
		svd, svx, svy, svz, cmp, cpi, ror, rol, txs, txy, txz, tys, tyx, tyz,
		tzs, tzx, tzy, tsx, tsy, tsz, breq, breqpcf, breqpcb, brne,
		brnepcf, brnepcb, brge, brgepcf, brgepcb, brle, brlepcf,
		brlepcb, brg, brgpcf, brgpcb, brl, brlpcf,
		brlpcb, clr, clf, swap, pop, pushr, pushir, pushi, ldx, ldy,
		ldz, jmp, call, cprm, cpm

		, nop = 255
	};
	string commands[255] =
	{
		"syscall","inc","dec","mov","ld","ldi","stx","sty","stz",
		"std","svd","svx","svy","svz","cmp","cpi","ror","rol",
		"txs","txy","txz","tys","tyx","tyz","tzs","tzx","tzy",
		"tsx","tsy","tsz","breq","breqpcf","breqpcb","brne",
		"brnepcf","brnepcb","brge","brgepcf","brgepcb",
		"brle","brlepcf","brlepcb","brg","brgpcf","brgpcb",
		"brl","brlpcf","brlpcb","clr","clf","swap","pop","push",
		"ldx","ldy","ldz","ret","jmp","call","cpm"







		"nop"
	};
	string dotcommands[255] =
	{
		".define",".org",".var",".const",".code"


	};
	string datatypes[255]
	{
		"byte","word","dword","qword","ptr","asciiz"
	};
	enum sisizes {k=1024, m= 1048576};
	int maxfilesize;
	int curraddress=0;
	string errormessege;

	vector<defined> definelist;
	vector<definedbyte> variables;
	vector<constant> constantlist;
	vector<ascii> asciiconstantlist;
	vector < stringtuple > lines;
	vector < string > linesraw;
	vector < stringtuple > linesstage1;
	vector < stringtuple > linesstage2;
	vector < string > codesegment;
	vector < string > datasegment;

	vector<label> labels;
	vector<uint8_t> bytes;
	ifstream infile;
	ofstream outfile;
	int openin(string infilename)
	{
		string a = cwd + '\\'+ infilename;
		infile.open(a);
		if (infile.is_open() == false)
		{
			
			return -1;
		}
	}
	int openout(string outfilename)
	{
		outfile.open(outfilename);
		if (outfile.is_open() == false)
		{

			return -1;
		}
	}
	void load()
	{
		string line;
		while (getline(infile,line))
		{
			linesraw.push_back(line);
		}
	}
	uint16_t getCommand(string command)
	{

		errormessege = "";
		int pos = 0;
		if (command == commands[0])
		{
			return syscall;
		}
		else if (command == "mov")
		{
			return mov;
		}
		else if (command == "ld")
		{
			return ld;
		}
		else if (command == "ldi")
		{
			return ldi;
		}
		else if (command == "stx")
		{
			return stx;
		}
		else if (command == "sty")
		{
			return sty;
		}
		else if (command == "stz")
		{
			return stz;
		}
		else if (command == "std")
		{
			return std;
		}
		else if (command == "svd")
		{
			return svd;
		}
		else if (command == "svx")
		{
			return svx;
		}
		else if (command == "svy")
		{
			return svy;
		}
		else if (command == "svz")
		{
			return svz;
		}

		else
		{
			errormessege = "command not found";
			return 0xFF00;
		}

	}
	uint16_t getCommand(stringtuple a)
	{
		if (a.a == "inc")
		{
			if (a.b.at(0) == 'r')
			{
				return incr;
			}
			else if (a.b.at(0) == '#')
			{
				return incm;
			}
			else if (isIn(&labels, a.b))
			{
				return incm;
			}
			else
			{
				try
				{
					stoi(a.b);
					return incm;
				}
				catch (exception e)
				{
					int a = 255;
					return ~a;
				}
			}
		}
		else if (a.a == "dec")
		{
			if (a.b.at(0) == 'r')
			{
				return decr;
			}
			else if (a.b.at(0) == '#')
			{
				return decm;
			}
		}
		else
		{
			return getCommand(a.a);
		}
	}
	uint64_t generateAddress(sizes size)
	{
		uint64_t address=curraddress;
		curraddress += size;
		return address;
	}
public:
	assembler()
	{
	}
	int assemble(string infilename, int outfilesize, char siprefix)
	{
		return assemble(infilename, outfilesize, "a.out", siprefix);
	}
	int assemble(string infilename, int outfilesize, string outfilename = "a.out", char siprefix = '\0')
	{
		
		if (infilename == "" || outfilesize % 2 == 1 || outfilename == "")
		{
			if (infilename == "" || outfilename == "")
			{
				errormessege = "infile or outfile name is null";
				return 1;
			}
			if (ispow2(outfilesize));
			{
				errormessege = "out file size is not a power of 2";
				return 2;
			}
		}
		if (openin(infilename) == -1)
		{
			errormessege = "file not found";
			return 3;
		}
		if (openout(outfilename) == -1)
		{
			errormessege = "file not created";
			return 4;
		}
		load();
		if (linesraw[0] != "#asm")
		{
			errormessege = "no assembly tag found on first line";
			return 5;
		}
		bool codesegment = true;
		for (string line : linesraw)
		{
			if (line == "#asm")
			{
				continue;
			}
			if (line.find_first_of(".define"))
			{
				stringlinkedlist* start= splitstring(line);
				stringlinkedlist* ptr=start;
				while (ptr != NULL)
				{
					
				}
			}
			
			line = stripstartingtab(line);
			if (codesegment)
			{
				if (line.find('.') != string::npos)
				{
					errormessege = "data defined in code area";
					return 5;
				}
				if (line._Equal(".data"))
				{
					codesegment = false;
					continue;
				}

			}
			if (!codesegment)
			{
				if (line._Equal(".code"))
				{
					codesegment = true;
					continue;
				}
				for (string a : commands)
				{
					if (containSubstring(line, a))
					{
						errormessege = "code defined in data area";
						return 6;
					}
				}

			}

			
		}







		if (bytes.size() > maxfilesize)
		{


		}
		return 0;
	}




};

