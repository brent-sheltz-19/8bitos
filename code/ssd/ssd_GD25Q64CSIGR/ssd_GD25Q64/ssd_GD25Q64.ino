#include <SPI.h>
#include <SdFat.h>
#include <Adafruit_FlashCache.h>
#include <Adafruit_FlashTransport.h>
#include <Adafruit_SPIFlash.h>
#include <Adafruit_SPIFlashBase.h>
#include <flash_devices.h>
#include "ff.h"
#include "diskio.h"
#define FLASH_SS       SS                    // Flash chip SS pin.
#define FLASH_SPI_PORT SPI
Adafruit_FlashTransport_SPI flashTransport(FLASH_SS, FLASH_SPI_PORT);
#define id_command 1


// up to 11 characters
#define DISK_LABEL    "EXT FLASH"
Adafruit_SPIFlash flash(&flashTransport);

// file system object from SdFat
FatFileSystem fatfs;

// Elm Cham's fatfs objects
FATFS elmchamFatfs;
uint8_t workbuf[1024]; // Working buffer for f_fdisk function.
static FRESULT errorcode;

char format()
{

  // Initialize flash library and check its chip ID.
  if (!flash.begin()) {
    //"Error, failed to initialize flash chip!";
    return 1;
  }

  // Uncomment to flash LED while writing to flash
  // flash.setIndicator(LED_BUILTIN, true);

  // Wait for user to send OK to continue.
  // Call fatfs begin and passed flash object to initialize file system
 
  // Make filesystem.
  FRESULT r = f_mkfs("", FM_FAT | FM_SFD, 0, workbuf, sizeof(workbuf));
  if (r != FR_OK) {
    //"Error, f_mkfs failed with error code: "
    errorcode=r;
    return 2;
  }

  // mount to set disk label
  r = f_mount(&elmchamFatfs, "0:", 1);
  if (r != FR_OK) {
    //"Error, f_mount failed with error code: "); Serial.println(r, DEC);
    errorcode=r;
    return 3;
  }

  // Setting label
  r = f_setlabel(DISK_LABEL);
  if (r != FR_OK) {
   //"Error, f_setlabel failed with error code: "); Serial.println(r, DEC);
    errorcode=r;
    return 4;
  }

  // unmount
  f_unmount("0:");

  // sync to make sure all data is written to flash
  flash.syncBlocks();
  
  
  // Check new filesystem
  if (!fatfs.begin(&flash)) {
    //"Error, failed to mount newly formatted filesystem!"
    return 5;
  }


  return 0;
}

char read(char * filename,char length,char* buffer,char bufflength) 
{
  File myFile;
  myFile = fatfs.open("test.txt", FILE_READ);
  int i = 0 ;
  while (myFile.available()||i<bufflength) 
  {
    buffer[i]=myFile.read();
    i++;
  }
  return 0;
}


void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:

}
//--------------------------------------------------------------------+
// fatfs diskio
//--------------------------------------------------------------------+
extern "C"
{

DSTATUS disk_status ( BYTE pdrv )
{
  (void) pdrv;
	return 0;
}

DSTATUS disk_initialize ( BYTE pdrv )
{
  (void) pdrv;
	return 0;
}

DRESULT disk_read (
	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
	BYTE *buff,		/* Data buffer to store read data */
	DWORD sector,	/* Start sector in LBA */
	UINT count		/* Number of sectors to read */
)
{
  (void) pdrv;
	return flash.readBlocks(sector, buff, count) ? RES_OK : RES_ERROR;
}

DRESULT disk_write (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	DWORD sector,		/* Start sector in LBA */
	UINT count			/* Number of sectors to write */
)
{
  (void) pdrv;
  return flash.writeBlocks(sector, buff, count) ? RES_OK : RES_ERROR;
}

DRESULT disk_ioctl (
	BYTE pdrv,		/* Physical drive nmuber (0..) */
	BYTE cmd,		/* Control code */
	void *buff		/* Buffer to send/receive control data */
)
{
  (void) pdrv;

  switch ( cmd )
  {
    case CTRL_SYNC:
      flash.syncBlocks();
      return RES_OK;

    case GET_SECTOR_COUNT:
      *((DWORD*) buff) = flash.size()/512;
      return RES_OK;

    case GET_SECTOR_SIZE:
      *((WORD*) buff) = 512;
      return RES_OK;

    case GET_BLOCK_SIZE:
      *((DWORD*) buff) = 8;    // erase block size in units of sector size
      return RES_OK;

    default:
      return RES_PARERR;
  }
}

}
