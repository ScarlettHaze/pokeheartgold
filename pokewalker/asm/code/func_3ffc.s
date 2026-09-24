	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3ffc

func_3ffc:
	add.w	#0x1750,r5                        ; 3ffc: 79151750
	mov.w	r5,r0                             ; 4000: 0d50
	mov.w	#0xc0,r1                          ; 4002: 790100c0
	mov.w	r6,e0                             ; 4006: 0d68
	jsr	@func_5384:24                       ; 4008: 5e005384
	mov.w	r6,e0                             ; 400c: 0d68
	mov.w	#0x1820,r1                        ; 400e: 79011820
	mov.w	#0x420,r0                         ; 4012: 79000420
	jsr	@func_80ac:24                       ; 4016: 5e0080ac
	mov.w	#0xd,r1                           ; 401a: 7901000d
	mov.w	#0x1120,r0                        ; 401e: 79001120
	jmp	@loc_40cc:24                        ; 4022: 5a0040cc
