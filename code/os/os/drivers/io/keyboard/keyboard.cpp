/* 
* keyboard.cpp
*
* Created: 3/8/2022 12:49:45 AM
* Author: Brent
*/


#include "keyboard.h"
#include <avr/pgmspace.h>

// default constructor
keyboard::keyboard()
{
	address = NULL;
} //keyboard
keyboard::keyboard(uint32_t addr)
{
	address = addr;
}
// default destructor
keyboard::~keyboard()
{
} //~keyboard
