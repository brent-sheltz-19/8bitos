
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

#pragma once
class clikecode
{
    struct clikecodeinstructions
    {
        string write = "write";
        string semicolan = ";";
        string colan = ":";
        string leftcurlybrace = "{";
        string rightcurlybrace = "}";
        string leftparens = "(";
        string rightparens = ")";
        string leftbracket = "[";
        string rightbracket = "]";
        
        string out = "out";
        string in = "in";
        
        string equality = "==";
        string notequal = "!=";
        string greaterequal = ">=";
        string lessequal = "<=";
        
        string singlelinecomment = "//";
        string multilinecommentstart = "/*";
        string multilinecommentend = "*/";
        
        string refrence = "&";
        string derefrence = "*";

        string increment = "++";
        string decrement = "--";
        string power = "**";
        string setequal = "=";

        string byte = "byte";
        string word = "word";
        string dword = "dword";
        string qword = "qword";
        
        string ifstatment = "if";
        string whilestatment = "while";
        
        

    };
    struct errors
    {
        string dividebyzero = "divide by zero";
        string invalid;
        string openfilerror = " file not open or found";
    };

public:
    clikecodeinstructions code;
    errors error;
    
    clikecode();
    string getError();
    string findError(string in);
    int compilecommand(string command);
    string compile(string filename);
    string getFirstLine(string filename);
private:
    //string convertFileToString(string filename);
};

clikecode::clikecode()
{
}
string clikecode::getError()
{
    return string();
}
string clikecode::findError(string in)
{
    if (in == "/0")
    {
        return error.dividebyzero;
    }
    else
    {
        const char* chars = in.c_str();
        bool divide = false;
        bool zero = false;
        //for()
    }

    
    
    return string();
}
int clikecode::compilecommand(string command)
{

    return NULL;
}
string clikecode::compile(string filename)
{
    static string cwords;
    ifstream file(filename);

   
    int index = 0;
   
    if (file.is_open())
    { 
       
        string line="";
        while (getline(file, line))
        {
            if (line == "")
            {
                continue;
            }
            string word = "";
            int i = 0;
            while (i < line.length())
            {
                char a = line.at(i);
                if (a == '{' || a == '}')
                {
                    break;
                }
                else if (a == ' '||a == '\n')
                {
                    
                        cwords += word+';';
                        word = "";
                    
                }
                else if (a == '\0')
                {
                    break;
                }
                else
                {
                    word += a;
                }
                i++;
            }
            if (word != "")
            {
                cwords += word+';';

            }
        }
        //ofstream file2;
        //file2.open(outname + ".asm", ios::out);
        /*
        for (int outer = 0; outer < 100000; outer++)
        {
            if (asmcode[outer] == NULL)
            {
                break;
            }
            for (int inner = 0; inner < 3; inner++)
            {
                file2 << asmcode[outer][inner];
            }
        }*/
    }    
    else
    {
        cwords = error.openfilerror;
    }
    return cwords;
}
string clikecode::getFirstLine(string filename)
{
    ifstream file(filename);
    if (file.is_open())
    {

        string line = "";
        while (getline(file, line))
        {
            if (line == "")
            {
                continue;
            }
            else
            {
                return line;
            }
        }
    }
    else
    {

    }
}

