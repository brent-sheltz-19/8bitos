/* 
* rom.h
*
* Created: 8/24/2020 8:57:23 PM
* Author: Brent
*/

#include "util/delay.h"
#include "../io/port controller/portcontroller.h"
#include "../io/shift register/shiftreg.h"

#ifndef __ROM_H__
#define __ROM_H__


class rom
{
//variables
public:
	
protected:
	uint64_t offset;
private:
	uint64_t address;
	portcontroller* portptr;
	shiftreg* addrptr;

//functions
public:
	rom();
	rom(portcontroller*,shiftreg*,uint64_t address2);
	char read();
	char read(int addr);
	void setaddress(uint16_t addr);
	uint16_t getaddr();
	~rom();
	rom( const rom &c );
	rom& operator=( const rom &c );
protected:
private:
	

}; //rom

#endif //__ROM_H__
