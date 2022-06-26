/* 
* Vram.cpp
*
* Created: 7/6/2021 12:13:31 AM
* Author: Brent
*/


#include "Vram.h"

// default constructor
Vram::Vram(portcontroller* portptr,shiftreg* addrptr,uint8_t wepin,uint8_t mempin,uint64_t addressbase):ram( portptr,addrptr,wepin, addressbase)
{
	this->mempin=mempin;
	
} //Vram
void Vram::writeData(uint16_t address,char value)
{
	portptr->digitalwrite(mempin,true);
	write(address,value);
	portptr->digitalwrite(mempin,false);
	

}
void Vram::writeData(uint16_t address,char* value,unsigned int size)
{
	portptr->digitalwrite(mempin,true);
	for(unsigned int i =0;i<size;i++)
	{
		write(address,*(value+i));
	}
	portptr->digitalwrite(mempin,false);
	

}


void Vram::cleardata()
{

}

void Vram::writeInstruction()
{

}

void Vram::writecustomchar(uint8_t  customchar[])
{
	for (int i =0; i<8 ; i++)
	{
		write(this->custom_char_memory_base+i,customchar[i]);	
	}
}

// default destructor
Vram::~Vram()
{
} //~Vram
