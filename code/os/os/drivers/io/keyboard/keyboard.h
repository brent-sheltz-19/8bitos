/* 
* keyboard.h
*
* Created: 3/8/2022 12:49:51 AM
* Author: Brent
*/
#include "../../../cpu/communication/Serial.h"

#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__


class keyboard
{
//variables
public:
	uint32_t address;

protected:
private:

//functions
public:
keyboard();
keyboard(uint32_t);
~keyboard();
protected:
private:
	

}; //keyboard

#endif //__KEYBOARD_H__
