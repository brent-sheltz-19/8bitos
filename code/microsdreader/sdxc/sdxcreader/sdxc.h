#include <arduino.h>
#include <avr/progmem>
#include "sdinfo.h"
namespace sdxcclass
{
  
  class sdxc
    {
      
      uint8_t dataPin_;
      uint8_t clockPin_;
      uint8_t chipSelectPin_;
      uint8_t block[255]={};
      uint8_t  cmd0crc= 0x95;
      CSDV2 csd;
      
      public:
      sdxc(uint8_t datapin,uint8_t clockpin,uint8_t chipselect )
      {
        dataPin_=datapin;
        clockPin_=clockpin;
        chipSelectPin_ = chipselect;
        digitalWrite(chipSelectPin_,HIGH);
      }
      void start()
      {
        digitalWrite(dataPin_,High)

        shiftOut(dataPin_,clockPin_,MSBFIRST,CMD0);
      }
      void setblock(uint8_t addr,uint8_t val)
      {
        block[addr]=val;
      }
      void writeblock()
      {

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

}