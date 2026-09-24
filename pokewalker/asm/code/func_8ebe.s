	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8ebe

func_8ebe:
	mov.w	#0x183c,r0                        ; 8ebe: 7900183c
	jsr	@func_1cbe:24                       ; 8ec2: 5e001cbe
	mov.w	r7,e0                             ; 8ec6: 0d78
	mov.b	@0xf7ce:16,r1l                    ; 8ec8: 6a09f7ce
	extu.w	r1                               ; 8ecc: 1751
	sub.w	#0x6,r1                           ; 8ece: 79310006
	shll.w	r1                               ; 8ed2: 1011
	shll.w	r1                               ; 8ed4: 1011
	mov.w	#0xcebc,r0                        ; 8ed6: 7900cebc
	add.w	r1,r0                             ; 8eda: 0910
	mov.w	#0x4,r1                           ; 8edc: 79010004
	jsr	@func_5384:24                       ; 8ee0: 5e005384
	mov.w	#0x14,r0                          ; 8ee4: 79000014
	jsr	@func_2488:24                       ; 8ee8: 5e002488
	mov.w	r0,r4                             ; 8eec: 0d04
	mov.w	r0,e0                             ; 8eee: 0d08
	mov.w	#0x8f8c,r0                        ; 8ef0: 79008f8c
	mov.w	#0x14,r1                          ; 8ef4: 79010014
	jsr	@func_5384:24                       ; 8ef8: 5e005384
	sub.w	e6,e6                             ; 8efc: 19ee
loc_8efe:
	mov.w	e6,r0                             ; 8efe: 0de0
	shll.w	r0                               ; 8f00: 1010
	add.w	r4,r0                             ; 8f02: 0940
	mov.w	@er7,e0                           ; 8f04: 6978
	mov.w	@er0,r0                           ; 8f06: 6900
	cmp.w	r0,e0                             ; 8f08: 1d08
	bne	loc_8f1a:8                          ; 8f0a: 460e
	mov.w	e6,r1                             ; 8f0c: 0de1
	mov.b	#0xf,r1h                          ; 8f0e: f10f
	mov.w	#0x3000,r0                        ; 8f10: 79003000
	jsr	@func_1c26:24                       ; 8f14: 5e001c26
	bra	loc_8f4e:8                          ; 8f18: 4034
loc_8f1a:
	inc.w	#1,e6                             ; 8f1a: 0b5e
	cmp.w	#0xa,e6                           ; 8f1c: 792e000a
	blt	loc_8efe:8                          ; 8f20: 4ddc
	bra	loc_8f4e:8                          ; 8f22: 402a
