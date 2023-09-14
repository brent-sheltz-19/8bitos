#include <iostream>
#include "clikecode.h"	
#include "ASMmodule.h"
#include <map>
#define OS 0
#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__NT__)
	#include <Windows.h>
	#define OS 1

#elif defined( __linux__)
	#include <linux.h>
	#define OS 2
#endif
//ofstream
using namespace asmmodule;
int os = OS;
clikecode c;
ASMmodule asmmod;
int main(int argc, char* argv[])
{
	cout <<system_category << endl;
	string  options[3] = {};
	if (os == 1)
	{
		system("dir");
	}
	else
	{
		system("ls");
	}
	
	//system("cd -c D:\codeing projects\8bitos\code\8bitoscompiler\8bitoscompiler");
	if(c.getFirstLine("8bitosc.txt")=="#c")
	{
		string asmcodes = c.compile("8bitosc.txt");
		cout << asmcodes << endl;
	}
	else if (c.getFirstLine("8bitasm.txt") == "#asm")
	{
		asmmod.assemble(argv[0]);
	}
	
	return  0;
}