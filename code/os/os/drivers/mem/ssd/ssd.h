/* 
* ssd.h
*
* Created: 6/23/2022 12:19:42 AM
* Author: Brent
*/
#include "../../../cpu/communication/serial.h"

#ifndef __SSD_H__
#define __SSD_H__


class ssd
{
//variables
public:
protected:
Serial serial;
private:


//functions
public:
	ssd();
	
	~ssd();
protected:
private:
	ssd( const ssd &c );
	ssd& operator=( const ssd &c );

}; //ssd

#endif //__SSD_H__
