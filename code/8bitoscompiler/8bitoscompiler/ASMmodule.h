#pragma once
#include <fstream>
#include <iostream>
#include <sstream>
#include "label.h"
#include "keyvaluepair.h"
#include "linkedlist.h"
#include "Instruction.h"
using namespace std;
//big endian 
namespace asmmodule
{
	enum comvalues {
		syscall, inc, dec, mov, ld, ldi, stx, sty, stz, svd, svx, svy, svz, ror, rol,
		txs, txy, txz, tys, tyx, tyz, tzs, tzx, tzy, push, pop, jmp, nop = 255
	};
	struct asmcodes
	{
		string nop = "nop";
		string inc = "inc";
		string dec = "dec";
		string mov = "mov";
		string ld = "ld";
		string ldi = "ldi";
		string stx = "stx";
		string sty = "sty";
		string stz = "stz";
		string std = "std";
		string svd = "svd";
		string svx = "svx";
		string svy = "svy";
		string svz = "svz";

		string ror = "ror";
		string rol = "rol";
		string breq = "breq";
		string bregpcf = "breqpcf";

		string txs = "txs";
		string txy = "txy";
		string txz = "txz";
		string tys = "tys";
		string tyx = "tyx";
		string tyz = "tyz";
		string tzs = "tzs";
		string tzx = "tzx";
		string tzy = "tzy";
		string push = "push";
		string pop = "pop";
		string jmp = "jmp";
		string syscall = "syscall";
		string getStrings()
		{
			return string(nop + "," + inc + "," + dec);
		};

	};
	struct dotdir
	{
		enum definelen { db, dw, dq = 4 };
		definelen size;
		long address;


	};
	class ASMmodule
	{



	public:
		static bool dotdirenabled;
		asmmodule::asmcodes code;
		asmmodule::comvalues cval;
		keyvaluepair<string, int> getLabel(string);
		bool islabel(string);
		ASMmodule();
		void assemble(string, string outname);
		void assemble(ifstream*, string outname);
	protected:
		vector<label> labels = {};
		long labelcount;
	private:
		string asmcode[100000][3] = {};
		long bytecount = 0;



	};
	string substring(string a, int start, int end)
	{
		string ret = "";
		for (int i = start; i < end; i++)
		{
			ret += a.at(i);
		}
		return ret;
	}
	string substring(string a, int start)
	{
		string ret = "";
		for (int i = start; i < a.length(); i++)
		{
			ret += a.at(i);
		}
		return ret;
	}
	bool contains(string a, char b)
	{
		for (int i = 0; i<a.length();i++)
		{

			if (a.at(i)== b)
			{
				return true;
			}
		}
		return false;
	}
	/*
	bool ASMmodule::islabel(string a)
	{
		for (keyvaluepair<string, int> b : labels)
		{
			if (a == b.getKey())
			{
				return true;
			}
		}
		return false;
	}
	keyvaluepair<string, int> ASMmodule::getLabel(string a)
	{
		for (keyvaluepair<string, int> b : labels)
		{
			if (a==b.getKey())
			{
				return b;
			}
		}
	}
	*/
	ASMmodule::ASMmodule()
	{

	};
	void ASMmodule::assemble(string filename, string outname = "a")
	{
		ifstream asmfile = ifstream();
		asmfile.open(filename);
		assemble(&asmfile, outname);

				 
	}
	void ASMmodule::assemble(ifstream* file, string outname = "a")
	{
		string s;
		linkedlist<Instruction> list = linkedlist<Instruction>();

		int asmcodecounter = 0;
		ofstream compiledbinary;
		compiledbinary.open(outname + ".bin", ios::out | ios::binary);
		int line=0;
		
		while (getline(*file, s))
		{
			Instruction ins = Instruction();
			int parsepos = 0;
			const char* a = s.c_str();
			int start = 0;
			if(contains(s,' ')||contains(s,',')||contains(a,';'))
			{
				for (int i = 0; i < s.size(); i++)
				{
					string comm = "";
					if (s.at(i) == ' ')
					{
						comm = substring(s, 0);
						ins.ins = comm;
						start = i;
					}
					else if (s.at(i) == ',')
					{
						comm = substring(s, start + 1, i);
						ins.param1 = comm;
						start = i;
					}
					else if (s.at(i) == ';')
					{
						comm = substring(s, start + 1, i);
						ins.param2 = comm;
					}
				}
			}
			else if (s== "\n")
			{
				continue;
			}
			else if (contains(a, ':'))
			{
				label l = label();
				l.labelname = substring(a, 0, s.length() - 1);
				l.address = bytecount;
				labels.push_back(l);
			}
			
			list.add(new Node<Instruction>(ins));
			line++;
		}
		Node<Instruction> ptr = list.getHead();
		while (&ptr!=NULL)
		{

			string instruction = ptr.data.ins;
			if (instruction == code.syscall)
			{

				compiledbinary << 0;
				bytecount++;
			}
			else if (instruction == code.inc)
			{
				string determiner = ptr.data.param1;

				if (determiner.at(0) == '#')
				{
					compiledbinary << 2;
					bytecount++;
					string addr = substring(ptr.data.param1, 1);
					stringstream s = stringstream(addr);
					int binval = 0;
					s >> binval;
					compiledbinary << binval;
					bytecount++;
				}
				else
				{
					compiledbinary << 1;
					string addr = substring(ptr.data.param1, 1);
					stringstream s = stringstream(addr);
					int binval = 0;
					s >> binval;
					compiledbinary << binval;


				}

			}
			else if (instruction == code.dec)
			{
				string determiner = ptr.data.param1;
				if (determiner.at(0) == '#')
				{
					compiledbinary << 4;
					string addr = substring(ptr.data.param1, 1);
					stringstream s = stringstream(addr);
					int binval = 0;
					s >> binval;
					compiledbinary << binval;
				}
				else
				{
					compiledbinary << 3;
					string addr = substring(ptr.data.param1, 1);
					stringstream s = stringstream(addr);
					int binval = 0;
					s >> binval;
					compiledbinary << binval;


				}
			}
			else if (instruction == code.mov)
			{

				compiledbinary << 3;
				string addr = substring(ptr.data.param1, 1);
				stringstream s = stringstream(addr);
				int binval = 0;
				s >> binval;
				compiledbinary << binval;
				addr = substring(ptr.data.param2, 2);
				s = stringstream(addr);
				s >> binval;
				compiledbinary << binval;
			}

		}






	}
};


