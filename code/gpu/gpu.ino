#include <LiquidCrystal.h>

uint8_t rspin = 8;
uint8_t rwpin = 9;
const PROGMEM uint8_t pins[10]={0,1,2,3,4,5,6,7,8,9};
LiquidCrystal disp1 = LiquidCrystal(rspin,rwpin,7,3, 2, 1, 0);
LiquidCrystal disp2 = LiquidCrystal(rspin,rwpin, 6, 3, 2, 1, 0);
LiquidCrystal disp3 = LiquidCrystal(rspin,rwpin, 5, 3, 2, 1, 0);
LiquidCrystal disp4 = LiquidCrystal(rspin,rwpin, 4, 3, 2, 1, 0);
LiquidCrystal* disparry[4]={&disp1,&disp2,&disp3,&disp4};


int row, colum;

struct message  
{
  char instruction;
  char lengthofstr;
  String messagestr;


};
message mess=message();
void writedisp(String out)
{
  for(char a :out)
  {
    if(colum>=64)
    {
      colum=0;
      if(row==0)
      {

      
      disp1.setCursor(0,1);
      disp2.setCursor(0,1);
      disp3.setCursor(0,1);
      disp4.setCursor(0,1);
      
      row++;
      }
      else
      {
        disp1.setCursor(0,0);
        disp2.setCursor(0,0);
        disp3.setCursor(0,0);
        disp4.setCursor(0,0);
        row=0;
      }
    }
    if(colum >=0 && colum<16)
    {
      disp1.print(a);
      colum++;
    }
    else if(colum >=16 && colum<32)
    {
      disp1.print(a);
      colum++;
    }
    else if(colum >=32 && colum<48)
    {
      disp1.print(a);
      colum++;
    }
    else if(colum >=48 && colum<64)
    {
      disp1.print(a);
      colum++;
    }
  }
}
void readMessage(message alt)
{
  alt.instruction = shiftIn(0,0,MSBFIRST);
  alt.lengthofstr = shiftIn(0,0,MSBFIRST);
  int i =0;
  while(i<alt.lengthofstr)
  {
    alt.messagestr.concat(shiftIn(0,0,MSBFIRST));
  }
  

}

void setup() {
  row, colum = 0;
  for (uint8_t val:pins)
  {
    pinMode(val,OUTPUT);
  }
  for(int i =0; i<4;i++)
  {
    disparry[i]->begin(16,2);
  }

}
void loop() 
{




}
