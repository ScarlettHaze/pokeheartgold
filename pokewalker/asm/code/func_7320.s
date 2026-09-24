	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7320

func_7320:
	mov.w	#0xd,r1                           ; 7320: 7901000d
	mov.w	#0xb20,r0                         ; 7324: 79000b20
	jsr	@er6                                ; 7328: 5d60
	mov.w	#0x10e,r1                         ; 732a: 7901010e
	mov.w	#0xc30,r0                         ; 732e: 79000c30
	bra	loc_733c:8                          ; 7332: 4008
