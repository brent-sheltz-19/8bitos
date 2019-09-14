#include <stdint.h>
#include <util/atomic.h>
#include <avr/io.h>
#include <avr/eeprom.h>
/* 
* portcontroller.h
*
* Created: 9/4/2019 10:42:38 AM
* Author: Owner
*/


#ifndef __PORTCONTROLLER_H__
#define __PORTCONTROLLER_H__


class portcontroller
{
//variables
public:
protected:
private:

//functions
public:
	portcontroller();
	void portAdigitialwrite(uint8_t pin,uint8_t value);
	void shiftoutportA(uint8_t pin, uint8_t clk, int value);
	int getPortd();
	int getPortb();
	void setPortc(char value=0);
	void setporta(char value=0);
	~portcontroller(); 
	portcontroller( const portcontroller &c );
	portcontroller& operator=( const portcontroller &c );
protected:
private:
	

}; //portcontroller

#endif //__PORTCONTROLLER_H__
