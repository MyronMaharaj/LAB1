#include <p18f452.h>
#include "xlcd2.h"  //header made for port d
#include <delays.h>

/* Set configuration bits for use with ICD2 */
#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF



#define _XTAL_FREQ 4000000

void DelayFor18TCY( void ) //18 cycle delay
{
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
}


void DelayXLCD (void)
{
 Delay1KTCYx(5); // Delay of 5ms
 // Cycles = (TimeDelay * Fosc) / 4
 // Cycles = (5ms * 4MHz) / 4
 // Cycles = 5,000
 return;
}

void DelayPORXLCD (void)
{
 Delay1KTCYx(15); // Delay of 15ms
 // Cycles = (TimeDelay * Fosc) / 4
 // Cycles = (15ms * 4MHz) / 4
 // Cycles = 15,000
 return;
}


void init_XLCD( void )
{
 // configure external LCD
OpenXLCD(FOUR_BIT & LINES_5X7); //four bit
while( BusyXLCD() );
WriteCmdXLCD( FOUR_BIT & LINES_5X7 );
while( BusyXLCD() );
WriteCmdXLCD( BLINK_ON );
while( BusyXLCD() );
WriteCmdXLCD( SHIFT_DISP_LEFT );


}


void main(void)
{
 init_XLCD(); //Initialize LCD display function
 while( BusyXLCD() );
 SetDDRamAddr(0x43); //second line. fourth character
 putrsXLCD("Hello World"); //Output"Hello World"
 while(1)
 {
 }
 }