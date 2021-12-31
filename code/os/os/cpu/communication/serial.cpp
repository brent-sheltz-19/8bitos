/* 
* serial.cpp
*
* Created: 4/19/2021 12:06:21 AM
* Author: Brent
*/


#include "serial.h"

// default constructor
Serial::Serial()
{
} //serial
Serial::Serial(shiftreg* c)
{
	csreg=c;
	//outvalue=0;
} //serial
Serial::Serial(shiftreg* c, portcontroller* a)
{
	csreg=c;
	controller=a;
	//outvalue=a;
} //serial
void Serial::send(char* val,int len,int reg)
{
	for (int i = 0 ; i<len;i++)
	{
		char a=*(val+i);
		for (int shift = 0 ; shift<8;shift++)
		{
			if ((a>>shift&1)==1)
			{
				controller->digitalwrite(mosi,true);
				controller->digitalwrite(clk,true);
			}
			else
			{
				controller->digitalwrite(mosi,false);
				controller->digitalwrite(clk,true);
			}
			controller->digitalwrite(clk,false);
				
		}
		
	}
	
	
	
	
}
// default destructor
Serial::~Serial()
{
} //~serial
