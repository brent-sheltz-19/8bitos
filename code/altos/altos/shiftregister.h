/* 
* shiftregister.h
*
* Created: 6/29/2019 3:19:11 PM
* Author: Owner
*/


#ifndef __SHIFTREGISTER_H__
#define __SHIFTREGISTER_H__

#include <avr/io.h>
#include "portcontroller.h"
			#include <util/atomic.h>
			#include <avr/io.h>
			#include <avr/eeprom.h>
class shiftregister
{
//variables
public:	uint8_t datapin;/*data*/  
	uint8_t clkpin;/*clock*/  
	uint8_t dataclkpin;//latch
	char data[8];
protected:
private:

//functions
public:
	shiftregister();
	shiftregister(unsigned char datapin, unsigned char clkpin, unsigned char dataclkpin);
	 void out(char data) ;
	void reset() ;
	~shiftregister();
	
	//shiftregister( const shiftregister &c );
	//shiftregister& operator=( const shiftregister &c );

}; //shiftregister

#endif //__SHIFTREGISTER_H__
