#pragma once
#include <fstream>
#include <iostream>
#include "keyvaluepair.h"
using namespace std;
//big endian 
class ASMmodule
{
	enum comvalues {
		nop, inc, dec, mov, ld, ldi, stx, sty, stz, svd, svx, svy, svz, ror, rol,
		txs, txy, txz, tys, tyx, tyz, tzs, tzx, tzy, push, pop, jmp, syscall
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
			return new string{ nop,inc,dec, }
		};

	};
public:
	
	static asmcodes code;
	static comvalues cval;
	volatile keyvaluepair<string, int> kvlist[27] = {};
	ASMmodule();
	void assemble(string);
	void assemble(ifstream*);
private:

};
ASMmodule::ASMmodule()
{
	
};
void ASMmodule::assemble(string filename)
{
	ifstream asmfile =ifstream();
	asmfile.open(filename);
	assemble(&asmfile);


}
void ASMmodule::assemble(ifstream* file)
{
	keyvaluepair<string, int> labels[10000] = {};

	string s;
	while (getline(*file,s))
	{
		string parse[3] = {};
		const char* a = s.c_str();
		int start = 0;
		for (int i = 0; i < s.size(); i++)
		{
			if (s.at(i) == ' ')
			{
				for()
			}
		}

	}

}




