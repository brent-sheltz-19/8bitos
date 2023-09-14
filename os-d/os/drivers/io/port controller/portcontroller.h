/* 
* portcontroller.h
*
* Created: 8/19/2020 7:11:32 PM
* Author: Brent
*/


#include <avr/io.h>

#ifndef __PORTCONTROLLER_H__
#define __PORTCONTROLLER_H__


class portcontroller
{
//variables
public:
protected:
private:

//functions
public:
	portcontroller();
	char readporta();
	char readportb();
	char readportc();
	char readportd();
	char readddra();
	char readddrb();
	char readddrc();
	char readddrd();
	
	void writeporta(char a);
	void writeportb(char);
	void writeportc(char);
	void writeportd(char);
	void writeddra(char);
	void writeddrb(char);
	void writeddrc(char);
	void writeddrd(char);
	
	char digitalread(uint8_t pin);
	/**
	 * \brief 
	 * 
	 * \param pin
	 * \param on
	 * 
	 * \return void
	 */
	void digitalwrite(uint8_t pin, bool on);
	
	~portcontroller();
protected:
private:
	

	void digitalwritea(uint8_t pin, bool on);
	void digitalwriteb(uint8_t pin, bool on);
	void digitalwritec(uint8_t pin, bool on);
	void digitalwrited(uint8_t pin, bool on);

}; //portcontroller

#endif //__PORTCONTROLLER_H__
