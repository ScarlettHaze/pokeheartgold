	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_730c

func_730c:
	mov.w	#0xd,r1                           ; 730c: 7901000d
	mov.w	#0x720,r0                         ; 7310: 79000720
	jsr	@er6                                ; 7314: 5d60
	mov.w	#0x10e,r1                         ; 7316: 7901010e
	mov.w	#0x830,r0                         ; 731a: 79000830
	bra	loc_733c:8                          ; 731e: 401c
