
#include <SD.h>
#include <pcmConfig.h>
#include <pcmRF.h>
#include <TMRpcm.h>
#define signalpin 1
  
#define debug false
 


class softwarespi 
{
  uint8_t in;
  uint8_t out;
  uint8_t clockpin;
  String buff;
  public: softwarespi(uint8_t i,uint8_t o,uint8_t c)
  {
    in = i;
    out = o;
    clockpin = c;
    buff = "";
  }
  char commandin()
  {
    char command;
    if(digitalRead(signalpin)==true)
    {
      command=shiftIn(in,clockpin,MSBFIRST);
    }
    else 
    {
      command = 0;  
    }
    return command;
  }
  String stringIn()
  {

    
    while (digitalRead(signalpin)==true)
    {
       buff+= shiftIn(in,clockpin,MSBFIRST);
    }
    return buff;
  }
};
class shiftregister 
{
  uint8_t data;
  uint8_t outregisterclock;
  uint8_t clockpin;
  public:
  shiftregister(uint8_t d,uint8_t s,uint8_t c)
  {
    data = d;
    outregisterclock=s;
    clockpin=c;
  };
  void shiftout(char outdata)
  {
    shiftOut(data,clockpin,MSBFIRST,outdata);
    digitalWrite(outregisterclock,HIGH);
    digitalWrite(outregisterclock,LOW);
  };
  
};

File datamap;
//File audiofile;

softwarespi softspi =softwarespi(99,99,99) ;
shiftregister sdcardsregister= shiftregister(0,1,2);
TMRpcm audio;
char comm = 0;
int songcounter;
bool songruning;
String readline(File* ptr,int line)
{
  String ret = "";
  int index = 0;
  char currchar=0;
  int currline =0;
  while(currchar!='\n'&& currline!=line) 
  {
    ptr->seek(index);
    currchar = ptr->read();
    if(currchar!='\n' && currline==line)
    {
      ret+=currchar;
    }
    else if(currchar=='\n')
    {
      currline++;
    }
    index++;
    
  }
  return ret;
}
void setup()
{
  // put your setup code here, to run once:

  SD.begin();
  datamap= SD.open("songlist.txt",FILE_READ);
  audio.speakerPin = 9;
  pinMode(1,INPUT);
  songruning =false;
  songcounter=0;

}
enum actionvals
{
  none=0,
  play=1,
  playall=2,
  stop=3,
  pause=4
};
char action=none;
void loop() {

  if(comm==1)
  {
    String filename="";
    action=play;
    //action is "play";
    bool wait = true;
    while(wait)
    {
      if(digitalRead(signalpin)==HIGH)
      {
        if(debug)
        {
            filename = " test";
        }
        else
        {
         filename= softspi.stringIn();
        }
      }
      if(filename!="")
      {
        audio.play(filename.c_str());
        songruning=true;
        wait=false;
      }
    }  
  }
  else if(comm==2)
  {
    //play all  
    action=playall; 
    

  }
  else if(comm==3)
  {
    audio.stopPlayback(); 
  }
  else if(comm==4)
  {
    audio.pause();
  }




  if(audio.isPlaying()==false)
  {
    
    if(action==playall)
    {
      if(songruning==true)
      {
        songruning=false;
        songcounter++;
        
        //audio.play(readline(&datamap,songcounter).c_str());
        songruning=true;
      }  
    }
  }
  comm =softspi.commandin();
  // put your main code here, to run repeatedly:

}
