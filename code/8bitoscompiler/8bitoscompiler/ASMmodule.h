#pragma once
#include <fstream>
#include <iostream>
using namespace std;
class ASMmodule
{
	struct asmcodes
	{
		string nop = "nop";
		string inc = "nop";
		string dec = "nop";
		string mov = "nop";
		string ld = "nop";
		string ldi = "nop";
		string stx = "nop";
		string sty = "nop";
		string stz = "nop";
		string std = "nop";
		string stv = "nop";
		string stz = "nop";
		string ror = "nop";
		string rol = "nop";
		string txs = "nop";
		string txy = "nop";
		string txz = "nop";
		string tys = "nop";
		string tyx = "nop";
		string tyz = "nop";
		string tzs = "nop";
		string tzx = "nop";
		string tzy = "nop";
		string push = "push";
		string pop = "pop";
		string jmp = "jmp";
		string call = "call";
	};
public:
	ASMmodule();
	void assemble();
};
ASMmodule::ASMmodule()
{

}

