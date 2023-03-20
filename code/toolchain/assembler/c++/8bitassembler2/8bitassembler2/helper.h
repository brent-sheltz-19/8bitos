#pragma once
#include <iostream>
#include <string>
#include <vector>
#include <direct.h>
using namespace std;
string cwd = _getcwd(NULL,0);
enum sizes
{
	byte = 1,
	word = 2,
	dword = 4,
	qword = 8,
	asciiz = 9
};
struct label
{
	string labelname;
	uint32_t address;
	label(string name, uint32_t add)
	{
		labelname = name;
		address = add;
	}
	label(string name)
	{
		labelname = name;
	}
	label()
	{
		labelname = "";
		address = 0;
	}
};
struct stringtuple
{
	string a, b, c;
	stringtuple(string a1, string b1, string c1)
	{
		a = a1;
		b = b1;
		c = c1;
	}
	stringtuple()
	{
		a = "";
		b = "";
		c = "";
	}
};
struct definedbyte
{
	label l;
	sizes datatype;
	uint64_t val;
};
struct constant
{
	label l;
	sizes datatype;
	uint64_t val;
};
struct ascii
{
	label l;
	string asciitext;
	ascii(label a, string text)
	{
		l = a;
		asciitext = text;
	}ascii()
	{
	}
};
struct defined {
	string name;

	string value;
};
struct stringlinkedlist
{
	string a;
	stringlinkedlist* next;
	void addend(stringlinkedlist* A)
	{
		stringlinkedlist* ptr = next;
		while (ptr != NULL)
		{
			ptr = ptr->next;
		}
		ptr->next = A;
	}

};
/*
removes charachters from start to position

*/
static string strip(string a, int pos)
{
	const char* linecstr = a.c_str();
	int i = pos;
	while (i >= 0)
	{
		linecstr++;
		i--;
	}
	a = string(linecstr);
	return a;
}
/*
* determines if charachter b is in string a
*/
static bool contains(string a, char b)
{
	for (char i : a)
	{
		if (i == b)
		{
			return true;
		}
	}
	return false;
}
static bool containSubstring(string a, string b)
{
	if (a.find(b) != string::npos)
	{
		return true;
	}
	return false;
}
/*
* determines the compiled size of a line based on a command set
*/
static int getBytesizeofline(string* commands, string line)
{
	int bytesize = 0;
	stringtuple linesplit;
	int spacepos = 0;
	spacepos = line.find(' ');
	string command, part1, part2;
	command = line.substr(0, spacepos);
	line = strip(line, spacepos);
	int comma = line.find(',');
	for (int i = 0; i < 255; i++)
	{
		string a = commands[i];
		if (a == command)
		{
			bytesize++;
			break;
		}
	}
	if (comma > 0)
	{
		if (line.at(0) == 'r')
		{
			bytesize += 1;
		}
		else
		{
			bytesize += 4;
		}
		strip(line, comma);
		if (line.at(0) == 'r')
		{
			bytesize += 1;
		}
		else
		{
			bytesize += 4;
		}
	}
	else
	{
		if (line.at(0) == 'r')
		{
			bytesize += 1;
		}
		else
		{
			bytesize += 4;
		}
	}
	return bytesize;
}
/*
	determins if a string value is in a vector of labels 


*/
static bool isIn(vector<label>* a, string  b)
{
	for (label l : *a)
	{
		if (l.labelname == b)
		{
			return true;
		}
	}
	return false;

}
/*
* removes tabs if there are any before the main string 
*/
static string stripstartingtab(string a)
{
	const char* linecstr = a.c_str();
	while (a[0] == '\t')
	{
		linecstr++;
		a = string(linecstr);
	}
	return a;
}
static stringlinkedlist* splitstring(string a, char delim)
{
	stringlinkedlist list;
	int i = 0;
	while (i<a.length())
	{
		if (a.at(i) == delim)
		{
			stringlinkedlist node;
			string v;
			for (int t = 0; t < i; t++)
			{
				v.append(a.at(t)+"");
			}
			node.a = v;
			list.addend(&node);
			i = 0;
		}
		else
		{
			i++;
		}
	}
}
static stringtuple stringtotuple(string a)
{
	stringtuple ret = stringtuple();
	int pos = 0;
	

	ret.c = a;
	return ret;
}
static int ispow2(int value)
{
	return (value && (!(value & (value - 1))));
}
