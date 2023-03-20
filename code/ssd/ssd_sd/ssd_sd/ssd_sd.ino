#include <Arduino.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <BlockDriver.h>
#include <FreeStack.h>
#include <MinimumSerial.h>
#include <SdFat.h>
#include <SdFatConfig.h>
#include <SysCall.h>
#include <sdios.h>
#define recivepin 6
#define holdpin 7
#define reciveclk 9
#define incomingmesssege 5

// reserved for spi 13,12,11,10
class shiftreg
{
  uint8_t datapin,serialpin,shiftclockpin;
  public:
  shiftreg(uint8_t d,uint8_t s,uint8_t sc)
  {
    datapin=d;
    serialpin = s;
    shiftclockpin = sc;
  }
  void shiftout8(uint8_t data)
  {
    shiftOut(datapin,serialpin,MSBFIRST,data);
  }
};
enum sdid {a=1,b=2,c=4,d=8};
char activecard = 0;
SdFat sd;
shiftreg csport = shiftreg(2,3,4);
char dataque[255];
void input()
{
  
}
void setup() {
  // put your setup code here, to run once:

}

void loop() 
{

  // put your main code here, to run repeatedly:
  char command =0;
  command = shiftIn(recivepin, reciveclk, MSBFIRST);
  string filename;
  if(command>0)
  {
    digitalWrite(holdpin,HIGH);
    /*
        command list
        1 cd 
        2 mkdir 
        3 rm
        4 ls
        5 touch
        6 df
        7 du
    */
    if(command == 1)
    {
      digitalWrite(holdpin,low);
      int size = shiftIn(recivepin, reciveclk, MSBFIRST);
      for(int a = 0 ; a < size; a++)
      {
                 
      }

    }

  }

}
