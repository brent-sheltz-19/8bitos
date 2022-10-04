/* 
* interrupts.h
*
* Created: 8/24/2020 11:31:43 PM
* Author: Brent
*/


#ifndef __INTERRUPTS_H__
#define __INTERRUPTS_H__


class interrupts
{
//variables
public:
char irq;
protected:
char irqdata;
private:

//functions
public:
	interrupts();
	void handleinterrupt();
	~interrupts();
	
	interrupts( const interrupts &c );
	interrupts& operator=( const interrupts &c );

protected:
private:
}; //interrupts

#endif //__INTERRUPTS_H__
