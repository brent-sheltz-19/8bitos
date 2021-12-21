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
		uint16_t getVal()
		{

			return  (*high <<8)|*low;
		}
	};	
	struct cpuflags
	{
		enum bitflags {zero, greater,less,equals,carry,sign,overflow};
		char flag=0;
		char getflag(bitflags k )
		{
			return (flag>>k);
			
		}
		void setflag(bitflags bitflag, bool on)
		{
			switch (bitflag)
			{
				case zero:
					if (on)
					{
						flag|=0b00000001;
					}
					else
					{
						flag&=0b11111110;
					}
					break;
				case greater:
					if (on)
					{
						flag|=0b00000010;
					}
					else
					{
						flag&=!0b00000010;
					}	
					break;
				case less:
					if (on)
					{
						flag|=0b00000100;
					}
					else
					{
						flag&=!0b00000100;
					}
					break;
				case equals:
					if (on)
					{
						flag|=0b00001000;
					}
					else
					{
						flag&=!0b00001000;
					}
				case carry:
					if (on)
					{
						flag|=0b00010000;
					}
					else
					{
						flag&=!0b00010000;
					}
					break;
				case sign:	
					if (on)
					{
						flag|=0b00100000;
					}
					else
					{
						flag&=!0b00100000;
					}
					break;
				case overflow:
					if (on)
					{
						flag|=0b01000000;
					}
					else
					{
						flag&=!0b01000000;
					}
					break;
			}
		}
	};
//variables
public:
	rom* Baseprogram() const { return baseprogram; }
	void Baseprogram(rom* val) { baseprogram = val; }
	ram* Dataram() const { return dataram; }
	void Dataram(ram* val) { dataram = val; }
	ram* Stackram() const { return stackram; }
	void Stackram(ram* val) { stackram = val; }
	Vram* Videoram() const { return videoram; }
	void Videoram(Vram* val) { videoram = val; }
	Vram* Videoinstructionram() const { return videoinstructionram; }
	void Videoinstructionram(Vram* val) { videoinstructionram = val; }
	Vram* Videocustomcharram() const { return videocustomcharram; }
	void Videocustomcharram(Vram* val) { videocustomcharram = val; }
protected:

private:
	bool progexit;

	rom* baseprogram;
	ram* dataram;
	ram* stackram;
	
	Vram* videoram;
	Vram* videoinstructionram;
	Vram* videocustomcharram;
	
	uint8_t baseoffset=0;
	uint8_t extendedprogoffset=0;
	uint8_t dataramoffset=0;
	
	char registers[255];
	uint16_t stackptr = 0x1fff;
	
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
	
	void stx(char regfrom);
	void sty(char regfrom);
	void stz(char regfrom);
	
	void std(uint16_t memptr, char regfrom);
	
	
	void svd(uint16_t memptr, char regfrom);
	void svx( char regfrom);
	void svy( char regfrom);
	void svz( char regfrom);
	
	
	
	
	void cmp(char reg1 ,char reg2);
	void cpi(char reg1,char val);
	void ror(char reg1);
	void rol(char reg1);
	void txs();
	void txy();
	void txz();

	void tys();
	void tyx();
	void tyz();
	
	void tzs();
	void tzx();
	void tzy();
	
	void call();
	
	void syscall();
	void pop(char reg);
	void push(char reg);
	void jmp (uint16_t memptr);
	~interpreter();
protected:
private:
	interpreter& operator=( const interpreter &c );
}; //interpreter
// default constructor
#endif //__INTERPRETER_H__