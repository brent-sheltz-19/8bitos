/* 
* shiftregister.cpp
*
* Created: 6/29/2019 3:19:10 PM
* Author: Owner
*/

#include <avr/io.h>
#include "shiftregister.h"

// default constructor
shiftregister::shiftregister()
{
   clkpin=0;
   datapin=0;
   dataclkpin=0;
	
}
shiftregister::shiftregister(	uint8_t clkpin,uint8_t datapin,  uint8_t dataclkpin)
{
	this->clkpin=clkpin;
	this->dataclkpin=dataclkpin;
	this->datapin=datapin;
	
} //shiftregister
void shiftregister::out(char data[8])
{
	for(int i=0; i<8;i++)
	{	PORTA &=0b11111110 ;
		
			if(data[i]>=1)
			{
				PORTA |= 0b00000010;
			}
			 if (data[i]==0)
			{
				PORTA &=0b11111101 ;
			}
			PORTA |= 0b00000001;
		
	}
	PORTA &=0b11111000;
	PORTA |= 0b00000100;
		
	
}
 void shiftregister::reset()
 {	 
	 char c[]={0,0,0,0,0,0,0};
	 out(c);
 }
// default destructor
shiftregister::~shiftregister()
{
} //~shiftregister
