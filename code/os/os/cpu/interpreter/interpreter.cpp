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
/*
	decrements register
*/
void interpreter::dec(char reg)
{
	registers[reg]=registers[reg]-1;
}
/*
	decrements memory cell
*/
void interpreter::dec(uint16_t memptr)
{
	char val=Dataram()->read(memptr);
	val--;
	Dataram()->write(memptr,val);

}

void interpreter::run()
{
	bool exitcode=false;
	addressptr=0;
	while(!exitcode)
	{
		char command = baseprogram->read(addressptr);
		if (command==0)
		{
			// system call
			syscall();
		}
		else if (command==1)
		{
			//inc register
			addressptr+=1;
			char  regtoinc = baseprogram->read(addressptr);
			inc(regtoinc);
		}
		else if (command==2)
		{
			//inc memory
			uint16_t addresstoinc = baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			inc(addresstoinc);
			addressptr+=2;
		}	
		else if (command==3)
		{
			//dec reg
			char  regtodec = baseprogram->read(addressptr+1);
			dec(regtodec);
			addressptr++;	
		}
		else if (command==4)
		{
			//dec mem
			uint16_t addresstodec = baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			dec(addresstodec);
			addressptr+=2;
		}
		else if (command==5)
		{
			//mov
			uint8_t regto = baseprogram->read(addressptr+1);
			uint8_t regfrom = baseprogram->read(addressptr+2);
			mov(regto,regfrom);			
			addressptr+=2;
		}
		else if (command==6)
		{
			//ld 
			uint8_t regto=baseprogram->read(addressptr+1);
			uint16_t mem = baseprogram->read(addressptr+2)<<8|baseprogram->read(addressptr+3);
			ld(regto,mem);
			addressptr+=4;
		}
		else if (command==7)
		{
			//store by using x as address
			stx(addressptr+1);
			addressptr++;
		}
		else if (command==8)
		{
			//store by using y as address
			sty(addressptr+1);
			addressptr++;
		}
		else if (command==9)
		{
			//store by using z as address
			stz(addressptr+1);
			addressptr++;
		}
		else if (command==10)
		{
			//store by direct address
			uint16_t ad = baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			uint8_t reg = baseprogram->read(addressptr+3);
			std(ad,reg);
			addressptr+=3;
		}
		else if (command==11)
		{
			//store by direct address
			uint16_t ad = baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			uint8_t reg = baseprogram->read(addressptr+3);
			svd(ad,reg);
			addressptr+=3;
		}
		else if (command==12)
		{
			//store video by using x as address
			svx(addressptr+1);
			addressptr++;
		}
		else if (command==13)
		{
			//store video by using y as address
			svy(addressptr+1);
			addressptr++;
		}
		else if (command==14)
		{
			//store video by using z as address
			svz(addressptr+1);
			addressptr++;
		}
		else if (command==15)
		{
			txs();
		}
		else if (command==16)
		{
			txy();
		}
		else if (command==17)
		{
			txz();
		}
		else if (command==18)
		{
			tys();
		}
		else if (command==19)
		{
			tyx();
		}
		else if (command==20)
		{
			tyz();
		}
		else if (command==21)
		{
			tzs();
		}
		else if (command==22)
		{
			tzx();
		}
		else if (command==23)
		{
			tzy();
		}		
		else if (command==24)
		{
			tsx();
		}
		else if (command==25)
		{
			tsy();
		}
		else if (command==26)
		{
			tsz();
		}
		
		
		else if (command==255)
		{
			nop();
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
//store to mem
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

//transfer 16 bit numbers

/*
	transfer x register to stack
*/
void interpreter::txs()
 {
	stackptr = registerx.getVal(); 
 }
void interpreter::txy()
{
	registery.setValue(registerx.getVal());	
}
void interpreter::txz()
{
	registerz.setValue(registerx.getVal());	
}
void interpreter::tys()
{
	stackptr = registery.getVal(); 
}
void interpreter::tyx()
{
	registerx.setValue(registery.getVal());
}
void interpreter::tyz()
{
	registerz.setValue(registery.getVal());	
}
void interpreter::tzs()
{
	stackptr=registerz.getVal();
}
void interpreter::tzx()
{
	registerx.setValue(registerz.getVal());
}
void interpreter::tzy()
{
	registery.setValue(registerz.getVal());
}

void interpreter::tsx()
{
	registerx.setValue(stackptr);
		
}
void interpreter::tsy()
{
	registery.setValue(stackptr);
	
}
void interpreter::tsz()
{
	registerz.setValue(stackptr);
	
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
void interpreter::breq(uint16_t address)
{
	if (flag.getflag(cpuflags::equals)==1)
	{
		jmp(address);
	}
}

void interpreter::breqpcf(uint16_t offset)
{
	if (flag.getflag(cpuflags::equals)==1)
	{
		jmp(addressptr+offset);
	}
}

void interpreter::breqpcb(uint16_t offset)
{
	if (flag.getflag(cpuflags::equals)==1)
	{
		jmp(addressptr-offset);
	}
}

void interpreter::brne(uint16_t address)
{
	if (flag.getflag(cpuflags::equals)==0&&(flag.getflag(cpuflags::greater)==1||flag.getflag(cpuflags::less)==1))
	{
		jmp(address);
	}
}

void interpreter::brnepcf(uint16_t offset)
{
	if (flag.getflag(cpuflags::equals)==0&&(flag.getflag(cpuflags::greater)==1||flag.getflag(cpuflags::less)==1))
	{
		jmp(addressptr+offset);
	}
}

void interpreter::brnepcb(uint16_t offset)
{
	if (flag.getflag(cpuflags::equals)==0&&(flag.getflag(cpuflags::greater)==1||flag.getflag(cpuflags::less)==1))
	{
		jmp(addressptr-offset);
	}
}

void interpreter::brge(uint16_t address)
{

}

void interpreter::brgepcf(uint16_t offset)
{

}

void interpreter::brgepcb(uint16_t offset)
{

}

void interpreter::brle(uint16_t address)
{

}

void interpreter::brlepcf(uint16_t offset)
{

}

void interpreter::brlepcb(uint16_t offset)
{

}

void interpreter::nop()
{
	asm volatile("nop");
}
void interpreter::call(uint16_t addr)
{
	push(stackptr);
	jmp(addr);
	stackptr=pop()<<8|pop();
}
void interpreter::jmp(uint16_t address)
{
	addressptr=address; 	
}
void interpreter::jmppcf(uint16_t offset)
{
	addressptr+=offset;
}
void interpreter::jmppcb(uint16_t offset)
{
	addressptr-=offset;
}

void interpreter::push(char reg)
{
	stackram->write(stackptr,registers[reg]);
	stackptr--;
}
void interpreter::pushi(uint8_t value)
{
	stackram->write(stackptr,value);
	stackptr--;
}
uint8_t interpreter::pop()
{
	uint8_t val = stackram->read(stackptr);
	stackptr++;
	return val;
}
void interpreter::pop(char reg)
{
	stackram->read(stackptr);
	stackptr++;
}
void interpreter::swap(char reg)
{
	registers[reg]=(registers[reg]<<4) | (registers[reg]>>4);
	
}

char interpreter::syscall()
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
		//reg 3 result
		// reg 4 error
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
	else if (registers[0])
	{
	}
	else if (registers[0])
	{
	}
	else if (registers[0])
	{
	}
	else if (registers[0])
	{
	}



	else if (registers[0]==255)
	{
		registers[1]=1;
		return 'e';
	}
	return 0;
}
// default destructor
interpreter::~interpreter()
{
		baseprogram=NULL;
		dataram=NULL;
		stackram=NULL;
		
		videoram=NULL;
		videoinstructionram=NULL;
		videocustomcharram=NULL;
} //~interpreter 