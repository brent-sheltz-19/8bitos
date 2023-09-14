/* 
* memory.cpp
*
* Created: 11/7/2022 4:08:46 PM
* Author: Owner
*/


#include "memory.h"

// default constructor
memory::memory()
{
} //memory
memory::memory(portcontroller* a)
{
	portcon = a;
}
memory::memory(portcontroller* a, shiftreg* b)
{
	portcon = a;
	addressreg = b;
}
void memory::write(uint32_t address, uint8_t data)
{
	addressreg->shiftout32(address);
	portcon->writeportc(data);
	portcon->digitalwrite(wepin,true);
	portcon->digitalwrite(wepin,false);
	
}
uint8_t memory::read(uint32_t address)
{
	addressreg->shiftout32(address);
	return portcon->readportd();
}
uint32_t memory::read32(uint32_t address)
{
	uint32_t a,b,c,d;
	addressreg->shiftout32(address+3);
	a = read(address+3);
	addressreg->shiftout32(address+2);
	b = read(address+2);
	addressreg->shiftout32(address+1);
	c = read(address+1);
	addressreg->shiftout32(address);
	d = read(address);
	return (uint32_t)((d<<24)|(c<<16)|(b<<8)|(a<<0));
}
// default destructor
memory::~memory()
{
} //~memory
