#pragma once

#include <iostream>
#include "Ram.h"
class cpu
{
	
	struct indexreg
	{
		char* low;
		char* high;

		indexreg()
		{
			low = 0, high = 0;
		}
		indexreg(char* l, char* h)
		{
			low = l;
			high = h;
		}
		indexreg(uint8_t* l, uint8_t* h)
		{
			low = (char*)l;
			high = (char*)h;
		}
		uint16_t getVal()
		{

			return  (*high << 8) | *low;
		}
		uint8_t getLow()
		{

			return  *low;
		}
		uint8_t getHigh()
		{

			return *high;
		}


		void setValue(uint16_t A)
		{
			*high = (A >> 8);
			*low = (char)A;
		}
		void setValue(char h, char l)
		{
			*high = h;
			*low = l;
		}

	};
	struct memindexreg
	{
		indexreg* low;
		indexreg* high;

		memindexreg()
		{
			low = 0, high = 0;
		}
		memindexreg(indexreg* l, indexreg* h)
		{
			low = l;
			high = h;
		}
		
		uint32_t getVal()
		{

			return  (high->getVal() << 16) | low->getVal();
		}
		indexreg* getLow()
		{

			return  low;
		}
		indexreg* getHigh()
		{

			return high;
		}


		void setValue(uint32_t A)
		{
			high->setValue(A>>16);
			low->setValue((int)A);
		}
	};
	struct cpuflags
	{
		enum bitflags { zero, greater, less, equals, carry, sign, underflow, error };
		char flag = 0;
		char getflag(bitflags k)
		{
			return ((flag >> k) & 1);

		}
		void setflag(bitflags bitflag, bool on)
		{
			switch (bitflag)
			{
			case zero:
				if (on)
				{
					flag |= 0b00000001;
				}
				else
				{
					flag &= 0b11111110;
				}
				break;
			case greater:
				if (on)
				{
					flag |= 0b00000010;
				}
				else
				{
					flag &= !0b00000010;
				}
				break;
			case less:
				if (on)
				{
					flag |= 0b00000100;
				}
				else
				{
					flag &= !0b00000100;
				}
				break;
			case equals:
				if (on)
				{
					flag |= 0b00001000;
				}
				else
				{
					flag &= !0b00001000;
				}
			case carry:
				if (on)
				{
					flag |= 0b00010000;
				}
				else
				{
					flag &= !0b00010000;
				}
				break;
			case sign:
				if (on)
				{
					flag |= 0b00100000;
				}
				else
				{
					flag &= !0b00100000;
				}
				break;
			case underflow:
				if (on)
				{
					flag |= 0b01000000;
				}
				else
				{
					flag &= !0b01000000;
				}
				break;
			case error:
				if (on)
				{
					flag |= 0b10000000;
				}
				else
				{
					flag &= !0b10000000;
				}
				break;
			}
		}
		void clear()
		{
			flag = 0;
		}
	};
	
	uint8_t registers[255];
	uint32_t stackptr;
	uint32_t addressptr;
	indexreg registerw;
	indexreg registerx;
	indexreg registery;
	indexreg registerz;
	Ram* ram;
	Ram* videoram;
	indexreg* indregs[4] = {&registerw,&registerx,&registery,&registerz};
public:
	cpu();
	char run();
	~cpu();
private:
	void nop();
	void inc(char reg);
	void inc(uint32_t memptr);
	void dec(char reg);
	void dec(uint32_t memptr);
	void mov(char regto, char regfrom);

	void ld(char regto, uint32_t memptr);//movi
	void ldi(char regto, char val);//movi
	void ldx(char regto);
	void ldy(char regto);
	void ldz(char regto);

	void stx(char regfrom);
	void sty(char regfrom);
	void stz(char regfrom);
	void std(uint32_t memptr, char regfrom);


	void svd(uint32_t memptr, char regfrom);
	void svx(char regfrom);
	void svy(char regfrom);
	void svz(char regfrom);




	void cmp(char reg1, char reg2);
	void cpi(char reg1, char val);
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
	void brlpcf(uint32_t offset);
	void brlpcb(uint32_t offset);

	void clr(char reg);

	void clf(char flag);

	void swap(char reg);

	char syscall();
	//stack action
	uint8_t pop();
	void pop(char reg);
	void push(char reg);
	void push(indexreg);
	void pushi(uint8_t value);

	//prog flow
	void jmp(uint32_t memptr);
	void jmppcf(uint32_t offset);
	void jmppcb(uint32_t offset);
	void call(uint32_t);
	void ret();
	void clearreg();
	cpuflags flag;
	
};
cpu::cpu()
{
	stackptr = 0x1fff;
	addressptr = 0;

	registerz = indexreg(&registers[254], &registers[255]);
	registery = indexreg(&registers[252], &registers[253]);
	registerx = indexreg(&registers[250], &registers[251]);
	registerx = indexreg(&registers[248], &registers[249]);

} //cpu

/*
	increments register
*/
void cpu::inc(char reg)
{
	registers[(int)reg] = registers[(int)reg] + 1;
}
/*
	increments memory cell value
	parameter - unsigned 32 bit value
*/
void cpu::inc(uint32_t memptr)
{
	char val = ram->read(memptr);
	val++;
	ram->write(memptr, val);
}
/*
	decrements register
*/
void cpu::dec(char reg)
{
	registers[(int)reg] = registers[(int)reg] - 1;
}
/*
	decrements memory cell
*/
void cpu::dec(uint32_t memptr)
{
	char val = ram->read(memptr);
	val--;
	ram->write(memptr, val);

}
/*
*	runs cpu
*/
char cpu::run()
{
	bool exitcode = false;
	while (!exitcode)
	{
		char command = ram->read(addressptr);
		if (command == 0)
		{
			// system call
			char val = syscall();
			if (val == 'b')
			{
				return 'b';
			}
			else if (val == 'e')
			{
				exitcode = true;

			}

		}
		else if (command == 1)
		{
			//inc register
			addressptr += 1;
			char  regtoinc = ram->read(addressptr);
			inc(regtoinc);
		}
		else if (command == 2)
		{
			//inc memory
			uint32_t addresstoinc = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			inc(addresstoinc);
			addressptr += 2;
		}
		else if (command == 3)
		{
			//dec reg
			char  regtodec = ram->read(addressptr + 1);
			dec(regtodec);
			addressptr++;
		}
		else if (command == 4)
		{
			//dec mem
			uint32_t addresstodec = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			dec(addresstodec);
			addressptr += 2;
		}
		else if (command == 5)
		{
			//mov
			uint8_t regto = ram->read(addressptr + 1);
			uint8_t regfrom = ram->read(addressptr + 2);
			mov(regto, regfrom);
			addressptr += 2;
		}
		else if (command == 6)
		{
			//ld 
			uint8_t regto = ram->read(addressptr + 1);
			uint32_t mem = ram->read(addressptr + 2) << 8 | ram->read(addressptr + 3);
			ld(regto, mem);
			addressptr += 3;
		}
		else if (command == 7)
		{
			//ldi
			uint8_t regto = ram->read(addressptr + 1);
			uint8_t val = ram->read(addressptr + 2);
			ldi(regto, val);
			addressptr += 2;
		}
		else if (command == 8)
		{
			//store by using x as address
			uint8_t reg = ram->read(addressptr + 1);
			stx(reg);
			addressptr++;
		}
		else if (command == 9)
		{

			//store by using y as address
			uint8_t reg = ram->read(addressptr + 1);
			sty(reg);
			addressptr++;
		}
		else if (command == 10)
		{
			//store by using z as address
			uint8_t reg = ram->read(addressptr + 1);
			stz(reg);
			addressptr++;
		}
		else if (command == 11)
		{
			//store by direct address
			uint32_t ad = ram->read(addressptr + 2) << 8 | ram->read(addressptr + 3);
			uint8_t reg = ram->read(addressptr + 1);
			std(ad, reg);
			addressptr += 3;
		}
		else if (command == 12)
		{
			//store video by direct address
			uint32_t ad = ram->read(addressptr + 2) << 8 | ram->read(addressptr + 3);
			uint8_t reg = ram->read(addressptr + 1);
			svd(ad, reg);
			addressptr += 3;
		}
		else if (command == 13)
		{
			//store video by using x as address
			uint8_t reg = ram->read(addressptr + 1);
			svx(reg);
			addressptr++;
		}
		else if (command == 14)
		{
			//store video by using y as address
			uint8_t reg = ram->read(addressptr + 1);
			svy(reg);
			addressptr++;
		}
		else if (command == 15)
		{
			//store video by using z as address
			uint8_t reg = ram->read(addressptr + 1);
			svz(reg);
			addressptr++;
		}
		else if (command == 16)
		{
			txs();
		}
		else if (command == 17)
		{
			txy();
		}
		else if (command == 18)
		{
			txz();
		}
		else if (command == 19)
		{
			tys();
		}
		else if (command == 20)
		{
			tyx();
		}
		else if (command == 21)
		{
			tyz();
		}
		else if (command == 22)
		{
			tzs();
		}
		else if (command == 23)
		{
			tzx();
		}
		else if (command == 24)
		{
			tzy();
		}
		else if (command == 25)
		{
			tsx();
		}
		else if (command == 26)
		{
			tsy();
		}
		else if (command == 27)
		{
			tsz();
		}
		else if (command == 28)
		{
			//cmp
			char reg1 = ram->read(addressptr + 1);
			char reg2 = ram->read(addressptr + 2);
			cmp(reg1, reg2);
			addressptr += 2;
		}
		else if (command == 29)
		{
			//cmpi
			char reg1 = ram->read(addressptr + 1);
			char val = ram->read(addressptr + 2);
			cpi(reg1, val);
			addressptr += 2;
		}
		else if (command == 30)
		{
			ror(ram->read(addressptr + 1));
			addressptr += 1;
		}
		else if (command == 31)
		{
			rol(ram->read(addressptr + 1));
			addressptr += 1;
		}
		else if (command == 32)
		{
			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			breq(address);

		}
		else if (command == 33)
		{
			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			breqpcf(addressptr + offset);


		}
		else if (command == 34)
		{

			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			breqpcb(addressptr - offset);

		}
		else if (command == 35)
		{
			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brne(address);
		}
		else if (command == 36)
		{
			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brnepcf(addressptr + offset);
		}
		else if (command == 37)
		{

			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brnepcb(addressptr - offset);

		}
		else if (command == 38)
		{
			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brge(address);
		}
		else if (command == 39)
		{
			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brgepcf(addressptr + offset);
		}
		else if (command == 40)
		{

			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brgepcb(addressptr - offset);

		}
		else if (command == 41)
		{
			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brle(address);

		}
		else if (command == 42)
		{
			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brlepcf(addressptr + offset);
		}
		else if (command == 43)
		{

			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brlepcb(addressptr - offset);

		}
		else if (command == 44)
		{
			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brg(address);
		}
		else if (command == 45)
		{
			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brgpcf(addressptr + offset);
		}
		else if (command == 46)
		{

			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brgpcb(addressptr - offset);
		}
		else if (command == 47)
		{
			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brl(address);
		}
		else if (command == 48)
		{
			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brlpcf(addressptr + offset);
		}
		else if (command == 49)
		{

			uint32_t offset = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			brlpcb(addressptr - offset);
		}
		else if (command == 50)
		{
			char reg = ram->read(addressptr + 1);
			clr(reg);
			addressptr++;
		}
		else if (command == 51)
		{

			char flag = ram->read(addressptr + 1);
			clf(flag);
			addressptr++;
		}
		else if (command == 52)
		{

			char reg = ram->read(addressptr + 1);
			swap(reg);
			addressptr++;
		}
		else if (command == 53)
		{
			char reg = ram->read(addressptr + 1);
			pop(reg);
			addressptr++;
		}
		else if (command == 54)
		{
			char reg = ram->read(addressptr + 1);
			push(reg);
			addressptr++;
		}
		else if (command == 55)
		{
			char ind = ram->read(addressptr + 1);

			push(indregs[(int)ind]->getVal());
			addressptr++;
		}
		else if (command == 56)
		{
			char i = ram->read(addressptr + 1);

			pushi(i);
			addressptr++;
		}
		else if (command == 57)
		{
			char regto = ram->read(addressptr + 1);
			ldx(regto);
			addressptr++;
		}
		else if (command == 58)
		{
			char regto = ram->read(addressptr + 1);
			ldy(regto);
			addressptr++;
		}
		else if (command == 59)
		{
			char regto = ram->read(addressptr + 1);
			ldz(regto);
			addressptr++;
		}
		else if (command == 60)
		{
			ret();
		}
		else if (command == 61)
		{
			uint32_t addr = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			jmp(addr);
			addressptr += 2;
		}
		else if (command == 62)
		{

			uint32_t address = ram->read(addressptr + 1) << 8 | ram->read(addressptr + 2);
			call(address);
			addressptr += 2;
		}






		else if (command == 255)
		{
			nop();
		}
		addressptr++;
	}
	addressptr = 0;
	return 'e';
}
/*
 transfers registers
*/
void cpu::mov(char regto, char regfrom)
{
	registers[(int)regto] = registers[(int)regfrom];
}
void cpu::ld(char regto, uint32_t memptr)
{
	registers[(int)regto] = ram->read(memptr);
}
void cpu::ldi(char regto, char val)
{
	registers[(int)regto] = val;
}
void cpu::ldx(char regto)
{
	ld(regto, registerx.getVal());
}
void cpu::ldy(char regto)
{
	ld(regto, registery.getVal());
}
void cpu::ldz(char regto)
{
	ld(regto, registerz.getVal());
}
//store to mem
void cpu::stx(char regfrom)
{
	ram->write((uint32_t)*registerx.high << 8 | *registerx.low, registers[(int)regfrom]);
}
void cpu::sty(char regfrom)
{
	ram->write((uint32_t)*registery.high << 8 | *registery.low, registers[(int)regfrom]);
}
void cpu::stz(char regfrom)
{
	ram->write((uint32_t)*registerz.high << 8 | *registerz.low, registers[(int)regfrom]);
}
void cpu::std(uint32_t memptr, char regfrom)
{
	ram->write(memptr, regfrom);
}
void cpu::svd(uint32_t memptr, char regfrom)
{
	videoram->write(memptr, regfrom);
}
void cpu::svx(char regfrom)
{
	videoram->write(registerx.getVal(), regfrom);
}
void cpu::svy(char regfrom)
{
	videoram->write(registery.getVal(), regfrom);
}
void cpu::svz(char regfrom)
{
	videoram->write(registerz.getVal(), regfrom);
}

//transfer 16 bit numbers

/*
	transfer x register to stack
*/
void cpu::txs()
{
	stackptr = registerx.getVal();
}
void cpu::txy()
{
	registery.setValue(registerx.getVal());
}
void cpu::txz()
{
	registerz.setValue(registerx.getVal());
}
void cpu::tys()
{
	stackptr = registery.getVal();
}
void cpu::tyx()
{
	registerx.setValue(registery.getVal());
}
void cpu::tyz()
{
	registerz.setValue(registery.getVal());
}
void cpu::tzs()
{
	stackptr = registerz.getVal();
}
void cpu::tzx()
{
	registerx.setValue(registerz.getVal());
}
void cpu::tzy()
{
	registery.setValue(registerz.getVal());
}
void cpu::tsx()
{
	registerx.setValue(stackptr);

}
void cpu::tsy()
{
	registery.setValue(stackptr);

}
void cpu::tsz()
{
	registerz.setValue(stackptr);

}
//compare operators
void cpu::cmp(char reg1, char reg2)
{
	if (reg1 == reg2)
	{
		flag.setflag(cpuflags::equals, true);
	}
	if (reg1 > reg2)
	{
		flag.setflag(cpuflags::greater, true);
	}
	if (reg1 < reg2)
	{
		flag.setflag(cpuflags::less, true);
	}
}
void cpu::cpi(char reg1, char val)
{
	if (reg1 == val)
	{
		flag.setflag(cpuflags::equals, true);
	}
	if (reg1 > val)
	{
		flag.setflag(cpuflags::greater, true);

	}
	if (reg1 < val)
	{
		flag.setflag(cpuflags::less, true);
	}

}

void cpu::ror(char reg1)
{

	registers[(int)reg1] = registers[(int)reg1] >> 1;
}

void cpu::rol(char reg1)
{
	registers[(int)reg1] = registers[(int)reg1] << 1;
}

void cpu::breq(uint32_t address)
{
	if (flag.getflag(cpuflags::equals) == 1)
	{
		jmp(address);
	}
}

void cpu::breqpcf(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) == 1)
	{
		jmp(addressptr + offset);
	}
}

void cpu::breqpcb(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) == 1)
	{
		jmp(addressptr - offset);
	}
}

void cpu::brne(uint32_t address)
{
	if (flag.getflag(cpuflags::equals) == 0 && (flag.getflag(cpuflags::greater) == 1 || flag.getflag(cpuflags::less) == 1))
	{
		jmp(address);
	}
}

void cpu::brnepcf(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) == 0 && (flag.getflag(cpuflags::greater) == 1 || flag.getflag(cpuflags::less) == 1))
	{
		jmp(addressptr + offset);
	}
}

void cpu::brnepcb(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) == 0 && (flag.getflag(cpuflags::greater) == 1 || flag.getflag(cpuflags::less) == 1))
	{
		jmp(addressptr - offset);
	}
}

void cpu::brge(uint32_t address)
{
	if (flag.getflag(cpuflags::equals) || flag.getflag(cpuflags::greater))
	{
		jmp(address);
	}

}

void cpu::brgepcf(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) || flag.getflag(cpuflags::greater))
	{
		jmp(addressptr + offset);
	}
}

void cpu::brgepcb(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) || flag.getflag(cpuflags::greater))
	{
		jmp(addressptr - offset);
	}
}

void cpu::brle(uint32_t address)
{
	if (flag.getflag(cpuflags::equals) || flag.getflag(cpuflags::less))
	{
		jmp(address);
	}
}

void cpu::brlepcf(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) || flag.getflag(cpuflags::less))
	{
		jmp(addressptr + offset);
	}
}

void cpu::brlepcb(uint32_t offset)
{
	if (flag.getflag(cpuflags::equals) || flag.getflag(cpuflags::less))
	{
		jmp(addressptr - offset);
	}
}
void cpu::brg(uint32_t address)
{
	if (!flag.getflag(cpuflags::equals) && flag.getflag(cpuflags::greater))
	{
		jmp(address);

	}

}

void cpu::brgpcf(uint32_t offset)
{
	if (!flag.getflag(cpuflags::equals) && flag.getflag(cpuflags::greater))
	{
		jmp(addressptr + offset);

	}
}

void cpu::brgpcb(uint32_t offset)
{
	if (!flag.getflag(cpuflags::equals) && flag.getflag(cpuflags::greater))
	{
		jmp(addressptr - offset);
	}
}

void cpu::brl(uint32_t address)
{
	if (!flag.getflag(cpuflags::equals) && flag.getflag(cpuflags::less))
	{
		jmp(address);
	}
}

void cpu::brlpcf(uint32_t offset)
{
	if (!flag.getflag(cpuflags::equals) && flag.getflag(cpuflags::less))
	{
		jmp(addressptr + offset);
	}
}

void cpu::brlpcb(uint32_t offset)
{
	if (!flag.getflag(cpuflags::equals) && flag.getflag(cpuflags::less))
	{
		jmp(addressptr - offset);
	}
}

void cpu::clr(char reg)
{
	registers[(int)reg] = 0;
}

void cpu::nop()
{
	//asm volatile("nop");
	
}
void cpu::call(uint32_t addr)
{
	push(stackptr);
	jmp(addr);
	addressptr = pop() << 8 | pop();
}
void cpu::jmp(uint32_t address)
{
	addressptr = address;
}
void cpu::jmppcf(uint32_t offset)
{
	addressptr += offset;
}
void cpu::jmppcb(uint32_t offset)
{
	addressptr -= offset;
}

void cpu::push(char reg)
{
	ram->write(stackptr, registers[(int)reg]);
	stackptr--;
}
void cpu::pushi(uint8_t value)
{
	ram->write(stackptr, value);
	stackptr--;
}
uint8_t cpu::pop()
{
	uint8_t val = ram->read(stackptr);
	stackptr++;
	return val;
}
void cpu::pop(char reg)
{
	registers[(int)reg] = ram->read(stackptr);
	stackptr++;
}
void cpu::swap(char reg)
{
	registers[(int)reg] = (registers[(int)reg] << 4) | (registers[(int)reg] >> 4);
}

char cpu::syscall()
{
	//r0 is command
	// rn >r0 is data
	/*
		0-  sleep 1 ms

	*/
	if (registers[0] == 0)
	{
		//sleep
		int i = registers[1];
		do
		{
			// Sleep(1);
			i--;
		} while (i > 0);
	}
	/*

	*/
	else if (registers[0] == 1)
	{
		//multiply 
		if (registers[1] == 0 || registers[2] == 0)
		{
			registers[3] = 1;
		}
		else
		{
			registers[3] = registers[1] * registers[2];
		}
	}
	else if (registers[0] == 2)
	{
		//int divide
		// reg 1 neumerator
		//reg 2 denemonator
		//reg 3 result
		// reg 4 error
		if (registers[2] == 0)
		{
			registers[3] = 0;
			registers[4] = 1;
		}
		else
		{
			registers[3] = registers[1] / registers[2];
			registers[4] = 0;
		}
	}
	else if (registers[0] == 3)
	{
		/*
			stdin

		*/



		return 'b';


	}
	else if (registers[0] == 4)
	{
		/*
			switch data ram bank
		*/
		return 'b';
	}
	else if (registers[0] == 5)
	{
		//spu 
		/*
			if reg 1 is 1
				play tone reg 2
			if reg 1 is 2
				play song from filename starting at X
			if reg 1 is 3
				pause
			if reg 1 is 4
				resume
		*/
		return 'b';


	}
	else if (registers[0] == 6)
	{
		//ssd
		/*



		*/
		if (registers[0] == 1)
		{


		}


	}



	else if (registers[0] == 255)
	{
		registers[1] = 1;
		return 'e';
	}
	return 0;
}
void cpu::clf(char flags)
{
	flag.clear();
}
void cpu::ret()
{

}
void cpu::clearreg()
{
	for (int i = 0; i < sizeof(registers); i++)
	{
		registers[i] = 0;
	}
}
// default destructor
cpu::~cpu()
{
	ram = NULL;

	videoram = NULL;
	
} //~cpu 