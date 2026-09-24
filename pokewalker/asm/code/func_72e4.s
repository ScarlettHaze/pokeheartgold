	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_72e4

func_72e4:
	mov.w	#0xd,r1                           ; 72e4: 7901000d
	mov.w	#0x220,r0                         ; 72e8: 79000220
	jsr	@er6                                ; 72ec: 5d60
	mov.w	#0x10e,r1                         ; 72ee: 7901010e
	mov.w	#0x330,r0                         ; 72f2: 79000330
	bra	loc_733c:8                          ; 72f6: 4044
