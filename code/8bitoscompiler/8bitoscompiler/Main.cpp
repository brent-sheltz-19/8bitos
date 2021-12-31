#include <iostream>
#include "clikecode.h"	
#include "ASMmodule.h"
#include <map>
#if windows
	#include <Windows.h>
#endif
//ofstream
clikecode c;
ASMmodule asmmod;
int main(int argc, char* argv[])
{

	cout << argv[0];
	//system("cd -c D:\codeing projects\8bitos\code\8bitoscompiler\8bitoscompiler");
	ifstream file = ifstream(argv[0]);
	
	
	
	
	
	/*
	if(c.getFirstLine("8bitosc.txt")=="#c")
	{
		string asmcodes = c.compile("8bitosc.txt");
		cout << asmcodes << endl;
	}
	else if (c.getFirstLine("8bitosc.txt") == "#c")
	{
		asmmod.assemble("8bitosasm.txt");
	}
	*/
	return  0;
}