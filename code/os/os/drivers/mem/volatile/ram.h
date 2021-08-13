/* 
* ram.h
*
* Created: 8/20/2020 10:46:47 AM
* Author: Brent
*/

#include "util/delay.h"
#include "../../io/port controller/portcontroller.h"
#include "../../io/shift register/shiftreg.h"
#include <stdio.h>
#ifndef __RAM_H__
#define __RAM_H__


class ram
{
//variables
public:
	
protected:
	char offset;
	uint8_t wepin;
	portcontroller* portptr;
	shiftreg* addrptr;
	shiftreg* dataptr;
	uint64_t addressbase;
private:

//functions
public:
	ram();
	//ram(portcontroller* portptr,shiftreg* addrptr,uint8_t wepin,int offset);
	ram(portcontroller* portptr,shiftreg* addrptr,uint8_t wepin,uint64_t addressbase);
	ram(portcontroller* portptr,shiftreg* addrptr,shiftreg* datarptr,uint8_t wepin,uint64_t addressbase);
	
	char read();
	char read(int addr);
	void write(char data);
	void write(uint8_t address,char data);
	void write(uint16_t address,char data);
	void write(uint64_t address,char data);
	
	void setaddress(uint64_t addr);
	uint16_t getaddr();
	~ram();
	
	bool operator ==(ram right);
	ram& operator=( const ram &c );
protected:
private:

}; //ram

#endif //__RAM_H__
