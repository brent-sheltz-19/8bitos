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
	uint8_t mempin;
private:
	PROGMEM static const uint16_t char_memory_base=0x00;
	uint8_t char_memory_offset;
	PROGMEM static const uint16_t instruction_memory_base=0x2000;
	uint8_t instruction_memory_offset;
	PROGMEM static const uint16_t custom_char_memory_base=0x3000;
	uint8_t custom_char_memory_offset;
	

//functions
public:
	Vram(portcontroller* portptr,shiftreg* addrptr,uint8_t wepin,uint8_t mempin,uint64_t addressbase);
	//single value
	void writeData(uint16_t address,char value);
	//multiple values
	void writeData(uint16_t address,char* value,unsigned int size);
	void cleardata();
	void writeInstruction();
	void writecustomchar (uint8_t* customchar );
	//void writecustomchar (uint8_t[] );
	Vram( const Vram &c );
	Vram& operator=( const Vram &c );
	~Vram();
protected:
private:
	

}; //Vram

#endif //__VRAM_H__
