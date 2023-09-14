#include <arduino.h>
#include "sdinfo.h"
#if defined(__avr__)

class sdxc
{
  
  uint8_t dataPin_;
  uint8_t clockPin_;
  uint8_t chipSelectPin_;
  
  uint8_t block[255]={};

  
  sdxc(uint8_t datapin,uint8_t clockpin,uint8_t chipselect )
  {
    dataPin_=datapin;
    clockPin_=clockpin;
    chipSelectPin_ = chipselect;
	digitalWrite(chipSelectPin_,HIGH);
  }
  void start()
  {
    shiftout(dataPin_,clockPin_,MSB,cmd0);
  }


  void setCSpinhigh()
  {
    digitalWrite(chipSelectPin_, HIGH);
  }
  void setCSpinlow()
  {
    digitalWrite(chipSelectPin_, LOW);
  }
};

#endif