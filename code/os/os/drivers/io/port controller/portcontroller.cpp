/* 
* portcontroller.cpp
*
* Created: 8/19/2020 7:11:32 PM
* Author: Brent
*/


#include "portcontroller.h"
#include "avr/io.h"
// default constructor
portcontroller::portcontroller()
{
} //portcontroller

 char portcontroller::readporta()
{
	return PINA;
}

 char portcontroller::readportb()
{
 return PINB;
}

 char portcontroller::readportc()
{
return PINC;
}

 char portcontroller::readportd()
{
 return PIND;
}

 char portcontroller::readddra()
{
	return DDRA;
}

 char portcontroller::readddrb()
{
	return DDRB;
}

 char portcontroller::readddrc()
{ 
	return DDRC;
}

 char portcontroller::readddrd()
{
	return DDRD;
}

 void portcontroller::writeporta(char A)
{
	PORTA = A;
}

 void portcontroller::writeportb(char a)
{
	PORTB = a;
}

 void portcontroller::writeportc(char a)
{
	PORTC = a;
}


 void portcontroller::writeportd(char a)
{
 PORTD = a;
}

 void portcontroller::writeddra(char a)
{
	DDRA  = a;
}

 void portcontroller::writeddrb(char a)
{
	DDRB = a;
}

 void portcontroller::writeddrc(char a)
{
	DDRC =a;
}

 void portcontroller::writeddrd(char a)
{
	DDRD = a;
}

void portcontroller::digitalwrite(uint8_t pin, bool on)
{
	if (pin>0&&pin<=8)
	{
	digitalwritea(pin-1,on);	
	} 
	else if (pin>13&&pin<=21)
	{
	digitalwritea(pin-13,on);
	} 
	else if (pin>21&&pin<=29)
	{
	digitalwritea(pin-21,on);
	}
	else if (pin>32&&pin<=40)
	{
	digitalwritea(pin-32,on);
	}

}

void portcontroller::digitalwritea(uint8_t pin, bool on)
{
	if(pin==1)
	{
		if (on)
		{
			PORTA|=0b00000001;
		} 
		else
		{
			PORTA&=0b11111110;
		}
			
	}
	else if (pin==2)
	{
		if (on)
		{
			PORTA|=0b00000010;
		}
		else
		{
			PORTA&=0b11111101;
		}
	}
	else if (pin==3)
	{
		if (on)
		{
			PORTA|=0b00000100;
		}
		else
		{
			PORTA&=0b11111011;
		}
	}
	else if (pin==4)
	{
		if (on)
		{
			PORTA|=0b00001000;
		}
		else
		{
			PORTA&=0b11110111;
		}
	}
	else if (pin==5)
	{
		if (on)
		{
			PORTA|=0b00010000;
		}
		else
		{
			PORTA&=0b11101111;
		}
	}
	else if (pin==6)
	{
		if (on)
		{
			PORTA|=0b00100000;
		}
		else
		{
			PORTA&=0b11011111;
		}
	}
	else if (pin==7)
	{
		if (on)
		{
			PORTA|=0b01000000;
		}
		else
		{
			PORTA&=0b10111111;
		}
	}
	else if (pin==8)
	{
		if (on)
		{
			PORTA|=0b10000000;
		}
		else
		{
			PORTA&=0b01111111;
		}
	}
}

void portcontroller::digitalwriteb(uint8_t pin, bool on)
{
	if(pin==1)
	{
		if (on)
		{
			PORTB|=0b00000001;
		}
		else
		{
			PORTB&=0b11111110;
		}
		
	}
	else if (pin==2)
	{
		if (on)
		{
			PORTB|=0b00000010;
		}
		else
		{
			PORTB&=0b11111101;
		}
	}
	else if (pin==3)
	{
		if (on)
		{
			PORTB|=0b00000100;
		}
		else
		{
			PORTB&=0b11111011;
		}
	}
	else if (pin==4)
	{
		if (on)
		{
			PORTB|=0b00001000;
		}
		else
		{
			PORTB&=0b11110111;
		}
	}
	else if (pin==5)
	{
		if (on)
		{
			PORTB|=0b00010000;
		}
		else
		{
			PORTB&=0b11101111;
		}
	}
	else if (pin==6)
	{
		if (on)
		{
			PORTB|=0b00100000;
		}
		else
		{
			PORTB&=0b11011111;
		}
	}
	else if (pin==7)
	{
		if (on)
		{
			PORTB|=0b01000000;
		}
		else
		{
			PORTB&=0b10111111;
		}
	}
	else if (pin==8)
	{
		if (on)
		{
			PORTB|=0b10000000;
		}
		else
		{
			PORTB&=0b01111111;
		}
	}
}

void portcontroller::digitalwritec(uint8_t pin, bool on)
{
	if(pin==1)
	{
		if (on)
		{
			PORTC|=0b00000001;
		}
		else
		{
			PORTC&=0b11111110;
		}
		
	}
	else if (pin==2)
	{
		if (on)
		{
			PORTC|=0b00000010;
		}
		else
		{
			PORTC&=0b11111101;
		}
	}
	else if (pin==3)
	{
		if (on)
		{
			PORTC|=0b00000100;
		}
		else
		{
			PORTC&=0b11111011;
		}
	}
	else if (pin==4)
	{
		if (on)
		{
			PORTC|=0b00001000;
		}
		else
		{
			PORTC&=0b11110111;
		}
	}
	else if (pin==5)
	{
		if (on)
		{
			PORTC|=0b00010000;
		}
		else
		{
			PORTC&=0b11101111;
		}
	}
	else if (pin==6)
	{
		if (on)
		{
			PORTC|=0b00100000;
		}
		else
		{
			PORTC&=0b11011111;
		}
	}
	else if (pin==7)
	{
		if (on)
		{
			PORTC|=0b01000000;
		}
		else
		{
			PORTC&=0b10111111;
		}
	}
	else if (pin==8)
	{
		if (on)
		{
			PORTC|=0b10000000;
		}
		else
		{
			PORTC&=0b01111111;
		}
	}
}

void portcontroller::digitalwrited(uint8_t pin, bool on)
{
	if(pin==1)
	{
		if (on)
		{
			PORTD|=0b00000001;
		}
		else
		{
			PORTD&=0b11111110;
		}
		
	}
	else if (pin==2)
	{
		if (on)
		{
			PORTD|=0b00000010;
		}
		else
		{
			PORTD&=0b11111101;
		}
	}
	else if (pin==3)
	{
		if (on)
		{
			PORTD|=0b00000100;
		}
		else
		{
			PORTD&=0b11111011;
		}
	}
	else if (pin==4)
	{
		if (on)
		{
			PORTD|=0b00001000;
		}
		else
		{
			PORTD&=0b11110111;
		}
	}
	else if (pin==5)
	{
		if (on)
		{
			PORTD|=0b00010000;
		}
		else
		{
			PORTD&=0b11101111;
		}
	}
	else if (pin==6)
	{
		if (on)
		{
			PORTD|=0b00100000;
		}
		else
		{
			PORTD&=0b11011111;
		}
	}
	else if (pin==7)
	{
		if (on)
		{
			PORTD|=0b01000000;
		}
		else
		{
			PORTD&=0b10111111;
		}
	}
	else if (pin==8)
	{
		if (on)
		{
			PORTD|=0b10000000;
		}
		else
		{
			PORTD&=0b01111111;
		}
	}

}

// default destructor
portcontroller::~portcontroller()
{
} //~portcontroller
