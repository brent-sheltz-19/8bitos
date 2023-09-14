#include <arduino.h>
#include <stdint.h>
#include <SoftwareSerial.h>
#include <Wire.h>

#define debug 1
#define recivepin 9
#define Enablepin 4

#define datapin 3
#define clockpin 4
#define orgpin 5
#define pepin 6 


enum chipnums
{
  eight=0b01111111,seven=0b10111111,  
  six=0b11011111,five=0b11101111,
  four=0b11110111,three=0b11111011,
  two=0b11111101,one=0b11111110
};
/*  
  dataque determines the active chips


*/
class csshiftregister
{
	uint8_t datapin,clkpin,shiftpin,dataque;
	public:
		csshiftregister()
		{
			datapin=NULL;
			clkpin=NULL;
			shiftpin=NULL;
			dataque = 0 ;
		}
		csshiftregister(uint8_t dp,uint8_t clpin,uint8_t spin)
		{
			datapin=dp;
			clkpin=clpin;
			shiftpin=spin;
			dataque = 0 ;				
		}	
		csshiftregister(uint8_t dp,uint8_t clpin,uint8_t spin,uint8_t data)
		{
			datapin=dp;
			clkpin=clpin;
			shiftpin=spin;
			dataque = data ;
		}
    void shiftout()
    {
      shiftOut(this->datapin,this->shiftpin,MSBFIRST,dataque);
      digitalWrite(shiftpin,HIGH);
      digitalWrite(shiftpin,LOW);
    }
		inline void setDataPin(uint8_t dp)
		{
			datapin=dp;
		}			
		inline void setClkPin(uint8_t clpin)
		{
			clkpin=clpin;
		}
		inline void setShiftPin(uint8_t spin)
		{
			shiftpin=spin;
		}
		inline void enqueDataQue(chipnums cnums)
		{
			dataque|=cnums;
		}
		inline void clearDataQue()
		{
			dataque&=0;
		}


};
class At24LC1024
{ 

    
    uint8_t dout,clk,org,pe;
    struct opcode
    { 
      uint8_t write;
      uint8_t read;
      uint8_t erase;
    };
    static opcode opcodes;
    csshiftregister* csreg;
    uint16_t addr;
    uint8_t data;
    chipnums* cnum;
    public:
    At24LC1024()
    {
      
    }
    At24LC1024(uint8_t dout,uint8_t clk,uint8_t org,uint8_t pe)
    {
      this->dout=dout;
      this->clk=clk;
      this->org=org;
      this->pe =pe;
      
    }
    void setCnum(chipnums c )
    {
      cnum=&c;
    }  
    void write(uint16_t address, uint8_t data)
    {
      csreg->enqueDataQue(*cnum);
      csreg->shiftout();
      shiftOut(dout,clk,MSBFIRST,opcodes.write);
      shiftOut(dout,clk,MSBFIRST,address>>8);
      shiftOut(dout,clk,MSBFIRST,address);
      shiftOut(dout,clk,MSBFIRST,data);
    }
    void write(uint16_t address, uint16_t data)
    {
      csreg->enqueDataQue(*cnum);
      csreg->shiftout();
      shiftOut(dout,clk,MSBFIRST,opcodes.write);
      shiftOut(dout,clk,MSBFIRST,address>>8);
      shiftOut(dout,clk,MSBFIRST,address);
      shiftOut(dout,clk,MSBFIRST,data>>8);
      shiftOut(dout,clk,MSBFIRST,data);
    }
    char read(uint16_t address)
    {
      csreg->enqueDataQue(*cnum);
      csreg->shiftout();
      shiftOut(dout,clk,MSBFIRST,opcodes.read);
      shiftOut(dout,clk,MSBFIRST,address>>8);
      shiftOut(dout,clk,MSBFIRST,address);
      return 0;//shiftin();
      }
  };

static csshiftregister csreg(6,7,8);
At24LC1024 chiparray[8]={
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
  *new At24LC1024(datapin,clockpin,orgpin,pepin),
};
bool checkAllEmpty()
{
    for(AT93LC86 c : chiparray)
    {
      for(int i = 0;i<UINT16_MAX;i++)
      {

       if(c.read(i)>0)
       {
         return false;
       }
      }
    }
  return true ;
}

/*
* checks if chip is empty
*/

bool checkEmpty(char chipnum)
{
  for(int i = 0;i<UINT16_MAX;i++)
  {
    if(chiparray[chipnum].read(i)>0)
    {
      return false;
    }
  }
  return true ;
} 
char format(char num,String action )
{
  /*
    format ssd to all zero
  */
  if(action=="f")
  {
    for(At24LC1024 chip :chiparray)
    {
      for(uint16_t i=0;i<UINT16_MAX;i++)
      {
        chip.write(i,0u);
      }
      for(uint16_t i=0;i<UINT16_MAX;i++)
      {
        if(chip.read(i)!=0)
        {
          errormsg = "format failed";
          return 'e';
        }
      }



    }
    return 't';
  }
  else if(action == "e")
  {
    /*  
      erases chip
    */
    At24LC1024 chip = chiparray[num];
    for(uint16_t i=0;i<UINT16_MAX;i++)
    {
      chip.write(i,0u);
    }
    return 't';    
  }
  else if(action == "d")
  {
    /*

    */
    for(At24LC1024 chip :chiparray)
    {
      for(uint16_t i=0;i<UINT16_MAX;i++)
      {
        chip.write(i,0u);
      }
      for(uint16_t i=0;i<UINT16_MAX;i++)
      {
        if(chip.read(i)!=0)
        {
          errormsg = "erase failed";
          return 'e';
        }
      }
    }
    return 't';    
  }
  else
  {

    return 'e';
  }
}

void setup() 
{
  // put your setup code here, to run once:

}

void loop() 
{
  // put your main code here, to run repeatedly:

}