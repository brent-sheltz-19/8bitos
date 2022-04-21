#include <arduino.h>
#include <stdint.h>
#include <SPI.h>
#include <SD.h>
#include "Sdinfo.h"
class shiftreg
{
  uint8_t serialdata;
  uint8_t serialshift;
  uint8_t clock;

public:
  shiftreg()
  {

  }
  shiftreg(uint8_t sd,uint8_t ss,uint8_t c)
  {
    serialdata=sd;
    serialshift=ss;
    clock = c;

  }
  void sshiftout(uint8_t data)
  {
    digitalWrite(LOW,serialshift);
    shiftOut(serialdata,clock,MSBFIRST,(data)>>8);
    digitalWrite(HIGH,serialshift);
    digitalWrite(LOW,serialshift);

  }  

};
File filelist;
File file2;
shiftreg csreg;

void setup() {
  // put your setup code here, to run once:
  SD.begin(10);
  



}

void loop() {
  // put your main code here, to run repeatedly:

}
