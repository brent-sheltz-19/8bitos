/* 
* memory.h
*
* Created: 11/7/2022 4:08:46 PM
* Author: Owner
*/
#include "../io/port controller/portcontroller.h"
#include "../io/shift register/shiftreg.h"

#ifndef __MEMORY_H__
#define __MEMORY_H__


class memory
{
//variables
public:
	portcontroller* portcon;
	shiftreg* addressreg;
	uint32_t max_address;
	uint8_t wepin;
protected:
private:

//functions
public:
	memory();
	memory(portcontroller*);
	memory(portcontroller*,shiftreg*);
	void write(uint32_t,uint8_t);
	uint8_t read(uint32_t);
	uint32_t read32(uint32_t);
	~memory();
protected:
private:
	memory( const memory &c );
	memory& operator=( const memory &c );

}; //memory
#endif 