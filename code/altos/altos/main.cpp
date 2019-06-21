/*
 * altos.cpp
 *
 * Created: 5/28/2019 11:20:28 PM
 * Author : Owner
 */ 
#define HIGH 1
#define LOW 0
#define gpio PORTB
#include <util/atomic.h>
#include <avr/io.h>
#include <avr/eeprom.h>
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
void loadProgram( int prognum)
{
  	
	
	
}
void saveProgram( int prognum)
{
	
	
	
}
/*
   action 1 = program load
*/
int main(void)
{
	
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
				int b=getPortb();
				/************************************************************************/
				/*  1 = calculator 
					2 = terminal 
					3 = snake
				                                                                        */
				/************************************************************************/
				
				if(0==0)
				{
					b=b;
				}
			}
			if (a==2) // terminal
			{
				
			
			}
			if (a==3)//
			{
			
			}
		}
	}
}