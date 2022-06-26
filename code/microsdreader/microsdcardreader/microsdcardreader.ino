#include <Array.h>
#include <arduino.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <avr/pgmspace.h>
#include <SPI.h>
#include <SD.h>
#define intpin 3
#define release 0

const char* const PROGMEM errormsg1 = "no OS folder found";
const char* const PROGMEM errormsg2 = "no SD found";
const char* const PROGMEM errormsg3 = "file not found";


const char* const PROGMEM OS = "OS:/";
const char* const PROGMEM Data = "D:/";
const char* const PROGMEM initname= "init.cfg";

enum errornums {noerror,error1=1,error2,error3};
struct error
{
  char* errormsg;
  int size;
  char errornum;
};
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
char sdlist;
shiftreg csreg;
shiftreg datareg;
File filelist[8];
error errordata;
void clearerrors(error* e)
{
  e->errormsg= "";
  e->size=0;
  e->errornum=noerror;
}
void seterror(error* e,errornums a)
{
  if(a==noerror)
  {
    clearerrors(e);
  }
  else if(a==error1)
  {
    e->errormsg= (char*)errormsg1;
    e->size=strlen(errormsg1);
    e->errornum=error1;
  }
  else if(a==error2)
  {
    e->errormsg= (char*)errormsg2;
    e->size=strlen(errormsg2);
    e->errornum=error2;
  }
  else if(a==error3)
  {
    e->errormsg= (char*)errormsg3;
    e->size=strlen(errormsg3);
    e->errornum=error3;
  } 
}
void detectsdcards()
{
 
  for(int i = 0 ; i<8;i++)
  {
    csreg.sshiftout(i);
    if(SD.begin(10))
    {
      sdlist|=(1<<i);
    }
    else
    {
      sdlist&=~(1<<i);
    }
  }
}
File open(String &filename,char a)
{
  return open(filename.c_str(),a);
  
}
File open(const char* filename,char a)
{
  csreg.sshiftout(a);
  return SD.open(filename);  
}
boolean exists(String &filename,char card)
{
  csreg.sshiftout(card);
  return SD.exists(filename);
}
boolean exists(String &filename)
{
  boolean a = false;
  for(int i=0;i<8;i++)
  {
    csreg.sshiftout(i);
    if(SD.exists(filename)==true)
    {
      return true;     
    }
  }
  return false;
}
boolean exists(const char *filename)
{
  boolean a = false;
  for(int i=0;i<8;i++)
  {
    csreg.sshiftout(i);
    if(SD.exists(filename)==true)
    {
      return true;     
    }
  }
  return false;
}
boolean exists(const char *filename,char card)
{
  csreg.sshiftout(card);
  return SD.exists(filename);
}
boolean mkdir(const String &filepath,char card)
{
  csreg.sshiftout(card);
  return SD.mkdir(filepath.c_str());

}
boolean mkdir(const char *filepath,char card)
{
  csreg.sshiftout(card);
  return SD.mkdir(filepath);

}
boolean remove(const char *filepath,char card)
{
  csreg.sshiftout(card);
  return SD.remove(filepath);
}
boolean remove(String &filepath,char card)
{
  csreg.sshiftout(card);
  return SD.remove(filepath);
}
boolean rmdir(const char *filepath,char card)
{
  csreg.sshiftout(card);
  return SD.rmdir(filepath);
  
}
boolean rmdir(String &filepath,char card)
{
  csreg.sshiftout(card);
  return SD.rmdir(filepath);
  
}

char *paths[8]={};
void setup() {
  // put your setup code here, to run once:
  csreg.serialdata=4;
  csreg.serialshift=5;
  csreg.clock=6;
  
  

  if(release==0)
  {
    Serial.begin(9600);
  }
  detectsdcards();
  if(release==0)
  {
    Serial.print("sdlist value: ");
    Serial.println(sdlist);
  }
  if(sdlist==0)
  {
    
    seterror(&errordata,error1);    
    do
    {
      detectsdcards();
    }
    while(sdlist==0);
    clearerrors(&errordata);
  }
  if(exists(OS)==false)
  {
    if(release==0)
    {
      Serial.println("no os folder");
    }
    seterror(&errordata,error2);  
  }
  
}

void loop() {
  // put your main code here, to run repeatedly:
  
  detectsdcards();
}