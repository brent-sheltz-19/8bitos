#include <iostream>
#include "clikecode.h"							
#if windows
	#include <Windows.h>
#endif
clikecode c;

int main(int argc, char* argv[])
{
	cout << argv[0];
	//system("cd -c D:\codeing projects\8bitos\code\8bitoscompiler\8bitoscompiler");
	if(c.getFirstLine("8bitosc.txt")=="#c")
	{
		string asmcodes = c.compile("8bitosc.txt");
		cout << asmcodes << endl;
	}
	return  0;
}