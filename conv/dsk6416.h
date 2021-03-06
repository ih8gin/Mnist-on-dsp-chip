/*
 *  Copyright 2003 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  ======== dsk6416.h ========
 *
 *  This files contains DSK6416 board specific I/O registers
 *  define for the CPLD.
 */

#ifndef DSK6416_
#define DSK6416_

#ifdef __cplusplus
extern "C" {
#endif

#include <csl.h>

/*
 *  Note:  Bit definitions for each register field
 *         needs to be supplied here for the CPLD
 *         and other board periperals.
 */

/* Compatability definitions */
#define NULL                 0

/* CPLD address definitions */
#define DSK6416_CPLD_BASE    0x60000000

/* CPLD Register Indices */
#define DSK6416_USER_REG     0
#define DSK6416_DC_REG       1
#define DSK6416_VERSION      4
#define DSK6416_MISC         6

/* CPLD Register Bits */
#define DC_DET               0x80
#define DC_STAT1             0x20
#define DC_STAT0             0x10
#define DC_CNTL1             0x02
#define DC_CNTL0             0x01

#define TIN1SEL              0x08
#define TIN0SEL              0x04
#define MCBSP2SEL            0x02
#define MCBSP1SEL            0x01

/* Initialize all board APIs */
void DSK6416_init();

/* Read an 8-bit value from a CPLD register */
Uint8 DSK6416_rget(Int16 regnum);

/* Write an 8-bit value to a CPLD register */
void DSK6416_rset(Int16 regnum, Uint8 regval);

/* Spin in a delay loop for delay iterations */
void DSK6416_wait(Uint32 delay);

/* Spin in a delay loop for delay microseconds */
void DSK6416_waitusec(Uint32 delay);

/* Get the DSK version */
Int16 DSK6416_getVersion();

#ifdef __cplusplus
}
#endif

#endif
