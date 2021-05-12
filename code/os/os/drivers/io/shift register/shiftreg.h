/* 
* shiftreg.h
*
* Created: 8/19/2020 7:21:31 PM
* Author: Brent
*/

#ifndef __SHIFTREG_H__
#define __SHIFTREG_H__
#include "../port controller/portcontroller.h"

#include <avr/io.h>
#include <util/delay.h>

class shiftreg
{
//variables
public:
	uint8_t datapin;
	uint8_t clockpin;
	uint8_t latchclkpin;
	uint64_t dataque;
	portcontroller* port;
protected:
private:

//functions
public:
	shiftreg();
	shiftreg(uint8_t data,uint8_t clk,uint8_t rclk,portcontroller* portcon);
	void shiftout();
	void shiftout8(uint8_t data);
	void shiftout16(uint16_t data);
	void shiftout32(uint32_t data);
	void shiftout64(uint64_t data);
	
	shiftreg( const shiftreg &c );
	shiftreg& operator=( const shiftreg &c );

	
	~shiftreg();
protected:
private:

}; //shiftreg

#endif //__SHIFTREG_H__
