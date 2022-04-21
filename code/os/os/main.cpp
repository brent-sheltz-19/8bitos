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
#include <stdlib.h>

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
static ram bank0 = ram(&port,&addreg,rwpin,0x0u);	// os ram 
static ram bank1 = ram(&port,&addreg,rwpin,0x2000u);//main program code
static ram bank2 = ram(&port,&addreg,rwpin,0x4000u);// main data ram 
static ram bank3 = ram(&port,&addreg,rwpin,0x6000u);// second prog ram  
static ram bank4 = ram(&port,&addreg,rwpin,0x8000u);// stack ram

static rom bios = rom(&port,&addreg,0xA000u);
static rom settings = rom(&port,&addreg,0xC000u);
static rom program0 = rom(&port,&addreg,0xE000u);
static rom program1 = rom(&port,&addreg,0x10000u);
static rom program2 = rom(&port,&addreg,0x12000u);
static rom program3 = rom(&port,&addreg,0x14000u);

static eeprom fattable =eeprom(&port,&addreg,rwpin,0x16000u);
static eeprom storage0 =eeprom(&port,&addreg,rwpin,0x18000u);
static eeprom storage1 =eeprom(&port,&addreg,rwpin,0x1A000u);
static eeprom storage2 =eeprom(&port,&addreg,rwpin,0x1C000u);
static eeprom storage3 =eeprom(&port,&addreg,rwpin,0x1E000u);

static Vram vbank0 = Vram(&port,&addreg,rwpin,vmempin,0x0u);	// video ram
static Vram vbank1 = Vram(&port,&addreg,rwpin,vmempin,0x2000u);//instruction ram
static Vram vbank2 = Vram(&port,&addreg,rwpin,vmempin,0x4000u);// custom char ram 

static ram rambanklist[] = {bank0,bank1,bank2,bank3,bank4};
static Vram vrambanklist[]={vbank0,vbank1,vbank2};



static interrupts irqhandler= interrupts();
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
char loadmainprogramfromrom(char prognum,bool mainprogram)
{
	ram* prog_ram;
	if (mainprogram)
	{
		prog_ram=&bank1;
	}
	else
	{
		prog_ram=&bank3;
	}
	rom* prog;
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
		prog=&program2;
			
	}
	else if(prognum == 3)
	{
		prog=&program3;
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

static const char run[] = "run";
int main()
{
/* Replace with your application code */
	char *in_str;
	char retval;
	//set output	
	port.writeddra(0xff);
	port.writeddrc(0xff);
	

	//set input
	port.writeddrb(0);
	port.writeddrd(0);
	//set interpreter memory
	interpret.dataram=&bank2;
//	interpret.stackram=&bank4;
//	interpret.videoram=&vbank0;
//	interpret.videoinstructionram=&vbank1;
//	interpret.videocustomcharram=&vbank2;
	while (true) 
    {		
		 int size=10;
		 in_str=(char*) calloc(5,sizeof(char));
		 //in_str[i] =(char)32;
		 in_str = "run";
		 if(strcasecmp_P(in_str,run))
		 {
			 interpret.run();
		 
		 }
		//in_str[0]='a';
	     free(in_str);
	}
	return 0;        	
}