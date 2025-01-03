#include <LiquidCrystal_74HC595.h>
#define DS 3
#define SHCP 4
#define STCP 5
#define STCP1 STCP+1
#define STCP2 TCP+2
#define STCP3 TCP+3
#define STCP4 TCP+4
#define RS 1
#define E 3
#define D4 4
#define D5 5
#define D6 6
#define D7 7
uint8_t rspin = 8;
uint8_t rwpin = 9;
uint8_t incommingmessage=10;
const PROGMEM uint8_t pins[11]={0,1,2,3,4,5,6,7,8,9,10};
// first 3 params are shift register
LiquidCrystal_74HC595 disp1 = LiquidCrystal_74HC595(DS,SHCP,STCP, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595 disp2 = LiquidCrystal_74HC595(DS,SHCP,STCP+1, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595 disp3 = LiquidCrystal_74HC595(DS,SHCP,STCP+2, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595 disp4 = LiquidCrystal_74HC595(DS,SHCP,8, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595* disparry[4]={&disp1,&disp2,&disp3,&disp4};
int row, colum;
class shiftregister_74hc595
{
  uint8_t ds,clock,latch;
  public: 
    shiftregister_74hc595(uint8_t d,uint8_t c, uint8_t l)
    {
      ds=d;
      clock=c;
      latch=l;
    }
    void shiftout8bit(uint8_t data)
    {
      shiftOut(this->ds, this->clock,MSBFIRST,data);
      digitalWrite(this->latch,HIGH);
      digitalWrite(this->latch,LOW);

    }
    void shiftout16bit(uint16_t data)
    {
      shiftOut(this->ds, this->clock,MSBFIRST,data>>8);
      shiftOut(this->ds, this->clock,MSBFIRST,data);
      digitalWrite(this->latch,HIGH);
      digitalWrite(this->latch,LOW);

    }
};
shiftregister_74hc595 addresreg = shiftregister_74hc59(1,2,9);
struct addresses 
{
  uint8_t dataoffset=0;
  uint8_t instructionoffset=0;
  uint8_t instructionparamoffset=0;
  const uint8_t datatoScreen=0x00;// 0X0000-0X0050
  const uint16_t instructionaddr=0x0100; 
  const uint16_t instructionparameteraddr=0x0101;
  const uint16_t customCharbase = 0x0120;

  void incdataoffset()
  {
    dataoffset++;
  }
  void decdataoffset()
  {
    dataoffset--;
  }
  void incinstructionoffset()
  {
    dataoffset++;
  }
  void decinstructionoffset()
  {
    dataoffset--;
  }
  void incinstructionparamoffset()
  {
    dataoffset++;
  }
  void decinstructionparamoffset()
  {
    dataoffset--;
  }
};




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
    if(colum>64)
    {
      colum = 0;
    }
  }
}
void readRamInstruction(char* array)
{
  array[0]=addresreg.shiftout16bit(addresses.instructionaddr);
  array[1]=addresreg.shiftout16bit(addresses.instructionparameteraddr);
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
  char instruction[2] = {};
  if()
  {
    //idle
  }
  else if ()
  {
    //draw

  }


}
