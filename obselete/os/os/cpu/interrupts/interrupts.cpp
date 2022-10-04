/* 
* interrupts.cpp
*
* Created: 8/24/2020 11:31:43 PM
* Author: Brent
*/


#include "interrupts.h"

// default constructor
interrupts::interrupts()
{
} //interrupts

void interrupts::handleinterrupt()
{
	register char irqprotected=irq;
	if ((irqprotected&0b00000000)==0)
	{
		return;
	}
	else if((irqprotected&0b00000001)==1)
	{
		
	}
	else if((irqprotected&0b00000010)==2)
	{
		
	}
	else if ((irqprotected&0b00000100)==4)
	{
	}
	else if ((irqprotected&0b00001000)==8)
	{
	}
	else if ((irqprotected&0b00010000)==16)
	{
	}
	else if ((irqprotected&0b00100000)==32)
	{
	}
	else if ((irqprotected&0b01000000)==64)
	{
	}
	else if ((irqprotected&0b10000000)==128)
	{
	}
}

// default destructor
interrupts::~interrupts()
{
} //~interrupts
