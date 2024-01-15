/* 
* keyboard.h
*
* Created: 3/8/2022 12:49:51 AM
* Author: Brent
*/
//#include "../../../cpu/communication/Serial.h"
#include "../port controller/portcontroller.h"
#include "../shift register/shiftreg.h"
#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__


class keyboard
{
//variables0
public:
	uint32_t dataaddress;
	uint32_t address;
protected:  
	
private:
	portcontroller* port;
	shiftreg* addrreg;
	Serial* serial;
//functions
public:
keyboard();
keyboard(uint32_t);
void read(char* buff,uint32_t size);
void read(char* buff);
uint8_t getsize();
~keyboard();
protected:
private:
	

}; //keyboard

#endif //__KEYBOARD_H__
