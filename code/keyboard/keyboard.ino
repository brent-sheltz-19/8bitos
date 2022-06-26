#include <arduino.h>
#include <SoftwareSerial.h>
#include <string.h>
#define prosreq  6
#define datapin 5
#define clkpin 4
#define intpin 3
#define countpin 2
volatile char count=0;
File opened;
void read()
{
  char buffer=0;
  while(digitalRead(intpin)==LOW)
  {

    for(int i = 0; i<8;i++)
    {
      if(digitalRead(clkpin)==HIGH)
      {
        buffer |= digitalRead(datapin) << (7 - i);
      } 
    }
  }
  if(buffer==1)
  {
   
  }
}
void inccount()
{
  count += 1;
}
void setup()
{
  pinMode(intpin,INPUT);
  pinMode(countpin,INPUT);
  pinMode(clkpin,OUTPUT);
  pinMode(prosreq,OUTPUT);
  pinMode(datapin,OUTPUT);
  attachInterrupt(digitalPinToInterrupt(3), read, FALLING );
  attachInterrupt(digitalPinToInterrupt(2), inccount, FALLING );

}
void loop()
{

  
}