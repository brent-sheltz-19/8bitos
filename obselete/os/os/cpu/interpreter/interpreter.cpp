/*
* interpreter.cpp
*
* Created: 5/8/2021 1:50:49 AM
* Author: Brent
*/



#include "interpreter.h"

interpreter::interpreter()
{
	stackptr = 0x1fff;
	addressptr=0;
	
	registerz= indexreg(&registers[254],&registers[255]);
	registery= indexreg(&registers[252],&registers[253]);
	registerx= indexreg(&registers[250],&registers[251]);
} //interpreter

/*
	increments register
*/
void interpreter::inc(char reg)
{
	registers[(int)reg]=registers[(int)reg]+1;
}
/*
	increments memory cell value
	parameter - unsigned 16 bit value 
*/
void interpreter::inc(uint16_t memptr)
{
	char val=dataram->read(memptr);
	val++;
	dataram->write(memptr,val);
}
/*
	decrements register
*/
void interpreter::dec(char reg)
{
	registers[(int)reg]=registers[(int)reg]-1;
}
/*
	decrements memory cell
*/
void interpreter::dec(uint16_t memptr)
{
	char val=dataram->read(memptr);
	val--;
	dataram->write(memptr,val);

}
/*
*	runs interpreter
*/
char interpreter::run()
{
	bool exitcode=false;
	while(!exitcode)
	{
		char command = baseprogram->read(addressptr);
		if (command==0)
		{
			// system call
			char val = syscall();
			if(val =='b')
			{
				return 'b';
			}
			else if (val=='e')
			{
				exitcode = true;
				
			}
			
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
			addressptr+=3;
		}
		else if (command==7)
		{
			//ldi
			uint8_t regto=baseprogram->read(addressptr+1);
			uint8_t val = baseprogram->read(addressptr+2);
			ldi(regto,val);
			addressptr+=2;
		}
		else if (command==8)
		{
			//store by using x as address
			uint8_t reg = baseprogram->read(addressptr+1);
			stx(reg);
			addressptr++;
		}
		else if (command==9)
		{
			
			//store by using y as address
			uint8_t reg = baseprogram->read(addressptr+1);
			sty(reg);
			addressptr++;
		}
		else if (command==10)
		{
			//store by using z as address
			uint8_t reg = baseprogram->read(addressptr+1);
			stz(reg);
			addressptr++;
		}
		else if (command==11)
		{
			//store by direct address
			uint16_t ad = baseprogram->read(addressptr+2)<<8|baseprogram->read(addressptr+3);
			uint8_t reg = baseprogram->read(addressptr+1);
			std(ad,reg);
			addressptr+=3;
		}
		else if (command==12)
		{
			//store video by direct address
			uint16_t ad = baseprogram->read(addressptr+2)<<8|baseprogram->read(addressptr+3);
			uint8_t reg = baseprogram->read(addressptr+1);
			svd(ad,reg);
			addressptr+=3;
		}
		else if (command==13)
		{
			//store video by using x as address
			uint8_t reg = baseprogram->read(addressptr+1);
			svx(reg);
			addressptr++;
		}
		else if (command==14)
		{
			//store video by using y as address
			uint8_t reg = baseprogram->read(addressptr+1);
			svy(reg);
			addressptr++;
		}
		else if (command==15)
		{
			//store video by using z as address
			uint8_t reg = baseprogram->read(addressptr+1);
			svz(reg);
			addressptr++;
		}
		else if (command==16)
		{
			txs();
		}
		else if (command==17)
		{
			txy();
		}
		else if (command==18)
		{
			txz();
		}
		else if (command==19)
		{
			tys();
		}
		else if (command==20)
		{
			tyx();
		}
		else if (command==21)
		{
			tyz();
		}
		else if (command==22)
		{
			tzs();
		}
		else if (command==23)
		{
			tzx();
		}
		else if (command==24)
		{
			tzy();
		}		
		else if (command==25)
		{
			tsx();
		}
		else if (command==26)
		{
			tsy();
		}
		else if (command==27)
		{
			tsz();
		}
		else if(command ==28)
		{
			//cmp
			char reg1 = baseprogram->read(addressptr+1);
			char reg2 = baseprogram->read(addressptr+2);
			cmp(reg1,reg2);
			addressptr+=2;	
		}
		else if(command ==29)
		{
			//cmpi
			char reg1 = baseprogram->read(addressptr+1);
			char val = baseprogram->read(addressptr+2);
			cpi(reg1,val);
			addressptr+=2;
		}
		else if(command ==30)
		{
			ror(baseprogram->read(addressptr+1));
			addressptr+=1;
		}
		else if(command ==31)
		{
			rol(baseprogram->read(addressptr+1));
			addressptr+=1;
		}
		else if(command ==32)
		{
			uint16_t address =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			breq(address);
		
		}
		else if(command ==33)
		{
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			breqpcf(addressptr+offset);
			
				
		}
		else if(command ==34)
		{
			
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			breqpcb(addressptr-offset);
			
		}
		else if(command ==35)
		{
			uint16_t address =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brne(address);
		}
		else if(command ==36)
		{
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brnepcf(addressptr+offset);
		}
		else if(command ==37)
		{
			
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brnepcb(addressptr-offset);
			
		}		
		else if(command ==38)
		{
			uint16_t address =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brge(address);
		}
		else if(command ==39)
		{
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brgepcf(addressptr+offset);			
		}
		else if(command ==40)
		{
			
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brgepcb(addressptr-offset);
			
		}
		else if(command ==41)
		{
			uint16_t address =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brle(address);
			
		}
		else if(command ==42)
		{
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brlepcf(addressptr+offset);
		}
		else if(command ==43)
		{
			
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brlepcb(addressptr-offset);
			
		}
		else if(command ==44)
		{
			uint16_t address =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brg(address);
		}
		else if(command ==45)
		{
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brgpcf(addressptr+offset);		
		}
		else if(command ==46)
		{
			
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brgpcb(addressptr-offset);
		}
		else if(command ==47)
		{
			uint16_t address =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brl(address);
		}
		else if(command ==48)
		{
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brlpcf(addressptr+offset);
		}
		else if(command ==49)
		{
			
			uint16_t offset =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			brlpcb(addressptr-offset);
		}
		else if (command ==50)
		{
			char reg = baseprogram->read(addressptr+1);
			clr(reg);
			addressptr++;
		}
		else if(command==51)
		{
			
			char flag = baseprogram->read(addressptr+1);
			clf(flag);
			addressptr++;
		}
		else if(command==52)
		{
			
			char reg = baseprogram->read(addressptr+1);
			swap(reg);
			addressptr++;
		}
		else if(command==53)
		{
			char reg = baseprogram->read(addressptr+1);
			pop(reg);
			addressptr++;	
		}
		else if(command==54)
		{
			char reg = baseprogram->read(addressptr+1);
			push(reg);
			addressptr++;
		}
		else if(command==55)
		{
			char ind = baseprogram->read(addressptr+1);
			
			push(indregs[(int)ind]->getVal());
			addressptr++;
		}
		else if(command==56)
		{
			char i = baseprogram->read(addressptr+1);
			
			pushi(i);
			addressptr++;
		}
		else if(command==57)
		{
			char regto = baseprogram->read(addressptr+1);
			ldx(regto);
			addressptr++;
		}
		else if(command==58)
		{
			char regto = baseprogram->read(addressptr+1);
			ldy(regto);
			addressptr++;
		}
		else if(command==59)
		{
			char regto = baseprogram->read(addressptr+1);
			ldz(regto);
			addressptr++;
		}
		else if(command==60)
		{
			ret();
		}
		else if(command==61)
		{
			uint16_t addr =  baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			jmp(addr);
			addressptr+=2;
		}	
		else if (command==62)
		{
			
			uint16_t address = baseprogram->read(addressptr+1)<<8|baseprogram->read(addressptr+2);
			call(address);
			addressptr+=2;
		}






		else if (command==255)
		{
			nop();
		}
		addressptr++;
	}
	addressptr=0;
	return 'e';
}
/*
 transfers registers
*/
void interpreter::mov(char regto, char regfrom)
{
	registers[(int)regto]=registers[(int)regfrom];
}
void interpreter::ld(char regto, uint16_t memptr)
{
	registers[(int)regto]=dataram->read(memptr);
}
void interpreter::ldi(char regto,char val)
{
	registers[(int)regto]=val;
}
void interpreter::ldx(char regto)
{
	ld(regto,registerx.getVal() );	
}
void interpreter::ldy(char regto)
{
	ld(regto,registery.getVal() );
}
void interpreter::ldz(char regto)
{
	ld(regto,registerz.getVal() );
}
//store to mem
void interpreter::stx(char regfrom)
{
	dataram->write((uint16_t)*registerx.high<<8|*registerx.low,registers[(int)regfrom]);
}
void interpreter::sty(char regfrom)
{
	dataram->write((uint16_t)*registery.high<<8|*registery.low,registers[(int)regfrom]);
}
void interpreter::stz(char regfrom)
{
	dataram->write((uint16_t)*registerz.high<<8|*registerz.low,registers[(int)regfrom]);
}
void interpreter::std(uint16_t memptr, char regfrom)
{
	dataram->write(memptr,regfrom);
}
void interpreter::svd( uint16_t memptr,char regfrom)
{
	videoram->write(memptr,regfrom);
}
void interpreter::svx(char regfrom)
{
	videoram->write(registerx.getVal(),regfrom);
}
void interpreter::svy(char regfrom)
{
	videoram->write(registery.getVal(),regfrom);
}
void interpreter::svz(char regfrom)
{
	videoram->write(registerz.getVal(),regfrom);
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
//compare operators
void interpreter::cmp(char reg1 ,char reg2)
{
	if (reg1==reg2)
	{
		flag.setflag(cpuflags::equals,true);
	}
	if(reg1>reg2)
	{
		flag.setflag(cpuflags::greater,true);		
	}
	if(reg1<reg2)
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
	if(reg1>val)
	{
		flag.setflag(cpuflags::greater,true);
		
	}
	if(reg1<val)
	{
		flag.setflag(cpuflags::less,true);
	}
	
}

void interpreter::ror(char reg1)
{
	
	registers[(int)reg1]=registers[(int)reg1]>>1;
}

void interpreter::rol(char reg1)
{
	registers[(int)reg1]=registers[(int)reg1]<<1;
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
	if(flag.getflag(cpuflags::equals)||flag.getflag(cpuflags::greater))
	{
		jmp(address);
	}

}

void interpreter::brgepcf(uint16_t offset)
{
	if(flag.getflag(cpuflags::equals)||flag.getflag(cpuflags::greater))
	{
		jmp(addressptr+offset);
	}
}

void interpreter::brgepcb(uint16_t offset)
{
	if(flag.getflag(cpuflags::equals)||flag.getflag(cpuflags::greater))
	{
		jmp(addressptr-offset);
	}
}

void interpreter::brle(uint16_t address)
{
	if(flag.getflag(cpuflags::equals)||flag.getflag(cpuflags::less))
	{
		jmp(address);
	}
}

void interpreter::brlepcf(uint16_t offset)
{
	if(flag.getflag(cpuflags::equals)||flag.getflag(cpuflags::less))
	{
		jmp(addressptr+offset);
	}
}

void interpreter::brlepcb(uint16_t offset)
{
	if(flag.getflag(cpuflags::equals)||flag.getflag(cpuflags::less))
	{
		jmp(addressptr-offset);
	}
}
void interpreter::brg(uint16_t address)
{
	if(!flag.getflag(cpuflags::equals)&&flag.getflag(cpuflags::greater))
	{
		jmp(address);
		
	}

}

void interpreter::brgpcf(uint16_t offset)
{
	if(!flag.getflag(cpuflags::equals)&&flag.getflag(cpuflags::greater))
	{
		jmp(addressptr+offset);
		
	}
}

void interpreter::brgpcb(uint16_t offset)
{
	if(!flag.getflag(cpuflags::equals)&&flag.getflag(cpuflags::greater))
	{
		jmp(addressptr-offset);	
	}
}

void interpreter::brl(uint16_t address)
{
	if(!flag.getflag(cpuflags::equals)&&flag.getflag(cpuflags::less))
	{
		jmp(address);
	}
}

void interpreter::brlpcf(uint16_t offset)
{
	if(!flag.getflag(cpuflags::equals)&&flag.getflag(cpuflags::less))
	{
		jmp(addressptr+offset);
	}
}

void interpreter::brlpcb(uint16_t offset)
{
	if(!flag.getflag(cpuflags::equals)&&flag.getflag(cpuflags::less))
	{
		jmp(addressptr-offset);
	}
}

void interpreter::clr(char reg)
{
	registers[(int)reg]=0;
}

void interpreter::nop()
{
	asm volatile("nop");
}
void interpreter::call(uint16_t addr)
{
	push(stackptr);
	jmp(addr);
	addressptr=pop()<<8|pop();
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
	stackram->write(stackptr,registers[(int)reg]);
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
	registers[(int)reg]=stackram->read(stackptr);
	stackptr++;
}
void interpreter::swap(char reg)
{
	registers[(int)reg]=(registers[(int)reg]<<4) | (registers[(int)reg]>>4);	
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
		//sleep
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
	else if (registers[0]==3)
	{
		/*
			stdin
				
		*/
		
		
		
		return 'b';
		
		
	}
	else if (registers[0]==4)
	{
		/*
			switch data ram bank  
		*/
		return 'b';
	}
	else if (registers[0]==5)
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
	else if (registers[0]==6)
	{
		//ssd
		/*
						
		
		
		*/ 
		if (registers[0]==1)
		{
			
			
		}
		
				  		
	}



	else if (registers[0]==255)
	{
		registers[1]=1;
		return 'e';
	}
	return 0;
}
void interpreter::clf(char flags)
{
	flag.clear();
}
void interpreter::ret()
{
	
}
void interpreter::clearreg()
{
	for (int i =0;i<sizeof(registers);i++)
	{
		registers[i]=0;
	}
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