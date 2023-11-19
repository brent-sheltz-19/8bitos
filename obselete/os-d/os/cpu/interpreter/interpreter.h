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
#include "../../drivers/memory/memory.h"
#ifndef __INTERPRETER_H__
#define __INTERPRETER_H__


class interpreter
{
	/*
	struct interpreterdata
	{
		uint8_t isOs:1;
		uint8_t isActive:1;
		uint8_t pid;			
		uint64_t address;
		
	};
	*/
	struct indexreg  
	{
		char* low;
		char* high;
		
		indexreg()
		{
			low=0,high=0;
		}
		indexreg(char* l, char* h)
		{
			low=l;
			high=h;
		}
		uint32_t getVal()
		{

			return  (*high <<8)|*low;
		}
		uint8_t getLow()
		{

			return  *low;
		}
		uint8_t getHigh()
		{

			return *high ;
		}
		void setValue(uint32_t A)
		{
			*high=(A>>8);
			*low = (char)A;
		}
		void setValue(char h,char l)
		{
			*high=h;
			*low =l;
		}

	};	
	struct cpuflags
	{
		enum bitflags {zero, greater,less,equals,carry,sign,underflow,error};
		char flag;
		char getflag(bitflags k )
		{
			return ((flag>>k)&1);
			
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
				case underflow:
					if (on)
					{
						flag|=0b01000000;
					}
					else
					{
						flag&=!0b01000000;
					}
					break;
				case error:
					if (on)
					{
						flag|=0b10000000;
					}
					else
					{
						flag&=!0b10000000;
					}
					break;
			}
		}
		void clear()
		{
			flag=0;
		}
	};	
	public:
	char registers[255];
	indexreg registerx;
	indexreg registery;
	indexreg registerz;
	//interpreterdata info;
	//bool progexit;
	memory* ram;
	memory* videoram;
protected:

private:

	
	
	uint16_t stackptr;
	uint32_t addressptr;
	indexreg* indregs[3];
	cpuflags flag;
//functions
public:
	interpreter();
	interpreter(memory*,memory*);
	interpreter(memory*,memory*,uint16_t stackptr);
	interpreter(memory*,memory*,uint32_t addressstart);
	interpreter(memory*,memory*,uint32_t addressstart, uint16_t stack);
	interpreter( const interpreter &c );
	void clearreg();
	
	
	char run();

~interpreter();
private:	
	void nop();
	void inc(char reg);
	void inc(uint32_t memptr);
	void dec(char reg);
	void dec(uint32_t memptr);
	void mov(char regto, char regfrom);
	
	void ld(char regto, uint32_t memptr);//movi
	void ldi(char regto,char val);//movi
	void ldx(char regto);
	void ldy(char regto);
	void ldz(char regto);
	
	void stx(char regfrom);
	void sty(char regfrom);
	void stz(char regfrom);
	void std(uint32_t memptr, char regfrom);
	
	
	void svd(uint32_t memptr, char regfrom);
	void svx( char regfrom);
	void svy( char regfrom);
	void svz( char regfrom);
	
	
	
	
	void cmp(char reg1 ,char reg2);
	void cpi(char reg1,char val);
	void cpm(char reg,uint32_t mem);
	void cpm(uint32_t mem1,uint32_t mem2);
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
	
	//stack manipulation
	void tsx();
	void tsy();
	void tsz();
	
	//branch 
	void breq(uint32_t address);
	void breqpcf(uint32_t offset);
	void breqpcb(uint32_t offset);
	
	void brne(uint32_t address);
	void brnepcf(uint32_t offset);
	void brnepcb(uint32_t offset);
	
	void brge(uint32_t address);
	void brgepcf(uint32_t offset);
	void brgepcb(uint32_t offset);
	
	void brle(uint32_t address);
	void brlepcf(uint32_t offset);
	void brlepcb(uint32_t offset);
	
	void brg(uint32_t address);
	void brgpcf(uint32_t offset);
	void brgpcb(uint32_t offset);
	
	void brl(uint32_t address);
	void brlpcb(uint32_t offset);
		
	void clr(char reg);
	
	void clf();
	void brlpcf(uint32_t offset);
	
	void swap(char reg);
	
	char syscall();
	//stack action
	uint8_t pop();
	void pop(char reg);
	void push(char reg);
	void push(indexreg);
	void pushi(uint8_t value);
	void pusha(uint32_t addr);
	//prog flow
	void jmp (uint32_t memptr);
	void jmppcf (uint32_t offset);
	void jmppcb (uint32_t offset);
	void call(uint32_t);
	void ret();
	
protected:

	interpreter& operator=( const interpreter &c );
}; //interpreter
// default constructor
#endif //__INTERPRETER_H__