/* 
* interpreter.h
*
* Created: 5/8/2021 1:50:50 AM
* Author: Brent
*/

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <stdio.h>

#include "../../drivers/mem/rom.h"

#include "../../drivers/mem/volatile/ram.h"
#include "../../drivers/mem/volatile/Vram.h"

#include "../../drivers/mem/rom.h"
#ifndef __INTERPRETER_H__
#define __INTERPRETER_H__


class interpreter
{
	struct indexreg  
	{
		char* low;
		char* high;
		
		indexreg()
		{
			low,high=0;
		}
		indexreg(char* l, char* h)
		{
			low=l;
			high=h;
		}
		
	};
//variables
public:
protected:

private:
	rom* baseprogram;
	rom* extendedprogram;
	ram* dataram;
	ram* dataextendedram;
	Vram* videoram;
	uint8_t baseoffset=0;
	uint8_t extendedprogoffset=0;
	uint8_t dataramoffset=0;
	
	char registers[255];
	char stackptr = 255;
	
	indexreg registerx;
	indexreg registery;
	indexreg registerz;
	


	
	
//functions
public:
	interpreter();
	void loadprogram()
	interpreter( const interpreter &c );
	void run();
	void inc(char reg);
	void inc(uint16_t memptr);
	void dec(char reg);
	void dec(uint16_t memptr);
	void mov(char regto, char regfrom);
	void ld(char regto, uint16_t memptr);//movi
	void ldi(char regto,char val);//movi
	void st(uint16_t memptr, char register);
	void sti();
	void nop();
	
	
	
	void pop(char reg);
	
	~interpreter();
protected:
private:

	interpreter& operator=( const interpreter &c );

}; //interpreter
// default constructor

#endif //__INTERPRETER_H__
