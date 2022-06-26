#include <arduino.h>
#include <stdint.h>
#include <SoftwareSerial.h>
#define tablechip chiparray[0];
#define recivepin 9;
#define Enablepin 4;
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
class AT93LC86
{ 

    uint8_t dout,clk,org,pe;
    struct opcode
    { 
      uint8_t write  = 0b01;
      uint8_t read  = 0b10;
      uint8_t erase  = 0b11;
    };
    static opcode opcodes;
    csshiftregister* csreg;
    uint16_t addr;
    uint8_t data;
    chipnums* cnum;
    public:
    AT93LC86()
    {
      
    }
    AT93LC86(uint8_t dout,uint8_t clk,uint8_t org,uint8_t pe)
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
/*
  chip 0 :: map 
  chip 1-7 :: data




*/
AT93LC86 chiparray[8]={
  *new AT93LC86(2,3,4,5),*new AT93LC86(2,3,4,5),
  *new AT93LC86(2,3,4,5),*new AT93LC86(2,3,4,5),
  *new AT93LC86(2,3,4,5),*new AT93LC86(2,3,4,5),
  *new AT93LC86(2,3,4,5),*new AT93LC86(2,3,4,5)


};
class messsage 
{
  public:
    bool datamode;
    int size;
    char *message;
  void mallocmessage()
  {
    message = (char*) calloc(size,sizeof(char));

  }
  void deallocmessage()
  {
    free(message);
  }    


};
//chipnums chnums= *new chipnums();
void miso()
{
  
  
}

/*
* checks if all chips are empty
*/
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
String errormsg="";
struct fs
{

  
};

char format(char num,String action )
{
  /*
    format ssd to all zero
  */
  if(action=="f")
  {
    for(AT93LC86 chip :chiparray)
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
    AT93LC86 chip = chiparray[num];
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
    for(AT93LC86 chip :chiparray)
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
void setup() {
  // put your setup code here, to run once:
  
  // 
  for(int a= 0; a<sizeof(chiparray)/sizeof(chiparray[0]);a++)
  {  
    chiparray[a].setCnum((chipnums)a);
  }
  
}
/*
    data stream 
    1 byte - command mode or data mode 
    2 byte - command or data size
    n byte - data  
    1 byte - magic end ea
    
    
 */

void loop() {
  // put your main code here, to run repeatedly:
  

}
