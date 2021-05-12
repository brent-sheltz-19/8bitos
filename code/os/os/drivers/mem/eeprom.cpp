/* 
* eeprom.cpp
*
* Created: 9/6/2020 12:53:29 AM
* Author: Brent
*/


#include "eeprom.h"

// default constructor
eeprom::eeprom()
{
} //eeprom

 eeprom::eeprom(portcontroller* portptr,shiftreg* addrptr,shiftreg* dataregister,uint8_t wepin,uint64_t address2)
 {
	 	this->portptr=portptr;
	 	this->addrptr=addrptr;
		this->dataptr=dataregister;
	 	this->wepin=wepin;
		this->address= address2;
		this->offset = 0;
	 	portptr->digitalwrite(wepin,true);

 }

// default destructor
eeprom::~eeprom()
{
} //~eeprom
