/* 
* interpreter.cpp
*
* Created: 5/8/2021 1:50:49 AM
* Author: Brent
*/


#include "interpreter.h"

interpreter::interpreter()
{
	registerz= indexreg(&registers[253],&registers[254]);
	registery= indexreg(&registers[251],&registers[252]);
	registerx= indexreg(&registers[249],&registers[250]);
	
	
} //interpreter
void interpreter::inc(char reg)
{
	registers[reg]=registers[reg]+1;
}


void interpreter::inc(uint16_t memptr)
{
	char val=dataram->read(memptr);
	val++;
	dataram->write(memptr,val);
}

void interpreter::dec(char reg)
{
	registers[reg]=registers[reg]-1;
}

void interpreter::dec(uint16_t memptr)
{
	char val=dataram->read(memptr);
	val--;
	dataram->write(memptr,val);

}

void interpreter::run()
{
	bool exitcode=false;
	addressptr=0;
	while(!exitcode)
	{
		char command = baseprogram->read(addressptr);
		if (command==0)
		{
			nop();
		}
		else if (command==1)
		{
			addressptr+=1;
			char  regtoinc = baseprogram->read(addressptr);
			inc(regtoinc);
		}
		else if (command==2)
		{
			uint16_t addresstoinc = baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			inc(addresstoinc);
			addressptr+=2;
			continue;
		}	
		else if (command==3)
		{
			
		}
		else if (command==4)
		{
			
		}
		else if (command==5)
		{
			
		}
		else if (command==6)
		{
			
		}
		
		
		addressptr++;
	}
	
}
void interpreter::mov(char regto, char regfrom)
{
	registers[regto]=registers[regfrom];
}
void interpreter::ld(char regto, uint16_t memptr)
{
	registers[regto]=dataram->read(memptr);
}

void interpreter::ldi(char regto,char val)
{
	registers[regto]=val;
}

void interpreter::st(uint16_t memptr, char regfrom)
{
	dataram->write(memptr,regfrom);
}

void interpreter::stv(uint16_t memptr, char regfrom)
{
	videoram->write(memptr,regfrom);
}

void interpreter::cmp(char reg1 ,char reg2)
{
	if (reg1==reg2)
	{
		
	}
}

void interpreter::nop()
{
	asm volatile("nop");
}


void interpreter::syscall()
{
	//r0 is command
	// rn >r0 is data
	/*
		0-  sleep 1 ms
		
		
		
		
	
	*/
	if (registers[0]==0)
	{
		_delay_ms(1);
	}
	
	

}

// default destructor
interpreter::~interpreter()
{
	
} //~interpreter
