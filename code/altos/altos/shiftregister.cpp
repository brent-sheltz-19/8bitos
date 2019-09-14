/* 
* shiftregister.cpp
*
* Created: 6/29/2019 3:19:10 PM
* Author: Owner
*/

#include <avr/io.h>
#include "shiftregister.h"
#include "portcontroller.h"
// default constructor
shiftregister::shiftregister()
{
   clkpin=0;
   datapin=0;
   dataclkpin=0;
	
}
shiftregister::shiftregister(	uint8_t datapin,uint8_t clkpin,  uint8_t dataclkpin)
{
	this->clkpin=clkpin;
	this->dataclkpin=dataclkpin;
	this->datapin=datapin;
	return;
	
} //shiftregister

void shiftregister::reset()
 {	 
	 char c=0;
	 out(c);
 }
// default destructor
shiftregister::~shiftregister()
{
} //~shiftregister
