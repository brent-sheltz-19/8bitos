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
	uint64_t* baseprogram;
	uint64_t* extendedprogram;
	uint64_t* dataram;
	uint8_t baseoffset=0;
	uint8_t extendedprogoffset=0;
	uint8_t dataramoffset=0;
	
	char aculmerator;
	char register1;
	char register2;



	
	
//functions
public:
	interpreter();
	public void run();
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
void interpreter::run()
{
	
	
}









// default destructor
interpreter::~interpreter()
{
	
} //~interpreter
#endif //__INTERPRETER_H__
