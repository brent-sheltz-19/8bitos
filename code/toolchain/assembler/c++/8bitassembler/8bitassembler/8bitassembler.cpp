// 8bitassembler.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <string>
#include "assembler.h"
using namespace std;
static string inpath,outpath;
static assembler a;
static inline void println(string a)
{
    cout << a << endl;
}

static int showmenu()
{
    string in;
    int ret;
    loop:
    println("1:enter file name to assemble");
    println("2: enter output file name");
    println("3:assemble");
    cin >> in;
    try
    {
        ret = atoi(in.c_str());
        if (ret >3)
        {
            println("not a number selection");
            goto loop;
        }
    }
    catch (exception e)
    {
        println("not a number selection");
        goto loop;
    }
    return ret;
}
static void handlemenu(int act)
{

}

int main()
{
    
    vector <string> files;

    cin >> inpath;
    a.assemble(inpath, outpath);
    cout << sizeof(a)<<endl;
    //cout << sizeof(a.errormessege)<<endl;
    
    return 0;
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
