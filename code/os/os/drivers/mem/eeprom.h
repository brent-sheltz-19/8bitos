/* 
* eeprom.h
*
* Created: 9/6/2020 12:53:29 AM
* Author: Brent
*/
#include "util/delay.h"
#include "../io/port controller/portcontroller.h"
#include "../io/shift register/shiftreg.h"

#ifndef __EEPROM_H__
#define __EEPROM_H__
#include "rom.h"

class eeprom :public rom
{

//variables
public:
	
protected:
	int offset;
private:
	uint8_t wepin;
//	portcontroller* portptr;
//	shiftreg* addrptr;
//	shiftreg* dataptr;
//	uint64_t address;

//functions
public:
	eeprom();
	eeprom(portcontroller* portptr,shiftreg* addrptr,uint8_t wepin,uint64_t address2);
//	char read();
//	char read(int addr);
	void write(char data);
	void write(char data,uint16_t address);
	void setaddress(uint16_t addr);
	uint16_t getaddr();
	~eeprom();
	eeprom( const eeprom &c );
	eeprom& operator=( const eeprom &c );

protected:
private:
	
}; //eeprom

#endif //__EEPROM_H__
