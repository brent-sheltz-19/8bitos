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
			datapin=0;
			clkpin=0;
			shiftpin=0;
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
    void shiftout(uint8_t data)
    {
      shiftOut(this->datapin,this->shiftpin,MSBFIRST,data);
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
class message_16
{
  uint16_t data;
  uint16_t address;
};
class message_8
{
  uint8_t data;
  uint16_t address;
};

class AT93LC86
{ 
  
    static const uint8_t writecom  = 0b01;
    static const uint8_t readcom  = 0b10;
    static const uint8_t erasecom  = 0b11;
    uint8_t dout,clk,org,pe;
   
    csshiftregister* csreg;
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
    void begin()
    {
      csreg->shiftout(*cnum);
      sendstartbit();
      digitalWrite(clk,LOW);
      /*
      ewen command 
      */
      digitalWrite(dout,LOW);
      digitalWrite(clk,HIGH);
      digitalWrite(clk,LOW);
      digitalWrite(clk,HIGH);
      digitalWrite(clk,LOW);
      /*
      ewen address
      11xxxxxxxxx -set all high 
      */
      digitalWrite(dout,HIGH);
      digitalWrite(clk,HIGH);
      digitalWrite(clk,LOW);
      digitalWrite(clk,HIGH);
      digitalWrite(clk,LOW);
      for(int i=0 ;i<7;i++)
      {
        digitalWrite(clk,HIGH);
        digitalWrite(clk,LOW);
      }
    }
    void setCnum(chipnums c )
    {
      cnum=&c;
    }
    chipnums* getCnum()
    {
      return cnum;
    }  
    void write(uint16_t address, uint8_t data)
    {
      csreg->enqueDataQue(*cnum);
      csreg->shiftout();
      sendstartbit();
      shiftOut(dout,clk,MSBFIRST,writecom);
      shiftOut(dout,clk,MSBFIRST,address>>8);
      shiftOut(dout,clk,MSBFIRST,address);
      shiftOut(dout,clk,MSBFIRST,data);
    }
    void write(uint16_t address, uint16_t data)
    {
      csreg->enqueDataQue(*cnum);
      csreg->shiftout();
      shiftOut(dout,clk,MSBFIRST,writecom);
      shiftOut(dout,clk,MSBFIRST,address>>8);
      shiftOut(dout,clk,MSBFIRST,address);
      shiftOut(dout,clk,MSBFIRST,data>>8);
      shiftOut(dout,clk,MSBFIRST,data);
    }
    char read(uint16_t address)
    {
      csreg->enqueDataQue(*cnum);
      csreg->shiftout();
      sendstartbit();
      shiftOut(dout,clk,MSBFIRST,readcom);
      shiftOut(dout,clk,MSBFIRST,address>>8);
      shiftOut(dout,clk,MSBFIRST,address);
      
      return 0;//shiftin();
    }
  private:
    void sendstartbit()
    {
      
      csreg->shiftout(*cnum);    
      digitalWrite(dout,HIGH);
      digitalWrite(clk,HIGH);

    }
    void setx8mode()
    {

    }


  };



static csshiftregister csreg(7,8,9);
/*
  chip 0 :: map 
  chip 1-7 :: data




*/
AT93LC86 chiparray[8]={
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),
  *new AT93LC86(datapin,clockpin,orgpin,pepin),

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
  if(debug==1)
  {
    Serial.begin(9600);
  }
  for(int a= 0; a<sizeof(chiparray)/sizeof(chiparray[0]);a++)
  {  
    chiparray[a].setCnum((chipnums)a);
    chiparray[a].begin();
    
    if(debug==1)
    {
      Serial.print(*chiparray[a].getCnum());
    }
  }
}
/*
    data stream 
    1 byte - command mode or data mode 
    2 byte - command or data size
    n byte - data  
    1 byte - magic end ea
    
    
 */

void loop()
{
  // put your main code here, to run repeatedly:
  if(debug)
  {
    Serial.println("enter command");
    String a = Serial.readString();
    while(!a.equals("end"))
    {
      if(a.equals("write 8"))
      {
        
        uint16_t addrarray;
        uint16_t temparray;
        uint8_t dataarray;
        Serial.println("enter address");
        sscanf(Serial.readString().c_str(),"%i",&addrarray);
        Serial.println("enter 8 bit");
        sscanf(Serial.readString().c_str(),"%i",&temparray);
        dataarray=(uint8_t)temparray;
        chiparray[0].write(addrarray,dataarray);
      }
      else if(a.equals("write 16"))
      {
        
        uint16_t addrarray;
  0      uint16_t dataarray;
        Serial.println("enter address");
        sscanf(Serial.readString().c_str(),"%i",&addrarray);
        Serial.println("enter 16 bit");
        sscanf(Serial.readString().c_str(),"%i",&dataarray);
        
        chiparray[0].write(addrarray,dataarray);
      }
      else if(a.equals("read"))
      {
        
        uint16_t index = 0;
        uint8_t monitorpos=0;
        Serial.println("enter address");
        while(index<UINT16_MAX)
        {
          uint8_t a = chiparray[0].read(index);
          if(monitorpos<16)
          {
            Serial.print(a);
          }
          else
          {
            Serial.println(a);
          }
          monitorpos++;
          
        }      
      }
      a=Serial.readString();
    }
  }

}
