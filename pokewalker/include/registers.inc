; On-chip I/O registers of the H8/38606R (H8/38602R group) used by the Pokewalker.
; Addresses are from the H8/38602R Group Hardware Manual (register list).
; Registers at H'FF00-H'FFFF are reached with @aa:8 addressing; all others with @aa:16.
; When in doubt, double-check against the manual - these names are used purely for readability
; and do not affect the matching build (an .equ resolves to the same value).

; Flash memory
	.equ FLMCR1,  0xf020
	.equ FLMCR2,  0xf021
	.equ FLPWCR,  0xf022
	.equ EBR1,    0xf023
	.equ FENR,    0xf02b

; Realtime clock (RTC)
	.equ RSECDR,  0xf068
	.equ RMINDR,  0xf069
	.equ RHRDR,   0xf06a
	.equ RWKDR,   0xf06b
	.equ RTCCR1,  0xf06c
	.equ RTCCR2,  0xf06d
	.equ RTCCSR,  0xf06f

; Timer B1
	.equ TMB1,    0xf0d0
	.equ TCB1,    0xf0d1  ; read: counter, write: TLB1 (load register)

; Synchronous serial communication unit (SSU) - drives the EEPROM, LCD and accelerometer
	.equ SSCRH,   0xf0e0
	.equ SSCRL,   0xf0e1
	.equ SSMR,    0xf0e2
	.equ SSER,    0xf0e3
	.equ SSSR,    0xf0e4
	.equ SSRDR,   0xf0e9
	.equ SSTDR,   0xf0eb

; Timer W
	.equ TMRW,    0xf0f0
	.equ TCRW,    0xf0f1
	.equ TIERW,   0xf0f2
	.equ TSRW,    0xf0f3
	.equ TIOR0,   0xf0f4
	.equ TIOR1,   0xf0f5
	.equ TCNT,    0xf0f6
	.equ GRA,     0xf0f8
	.equ GRB,     0xf0fa
	.equ GRC,     0xf0fc
	.equ GRD,     0xf0fe

; Serial communication interface 3 (SCI3) + IrDA - the IR link
	.equ SMR3,    0xff98
	.equ BRR3,    0xff99
	.equ SCR3,    0xff9a
	.equ TDR3,    0xff9b
	.equ SSR3,    0xff9c
	.equ RDR3,    0xff9d
	.equ IrCR,    0xffa7

; Watchdog timer
	.equ TMWD,    0xffb0
	.equ TCSRWD1, 0xffb1
	.equ TCSRWD2, 0xffb2
	.equ TCWD,    0xffb3

; A/D converter
	.equ ADRR,    0xffbc
	.equ AMR,     0xffbe
	.equ ADSR,    0xffbf

; I/O ports
	.equ PMR1,    0xffc0
	.equ PMR3,    0xffc2
	.equ PDR1,    0xffd4
	.equ PDR3,    0xffd6
	.equ PDR8,    0xffdb
	.equ PDR9,    0xffdc
	.equ PDRB,    0xffde
	.equ PUCR1,   0xffe0
	.equ PUCR3,   0xffe1
	.equ PCR1,    0xffe4
	.equ PCR3,    0xffe6
	.equ PCR8,    0xffeb
	.equ PCR9,    0xffec

; System control / interrupts / module standby
	.equ SYSCR1,  0xfff0
	.equ SYSCR2,  0xfff1
	.equ IEGR,    0xfff2
	.equ IENR1,   0xfff3
	.equ IENR2,   0xfff4
	.equ OSCCR,   0xfff5
	.equ IRR1,    0xfff6
	.equ IRR2,    0xfff7
	.equ CKSTPR1, 0xfffa
	.equ CKSTPR2, 0xfffb
