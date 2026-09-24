	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_72f8

func_72f8:
	mov.w	#0xd,r1                           ; 72f8: 7901000d
	mov.w	#0x920,r0                         ; 72fc: 79000920
	jsr	@er6                                ; 7300: 5d60
	mov.w	#0x10e,r1                         ; 7302: 7901010e
	mov.w	#0xa30,r0                         ; 7306: 79000a30
	bra	loc_733c:8                          ; 730a: 4030
