/*
 * os.cpp
 *
 * Created: 9/25/2022 10:32:52 PM
 * Author : Brent
 */ 

#include <avr/io.h>
#include "cpu/interpreter/interpreter.h"
#include "drivers/io/port controller/portcontroller.h"
#include "drivers/io/shift register/shiftreg.h"
#include "drivers/memory/memory.h"
#include "drivers/memory/video_mem.h"
#include "drivers/serial/Serial.h"
#define bios_address_start ffff0000
#define serial_miso_pin 6
#define serial_mosi_pin 7
#define serial_clk_pin 8
static portcontroller port = portcontroller();
static shiftreg addreg=shiftreg(40,39,38,&port);
static shiftreg csreg=shiftreg(37,36,35,&port);
static Serial spi = Serial(&csreg,&port,serial_miso_pin,serial_miso_pin,serial_clk_pin);
static memory mainmemory = memory(&port,&addreg);
static memory videomemory = memory(&port,&addreg);
static interpreter interpreter_main = interpreter(&mainmemory,&videomemory);
void handlesyscall(interpreter* a)
{
	uint8_t* params;
	
	
	
}
int main(void)
{
	char intrepreter_return=0;
	port.writeddra(0xff);
	port.writeddrb(0b10100000);	
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
			handlesyscall(&interpreter_main);
		} 
		else if (intrepreter_return == 'e')
		{
			
		}
	}
}

