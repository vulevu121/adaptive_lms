#include "DSP_Config.h" 
#include "math.h"

#define LEFT  0
#define RIGHT 1
#define N 100
#define sqrtN sqrt(N)

float cn[N+1];
float apn = 0.0;
float h[N+1];
float err = 0.0;
int reset = 1;

volatile union {
    Uint32 UINT;
    Int16 Channel[2];
} CodecDataIn, CodecDataOut;

interrupt void Codec_ISR()
{
    float mu = 30;
    float scaleFactor = 3.05e-5;
    float noiseEst = 0.0;
    int i;

    CodecDataIn.UINT = ReadCodecData();

    cn[0] = scaleFactor * ((float)CodecDataIn.Channel[RIGHT]) / sqrtN;
    apn = scaleFactor * ((float)CodecDataIn.Channel[LEFT]);

//    if (reset == 1) {
//        for(i=0; i<=N; i++) {
//            h[i] = 0;
//        }
//        reset = 0;
//    }

    for(i=0; i<=N; i++) {
        noiseEst += h[i] * cn[N-i];
    }

    err = apn - noiseEst;

    for(i=0; i<=N; i++) {
        h[i] += mu*err*cn[N-i];
    }

    for(i=N; i>0 ;i--)  {
        cn[i] = cn[i-1];
    }

    int scale = 30000;

    if(ReadSwitches() == 7) { // switched
        CodecDataOut.Channel[LEFT] = scale*err;
        CodecDataOut.Channel[RIGHT] = CodecDataIn.Channel[RIGHT];
    }
    else {                  // not switched
        CodecDataOut.Channel[LEFT] = scale*err;
        CodecDataOut.Channel[RIGHT] = scale*noiseEst;
    }


    WriteCodecData(CodecDataOut.UINT);
}

