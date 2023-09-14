/* 
* SPI.h
*
* Created: 4/4/2023 9:10:15 PM
* Author: Owner
*/
#include <avr/io.h>

#ifndef __SPI_H__
#define __SPI_H__

#define spi_enable 0b01000000

class SPI
{

//variables
public:
	enum Flags 
	{
		spi_interrupt = 0b10000000, spi_data_order_LSB = 0b00100000,spi_data_order_MSB = 0b11011111, spi_master_mode = 0b00010000, 
		spi_cpol = 0b11110111,spi_phase_lead = 0b00000100,spi_phase_fall = 0b01111011,  
		};

protected:
private:

//functions
public:
	SPI();
	void init(uint8_t flags);
	void setFlag(Flags flag);
	void send(uint8_t a);
	~SPI();
protected:
private:
	SPI( const SPI &c );
	
	SPI& operator=( const SPI &c );

}; //SPI

#endif //__SPI_H__
