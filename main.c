///////////////////////////////////////////////////////////////////////
// Filename: main.c
//
// Synopsis: Main program file for demonstration code
//
///////////////////////////////////////////////////////////////////////

#include "DSP_Config.h"   
#include "LCDK_Support_DSP.h"
#include <math.h>

int main()
{    

    // initialize DSP board
    DSP_Init();

    // initialize the LEDs
    InitLEDs();

    InitDigitalOutputs();

    //unsigned int delay = 10000000;
    while(1) {

    }
}
