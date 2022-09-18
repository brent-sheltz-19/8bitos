/*
 * os.cpp
 *
 * Created: 8/19/2020 7:01:39 PM
 * Author : Brent
 */ 

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "drivers/io/port controller/portcontroller.h"
#include "drivers/io/lcd/lcd.h"
#include "drivers/io/shift register/shiftreg.h"
#include "drivers/io/keyboard/keyboard.h"
#include "drivers/mem/volatile/ram.h"
#include "drivers/mem/volatile/Vram.h"
#include "drivers/mem/rom.h"
#include "drivers/mem/eeprom.h"
#include "cpu/interrupts/interrupts.h"
#include "cpu/interpreter/interpreter.h"
#include "cpu/communication/Serial.h"
#include "constants.h"
#define F_CPU   8000000
#define rwpin 1
// if vmempin is 0 its using cpu ram else if 1 using  video ram
#define vmempin 2

/*
	address lines max hex 1fff
	1 chip per bank
	a0-a12 adress a13-a15 
	
	
*/



//static const int address_max_hex=0x1fff;
static portcontroller port=portcontroller();
static shiftreg addreg=shiftreg(40,39,38,&port);
static shiftreg csreg=shiftreg(37,36,35,&port);
static Serial serial= Serial(&csreg,&port,3,34,33);

static ram bank0 = ram(&port,&addreg,rwpin,0x0u);	// os code 
static ram bank1 = ram(&port,&addreg,rwpin,0x2000u);//main program code
static ram bank2 = ram(&port,&addreg,rwpin,0x4000u);// main data ram 
static ram bank3 = ram(&port,&addreg,rwpin,0x6000u);
static ram bank4 = ram(&port,&addreg,rwpin,0x8000u);

static ram bank5 = ram(&port,&addreg,rwpin,0xA000u);
static ram bank6 = ram(&port,&addreg,rwpin,0xC000u);
static ram bank7 = ram(&port,&addreg,rwpin,0x0E000u);// driver ram
static ram bank8 = ram(&port,&addreg,rwpin,0x10000u);// driver ram
static ram bank9 = ram(&port,&addreg,rwpin,0x12000u);// os data
static ram bank10 = ram(&port,&addreg,rwpin,0x14000u);// stack ram

static rom cartridge0 =rom(&port,&addreg,0x16000u);
static rom cartridge1 =rom(&port,&addreg,0x18000u);
static rom cartridge2 =rom(&port,&addreg,0x1A000u);
static rom program0 =rom(&port,&addreg,0x1C000u);
static rom program1 =rom(&port,&addreg,0x1E000u);
static rom basicrom =rom(&port,&addreg,0x20000u);

// end of ram 0x21FFF
/*
	0-2048 video ram
	2049-4097 text ram

*/
static Vram vbank0 = Vram(&port,&addreg,rwpin,vmempin,0x0u);	// video ram
static Vram vbank1 = Vram(&port,&addreg,rwpin,vmempin,0x2000u);//video/text ram
static Vram vbank2 = Vram(&port,&addreg,rwpin,vmempin,0x4000u);// text/instruction ram 

static  ram* const PROGMEM rambanklist[] = {&bank0,&bank1,&bank2,&bank3,&bank4,&bank5,&bank6,&bank7,&bank8,&bank9,&bank10};
static Vram* const  PROGMEM vrambanklist[]={&vbank0,&vbank1,&vbank2};



static interrupts irqhandler= interrupts();
//static interpreter osinterpret= interpreter();
static interpreter interpret= interpreter();
char* directory ={};
/*
	reserved address and address+1
*/		
static keyboard kb = keyboard(0x22001u);

spiDeviceTypes idList[8]={};

void runprogram()
{
	interpret.run();
}
void storememory(uint32_t address, char out)
{
	if (address>=0x0 && address<0x2000)
	{
		bank0.write(address,out);
	}
	else if (address>=0x2000 && address<0x4000)
	{
		bank1.write(address-0x2000,out);
	} 
	else if(address>=0x4000 && address<0x6000)
	{
		bank2.write(address-0x4000,out);
	}
	else if(address>=0x6000 && address<0x8000)
	{
		bank3.write(address-0x6000,out);
	}
	else if(address>=0x8000 && address<0xA000)
	{
		bank4.write(address-0x8000,out);
	}
	else if(address>=0xA000 && address<0xC000)
	{
		bank5.write(address-0xA000,out);		
	}
	else if(address>=0xC000 && address<0xE000)
	{
		bank6.write(address-0xC000,out);
	}
	else if(address>=0xE000 && address<0x10000)
	{
		bank7.write(address-0xE000,out);	
	}
	else if(address>=0x10000 && address<0x12000)
	{
		bank8.write(address-0x10000,out);			
	}
	else if(address>=0x12000 && address<0x16000)
	{
		bank9.write(address-0x12000,out);
	}
	else if(address>=0x14000 && address<0x1000)
	{
		bank10.write(address-0x14000,out);
	}
	
}
char readmemory(uint32_t address)
{
		if (address>=0x0 && address<0x2000)
		{
			return bank0.read(address);
		}
		else if (address>=0x2000 && address<0x4000)
		{
			return bank1.read(address-0x2000);
		}
		else if(address>=0x4000 && address<0x6000)
		{
			return bank2.read(address-0x4000);
		}
		else if(address>=0x6000 && address<0x8000)
		{
			return bank3.read(address-0x6000);
		}
		else if(address>=0x8000 && address<0xA000)
		{ 
			return bank4.read(address-0x8000);
		}
		else if(address>=0xA000 && address<0xC000)
		{
			return bank5.read(address-0xA000);
		}
		else if(address>=0xC000 && address<0xE000)
		{
			return bank6.read(address-0xC000);
		}
		else if(address>=0xE000 && address<0x10000)
		{
			return bank7.read(address-0xE000);
		}
		else if(address>=0x10000 && address<0x12000)
		{
			return bank8.read(address-0x10000);
		}
		else if(address>=0x12000 && address<0x16000)
		{
			return bank9.read(address-0x12000);
		}
		else if(address>=0x14000 && address<0x1000)
		{
			return bank10.read(address-0x14000);
		}	
}
char readmemory(ram* bank,uint16_t address)
{
	bank->read(address);
}
char loadmainprogramfromrom(char prognum)
{
	ram* prog_ram;
	rom* prog;
	prog_ram=&bank1;
	if (prognum == 0)
	{
		prog=&program0;
	} 
	else if(prognum == 1)
	{
		prog=&program1;
			
	}
	else if(prognum == 2)
	{
		prog=&cartridge0;
			
	}
	else if(prognum == 3)
	{
		prog=&cartridge1;
	}
	else if(prognum == 4)
	{
		prog=&cartridge2;
	}
	else
	{
		return 'e';
	}
	for (uint16_t a = 0; a < 0x1fff ; a++)
	{
		prog_ram->write(a,prog->read(a));
		
	}
	return 't';
}
char loadmainprogramfromcartridge(char cartridge_num)
{
	ram* prog_ram;
	rom* prog;
	prog_ram=&bank1;
	if (cartridge_num == 0)
	{
		prog=&cartridge0;
	}
	else if(cartridge_num == 1)
	{
		prog=&cartridge1;
		
	}
	else if(cartridge_num == 2)
	{
		prog=&cartridge2;
		
	}
	else
	{
		return 'e';
	}
	for (uint16_t a = 0; a < 0x1fff ; a++)
	{
		prog_ram->write(a,prog->read(a));
		
	}
	return 't';
}

void readKeyboard(char* buffer,int buffsize)
{
	
} 
interpreter createProcess()
{
	
}
int main()
{
/* Replace with your application code */
	
	char *in_str;
	char retval='\0';
	PORTA=0;
//	serial;
	
	//set output	
	port.writeddra(0xff);
	port.writeddrc(0xff);
	//set input
	port.writeddrb(0);
	port.writeddrd(0);
	
	//set interpreter memory
	interpret.dataram=&bank2;
	interpret.stackram=&bank10;
	interpret.videoram=&vbank0;
	interpret.videoinstructionram=&vbank1;
	interpret.videocustomcharram=&vbank2;
	
	
	while (true) 
    {	
		 int kbsize = kb.getsize();	
		 //in_str=(char*)calloc(20,sizeof(char));
		 in_str=(char*)calloc(kb.getsize(),sizeof(char));
		 
		 //strcpy(in_str,"load cartridge 3"); 
		 char* spaceloc = strchr(in_str,' ');
		 char* command_str =(char*) malloc((spaceloc-in_str));
		 for (int i =0;i<(spaceloc-in_str);i++)
		 {
			 command_str[i]=in_str[i];
		 }
		 
		 if(strcmp_P(command_str,(PGM_P)&run)==0)
		 {	 
			 retval = interpret.run();
		 }
		 else if (strcmp_P(command_str,(PGM_P)&run2)==0)
		 {
			retval = interpret.run(); 
		 }
		 else if (strcmp_P(command_str,(PGM_P)&cd)==0)
		 {
			 
		 }
		 else if (strcmp_P(command_str,(PGM_P)&load)==0)
		 {
			if(strstr_P(in_str,(PGM_P)&cartridge)!=NULL)
			{
				char functioncode;
				int cartridge_number=0;				
				sscanf_P(in_str,(PGM_P)&loadcartridge1,&cartridge_number);
				functioncode = loadmainprogramfromcartridge(cartridge_number);
				if (functioncode=='e')
				{
					
				}
			} 
		 }
		 if(retval!=0)
		 {
			 if (retval == 'b')
			 {
				 if (interpret.registers[0]==4)
				 { 
					 /* switches ram bank
					 */ 
					 if (interpret.registers[1]>0&&interpret.registers[1]<10)
					 {
						 interpret.dataram = rambanklist[(int)interpret.registers[1]];
					 }
					 
				 }
				 else if(interpret.registers[0]==5)
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
					if (interpret.registers[1]=1)
					{
						
					}
					if (interpret.registers[1]=2)
					{
						char inchar=0xff;
						char* songfilename;
						int fileptr = interpret.registerx.getVal();
						int size = 0;
						int i;
						while(inchar!=0)
						{
							inchar = readmemory(fileptr);
							size++;
						}
						inchar=0xff;
						songfilename = calloc(sizeof(char),size);
						i=0
						while(inchar!=0)
						{
							inchar = readmemory(fileptr);
							songfilename[i]=inchar;
							i++;
						}
						
						free(songfilename);
						
					
					}
					
				 }
				 else if(interpret.registers[0]==6)
				 {
				 }
			 }
			 else if (retval=='e')
			 {
				 interpret.clearreg();
			 }
		 }
		 
		 
		 
		 
		 
		 
		 
		 
		 free(command_str);
		 free(in_str);
	 }
	return 0;        	
}