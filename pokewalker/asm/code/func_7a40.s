	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7a40

func_7a40:
	mov.l	er4,@-er7                         ; 7a40: 01006df4
	mov.w	r5,@-er7                          ; 7a44: 6df5
	mov.l	er6,@-er7                         ; 7a46: 01006df6
	sub.w	#0x6,r7                           ; 7a4a: 79370006
	mov.b	r0l,r4h                           ; 7a4e: 0c84
	mov.w	e0,e4                             ; 7a50: 0d8c
	mov.b	r1h,r6l                           ; 7a52: 0c1e
	shlr.b	r0h                              ; 7a54: 1100
	shlr.b	r0h                              ; 7a56: 1100
	shlr.b	r0h                              ; 7a58: 1100
	mov.b	r0h,@er7                          ; 7a5a: 68f0
	mov.w	e1,e0                             ; 7a5c: 0d98
	mov.b	r6l,r2l                           ; 7a5e: 0cea
	extu.w	r2                               ; 7a60: 1752
	shar.w	r2                               ; 7a62: 1192
	shar.w	r2                               ; 7a64: 1192
	shar.w	r2                               ; 7a66: 1192
	mov.b	@(0x13:16,er7),r0l                ; 7a68: 6e780013
	extu.w	r0                               ; 7a6c: 1750
	mulxu.w	r0,er2                          ; 7a6e: 5202
	extu.w	r1                               ; 7a70: 1751
	add.w	r1,r2                             ; 7a72: 0912
	shll.w	r2                               ; 7a74: 1012
	add.w	r2,e0                             ; 7a76: 0928
	sub.b	r0l,r0l                           ; 7a78: 1888
	mov.b	r0l,r4l                           ; 7a7a: 0c8c
	and.b	#0x7,r6l                          ; 7a7c: ee07
	mov.b	r6l,r1l                           ; 7a7e: 0ce9
	extu.w	r1                               ; 7a80: 1751
	mov.w	r1,e6                             ; 7a82: 0d1e
	mov.b	@(0x13:16,er7),r1l                ; 7a84: 6e790013
	extu.w	r1                               ; 7a88: 1751
	shll.w	r1                               ; 7a8a: 1011
	mov.w	r1,e1                             ; 7a8c: 0d19
	mov.b	r4h,r1l                           ; 7a8e: 0c49
	extu.w	r1                               ; 7a90: 1751
	shll.w	r1                               ; 7a92: 1011
	mov.w	r1,e3                             ; 7a94: 0d1b
	jmp	@loc_7b2a:24                        ; 7a96: 5a007b2a
loc_7a9a:
	sub.b	r6l,r6l                           ; 7a9a: 18ee
	bra	loc_7b16:8                          ; 7a9c: 4078
loc_7a9e:
	mov.b	r6l,r5l                           ; 7a9e: 0ced
	extu.w	r5                               ; 7aa0: 1755
	shll.w	r5                               ; 7aa2: 1015
	mov.w	r5,e5                             ; 7aa4: 0d5d
	mov.w	e4,r5                             ; 7aa6: 0dc5
	add.w	e5,r5                             ; 7aa8: 09d5
	mov.b	@er5,r3h                          ; 7aaa: 6853
	mov.b	@(0x1:16,er5),r3l                 ; 7aac: 6e5b0001
	add.w	e0,e5                             ; 7ab0: 098d
	mov.w	e5,r5                             ; 7ab2: 0dd5
	mov.b	@er5,r6h                          ; 7ab4: 6856
	mov.b	r3h,r0l                           ; 7ab6: 0c38
	mov.w	e6,r1                             ; 7ab8: 0de1
loc_7aba:
	dec.b	r1l                               ; 7aba: 1a09
	bmi	loc_7ac2:8                          ; 7abc: 4b04
	shll.b	r0l                              ; 7abe: 1008
	bra	loc_7aba:8                          ; 7ac0: 40f8
loc_7ac2:
	or.b	r0l,r6h                            ; 7ac2: 1486
	mov.b	r6h,@er5                          ; 7ac4: 68d6
	mov.b	@(0x1:16,er5),r6h                 ; 7ac6: 6e560001
	mov.b	r3l,r0l                           ; 7aca: 0cb8
	mov.w	e6,r1                             ; 7acc: 0de1
loc_7ace:
	dec.b	r1l                               ; 7ace: 1a09
	bmi	loc_7ad6:8                          ; 7ad0: 4b04
	shll.b	r0l                              ; 7ad2: 1008
	bra	loc_7ace:8                          ; 7ad4: 40f8
loc_7ad6:
	or.b	r0l,r6h                            ; 7ad6: 1486
	mov.b	r6h,@(0x1:16,er5)                 ; 7ad8: 6ed60001
	mov.b	@(0x13:16,er7),r0l                ; 7adc: 6e780013
	extu.w	r0                               ; 7ae0: 1750
	extu.w	r6                               ; 7ae2: 1756
	add.w	r6,r0                             ; 7ae4: 0960
	shll.w	r0                               ; 7ae6: 1010
	add.w	e0,r0                             ; 7ae8: 0980
	mov.w	r0,r5                             ; 7aea: 0d05
	mov.b	@er0,r6h                          ; 7aec: 6806
	mov.w	#0x8,e5                           ; 7aee: 790d0008
	sub.w	e6,e5                             ; 7af2: 19ed
	mov.w	e5,r1                             ; 7af4: 0dd1
loc_7af6:
	dec.b	r1l                               ; 7af6: 1a09
	bmi	loc_7afe:8                          ; 7af8: 4b04
	shlr.b	r3h                              ; 7afa: 1103
	bra	loc_7af6:8                          ; 7afc: 40f8
loc_7afe:
	or.b	r3h,r6h                            ; 7afe: 1436
	mov.b	r6h,@er5                          ; 7b00: 68d6
	mov.b	@(0x1:16,er5),r6h                 ; 7b02: 6e560001
loc_7b06:
	dec.w	#1,e5                             ; 7b06: 1b5d
	bmi	loc_7b0e:8                          ; 7b08: 4b04
	shlr.b	r3l                              ; 7b0a: 110b
	bra	loc_7b06:8                          ; 7b0c: 40f8
loc_7b0e:
	or.b	r3l,r6h                            ; 7b0e: 14b6
	mov.b	r6h,@(0x1:16,er5)                 ; 7b10: 6ed60001
	inc	r6l                                 ; 7b14: 0a0e
loc_7b16:
	mov.b	r4h,r0l                           ; 7b16: 0c48
	cmp.b	r0l,r6l                           ; 7b18: 1c8e
	bcs	loc_7a9e:8                          ; 7b1a: 4582
	add.w	e1,e0                             ; 7b1c: 0998
	mov.w	e4,r0                             ; 7b1e: 0dc0
	add.w	e3,r0                             ; 7b20: 09b0
	mov.w	r0,e4                             ; 7b22: 0d0c
	mov.b	r4l,r0l                           ; 7b24: 0cc8
	inc	r0l                                 ; 7b26: 0a08
	mov.b	r0l,r4l                           ; 7b28: 0c8c
loc_7b2a:
	mov.b	r4l,r0l                           ; 7b2a: 0cc8
	mov.b	@er7,r0h                          ; 7b2c: 6870
	cmp.b	r0h,r0l                           ; 7b2e: 1c08
	bcs	loc_7a9a:16                         ; 7b30: 5850ff66
	add.w	#0x6,r7                           ; 7b34: 79170006
	mov.l	@er7+,er6                         ; 7b38: 01006d76
	mov.w	@er7+,r5                          ; 7b3c: 6d75
	mov.l	@er7+,er4                         ; 7b3e: 01006d74
	rts                                     ; 7b42: 5470
