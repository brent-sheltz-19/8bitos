// 8bitoscompiler.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <iostream>
#include <sstream>
#include <fstream>

using namespace std;
const static string words[] = { "a","b", "c", "d", "e", "f", "g", "h", "i", "j", 
"k", "l", "m", "n", "o", "p","q", "r", "d", "t", "u","v", "w", "x", "y", "z"
,"if","ifend","while","whileend","ifi","ifiend","whilei","whileiend"};
const static uint8_t codes[] = { 1,2,3,4,5,6,7,8,9,0x0a,
0x0b,0x0c,0x0d,0x0e,0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18
,0x19,0x1a,0x1b,0x1c,0xb0,0xb1,0xb2,0xb3,0xc0,0xc1,0xc12,0xc3 };

//
using namespace std;

void write(std::string a,std::string dir)
{
	
		using namespace std;
		std::string dir2 = dir+"\\"+"out";
		int x = 0x0c;
		std::ofstream file(dir2, ios_base::out | ios_base::trunc);//,file.ap
		file << x << endl;
		

		file.close();
	
}
string readline(ifstream file,int linenum)
{
	int a = 0;
	string line;

	getline(file, line);
	{
		try 
		{
			if (a == linenum)
			{
				return line;
			}
			else
			{
				a++;
			
			}
		}
		catch (exception e)
		{
			return "outof bounds";
		}


	}

}
int coompileln(string line)
{
	return 0;
}
int main()
{
	string dir = "C:\\Users\\Owner\\Desktop\\8bitos";
	string filename;
	cout << " input file name";
	(cin >> filename);
	write("h", dir);


	


}
// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
