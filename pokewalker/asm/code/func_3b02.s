	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3b02

func_3b02:
	jsr	@func_247e:24                       ; 3b02: 5e00247e
	mov.w	#0xc,e6                           ; 3b06: 790e000c
	mov.w	e6,r0                             ; 3b0a: 0de0
	jsr	@func_2488:24                       ; 3b0c: 5e002488
	mov.w	r0,r6                             ; 3b10: 0d06
	mov.w	r0,e0                             ; 3b12: 0d08
	mov.w	#0xcebc,r0                        ; 3b14: 7900cebc
	mov.w	e6,r1                             ; 3b18: 0de1
	jsr	@func_5384:24                       ; 3b1a: 5e005384
	mov.b	@0xf7cf:16,r0l                    ; 3b1e: 6a08f7cf
	exts.w	r0                               ; 3b22: 17d0
	shll.w	r0                               ; 3b24: 1010
	shll.w	r0                               ; 3b26: 1010
	add.w	r6,r0                             ; 3b28: 0960
	mov.w	r0,e0                             ; 3b2a: 0d08
	mov.b	@0xf7ce:16,r1l                    ; 3b2c: 6a09f7ce
	extu.w	r1                               ; 3b30: 1751
	shll.w	r1                               ; 3b32: 1011
	mov.w	#0x8f8c,r0                        ; 3b34: 79008f8c
	add.w	r1,r0                             ; 3b38: 0910
	mov.w	#0x2,r1                           ; 3b3a: 79010002
	jsr	@func_5384:24                       ; 3b3e: 5e005384
	mov.w	e6,r1                             ; 3b42: 0de1
	mov.w	r6,e0                             ; 3b44: 0d68
	mov.w	#0xcebc,r0                        ; 3b46: 7900cebc
	jsr	@func_524e:24                       ; 3b4a: 5e00524e
	mov.w	#0xbe,r0                          ; 3b4e: 790000be
	jsr	@func_2488:24                       ; 3b52: 5e002488
	mov.w	r0,r6                             ; 3b56: 0d06
	mov.w	r0,e0                             ; 3b58: 0d08
	mov.w	#0xbe,r1                          ; 3b5a: 790100be
	mov.w	#0x8f00,r0                        ; 3b5e: 79008f00
	jsr	@func_5384:24                       ; 3b62: 5e005384
	sub.b	r0l,r0l                           ; 3b66: 1888
	mov.w	r0,@-er7                          ; 3b68: 6df0
	mov.w	#0x88,r0                          ; 3b6a: 79000088
	jsr	@func_2488:24                       ; 3b6e: 5e002488
	mov.w	r0,e0                             ; 3b72: 0d08
	mov.b	@0xf7ce:16,r1l                    ; 3b74: 6a09f7ce
	extu.w	r1                               ; 3b78: 1751
	shll.w	r1                               ; 3b7a: 1011
	mov.w	#0x8c,r0                          ; 3b7c: 7900008c
	add.w	r6,r0                             ; 3b80: 0960
	add.w	r1,r0                             ; 3b82: 0910
	mov.w	@er0,e1                           ; 3b84: 6909
	mov.w	#0xb,r1                           ; 3b86: 7901000b
	mov.w	r6,r0                             ; 3b8a: 0d60
	jsr	@func_4546:24                       ; 3b8c: 5e004546
	adds	#2,er7                             ; 3b90: 0b87
	rts                                     ; 3b92: 5470
