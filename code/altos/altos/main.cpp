/*
* altos.cpp
*
* Created: 5/28/2019 11:20:28 PM
* Author : Owner
*/
#define HIGH 1
#define LOW 0
#define gpio PINB
#include <util/atomic.h>
#include <avr/io.h>
#include <avr/eeprom.h>
 
#include "shiftregister.h"
static volatile char code[2048];
void portAdigitialwrite(uint8_t pin,uint8_t value)
{
	if(pin== 0||pin == 24)
	{
		if (value==HIGH)
		{
			PORTA |= 0b0001;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11111110;
		}

	}
	else if (pin == 1|| pin ==25)
	{
		if (value==HIGH)
		{
			PORTA |= 0b0010;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11111101;
			
		}
	}
	else if (pin == 2|| pin ==26)
	{
		if (value==HIGH)
		{
			PORTA |= 0b0100;
		}
		else if (value==LOW)
		{
			PORTA &= 0b11111011;
			
		}
	}
	else if (pin == 3|| pin ==27)
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
	
	
	
}
void shiftoutportA(uint8_t pin, uint8_t clk, int value)
{
}
int getPortd()
{
	return PORTD;
}
int getPortb()
{
	return gpio;
}
void setPortb(char value=0)
{
	gpio=value;
}
void loadProgram( int prognum,shiftregister A)
{
	char c[]=	 {1,1,1,1,0,0,0,0} ;
	A.out(c);
	
	
}
void saveProgram( int prognum)
{
	
	
	
}
/*
action 1 = program load
*/
int main(void)
{
	uint8_t a=24;
	uint8_t b=25;
	uint8_t c=26;
	shiftregister eepromcontrollerregister =  shiftregister(a,b,c);	  

	/* Replace with your application code */
	while (1)
	{
		
		int a = getPortb()	;
		if(a==0)
		{
			
		}
		else
		{
			if (a==1)	 //load program
			{
				int b;
				do
				{
					
					
					b=getPortb();
					/************************************************************************/
					/*  1 = calculator
					2 = terminal
					3 = snake
					4 = user made program
					*/
					/************************************************************************/
					if (b==1)
					{
						loadProgram(1,eepromcontrollerregister)	;
						
					} 
					else
					{
						if (b==2)
						{
							loadProgram(2,eepromcontrollerregister)	;
						} 
						else
						{
							if (b==3)
							{
								loadProgram(3,eepromcontrollerregister)	;
							}
							else
							{
								if (b==4)
								{
									int c = getPortb();
									while (c!=255)
									{
										loadProgram(c,eepromcontrollerregister);	
									
									}
								}
							}
						}
					}
					
				}while(b!=5);
			 }
			else if(a==2) //write program
			{
				
				
			}	
			
		}
	}
			
}