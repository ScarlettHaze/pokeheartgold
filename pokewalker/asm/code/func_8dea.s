	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8dea

func_8dea:
	add.b	#0xff,r4l                         ; 8dea: 8cff
	cmp.b	#0x2,r4l                          ; 8dec: ac02
	bls	loc_8df2:8                          ; 8dee: 4302
	sub.b	r4l,r4l                           ; 8df0: 18cc
loc_8df2:
	mov.w	#0x8f52,r0                        ; 8df2: 79008f52
	mov.w	#0x30,r1                          ; 8df6: 79010030
	mov.w	r6,e0                             ; 8dfa: 0d68
	jsr	@func_5384:24                       ; 8dfc: 5e005384
	mov.w	r6,r0                             ; 8e00: 0d60
	add.w	#0x30,r0                          ; 8e02: 79100030
	mov.w	r0,e0                             ; 8e06: 0d08
	mov.b	r4l,r1l                           ; 8e08: 0cc9
	extu.w	r1                               ; 8e0a: 1751
	mov.w	#0x10,e1                          ; 8e0c: 79090010
	mulxu.w	e1,er1                          ; 8e10: 5291
	mov.w	#0xce8c,r0                        ; 8e12: 7900ce8c
	add.w	r1,r0                             ; 8e16: 0910
	mov.w	e5,r1                             ; 8e18: 0dd1
	jsr	@func_5384:24                       ; 8e1a: 5e005384
	sub.w	e6,e6                             ; 8e1e: 19ee
loc_8e20:
	mov.w	e6,r0                             ; 8e20: 0de0
	mov.w	#0x10,e0                          ; 8e22: 79080010
	mulxu.w	e0,er0                          ; 8e26: 5280
	add.w	r6,r0                             ; 8e28: 0960
	mov.w	@(0x30:16,er6),e0                 ; 8e2a: 6f680030
	mov.w	@er0,r0                           ; 8e2e: 6900
	cmp.w	r0,e0                             ; 8e30: 1d08
	bne	loc_8e4e:8                          ; 8e32: 461a
	mov.w	e6,r1                             ; 8e34: 0de1
	mov.w	#0x183c,r0                        ; 8e36: 7900183c
	jsr	@func_19b8:24                       ; 8e3a: 5e0019b8
	mov.w	e6,r1                             ; 8e3e: 0de1
	mov.b	#0x7,r1h                          ; 8e40: f107
	mov.w	#0x3000,r0                        ; 8e42: 79003000
	jsr	@func_1bc6:24                       ; 8e46: 5e001bc6
	jmp	@loc_8f4e:24                        ; 8e4a: 5a008f4e
loc_8e4e:
	inc.w	#1,e6                             ; 8e4e: 0b5e
	cmp.w	#0x3,e6                           ; 8e50: 792e0003
	blt	loc_8e20:8                          ; 8e54: 4dca
	jmp	@loc_8f4e:24                        ; 8e56: 5a008f4e
