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
#include "drivers/io/port controller/portcontroller.h"
#include "drivers/io/lcd/lcd.h"
#include "drivers/io/shift register/shiftreg.h"
#include "drivers/mem/volatile/ram.h"
#include "drivers/mem/rom.h"
#include "drivers/mem/eeprom.h"
#include "cpu/interrupts/interrupts.h"

static portcontroller port=portcontroller();
static shiftreg addreg=shiftreg(40,39,38,&port);
static shiftreg datareg=shiftreg(37,36,35,&port);
static ram bank0 = ram(&port,&addreg,&datareg,34,0u);	// os ram 
static ram bank1 = ram(&port,&addreg,&datareg,34,0x4000u);//main prog ram
static ram bank2 = ram(&port,&addreg,&datareg,34,0x8000);// second prog ram or extended main program ram
static ram bank3 = ram(&port,&addreg,&datareg,34,0xC000);// third program
static ram bank4 = ram(&port,&addreg,&datareg,34,0x10000);// video ram

static rom bios = rom(&port,&addreg,0x14000);
static rom settings = rom(&port,&addreg,0x018000);
static rom program0 = rom(&port,&addreg,0x1C0000);
static rom program1 = rom(&port,&addreg,0x020000);
static rom program2 = rom(&port,&addreg,0x024000);
static rom program3 = rom(&port,&addreg,0x028000);

static eeprom fattable =eeprom(&port,&addreg,&datareg,34,0x0002C000);
static eeprom storage0 =eeprom(&port,&addreg,&datareg,34,0x00030000);
static eeprom storage1 =eeprom(&port,&addreg,&datareg,34,0x00034000);
static eeprom storage2 =eeprom(&port,&addreg,&datareg,34,0x00038000);
static eeprom storage3 =eeprom(&port,&addreg,&datareg,34,0x0003C000);


static interrupts irqhandler= interrupts();


static lcd disp1=lcd();

char gpvariables[8] = {0,0,0,0,0,0,0,0};
void runprogram(int progstart)
{
	
	
}
void storememory(uint64_t address, char out)
{
	if (address>=0x0 && address<=0x3fff)
	{
		bank0.write(address,out);
	}
	else if (address>=0x4000 && address<=0x7fff)
	{
		bank1.write(address-0x4000,out);
	} 
	else if(address>=0x8000 && address<=0xbfff)
	{
		bank2.write(address-0x8000,out);
	}
	else if(address>=0xC000 && address<=0xffff)
	{
		bank3.write(address-0xC000,out);
	}
	else if(address>=0xffff && address<=0x10000)
	{
		bank4.write(address-0x10000,out);
	}
	
	
}
int main(void)
{
	port.writeddra(0xff);
	port.writeddrc(0xff);
	//bank1.setaddress(0);
    /* Replace with your application code */
    while (1) 
    {
		if (PINB>0)
		{
			if (PINB)
			{
				
			}
		}
		storememory(0x0000,0xff);
	}
}