/* 
* interpreter.h
*
* Created: 5/8/2021 1:50:50 AM
* Author: Brent
*/

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <stdio.h>

#ifndef __INTERPRETER_H__
#define __INTERPRETER_H__


class interpreter
{
//variables
public:
protected:

private:
	rom* baseprogram;
	rom* extendedprogram;
	ram* dataram;
	uint8_t baseoffset=0;
	uint8_t extendedprogoffset=0;
	uint8_t dataramoffset=0;
	
	char[] registers = {0,0,0,0};
	char stackptr = 255;
	
	uint16_t registerx;
	uint16_t registery;
	


	
	
//functions
public:
	interpreter();
	void run();
	void push(char reg);
	void pushi(char value);
	void pop(char reg);
	
	~interpreter();
protected:
private:
	interpreter( const interpreter &c );
	
	interpreter& operator=( const interpreter &c );

}; //interpreter
// default constructor
interpreter::interpreter()
{
} //interpreter
void interpreter::push(char reg)
{
	dataram->write()
		
	
}
void interpreter::pop(char reg)
{
	
	
}

void interpreter::run()
{
	
	
}









// default destructor
interpreter::~interpreter()
{
	
} //~interpreter
#endif //__INTERPRETER_H__
