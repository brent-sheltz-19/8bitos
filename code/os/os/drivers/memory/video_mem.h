/* 
* video_mem.h
*
* Created: 1/26/2023 1:32:13 PM
* Author: Owner
*/
#include "../io/port controller/portcontroller.h"
#include "../io/shift register/shiftreg.h"

#ifndef __VIDEO_MEM_H__
#define __VIDEO_MEM_H__


class video_mem
{
//variables
public:
protected:
private:
	portcontroller* portcon;
	shiftreg* addressreg;
	uint32_t max_address;
	uint8_t wepin;

//functions
public:
	video_mem();
	~video_mem();
	video_mem( const video_mem &c );
	video_mem& operator=( const video_mem &c );

}; //video_mem

#endif //__VIDEO_MEM_H__
