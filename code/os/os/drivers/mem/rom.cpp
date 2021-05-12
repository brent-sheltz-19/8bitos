/* 
* rom.cpp
*
* Created: 8/24/2020 8:57:23 PM
* Author: Brent
*/


#include "rom.h"

// default constructor
rom::rom()
{
} //rom
 rom::rom(portcontroller* port, shiftreg* addr,uint64_t address2)
 {
	 this->portptr= port;
	 this->addrptr= addr;
	 this->address=address2;
	 this->offset = 0;

 }

char rom::read()
{
		addrptr->shiftout16(address);
		return portptr->readportd();
}

char rom::read(int addr)
{
		addrptr->shiftout16(addr);
		return portptr->readportd();
}

void rom::setaddress(uint16_t addr)
{
	this->address=addr;
}

uint16_t rom::getaddr()
{
	return address;
}

// default destructor
rom::~rom()
{
} //~rom
