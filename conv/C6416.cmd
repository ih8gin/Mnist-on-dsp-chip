MEMORY
{
	IRAM:		org=0x00000000,	len=0x0002FFFF /*internal memory*/
    SDRAM:	    org=0x80000000, len=0x01000000 /*external memory*/
}
SECTIONS
{
    .text    :> IRAM	/*Created by C Compiler*/
    .bss     :> IRAM
    .cinit   :> IRAM
    .stack   :> IRAM
    .sysmem  :> IRAM
    .const   :> IRAM
    .switch  :> IRAM
    .far     :> IRAM
    .cio     :> IRAM
    .csldata :> IRAM
	.array_buf :> SDRAM
}