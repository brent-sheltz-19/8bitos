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
#include "drivers/mem/volatile/Vram.h"
#include "drivers/mem/rom.h"
#include "drivers/mem/eeprom.h"
#include "cpu/interrupts/interrupts.h"
#include "cpu/interpreter/interpreter.h"
/*
	address lines max hex 1fff
	4 chips per bank
	a0-a12 adress a13-a15 
	
	
*/
static const int address_max_hex=0x1fff;

static portcontroller port=portcontroller();
static shiftreg addreg=shiftreg(40,39,38,&port);
static shiftreg datareg=shiftreg(37,36,35,&port);

static ram bank0 = ram(&port,&addreg,&datareg,34,0x0u);	// os ram 
static ram bank1 = ram(&port,&addreg,&datareg,34,0x2000u);//main prog ram
static ram bank2 = ram(&port,&addreg,&datareg,34,0x4000u);// second prog ram or extended main program ram
static ram bank3 = ram(&port,&addreg,&datareg,34,0x5000u);// third program or prog data ram
static ram bank4 = Vram(&port,&addreg,&datareg,34,0x6000u);// video ram

static ram rambanklist[] = {bank0,bank1,bank2,bank3,bank4};


static rom bios = rom(&port,&addreg,0x7000);
static rom settings = rom(&port,&addreg,0x8000);
static rom program0 = rom(&port,&addreg,0x9000);
static rom program1 = rom(&port,&addreg,0xA000);
static rom program2 = rom(&port,&addreg,0xB000);
static rom program3 = rom(&port,&addreg,0xC000);

static eeprom fattable =eeprom(&port,&addreg,&datareg,34,0x0002C000);
static eeprom storage0 =eeprom(&port,&addreg,&datareg,34,0x00030000);
static eeprom storage1 =eeprom(&port,&addreg,&datareg,34,0x00034000);
static eeprom storage2 =eeprom(&port,&addreg,&datareg,34,0x00038000);
static eeprom storage3 =eeprom(&port,&addreg,&datareg,34,0x0003C000);


static interrupts irqhandler= interrupts();
static interpreter interpret= interpreter();

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
	interpret.nop();
	
	//bank1.setaddress(0);
    /* Replace with your application code */
    while (1) 
    {
		
		interpret.inc((char)9);
		interpret.ldi(5,10);
		interpret.cmp(9,5);
		interpret.ldi(254,65);
		if (PINB>0)
		{
			if (PINB)
			{
				
			}
		storememory(0x0000,0xff);
		}
	}
}