#include <SPIMemory.h>
//SST26VF064B


enum chipnums
{
  eight=0b01111111,seven=0b10111111,  
  six=0b11011111,five=0b11101111,
  four=0b11110111,three=0b11111011,
  two=0b11111101,one=0b11111110
};
/*  
  dataque determines the active chips


*/
class csshiftregister
{
	uint8_t datapin,clkpin,shiftpin,dataque;
	public:
		csshiftregister()
		{
			datapin=0;
			clkpin=0;
			shiftpin=0;
			dataque = 0 ;
		}
		csshiftregister(uint8_t dp,uint8_t clpin,uint8_t spin)
		{
			datapin=dp;
			clkpin=clpin;
			shiftpin=spin;
			dataque = 0 ;				
		}	
		csshiftregister(uint8_t dp,uint8_t clpin,uint8_t spin,uint8_t data)
		{
			datapin=dp;
			clkpin=clpin;
			shiftpin=spin;
			dataque = data ;
		}
    void shiftout()
    {
      shiftOut(this->datapin,this->clkpin,MSBFIRST,dataque);
      digitalWrite(shiftpin,HIGH);
      digitalWrite(shiftpin,LOW);
    }
    void shiftout(uint8_t data)
    {
      shiftOut(this->datapin,this->clkpin,MSBFIRST,data);
      digitalWrite(shiftpin,HIGH);
      digitalWrite(shiftpin,LOW);
    }
		inline void setDataPin(uint8_t dp)
		{
			datapin=dp;
		}			
		inline void setClkPin(uint8_t clpin)
		{
			clkpin=clpin;
		}
		inline void setShiftPin(uint8_t spin)
		{
			shiftpin=spin;
		}
		inline void enqueDataQue(chipnums cnums)
		{
			dataque|=cnums;
		}
		inline void clearDataQue()
		{
			dataque&=0;
		}


};
SPIFlash flash();

void setup() 
{
  // put your setup code here, to run once:
  flash.begin();
}

void loop() {
  // put your main code here, to run repeatedly:

}
