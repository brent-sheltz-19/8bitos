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
	char aculmerator;
	char register1;
	char register2;
	
private:

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
