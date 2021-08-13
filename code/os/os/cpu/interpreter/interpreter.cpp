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

}


void interpreter::inc(uint16_t memptr)
{

}

void interpreter::dec(char reg)
{

}

void interpreter::dec(uint16_t memptr)
{

}

void interpreter::run()
{
	
	
}
void interpreter::mov(char regto, char regfrom)
{

}
void interpreter::ld(char regto, uint16_t memptr)
{

}

void interpreter::ldi(char regto,char val)
{

}

void interpreter::nop()
{
	asm volatile("nop");
}


// default destructor
interpreter::~interpreter()
{
	
} //~interpreter
