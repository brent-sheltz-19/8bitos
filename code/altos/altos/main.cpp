/*
* altos.cpp
*
* Created: 5/28/2019 11:20:28 PM
* Author : Owner
*/
#define HIGH 1
#define LOW 0
#include <util/atomic.h>
#include <avr/io.h>
#include <avr/eeprom.h>
#include "portcontroller.h"
#include "shiftregister.h"

static char code[2048];
portcontroller Port =  portcontroller();
class exe 
{
	exe::exe()
	{
		
	}
	
	
};
void shiftregister::out(char data)
{
	Port.shiftoutportA(datapin,clkpin,data);  	
}
void loadProgram( int prognum,shiftregister A)
{
//	int c=	 0b11110000 ;
//	A.out(c);	  
	Port.setporta(prognum);
	for (int i = 0 ; i<2048;i++)
	{
		if (PINB7==0)
		{
			i--;
		}
		else
		{
			while(PINB7==1)
			{
				code[i]=Port.getPortd();
			}
		}
	}
	
	
}
/*
action 1 = program load
*/
int main(void)
{
	uint8_t a=40;
	uint8_t b=39;
	uint8_t c=38;
	shiftregister eepromcontrollerregister =  shiftregister(a,b,c);	   
	shiftregister dataReg = shiftregister(37,36,35);
	/* Replace with your application code */
	loadProgram(0,eepromcontrollerregister);
	while (1)
	{
		
		int a;
		a = PINB;
			 if (a==0)
			 {
				 Port.shiftoutportA(0,1,10);
			 }
			 
			else if (a==1)	 //load program
			{
				int b;
				do 
				{
					
					
					b=Port.getPortb();
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
									int c = Port.getPortb();
									while (c!=255 || c==0)
									{
										loadProgram(c,eepromcontrollerregister);	
									
									}
								}
							}
						}
					}
					
				} while(b!=5);
			 }
			 	
			
	}
}
			
