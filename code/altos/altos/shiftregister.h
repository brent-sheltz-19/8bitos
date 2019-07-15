/* 
* shiftregister.h
*
* Created: 6/29/2019 3:19:11 PM
* Author: Owner
*/


#ifndef __SHIFTREGISTER_H__
#define __SHIFTREGISTER_H__

#include <avr/io.h>

class shiftregister
{
//variables
public:	uint8_t datapin;uint8_t clkpin;uint8_t dataclkpin;
	char data[8];
protected:
private:

//functions
public:
	shiftregister();
	shiftregister(unsigned char datapin, unsigned char clkpin, unsigned char dataclkpin);
	void out(char data[8]) ;
	void reset() ;
	~shiftregister();
	
	//shiftregister( const shiftregister &c );
	//shiftregister& operator=( const shiftregister &c );

}; //shiftregister

#endif //__SHIFTREGISTER_H__
