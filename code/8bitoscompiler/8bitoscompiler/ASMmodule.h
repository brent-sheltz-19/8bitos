#pragma once
#include <fstream>
#include <iostream>
#include "keyvaluepair.h"
using namespace std;
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
		string syscall = "syscall";
	};
public:
	asmcodes code;

	ASMmodule();
	void assemble();
private:

};
ASMmodule::ASMmodule()
{
};



