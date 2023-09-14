#include "ssd.h"
#include "cpu.h"
#include<iostream>

struct os
{
	
public:
	cpu* core;
	ssd* perm[8];

public:
	os()
	{
		for (int i = 0; i < 8; i++)
		{
			perm[i] = new ssd();
		}
	}
	os(const os&);
	os(cpu* c)
	{
		core = c;
		for (int i = 0; i < 8; i++)
		{
			perm[i] = new ssd(core->getRam());
		}
	}
	void load(int disk)
	{
		perm[disk]->load(0);
	}
	void loadtovideo(int disk)
	{
		perm[disk]->setMemory(core->getvRam());
		perm[disk]->load(0);
	}
	void store(uint8_t * a,size_t s,int disk)
	{
		perm[disk]->write((char*)a, s);
	}
	void debug()
	{
		cout << "size of os class " << sizeof(os) << endl;
		cout << "size of cpu class " << sizeof(cpu) << endl;
		cout << "size of ram class " << sizeof(Ram) << endl;
	}
	void mount()
	{
		string b;
		string num;
		cout << "enter path of binary file to mount: \n";
		cin >> b;
		Diskid:
		cout << "enter disk id 0-7: \n";
		cin >> num;
		int id = stoi(num);
		if (id < 0)
		{
			cout << "aborting mount \n";
		}
		else if (id > 7)
		{
			cout << "enter value 0-7\n";
			goto Diskid;
		}
		else
		{
			perm[id]->mount(b);
		}
		loadtovideo(id);
		
	}
	void setBackgroundblue()
	{
		for (int i = 1; i < core->getvRam()->getSize(); i++)
		{
			if (i % 3 ==0)
			{
				core->getvRam()->write(i-1, 0xff);
			}
			else
			{
				core->getvRam()->write(i-1, 0);
			}
		}
	}
};
