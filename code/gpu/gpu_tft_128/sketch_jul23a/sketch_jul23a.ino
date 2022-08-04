#include <Adafruit_ST7735.h>
#include <Adafruit_ST7789.h>
#include <Adafruit_ST77xx.h>

#include <Adafruit_GFX.h>
#include <Adafruit_GrayOLED.h>
#include <Adafruit_SPITFT.h>
#include <Adafruit_SPITFT_Macros.h>
#include <gfxfont.h>
#define imageaddress 0
#define imageaddressmax 2048 
#define textaddress 2049
#define textaddressmax 4097
/*
  used pins 
  a5 a4 11 3 4 5 6 7 
  
*/
enum commands {rotate};
class shiftregister
{
	uint8_t datapin,clkpin,shiftpin;
	public:
		shiftregister()
		{
			datapin=0;
			clkpin=0;
			shiftpin=0;
	
		}
		shiftregister(uint8_t dp,uint8_t clpin,uint8_t spin)
		{
			datapin=dp;
			clkpin=clpin;
			shiftpin=spin;
							
		}	
    void shiftout(uint8_t data)
    {
      shiftOut(this->datapin,this->shiftpin,MSBFIRST,data);
      digitalWrite(shiftpin,HIGH);
      digitalWrite(shiftpin,LOW);
    }
    void shiftout(uint16_t data)
    {
      shiftOut(this->datapin,this->shiftpin,MSBFIRST,data);
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
};
class softSpi
{


};
class siftreg_74165
{



};


SPIClass spi = SPIClass();
Adafruit_ST7735 display1=Adafruit_ST7735(&SPIClass(),3,4,-1);
shiftregister addrreg = shiftregister(5,6,7);

void setup() {
  // put your setup code here, to run once:
  display1.initR(INITR_144GREENTAB);
  display1.enableDisplay(true);
  display1.setTextWrap(true);
  display1.fillScreen(ST77XX_BLUE);
  display1.setCursor(128/2,128/2);
  display1.setTextColor(ST77XX_WHITE);
  display1.println("booting");

}

void loop() 
{
  // put your main code here, to run repeatedly:
  for(unsigned int i = 0;i<2048;i++)
  {
    addrreg.shiftout(i+imageaddress);
    //read (i+imageaddr)
    char pixelval = spi.transfer(0);   
    //readtext i+textaddr
    addrreg.shiftout(i+textaddress);
    char textval = spi.transfer(0);
    if(textval>0)
    {

    }

  }


}
