	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_406c

func_406c:
	add.w	#0x1750,r5                        ; 406c: 79151750
	mov.w	r5,r0                             ; 4070: 0d50
	mov.w	#0xc0,r1                          ; 4072: 790100c0
	mov.w	r6,e0                             ; 4076: 0d68
	jsr	@func_5384:24                       ; 4078: 5e005384
	mov.w	r6,e0                             ; 407c: 0d68
	mov.w	#0x1820,r1                        ; 407e: 79011820
	mov.w	#0x420,r0                         ; 4082: 79000420
	jsr	@func_80ac:24                       ; 4086: 5e0080ac
	mov.w	#0xd,r1                           ; 408a: 7901000d
	mov.w	#0x1320,r0                        ; 408e: 79001320
	bra	loc_40cc:8                          ; 4092: 4038
