/* 
* portcontroller.cpp
*
* Created: 9/4/2019 10:42:38 AM
* Author: Owner
*/


#include "portcontroller.h"
#include <util/atomic.h>
#include <avr/io.h>
#include <avr/eeprom.h>
#include <stdint.h>
#include "avr/iom644.h"
#define HIGH 1
#define LOW 0 
// default constructor
portcontroller::portcontroller()
{
} //portcontroller
void portcontroller::portAdigitialwrite(uint8_t pin,uint8_t value)
{
	if(pin== 0||pin == 40||pin == 24)
	{
		if (value==HIGH)
		{
			PORTA |= 0b0001;
			return;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11111110;
			return;
		}

	}
	else if (pin == 1|| pin ==39||pin == 25)
	{
		if (value==HIGH)
		{
			PORTA |= 0b0010;
			return;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11111101;
			return;
		}
	}
	else if (pin == 2|| pin ==38||pin == 26)
	{
		if (value==HIGH)
		{
			PORTA |= 0b0100;
			return;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11111011;
			return;
		}
	}
	else if (pin == 3|| pin ==37||pin == 27)
	{
		if (value==HIGH)
		{
			PORTA |= 0b00001000;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11110111;
			
		}
	}
	else if (pin == 4|| pin ==36||pin == 28)
	{
		if (value==HIGH)
		{
			PORTA |= 0b00010000;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11101111;
			
		}
	}
	else if (pin == 5|| pin ==35||pin == 29)
	{
		if (value==HIGH)
		{
			PORTA |= 0b00100000;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11011111;
			
		}
	}
	else if (pin == 6|| pin ==34||pin == 30)
	{
		if (value==HIGH)
		{
			PORTA |= 0b01000000;
		}
		
		else if (value==LOW)
		{
			PORTA &= 0b10111111;
			
		}
	}	else if (pin == 7|| pin ==33||pin == 31)
	{
		if (value==HIGH)
		{
			PORTA |= 0b10000000;
		}
		else if (value==LOW)
		{
			PORTA &= 0b01111111;
			
		}
	}
	
	
	
}
void portcontroller::shiftoutportA(uint8_t pin, uint8_t clk, int value)
{
	for(int i = 0 ; i<8;i++)
	{
		
		
		uint8_t pinval = ((value>>i)&1);
		portAdigitialwrite(pin,pinval);
		portAdigitialwrite(clk,1);
		portAdigitialwrite(clk,0);
		portAdigitialwrite(pin,0);
		
	}
	
	
	return;
}
int portcontroller::getPortd()
{
	return PORTD;
}
int portcontroller::getPortb()
{
	return PINB;
}
void portcontroller::setPortc(char value)
{
	PORTC=value;
}
void portcontroller::setporta(char value)
{
	 PORTA=value;
}

// default destructor
portcontroller::~portcontroller()
{
} //~portcontroller
