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
<<<<<<< HEAD
	enum sizes 
	{
		byte = 1,
		word = 2,
		dword = 4,
		qword = 8
	};
	struct label
	{
		string labelname;
		uint32_t address;
	};
	struct definedbyte
	{
		label l;
		sizes datatype;
		uint64_t val;
	};
	struct constant
	{
		label l;
		sizes datatype;
		uint64_t val;
	};
	struct ascii
	{
		label l;
		uint32_t base;
		string asciitext;

	};
public:
	
	enum bytecode {
		syscall, incr, incm, decr, decm, mov, ld, ldi, stx, sty, stz, std,
		svd, svx, svy, svz, cmp, cpi, ror, rol, txs, txy, txz, tys, tyx, tyz,
		tzs, tzx, tzy, tsx, tsy, tsz, breq, breqpcf, breqpcb, brne,
		brnepcf, brnepcb, brge, brgepcf, brgepcb, brle, brlepcf,
		brlepcb, brg, brgpcf, brgpcb, brl, brlpcf,
		brlpcb, clr, clf, swap, pop, pushr, pushir, pushi, ldx,ldy,
		ldz,jmp,call,cprm,cpm
		
		, nop=255
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
=======
public:
	enum bytecode { nop = 0 };
>>>>>>> parent of 7d88c7d (big update)
	
	string commands[4] = {"nop","b","c","f"};
	string errormessege;
<<<<<<< HEAD
	vector<definedbyte> variables;
	vector<constant> constantlist;
	vector<ascii> asciiconstantlist;
	vector < stringtuple > lines;
	vector < string > linesraw;
=======
	vector<string> lines;
>>>>>>> parent of 7d88c7d (big update)
	vector<label> labels;
	assembler()
	{
		
	}
<<<<<<< HEAD
	static bool isIn(vector<label>* a,string  b)
	{
		for (label l : *a)
		{
			if (l.labelname == b)
			{
				return true;
			}
		}
		return false;

	}
	static string stripstartingtab(string a)
	{
		const char* linecstr = a.c_str();
		while (a[0] == '\t')
		{
			linecstr++;
			a = string(linecstr);
		}
		return a;
	}
	static string strip(string a, int pos)
	{
		const char* linecstr = a.c_str();
		int i = pos;
		while (i >= 0)
		{
			linecstr++;
			i--;
		}
		a = string(linecstr);
		return a;
	}
	static int getBytesizeofline(string* commands, string line)
	{
		int bytesize = 0;
		stringtuple linesplit;
		int spacepos = 0;
		spacepos = line.find(' ');
		string command, part1, part2;
		command = line.substr(0, spacepos);
		line = strip(line, spacepos);
		int comma = line.find(',');
		for (int i = 0 ; i <255;i++)
		{
			string a = commands[i];
			if (a == command)
			{
				bytesize++;
				break;
			}
		}
		if (comma > 0)
		{
			if (line.at(0) == 'r')
			{
				bytesize += 1;
			}
			else
			{
				bytesize += 4;
			}
			strip(line, comma);
			if (line.at(0) == 'r')
			{
				bytesize += 1;
			}
			else
			{
				bytesize += 4;
			}
		}
		else
		{
			if (line.at(0) == 'r')
			{
				bytesize += 1;
			}
			else
			{
				bytesize += 4;
			}
		}
		return bytesize;
	}
	static int getBytesizeofvariable(string* commands, string line)
	{
		int bytesize = 0;
		string define, size, val;
		int firstspace = line.find(' ');
		define = line.substr(firstspace);
		return bytesize;
	}
	static constant makeconst(string line)
	{
		
	}
	static ascii makeascii(string line)
	{
		strip(line,line.find(' '));
		return ascii();
	}
	static bool isNum(string a)
	{
		try
		{
			stol(a);
			return true;
		}
		catch (exception e)
		{
			return false;
		}
	}
	
=======
>>>>>>> parent of 7d88c7d (big update)
	void assemble(string infilepath)
	{
		assemble(infilepath, "a.out");
	}
	void assemble(string infilepath,string outfilepath)
	{
		//gets file
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
<<<<<<< HEAD
		//determines if assembly file 
		getline(in, line);
		if (line != "#asm")
		{
			cout << "not an assembly file" << endl;
			return;
		}
		//reads all lines
		while (getline(in,line))
		{	
			linesraw.push_back(line);
		}
		//determines size of progeam
		long progsize = 0;
		for (string line : linesraw)
		{
			progsize += getBytesizeofline(commands,line);
		}
		cout << progsize << endl;
		for(string line :linesraw)
		{

			if (line == "" || line == "\t")
			{
				continue;
			}
			line = stripstartingtab(line);
			if (line.at(0) == '.')
			{
				stringtuple a = stringtuple(line, "", "");
				lines.push_back(a);

				continue;
			}
			while (line.at(line.length() - 1) == ' ')
			{
				line = line.substr(0, line.length() - 1);
			}
			if (line.compare("nop") == 0 || line.compare("nop;") == 0)
			{
				stringtuple a = stringtuple("nop", "", "");
				lines.push_back(a);
				byteaddress++;

			}
			else if (line.compare("syscall") == 0 || line.compare("syscall;") == 0)
			{
				stringtuple a = stringtuple("syscall", "", "");
				lines.push_back(a);
				byteaddress++;
			}
			else if (line[line.length() - 1] == ':')
			{
				label a;
				a.address = byteaddress;
				a.labelname = line.substr(0, line.length() - 1);
				labels.push_back(a);
			}
			else
			{

				string command, arg1, arg2;
				byteaddress += getBytesizeofline(commands, line);
				//seperate command
				int pos = line.find(' ');
				command = line.substr(0, pos);
				line = strip(line, pos);
				//seperate arg1
				pos = line.find(',');
				if (pos > 0)
				{
					arg1 = line.substr(1, pos);
					if (line.at(0) == 'r')
					{
						arg1 = line.substr(0, pos);
						line = strip(line, pos);

					}
					else
					{
						arg1 = line.substr(0, pos);

					}

					if (line.at(line.length() - 1) == ';')
					{
						arg2 = line.substr(0, line.length() - 1);

					}
					else
					{
						arg2 = line.substr(0, line.length());

					}
				}
				else
				{
					if (line.at(line.length() - 1) == ';')
					{
						arg1 = line.substr(0, line.length() - 1);

					}
					else
					{
						arg1 = line.substr(0, line.length());
					}
				}
				stringtuple a = stringtuple(command, arg1, arg2);
				lines.push_back(a);
			}

		}
		// gets binary command
		for (stringtuple a : lines)
		{
			if (a.a.at(0)=='.')
			{
				const char* f = strstr(line.c_str(), "asciiz");
				const char* u = strstr(line.c_str(), "ASCIIZ");
				if (f != NULL||u!=NULL)
				{
					asciiconstantlist.push_back(makeascii(line));
				}
				f = strstr(line.c_str(), "byte");
				u = strstr(line.c_str(), "BYTE");
				if (f != NULL || u != NULL)
				{
					//list.push_back(makeascii(line));
				}
			
			}
			else
			{
				uint16_t bincom = getCommand(a);
			
				if ((bincom >> 8) == 0)
				{
					uint8_t binarycommand = (uint8_t)bincom;

					binary.push_back(binarycommand);

				}
				if (a.b != "")
				{
					if (isIn(&labels, a.b))
					{
						for (label l : labels)
						{
							if (l.labelname == a.b)
							{
								binarypushback(l.address);
							}
						}
					}
					else if (a.b.at(0) == 'r' || a.b.at(0) == '#')
					{
						a.b = a.b.substr(1, a.b.length());
						uint32_t t = stol(a.b);
						binarypushback(t);
					}
					else if (isNum(a.b))
					{
						uint32_t t = stol(a.b);
						binarypushback(t);
					}
				}
				if (a.c != "")
				{
					if (isIn(&labels, a.c))
					{
						for (label l : labels)
						{

							if (l.labelname == a.c)
							{
								binarypushback(l.address);
							}
						}
					}
					else if (a.c.at(0) == 'r' || a.c.at(0) == '#')
					{
						a.c = a.c.substr(1, a.c.length());

						uint32_t t = stol(a.c);
						binarypushback(t);
					}
					else if (isNum(a.c))
					{
						uint32_t t = stol(a.c);
						binarypushback(t);
					}
				}
			}
		}
		//writes binary
		for (uint8_t bin : binary)
		{
			out.write((char*)&bin ,1);
		}
		in.close();
		out.close();
	}
	void binarypushback(uint32_t val)
	{
		uint32_t t = val;
		uint8_t* vp = (uint8_t*)&t;
		uint8_t a1 = vp[0];
		uint8_t b = vp[1];
		uint8_t c = vp[2];
		uint8_t d = vp[3];
		binary.push_back(d);
		binary.push_back(c);
		binary.push_back(b);
		binary.push_back(a1);
	}
	uint16_t getCommand(string command)
	{
=======



>>>>>>> parent of 7d88c7d (big update)
		

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
