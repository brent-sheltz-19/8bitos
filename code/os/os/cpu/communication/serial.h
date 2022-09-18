/* 
* serial.h
*
* Created: 4/19/2021 12:06:47 AM
* Author: Brent
*/
#include "../../drivers/io/shift register/shiftreg.h"
#include "../../drivers/io/port controller/portcontroller.h"
#include <string.h>

#ifndef __SERIAL_H__
#define __SERIAL_H__
#define reqid 1

class Serial
{
//variables
public:
	//int outvalue;
	portcontroller* port;
	shiftreg* csreg;
	//char devices[128];
	uint8_t cid;
	uint8_t miso;
	private:
	uint8_t mosi;
	uint8_t clk;
	
	
protected:

//functions
public:
	Serial();
	Serial(shiftreg*);	
	Serial(shiftreg* ,portcontroller*);
	Serial(shiftreg* ,portcontroller*,char miso,char mosi,char clk);
	void send(char* val,int len,int cs);
	void send(char val,int cs);
	
	char sendandrecive1byte(char val);
	void recive(char* buff, int length,int cs);
	char recive(int cs);
	
	char recivebuff();
	void checkfordevices();
	char iddevice(int cs);
	
	//Serial( const Serial &c );
	//Serial& operator=( const Serial &c );
	~Serial();
protected:
private:
	
}; //serial

#endif //__SERIAL_H__
