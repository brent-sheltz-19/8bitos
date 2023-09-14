#pragma once
#include <fstream>
#include <iostream>
#include <string>
using namespace std;
class File
{
public: 
		static string converttostring(string);
        static int countlines(ifstream file);


};

string File::converttostring(string filename)
{
    static string cwords;
    ifstream file(filename);
    string lines="";
    int index = 0;
    if (file.is_open())
    {
        int numlines = 0;
        string line = "";
        while (getline(file, line))
        {
            if (line != "")
            {
                if(line.at(line.length()-1)==':'||line.at(0)=='#')
                { 
                    lines += line + ";";
                }
                else
                {
                   lines += line;
                }
            }
        }
    }
	return lines;
}

inline int File::countlines(ifstream file)
{
    int lines = 0;
    string l = "";

    return 0;
}
