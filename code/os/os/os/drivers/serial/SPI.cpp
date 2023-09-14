/* 
* SPI.cpp
*
* Created: 4/4/2023 9:10:14 PM
* Author: Owner
*/


#include "SPI.h"
#include "avr\iom644p.h"

// default constructor
SPI::SPI()
{
	
} //SPI
void SPI::init(uint8_t flags)
{
	SPCR=flags;
	
}

// default destructor
SPI::~SPI()
{
} //~SPI
