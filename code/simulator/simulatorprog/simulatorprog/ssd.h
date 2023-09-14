#pragma once
#include <iostream>
#include <fstream>
#include <string.h>
#include "Ram.h"

using namespace std;
class ssd
{
	Ram* memory;
	fstream datafile;
public:	
	string path;
	ssd();
	ssd(Ram*);
	int mount(char*);
	int mount(string);
	uint8_t read();
	istream& read(int addr,char* , int size);
	istream& readall(char* , int size);
	long sizeofimage();
	void load(uint32_t writeaddress);
	void setMemory(Ram*);
	void write(char* ,int);
	~ssd();
};

inline ssd::ssd()
{
	memory = nullptr;
}

inline ssd::ssd(Ram* a)
{
	memory = a;
	datafile = fstream();
}

inline int ssd::mount(char* a)
{
	path = a;
	datafile.open(a, ios::in | ios::out | ios::binary);
	return 0;

}

inline int ssd::mount(string a)
{
	string dir = "C:\\Users\\Owner\\Documents\\GitHub\\8bitos\\code\\simulator\\simulatorprog\\Debug\\";
	dir.append(a);
	path = dir;		
	datafile.open(path, ios::in | ios::out | ios::binary);
	if (datafile.is_open())
	{
		return 1;
	}
	cout << "file error" << endl;
	return 0;
}

inline uint8_t ssd::read()
{
	char a; 
	datafile.read(&a, 1);
	return a;
}
inline istream& ssd::read(int addr, char* a, int size)
{
	datafile.seekg(addr);
	return datafile.read(a,size);
}
inline long ssd::sizeofimage()
{
	datafile.seekg(0, ios_base::end);
	int size = datafile.tellg();
	datafile.seekg(0);
	return size;
}
inline void ssd::write(char* a, int s)
{
	datafile.write(a, s);
}
inline ssd::~ssd()
{
	memory == nullptr;
	datafile.close();
}
inline void ssd::load(uint32_t writeaddress)
{
	long size = sizeofimage();
	int count = 0;
	while (count < size)
	{
		memory->write(writeaddress + count, read());
		//cout << datafile.tellg();
		count++;
	}
}

inline void ssd::setMemory(Ram* a)
{
	memory = a;
}
