// 8bitassembler.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "assembler.h"
#include <filesystem>
#include <iostream>
#include <string>
#ifdef _WIN32
    #define printdir() (system("dir *.txt"))

#elif  __linux__
       #define printdir()(system("ls -l *.txt"))
#else
    #error 
#endif
using namespace std;
using namespace std::filesystem;
static vector<string> infiles;
static string inpath;
static string outpath="a.bin";
static assembler a;
static path cwd = current_path();
static inline void clrscr()
{
    cout << "\033[2J\033[1;1H";
}
static inline void println(string a)
{
    cout << a << endl;
}
static void handlemenu(int act)
{ 
    //vector<string> files;
    
    
    int count = 0;
    for (const auto& entry : directory_iterator(cwd))
    {
        string filename = entry.path().string();
        string txt =  string() +filename[filename.length() - 3] + filename[filename.length() - 2] + filename[filename.length()-1];
    
    }
    if (act == 1)
    {
        
        bool run = true;
        while (run)
        { 
            string in;
            println("enter file name with extension or \"done\"");
            cin>>in;
            cout<<in<<endl;
            if(in.compare("done")!=NULL)
            {
                infiles.push_back(in); 
            }
            if(in.compare("done")==0)
            {
                return;
            }
        }
    }
    else if (act == 2)
    {
      bool run = true;
        while (run)
        { 
            string in;
            println("enter file name with extension or \"done\"");
            cin>>in;
            cout<<in<<endl;
            if(in.compare("done")!=NULL)
            {
                outpath=in; 
            }
            if(in.compare("done")==0)
            {
                return;
            }
        }

    }
    else if (act == 3)
    {
       //printdir();
       for(string a :infiles)
       {
           println(a);
       }
    }
}

static void showMenu()
{
    string in;
    int ret;
loop:
    //println("in:   ");
    clrscr();
    cout<<"output file:   "<<outpath<<endl;
    println("1:enter files to assemble");
    println("2:enter output file name");
    println("3:show files");
    println("4:assemble");
    println("5:exit");
    
    cin >> in;
    try
    {
        ret = atoi(in.c_str());
        if (ret<5 && ret >0)
        {
            if(ret==5)
            {
                exit(0);
            }
            else if(ret==4)
            {
                return;
            }
            else
            {
                handlemenu(ret);
                goto loop;
            }
            
        }
        else
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
    return ;
}

int main()
{
    
    //vector <string> files;
    //cin >> inpath;
    showMenu();
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
