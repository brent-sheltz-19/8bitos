/* 
* shiftreg.cpp
*
* Created: 8/19/2020 7:21:31 PM
* Author: Brent
*/




#include "shiftreg.h"
#include <util/delay.h>
// default constructor
shiftreg::shiftreg()
{
} //shiftreg
shiftreg::shiftreg(uint8_t data,uint8_t clk,uint8_t rclk,portcontroller* portcon)
{
	datapin=data;
	clockpin=clk;
	latchclkpin=rclk;
	port=portcon;
	dataque=0;
}
void shiftreg::shiftout()
{
	this->shiftout16(dataque);
	
}
// msb first
void shiftreg::shiftout8(uint8_t data)
{
	for (char i =  0; i<8;i++)
	{
		if ((data>>(7-i))==1)
		{
			
			port->digitalwrite(datapin,true);
			
		}
		else 
		{
			port->digitalwrite(datapin,false);
		}
		port->digitalwrite(clockpin,true);
		port->digitalwrite(clockpin,false);
			
	}
	port->digitalwrite(latchclkpin,true);
	
	port->digitalwrite(latchclkpin,false);

}
void shiftreg::shiftout16(uint16_t data16)
{
	char highdata = data16>>8;
	char data  = (uint8_t) data16; 
	for (char i =  0; i<16;i++)
	{
		if ((data>>(15-i))==1)
		{
			
			port->digitalwrite(datapin,true);
			
		}
		else
		{
			port->digitalwrite(datapin,false);
		}
		port->digitalwrite(clockpin,true);
		
		port->digitalwrite(clockpin,false);
		
	}
	for (char i =  0; i<8;i++)
	{
		if ((highdata>>(7-i))==1)
		{
			
			port->digitalwrite(datapin,true);
			
		}
		else
		{
			port->digitalwrite(datapin,false);
		}
		port->digitalwrite(clockpin,true);
		port->digitalwrite(clockpin,false);
		
	}
	port->digitalwrite(latchclkpin,true);

	port->digitalwrite(latchclkpin,false);

}
void shiftreg::shiftout32(uint32_t data32)
{
	
	for (char i =  0; i<32;i++)
	{
		if ((data32>>(31-i))==1)
		{
			
			port->digitalwrite(datapin,true);
			
		}
		else
		{
			port->digitalwrite(datapin,false);
		}
		port->digitalwrite(clockpin,true);
		port->digitalwrite(clockpin,false);
		
	}
	port->digitalwrite(latchclkpin,true);

	port->digitalwrite(latchclkpin,false);

}
void shiftreg::shiftout64(uint64_t data32)
{
	
	for (char i =  0; i<64;i++)
	{
		if ((data32>>(64-i))==1)
		{
			
			port->digitalwrite(datapin,true);
			
		}
		else
		{
			port->digitalwrite(datapin,false);
		}
		port->digitalwrite(clockpin,true);
		port->digitalwrite(clockpin,false);
		
	}
	port->digitalwrite(latchclkpin,true);

	port->digitalwrite(latchclkpin,false);

}
// default destructor
shiftreg::~shiftreg()
{
} //~shiftreg
