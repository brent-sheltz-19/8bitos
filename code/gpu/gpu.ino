#include <LiquidCrystal_74HC595.h>

// LiquidCrystal_74HC595(uint8_t ds, uint8_t shcp, uint8_t stcp,
uint8_t rspin = 8;
uint8_t rwpin = 9;
uint8_t incommingmessage=10;
const PROGMEM uint8_t pins[11]={0,1,2,3,4,5,6,7,8,9,10};
// first 3 params are shift register
LiquidCrystal_74HC595 disp1 = LiquidCrystal_74HC595(3,4,5, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595 disp2 = LiquidCrystal_74HC595(3,4,6, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595 disp3 = LiquidCrystal_74HC595(3,4,7, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595 disp4 = LiquidCrystal_74HC595(3,4,8, 1, 3, 4, 5, 6, 7);
LiquidCrystal_74HC595* disparry[4]={&disp1,&disp2,&disp3,&disp4};
int row, colum;
class shiftregister_74hc595
{
  uint8_t ds,clock,latch;
  public: 
    shiftregister_74hc595(uint8_t d,uint8_t c, uint8_t l)
    {

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
shiftregister_74hc595 addresreg = shiftregister_74hc595(1,2,9);
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
