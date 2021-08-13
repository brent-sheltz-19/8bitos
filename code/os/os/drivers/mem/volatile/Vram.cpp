/* 
* Vram.cpp
*
* Created: 7/6/2021 12:13:31 AM
* Author: Brent
*/


#include "Vram.h"

// default constructor
Vram::Vram(portcontroller* portptr,shiftreg* addrptr,shiftreg* datarptr,uint8_t wepin,uint64_t addressbase):ram( portptr,addrptr,datarptr,wepin, addressbase)
{
	
} //Vram
void Vram::writeData()
{

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
