                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              /* 
* interpreter.cpp
*
* Created: 5/8/2021 1:50:49 AM
* Author: Brent
*/


#include "interpreter.h"

interpreter::interpreter()
{
	registerz= indexreg(&registers[253],&registers[254]);
	registery= indexreg(&registers[251],&registers[252]);
	registerx= indexreg(&registers[249],&registers[250]);
} //interpreter


/*
	increments register
*/
void interpreter::inc(char reg)
{
	registers[reg]=registers[reg]+1;
}

/*
	increments memory cell value
	parameter - unsigned 16 bit value 
*/
void interpreter::inc(uint16_t memptr)
{
	char val=Dataram()->read(memptr);
	val++;
	Dataram()->write(memptr,val);
}

void interpreter::dec(char reg)
{
	registers[reg]=registers[reg]-1;
}

void interpreter::dec(uint16_t memptr)
{
	char val=Dataram()->read(memptr);
	val--;
	Dataram()->write(memptr,val);

}

void interpreter::run()
{
	nop();
	bool exitcode=false;
	addressptr=0;
	while(!exitcode)
	{
		char command = Baseprogram()->read(addressptr);
		if (command==0)
		{
			// nop
			nop();
		}
		else if (command==1)
		{
			//inc register
			addressptr+=1;
			char  regtoinc = Baseprogram()->read(addressptr);
			inc(regtoinc);
		}
		else if (command==2)
		{
			//inc memory
			uint16_t addresstoinc = Baseprogram()->read(addressptr+1)<<8|Baseprogram()->read(addressptr+2);
			inc(addresstoinc);
			addressptr+=2;
		}	
		else if (command==3)
		{
			//dec reg
			addressptr+=1;
			char  regtodec = Baseprogram()->read(addressptr);
			dec(regtodec);
			addressptr++;
			
		}
		else if (command==4)
		{
			//dec mem
			uint16_t addresstodec = Baseprogram()->read(addressptr+1)<<8|Baseprogram()->read(addressptr+2);
			dec(addresstodec);
			addressptr+=2;
		}
		else if (command==5)
		{
			//mov
			uint8_t regto = Baseprogram()->read(addressptr+1);
			uint8_t regfrom = Baseprogram()->read(addressptr+2);
			mov(regto,regfrom);			
		}
		else if (command==6)
		{
			
		}
		
		addressptr++;
	}
	
}
void interpreter::mov(char regto, char regfrom)
{
	registers[regto]=registers[regfrom];
}
void interpreter::ld(char regto, uint16_t memptr)
{
	registers[regto]=Dataram()->read(memptr);
}

void interpreter::ldi(char regto,char val)
{
	registers[regto]=val;
}

/*
void interpreter::st(uint16_t memptr, char regfrom)
{
	dataram->write(memptr,regfrom);
}
*/
void interpreter::stx(char regfrom)
{
	Dataram()->write((uint16_t)*registerx.high<<8|*registerx.low,registers[regfrom]);
}
void interpreter::sty(char regfrom)
{
	Dataram()->write((uint16_t)*registery.high<<8|*registery.low,registers[regfrom]);
}
void interpreter::stz(char regfrom)
{
	Dataram()->write((uint16_t)*registerz.high<<8|*registerz.low,registers[regfrom]);
}
void interpreter::std(uint16_t memptr, char regfrom)
{
	Dataram()->write(memptr,regfrom);
}

void interpreter::svd(uint16_t memptr, char regfrom)
{
	Videoram()->write(memptr,regfrom);
}
void interpreter::svx(char regfrom)
{
	Videoram()->write(registerx.getVal(),regfrom);
}
void interpreter::svy(char regfrom)
{
	Videoram()->write(registery.getVal(),regfrom);
}
void interpreter::svz(char regfrom)
{
	Videoram()->write(registerz.getVal(),regfrom);
}

void interpreter::cmp(char reg1 ,char reg2)
{
	if (reg1==reg2)
	{
		flag.setflag(cpuflags::equals,true);
	}
	else if(reg1>reg2)
	{
		flag.setflag(cpuflags::greater,true);		
	}
	else if(reg1<reg2)
	{
		flag.setflag(cpuflags::less,true);
	}
	
}
void interpreter::cpi(char reg1 ,char val)
{
	if (reg1==val)
	{
		flag.setflag(cpuflags::equals,true);
	}
	else if(reg1>val)
	{
		flag.setflag(cpuflags::greater,true);
		
	}
	else if(reg1<val)
	{
		flag.setflag(cpuflags::less,true);
	}
	
}

void interpreter::nop()
{
	asm volatile("nop");
}
void interpreter::jmp(uint16_t address)
{
	
}
void interpreter::push(char reg)
{
	stackram->write(stackptr,registers[reg]);
	stackptr--;
}
void interpreter::pop(char reg)
{
	
	stackram->read(stackptr);
	stackptr++;
}

void interpreter::syscall()
{
	//r0 is command
	// rn >r0 is data
	/*
		0-  sleep 1 ms
		
	*/
	if (registers[0]==0)
	{
		int i = registers[1];
		do 
		{
			_delay_ms(1);
			i--;	
		} while (i>0);	
	}
	/*
		
	*/
	else if (registers[0]==1)
	{
		//multiply 
		if (registers[1]==0||registers[2]==0)
		{
			registers[3]=1;
		}
		else
		{
			registers[3]=registers[1]*registers[2];
		}
	}
	else if (registers[0]==2)
	{
		//int divide
		// reg 1 neumerator
		//reg 2 denemonator
		if(registers[2]==0)
		{
			registers[3]=0;
			registers[4]=1;
		}
		else
		{
			registers[3]=registers[1]/registers[2];
			registers[4]=0;
		}
		
	}
	

	
	
}

// default destructor
interpreter::~interpreter()
{
	
} //~interpreter 