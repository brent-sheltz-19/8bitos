/* 
* keyboard.cpp
*
* Created: 3/8/2022 12:49:45 AM
* Author: Brent
*/


#include "keyboard.h"
#include <avr/pgmspace.h>

// default constructor
keyboard::keyboard()
{
	address = 0;
} //keyboard
keyboard::keyboard(uint32_t addr)
{
	address = addr;
}
void keyboard::read(char* buff)
{
	addrreg->shiftout32(address);
	buff[0]=port->readportb();
	
}
void keyboard::read(char* buff,uint32_t size)
{
	uint32_t i =0;
	addrreg->shiftout32(address);
	while(i<size)
	{
		buff[i]=port->readportb();
		i++;
	}
	
}
uint8_t keyboard::getsize()
{
	addrreg->shiftout32(address+1);
	return 255;
}
// default destructor
keyboard::~keyboard()
{
} //~keyboard
