/* 
* serial.h
*
* Created: 4/19/2021 12:06:47 AM
* Author: Brent
*/
#include "../../drivers/io/shift register/shiftreg.h"

#ifndef __SERIAL_H__
#define __SERIAL_H__


class Serial
{
//variables
public:
	static int outvalue;
	static shiftreg csreg;
protected:
private:

//functions
public:
	Serial();
	Serial(shiftreg ,int);
	
	
	
	Serial( const Serial &c );
	Serial& operator=( const Serial &c );
	~Serial();
protected:
private:
	
}; //serial

#endif //__SERIAL_H__
