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
	
	struct cpuflags
	{
		enum bitflags {zero, greater,less,carry,sign,overflow};
		char flag=0;
		char getflag(bitflags k )
		{
			return (flag>>k);
		}
		void setflag(bitflags flag, bool on)
		{
			switch (flag)
			{
				case zero:
					if (on)
					{
						flag|0b00000001;
					}
					else
					{
						flag&0b00000001;
					}
					break;
				case greater:
					if (on)
					{
						flag|0b00000010;
					}
					else
					{
						flag&0b00000010;
					}	
					break;
				case less:
					if (on)
					{
						flag|0b00000100;
					}
					else
					{
						flag&0b00000100;
					}
					break;
				case carry:
					if (on)
					{
						flag|0b00001000;
					}
					else
					{
						flag&0b00001000;
					}
					break;
				case sign:	
					if (on)
					{
						flag|0b00010000;
					}
					else
					{
						flag&0b00010000;
					}
					break;
				case overflow:
					if (on)
					{
						flag|0b00100000;
					}
					else
					{
						flag&0b00100000;
					}
					break;
			}
		}
	};
//variables
public:
protected:

private:
	rom* baseprogram;
	ram* dataram;
	Vram* videoram;
	uint8_t baseoffset=0;
	uint8_t extendedprogoffset=0;
	uint8_t dataramoffset=0;
	
	char registers[255];
	char stackptr = 255;
	
	uint16_t addressptr;
	
	indexreg registerx;
	indexreg registery;
	indexreg registerz;
	
	cpuflags flag;
//functions
public:
	interpreter();
	interpreter( const interpreter &c );
	void run();
	void nop();
	void inc(char reg);
	void inc(uint16_t memptr);
	void dec(char reg);
	void dec(uint16_t memptr);
	void mov(char regto, char regfrom);
	void ld(char regto, uint16_t memptr);//movi
	void ldi(char regto,char val);//movi
	void st(uint16_t memptr, char regfrom);
	void stv(uint16_t memptr, char regfrom);
	void cmp(char reg1 ,char reg2);
	void cmpi(char reg1,char val);
//	void sp();

	void syscall();
	void pop(char reg);
	void push(char reg);
	//uint16_t jmp (uint16_t memptr);
	~interpreter();
protected:
private:
	interpreter& operator=( const interpreter &c );
}; //interpreter
// default constructor
#endif //__INTERPRETER_H__