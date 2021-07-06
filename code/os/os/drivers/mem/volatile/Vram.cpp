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

// default destructor
Vram::~Vram()
{
} //~Vram
