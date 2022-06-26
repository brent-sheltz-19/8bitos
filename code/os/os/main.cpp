/*
 * os.cpp
 *
 * Created: 8/19/2020 7:01:39 PM
 * Author : Brent
 */ 

#define F_CPU   8000000
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

#define rwpin 1
// 0 cpu ram 1 video ram
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
static ram bank7 = ram(&port,&addreg,rwpin,0x0E000u);
static ram bank8 = ram(&port,&addreg,rwpin,0x10000u);
static ram bank9 = ram(&port,&addreg,rwpin,0x12000u);// os data
static ram bank10 = ram(&port,&addreg,rwpin,0x14000u);// stack ram

static rom cartridge0 =rom(&port,&addreg,0x16000u);
static rom cartridge1 =rom(&port,&addreg,0x18000u);
static rom cartridge2 =rom(&port,&addreg,0x1A000u);
static rom program0 =rom(&port,&addreg,0x1C000u);
static rom program1 =rom(&port,&addreg,0x1E000u);
static rom basicrom =rom(&port,&addreg,0x1E000u);

static Vram vbank0 = Vram(&port,&addreg,rwpin,vmempin,0x0u);	// video ram
static Vram vbank1 = Vram(&port,&addreg,rwpin,vmempin,0x2000u);//instruction ram
static Vram vbank2 = Vram(&port,&addreg,rwpin,vmempin,0x4000u);// custom char ram 

static  ram* const PROGMEM rambanklist[] = {&bank0,&bank1,&bank2,&bank3,&bank4,&bank5,&bank6,&bank7,&bank8,&bank9,&bank10};
static Vram* const  PROGMEM vrambanklist[]={&vbank0,&vbank1,&vbank2};



static interrupts irqhandler= interrupts();
static interpreter osinterpret= interpreter();
static interpreter interpret= interpreter();
static keyboard kb = keyboard();


void runprogram()
{
	interpret.run();
}
void storememory(uint64_t address, char out)
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
	else if(address>=0x6000 && address<0xA000)
	{
		bank4.write(address-0x8000,out);
	}
	
	
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

int main()
{
/* Replace with your application code */
	
	char *in_str;
	char retval='\0';
	PORTA=0;
	
	
	
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
		 int kbsize = kb.getsize() 	
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
					 //load file
					 
				 }
				 else if(interpret.registers[0]==)
			 
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