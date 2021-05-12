
#include <fstream>
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

    };

public:
    clikecodeinstructions code;
    errors error;
    
    clikecode();
    string getError();
    string findError(string in);
    int compilecommand(string command);
    string compile(string filename);
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

    ifstream file;
    file.open(filename);
    static string cwords;
    int index = 0;
    for (string line; getline(file, line);)
    {
        string word="";
        int i = 0;
        while (i < line.length())
        {
             char a = line.at(i);
            
             if (a == *" ")
             {
                 if (word == "")
                 {
                     continue;
                 }
                 else
                 {
                     cwords += word;
                 }
             }
             else
             {
                 word+=a;
             }

        }

    }    
    return cwords;
}
