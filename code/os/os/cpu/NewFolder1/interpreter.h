/* 
* interpreter.h
*
* Created: 5/8/2021 1:50:50 AM
* Author: Brent
*/


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










// default destructor
interpreter::~interpreter()
{
	
} //~interpreter
#endif //__INTERPRETER_H__
