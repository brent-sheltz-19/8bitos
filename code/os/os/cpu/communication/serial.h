/* 
* serial.h
*
* Created: 4/19/2021 12:06:47 AM
* Author: Brent
*/
#include "../../drivers/io/shift register/shiftreg.h"
#include "../../drivers/io/port controller/portcontroller.h"
#include <string.h>
#include <io.h>
#ifndef __SERIAL_H__
#define __SERIAL_H__

//spi
class Serial
{
//variables
public:
	//int outvalue;
	portcontroller* port;
	shiftreg* csreg;
	string e;
	uint8_t cid;
	uint8_t miso;
	uint8_t mosi;
	uint8_t clk;
	
	
protected:
private:

//functions
public:
	Serial();
	Serial(shiftreg*);	
	Serial(shiftreg* ,portcontroller*);
	Serial(shiftreg* ,portcontroller*,char miso,char mosi,char clk);
	void send(char* val,int len);
	char sendandrecive1byte(char val);
	void recive(char* buff, int length);
	char recivebuff();
	
	
	//Serial( const Serial &c );
	//Serial& operator=( const Serial &c );
	~Serial();
protected:
private:
	
}; //serial

#endif //__SERIAL_H__
