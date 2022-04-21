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
	port=a;
	//outvalue=a;
}
Serial::Serial(shiftreg* c, portcontroller* a,char i,char o, char cl)
{
	csreg=c;
	port=a;
	miso = i;
	mosi = o;
	clk = cl;
	//outvalue=a;
}
 //serial
void Serial::send(char* val,int len)
{
	for (int i = 0 ; i<len;i++)
	{
		char a=*(val+i);
		for (int shift = 0 ; shift<8;shift++)
		{
			if ((a>>shift&1)==1)
			{
				port->digitalwrite(mosi,true);
				port->digitalwrite(clk,true);
			}
			else
			{
				port->digitalwrite(mosi,false);
				port->digitalwrite(clk,true);
			}
			port->digitalwrite(clk,false);
				
		}
		
	}
}
char Serial::sendandrecive1byte(char val)
{
	for (int shift = 0 ; shift<8;shift++)
	{
		if ((val>>shift&1)==1)
		{
			port->digitalwrite(mosi,true);
			port->digitalwrite(clk,true);
		}
		else
		{
			port->digitalwrite(mosi,false);
			port->digitalwrite(clk,true);
		}
		port->digitalwrite(clk,false);
	}
	
			
}
void Serial::recive(char* buff, int length)
{
	int a = 0;
	char n =0;
	for (a = 0;a<length; a++)
	{
		for (n=0;n<8;n++)
		{
			
		}
	}	
}

// default destructor
Serial::~Serial()
{
} //~serial
