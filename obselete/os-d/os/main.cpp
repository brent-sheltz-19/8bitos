/*
 * os.cpp
 *
 * Created: 9/25/2022 10:32:52 PM
 * Author : Brent
 */ 

#include <avr/io.h>
=
#include "cpu/interpreter/interpreter.h"
#include "drivers/io/port controller/portcontroller.h"
#include "drivers/io/shift register/shiftreg.h"
#include "drivers/memory/memory.h"
#include "drivers/memory/video_memory.h"
#include "drivers/serial/Serial.h"
#define bios_address_start ffff0000
#define serial_clk_pin 4
#define serial_miso_pin 30
static portcontroller port = portcontroller();
static shiftreg addreg=shiftreg(40,39,38,&port);
static shiftreg csreg=shiftreg(37,36,35,&port);
static Serial spi = Serial(&csreg,&port,30,31,serial_clk_pin);
static interpreter interpreter_main = interpreter();
static memory mainmemory = memory();
static video_mem videomemory = video_mem();
void loadbios()
{
	
}
int main(void)
{
	char intrepreter_return=0;
	port.writeddra(0xff);
	port.writeddrb(0b00001000);	
	port.writeddrc(0xff);
	port.writeddrd(0x00);
    /* Replace with your application code */
    
	while (1) 
    {
		/*
		uint8_t* vp = (uint8_t*)&address2;
		uint8_t a1 = vp[0];
		uint8_t b = vp[1];
		uint8_t c = vp[2];
		uint8_t d = vp[3];
		PORTD = a1;
		PORTD = b;
		PORTD = c;
		PORTD = d;
		*/
		

		intrepreter_return = interpreter_main.run();
		if (intrepreter_return == 'b')
		{
				
		} 
		else if (intrepreter_return == 'e')
		{
			
		}
	}
}

