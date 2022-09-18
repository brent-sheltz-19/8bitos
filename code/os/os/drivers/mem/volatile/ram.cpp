/* 
* ram.cpp
*
* Created: 8/20/2020 10:46:47 AM
* Author: Brent
*/


#include "ram.h"

// constructor
 ram::ram(portcontroller* portptr2,shiftreg* addrptr2,uint8_t wepin2,uint32_t addressbase2)
 {
	 this->portptr=portptr2;
	 this->addrptr=addrptr2;
	 this->wepin=wepin2;
	 this->addressbase=addressbase2;
	 this->offset = 0;
	 portptr->digitalwrite(wepin,true);
 }
 /*
 ram::ram(portcontroller* portptr2,shiftreg* addrptr2,shiftreg* dataptr2,uint8_t wepin2,uint32_t addressbase2)
 {
	 this->portptr=portptr2;
	 this->addrptr=addrptr2;
	 this->dataptr=dataptr2;
	 this->wepin=wepin2;
	 this->addressbase=addressbase2;
	 this->offset = 0;
	 portptr->digitalwrite(wepin,true);
 }*/
  /*
char ram::read()
{
	addrptr->shiftout16(this->address);
	return portptr->readportd();
}
*/
char ram::read(int addr)
{
		addrptr->shiftout16(addr);
		return portptr->readportd();
}
/*
void ram::write(char data)
{
	addrptr->shiftout16(this->address);
	portptr->writeportc(data);
	portptr->digitalwrite(wepin,false);
	_delay_ms(1);	
	portptr->digitalwrite(wepin,true);
	this->address++;
}
*/
void ram::write(uint8_t offset,char data)
{
	addrptr->shiftout16(this->addressbase+offset);
	if(dataptr== NULL)
	{
		portptr->writeportc(data);
	}
	else
	{
		dataptr->shiftout8(data);
	}
	portptr->digitalwrite(wepin,false);
	_delay_ms(1);
	portptr->digitalwrite(wepin,true);
}

void ram::write(uint16_t address,char data)
{
	addrptr->shiftout16(address);
	if(dataptr== NULL)
	{
		portptr->writeportc(data);		
	} 
	else 
	{
		dataptr->shiftout8(data);
	}
	portptr->digitalwrite(wepin,false);
	_delay_ms(1);
	portptr->digitalwrite(wepin,true);
}
void ram::write(uint32_t address,char data)
{
	addrptr->shiftout32(address);
	if(dataptr == NULL)
	{
		portptr->writeportc(data);
	}
	else
	{
		dataptr->shiftout8(data);
	}
	portptr->digitalwrite(wepin,false);
	_delay_ms(1);
	portptr->digitalwrite(wepin,true);
}
void ram::write(uint64_t address,char data)
{
	addrptr->shiftout64(address);
	if(dataptr == NULL)
	{
		portptr->writeportc(data);
	}
	else
	{
		dataptr->shiftout8(data);
	}
	portptr->digitalwrite(wepin,false);
	_delay_ms(1);
	portptr->digitalwrite(wepin,true);
}
/*
void ram::setaddress(uint64_t addr)
{
	address=addr;
}

uint16_t ram::getaddr()
{
	return address;
}
*/
// default destructor
ram::~ram()
{
	
}