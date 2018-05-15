// Welch, Wright, & Morrow,
// Real-time Digital Signal Processing, 2017

// linker command file for OMAP-L138 DSP using EABI ELF

-l rts6740_elf.lib

-stack           0x00000400      // stack
-heap            0x00000400      // heap

MEMORY
{
    VECTORS:     o = 0x11800000  l = 0x00000200 // accessible by DSP and ARM
    DSPRAM:      o = 0x11800200  l = 0x0003FE00 // accessible by DSP and ARM
    SHAREDRAM:   o = 0x80000000  l = 0x00020000
    SDRAM:       o = 0xC0000000  l = 0x08000000 // external mDDR2
}

SECTIONS
{
    "vectors"	>   VECTORS
    .neardata   >   DSPRAM
    .rodata     >   DSPRAM
    .bss        >   DSPRAM
    .cinit      >   DSPRAM
    .cio        >   DSPRAM
    .const      >   DSPRAM
    .stack      >   DSPRAM
    .sysmem     >   DSPRAM
    .text       >   DSPRAM
    .switch     >   DSPRAM
    .far        >   DSPRAM
    .fardata    >   DSPRAM
	"SHARED_SRAM" >   SHAREDRAM
	"CE0"  >   SDRAM
}
