#include <arduino.h>
#include <SoftwareSerial.h>
#include <PS2KeyAdvanced.h>
#include <PS2KeyMap.h>


#define DATAPIN 4
#define IRQPIN  3
/*
 Read method Returns an UNSIGNED INT containing
        Make/Break status
        Caps status
        Shift, CTRL, ALT, ALT GR, GUI keys
        Flag for function key not a displayable/printable character
        8 bit key code
  Code Ranges (bottom byte of unsigned int)
        0       invalid/error
        1-1F    Functions (Caps, Shift, ALT, Enter, DEL... )
        1A-1F   Functions with ASCII control code
                    (DEL, BS, TAB, ESC, ENTER, SPACE)
        20-61   Printable characters noting
                    0-9 = 0x30 to 0x39 as ASCII
                    A to Z = 0x41 to 0x5A as upper case ASCII type codes
                    8B Extra European key
        61-A0   Function keys and other special keys (plus F2 and F1)
                    61-78 F1 to F24
                    79-8A Multimedia
                    8B NOT included
                    8C-8E ACPI power
                    91-A0 and F2 and F1 - Special multilingual
        A8-FF   Keyboard communications commands (note F2 and F1 are special
                codes for special multi-lingual keyboards)
    By using these ranges it is possible to perform detection of any key and do
    easy translation to ASCII/UTF-8 avoiding keys that do not have a valid code.
    Top Byte is 8 bits denoting as follows with defines for bit code
        Define name bit     description
        PS2_BREAK   15      1 = Break key code
                   (MSB)    0 = Make Key code
        PS2_SHIFT   14      1 = Shift key pressed as well (either side)
                            0 = NO shift key
        PS2_CTRL    13      1 = Ctrl key pressed as well (either side)
                            0 = NO Ctrl key
        PS2_CAPS    12      1 = Caps Lock ON
                            0 = Caps lock OFF
        PS2_ALT     11      1 = Left Alt key pressed as well
                            0 = NO Left Alt key
        PS2_ALT_GR  10      1 = Right Alt (Alt GR) key pressed as well
                            0 = NO Right Alt key
        PS2_GUI      9      1 = GUI key pressed as well (either)
                            0 = NO GUI key
        PS2_FUNCTION 8      1 = FUNCTION key non-printable character (plus space, tab, enter)
                            0 = standard character key
*/







/*  messages constants */
/* Key codes and strings for keys producing a string */
/* three arrays in same order ( keycode, string to display, length of string ) */
#if defined(PS2_REQUIRES_PROGMEM)
  const uint8_t codes[] PROGMEM = { PS2_KEY_SPACE, PS2_KEY_TAB, PS2_KEY_ESC, PS2_KEY_DELETE,
                                    PS2_KEY_F1, PS2_KEY_F2, PS2_KEY_F3, PS2_KEY_F4,
                                    PS2_KEY_F5, PS2_KEY_F6, PS2_KEY_F7, PS2_KEY_F8,
                                    PS2_KEY_F9, PS2_KEY_F10, PS2_KEY_F11, PS2_KEY_F12 };
  const char spacestr[] PROGMEM  = " ";
  const char tabstr[] PROGMEM  = "[Tab]";
  const char escstr[] PROGMEM  = "[ESC]";
  const char delstr[] PROGMEM  = "[Del]";
  const char f1str[]  PROGMEM  = "[F1]";
  const char f2str[]  PROGMEM  = "[F2]";
  const char f3str[]  PROGMEM  = "[F3]";
  const char f4str[]  PROGMEM  = "[F4]";
  const char f5str[]  PROGMEM  = "[F5]";
  const char f6str[]  PROGMEM  = "[F6]";
  const char f7str[]  PROGMEM  = "[F7]";
  const char f8str[]  PROGMEM  = "[F8]";
  const char f9str[]  PROGMEM  = "[F9]";
  const char f10str[] PROGMEM  = "[F10]";
  const char f11str[] PROGMEM  = "[F11]";
  const char f12str[] PROGMEM  = "[F12]";
  // Due to AVR Harvard architecture array of string pointers to actual strings
  const char *const keys[] PROGMEM =  {
                                  spacestr, tabstr, escstr, delstr, f1str, f2str,
                                  f3str, f4str, f5str, f6str, f7str, f8str,
                                  f9str, f10str, f11str, f12str };
  const int8_t sizes[] PROGMEM = { 1, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5 };
  char buffer[ 8 ];
#endif
class shiftreg
{

  uint8_t datapin,clkpin, latchpin;
  public:
    shiftreg()
    {

    }
    
    shiftreg(char a , char b, char c)
    {
      datapin=a;
      clkpin=b;
      latchpin=c;
    };
    void shiftout(uint8_t data)
    {
      shiftOut(datapin,clkpin,MSBFIRST,data);
      digitalWrite(latchpin,HIGH);
      digitalWrite(latchpin,LOW);
    };
    void shiftout(uint8_t *data, int len)
    {
      for(int i = 0 ; i<len;i++)
      {
        shiftOut(datapin,clkpin,MSBFIRST,*(data+i));
        digitalWrite(latchpin,HIGH);
        digitalWrite(latchpin,LOW);
      }      
    };
    void shiftout(uint16_t data)
    {
      shiftOut(datapin,clkpin,MSBFIRST,data);
      digitalWrite(latchpin,HIGH);
      digitalWrite(latchpin,LOW);
    };
};
class fiforam
{
  shiftreg *datareg;
  char writepin,fullpin;
  public:
  fiforam()
  {
    
  }
  fiforam(shiftreg *d,char w)
  {
    datareg=d;
    writepin=w;
  };
  void write(uint8_t data)
  {
    datareg->shiftout(data);
  };
};
shiftreg reg;
fiforam ram;
PS2KeyAdvanced kb;
PS2KeyMap keymap;

uint16_t keypress;
void setup() {
  // put your setup code here, to run once:
  kb.begin(DATAPIN,IRQPIN);
  kb.setNoBreak( 1 );         // No break codes for keys (when key released)
  kb.setNoRepeat( 1 );        // Don't repeat shift ctrl etc
  keymap.selectMap((char *) "US");
  reg = shiftreg(5,6,7);
  ram = fiforam(&reg,8);
  
}

void loop() 
{
  // put your main code here, to run repeatedly:
  keypress = kb.read();
  if(keypress!=0)
  {
    0ram.write(keypress);
  }
  
  
}
