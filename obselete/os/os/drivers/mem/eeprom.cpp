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

 eeprom::eeprom(portcontroller* portptr,shiftreg* addrptr,uint8_t wepin,uint64_t address2)
 {
	 	this->portptr=portptr;
	 	this->addrptr=addrptr;
	 	this->wepin=wepin;
		this->address= address2;
		this->offset = 0;
	 	portptr->digitalwrite(wepin,true);

 }
 void eeprom::write(char data)
 {
	 
 }
void eeprom::write(char data,uint16_t address)
{
	
	
}
// default destructor
eeprom::~eeprom()
{
} //~eeprom
