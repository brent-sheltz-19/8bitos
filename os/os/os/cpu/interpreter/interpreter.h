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
		uint8_t* low;
		uint8_t* high;
		
		indexreg()
		{
			low=0,high=0;
		}
		indexreg(uint8_t* l, uint8_t* h)
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
			*low = (uint8_t)A;
		}
		void setValue(uint8_t h,uint8_t l)
		{
			*high=h;
			*low =l;
		}

	};	
	struct cpuflags
	{
		/*
			zero flag -> indicates a operation has resulted in zero
			greater flag -> indicates comparison operation has a result that is greater than oprand b mutally exclusive to less flag
			less flag -> indicates comparison operation has a result that is less than oprand b mutally exclusive to greater flag
			equals flag -> indicates comparison operation has a result that is equal to oprand b not mutally exclusive to greater/less flag
			carry flag -> indicates arithemetic carry
			sign flag -> indicates sign +/- 
			underflow flag -> 
			error -> indicates a error has occured 
		*/
		enum bitflags {zero, greater,less,equals,carry,sign,underflow,error};
		uint8_t flag;
		uint8_t getflag(bitflags k )
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
	uint8_t registers[255];
	indexreg registerx;
	indexreg registery;
	indexreg registerz;	
	uint32_t addressptr;
	//interpreterdata info;
	//bool progexit;
	memory* ram;
	memory* videoram;
protected:

private:

	
	
	uint16_t stackptr;

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
	void zar();
	
	char run();
	char run(uint32_t startaddress);

~interpreter();
private:	
	void nop();
	void inc(uint8_t reg);
	void inc(uint32_t memptr);
	void dec(uint8_t reg);
	void dec(uint32_t memptr);
	void mov(uint8_t regto, uint8_t regfrom);
	
	void ld(uint8_t regto, uint32_t memptr);//movi
	void ldi(uint8_t regto,uint8_t val);//movi
	void ldx(uint8_t regto);
	void ldy(uint8_t regto);
	void ldz(uint8_t regto);
	
	void stx(uint8_t regfrom);
	void sty(uint8_t regfrom);
	void stz(uint8_t regfrom);
	void std(uint32_t memptr, uint8_t regfrom);
	
	
	void svd(uint32_t memptr, uint8_t regfrom);
	void svx( uint8_t regfrom);
	void svy( uint8_t regfrom);
	void svz( uint8_t regfrom);
	void cmp(uint8_t reg1 ,uint8_t reg2);
	void cpi(uint8_t reg1,uint8_t val);
	void cpm(uint8_t reg,uint32_t mem);
	void cpm(uint32_t mem1,uint32_t mem2);
	void ror(uint8_t reg1);
	void rol(uint8_t reg1);
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
		
	void clr(uint8_t reg);
	
	void clf();
	void brlpcf(uint32_t offset);
	
	void swap(uint8_t reg);
	
	uint8_t syscall();
	//stack action
	uint8_t pop();
	void pop(uint8_t reg);
	void push(uint8_t reg);
	void push(indexreg);
	void pushi(uint8_t value);
	void pusha(uint32_t addr);
	void test(uint8_t reg1,uint8_t reg2);
	void andi(uint8_t reg1,uint8_t value);
	void andrm(uint8_t reg1,uint32_t addr);
	void andrr(uint8_t reg1,uint8_t reg2);
	void xorrr(uint8_t reg1,uint8_t reg2);
	void ori(uint8_t reg1,uint8_t value);
	void orrm(uint8_t reg1,uint32_t addr);
	void orrr(uint8_t reg1,uint8_t reg2);
	void notr(uint8_t reg1);

	//program flow
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