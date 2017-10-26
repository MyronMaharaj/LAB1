/* Lab1 first file - ID number 96013952*/
#include <p18f452.h>

unsigned char counter;

/* Set configuration bits for use with ICD2*/
#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

void main(void)
{
    TRISB=0;
    counter=1;
    while(counter<16)
    {
        PORTB=counter;
        counter=counter+1;
    }
    //YOLO
}
