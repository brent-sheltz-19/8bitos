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
#define bios_address_start 0xffff0000
#define vram_select_pin 3
#define serial_clk_pin 4
#define serial_miso_pin 30
#define serial_mosi_pin 31

static portcontroller port = portcontroller();
static shiftreg addreg=shiftreg(40,39,38,&port);
static shiftreg csreg=shiftreg(37,36,35,&port);
static Serial softwarespi = Serial(&csreg,&port,serial_miso_pin,serial_miso_pin,serial_clk_pin);
static interpreter interpreter_main = interpreter();
static memory mainmemory = memory();
static video_mem videomemory = video_mem();
inline void loadbios()
{
	interpreter_main.addressptr = bios_address_start;	
}
void loados()
{
	//spi.send()
}
void syscall_handler()
{
	//r0 is command
	// rn >r0 is data
	/*
		0-  sleep 1 ms
		
	*/
	if (interpreter_main.registers[0]==0)
	{
		//sleep
		int i = interpreter_main.registers[1];
		do 
		{
			_delay_ms(1);
			i--;	
		} while (i>0);	
	}
	/*
		
	*/
	else if (interpreter_main.registers[0]==1)
	{
		//multiply 
		if (interpreter_main.registers[1]==0||interpreter_main.registers[2]==0)
		{
			interpreter_main.registers[3]=1;
		}
		else
		{
			interpreter_main.registers[3]=interpreter_main.registers[1]*interpreter_main.registers[2];
		}
	}
	else if (interpreter_main.registers[0]==2)
	{
		//int divide
		// reg 1 neumerator
		//reg 2 denemonator
		//reg 3 result
		// reg 4 error
		if(interpreter_main.registers[2]==0)
		{
			interpreter_main.registers[3]=0;
			interpreter_main.registers[4]=1;
		}
		else
		{
			interpreter_main.registers[3]=interpreter_main.registers[1]/interpreter_main.registers[2];
			interpreter_main.registers[4]=0;                                                                                                                 
		}
	}
	else if (interpreter_main.registers[0]==3)
	{
		/*
			stdin
			X inptr
			y buffer
			r1 length	
		*/

		
	}
	else if (interpreter_main.registers[0]==4)
	{
		/*
			switch data ram bank  
		*/
	
	}
	else if (interpreter_main.registers[0]==5)
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
		
		
	}
	else if (interpreter_main.registers[0]==6)
	{
		//ssd
		/*
			if reg 1 is 1
				cd with x as pointer to name string
				register 4 error code 
			if reg 1 is 2
				mkdir with x as pointer to name string
				register 4 error code
			if reg 1 is 3
				mkdir with x as pointer to name string
			if reg 1 is 4
				mkdir with x as pointer to name string
			if reg 1 is 5
				mkdir with x as pointer to name string
			if reg 1 is 6
				mkdir with x as pointer to name string
			if reg 1 is 7
				mkdir with x as pointer to name string
			if reg 1 is 8
				mkdir with x as pointer to name string
						
		
		
		*/ 
		if (interpreter_main.registers[1]==1)
		{
				
		}
	}
	else if(interpreter_main.registers[0]==7)
	{
		//software serial
		if (interpreter_main.registers[1])
		{
		}
		
	}
	else if(interpreter_main.registers[0]==8)
	{
		//spi 
		if (interpreter_main.registers[1])
		{
		}
	
	}
	
	
	
}
int main(void)
{
	char intrepreter_return=0;
	port.writeddra(0xff);
	port.writeddrb(0b00001000);	
	port.writeddrc(0xff);
	port.writeddrd(0x00);
    /* Replace with your application code */
    loadbios();
	
	
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
			syscall_handler();		
		} 
		else if (intrepreter_return == 'e')
		{
			//reset maybe
			interpreter_main.zar();
		}
		
	}
}