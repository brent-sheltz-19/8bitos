#include "SdFat.h"
#include "sdios.h"

#include <string.h>
#include <Arduino.h>
#include <SoftwareSerial.h>
#include <SPI.h>


#define recivepin 6
#define holdpin 7
#define reciveclk 9
#define incomingmesssege 5
//uint32_t idlist[8];
//enum sdid {a=1,b=2,c=4,d=8,e=16,f=32,g=64,h=128};

//char activecard = 0;
SdFs sd;
//char dataque[255];
//const char type = 's';
String activedir="";
// reserved for spi 13,12,11,10
class shiftreg
{
  uint8_t datapin,serialpin,shiftclockpin;
  public:
  shiftreg(uint8_t d,uint8_t s,uint8_t sc)
  {
    datapin=d;
    serialpin = s;
    shiftclockpin =sc;
  }
  shiftout8(uint8_t data)
  {
    shiftOut(datapin,serialpin,MSBFIRST,data);
  }
};
//shiftreg csport = shiftreg(2,3,4);
void input()
{
  
}
bool changeSD(sdid id)
{
  return true;
}
void checkchard()
{

}

void setup() {
  // put your setup code here, to run once:
  int a =0;
  int b=0;
  if (sd.begin()==1)
  {
      cid_t cid;
      sd.card()->readCID(&cid);
      //idlist[b]= cid.psn();
      b++;
    }
    else
    {
      //idlist[b]= NULL;
    }
  
}

void loop() 
{

  // put your main code here, to run repeatedly:
  char command =0;
  command = shiftIn(recivepin, reciveclk, MSBFIRST);
  String filename;
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
        8 get id


    */
    if(command == 1)
    {
      String path;
      digitalWrite(holdpin,LOW);
      int parametersize;
      
      int size = shiftIn(recivepin, reciveclk, MSBFIRST);
      for(int a = 0 ; a < size; a++)
      {
        char charachter = shiftIn(recivepin, reciveclk, MSBFIRST);
       // path.append(); 
      }

    }


    else if(command == 8)
    {
      
    }

  }

}
