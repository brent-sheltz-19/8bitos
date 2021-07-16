/* 
* Vram.h
*
* Created: 7/6/2021 12:13:36 AM
* Author: Brent
*/
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include "ram.h"
#include "../../io/port controller/portcontroller.h"
#include "../../io/shift register/shiftreg.h"
#ifndef __VRAM_H__
#define __VRAM_H__


class Vram:public ram
{
//variables
public:

protected:
private:
	PROGMEM static const uint16_t char_memory_base=0x00;
	uint8_t char_memory_offset;
	PROGMEM static const uint16_t instruction_memory_base=0x0100;
	uint8_t instruction_memory_offset;
	PROGMEM static const uint16_t custom_char_memory_base=0x0120;
	uint8_t custom_char_memory_offset;
	

//functions
public:
	Vram(portcontroller* portptr,shiftreg* addrptr,shiftreg* datarptr,uint8_t wepin,uint64_t addressbase);
	void writeData();
	void cleardata();
	void writeInstruction();
	void writecustomchar (uint8_t[] );
	//void writecustomchar (uint8_t[] );
	~Vram();
protected:
private:
	Vram( const Vram &c );
	Vram& operator=( const Vram &c );

}; //Vram

#endif //__VRAM_H__
