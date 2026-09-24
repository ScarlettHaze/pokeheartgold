	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1dca

func_1dca:
	mov.w	r4,@-er7                          ; 1dca: 6df4
	mov.w	r6,@-er7                          ; 1dcc: 6df6
	mov.w	r0,r5                             ; 1dce: 0d05
	mov.b	r1l,r3l                           ; 1dd0: 0c9b
	mov.w	e0,r6                             ; 1dd2: 0d86
	mov.b	r5l,r2l                           ; 1dd4: 0cda
	extu.w	r2                               ; 1dd6: 1752
	shll.w	r2                               ; 1dd8: 1012
	mov.w	r2,e5                             ; 1dda: 0d2d
	mov.b	r3l,r2l                           ; 1ddc: 0cba
	exts.w	r2                               ; 1dde: 17d2
	mov.w	r2,r4                             ; 1de0: 0d24
	mov.b	r5h,r2l                           ; 1de2: 0c5a
	extu.w	r2                               ; 1de4: 1752
	shar.w	r2                               ; 1de6: 1192
	shar.w	r2                               ; 1de8: 1192
	shar.w	r2                               ; 1dea: 1192
	mov.w	r2,e4                             ; 1dec: 0d2c
	mov.b	r5l,r2l                           ; 1dee: 0cda
	extu.w	r2                               ; 1df0: 1752
	shll.w	r2                               ; 1df2: 1012
	mov.w	r2,e6                             ; 1df4: 0d2e
	mov.b	r3l,r3l                           ; 1df6: 0cbb
	bge	loc_1e60:8                          ; 1df8: 4c66
	sub.b	r5h,r5h                           ; 1dfa: 1855
	mov.w	r4,e1                             ; 1dfc: 0d49
	neg.w	e1                                ; 1dfe: 1799
	mov.w	e1,e2                             ; 1e00: 0d9a
	mov.w	e4,e1                             ; 1e02: 0dc9
	dec.w	#1,e1                             ; 1e04: 1b59
	mov.w	r4,r3                             ; 1e06: 0d43
	add.w	#0x8,r3                           ; 1e08: 79130008
	bra	loc_1e56:8                          ; 1e0c: 4048
loc_1e0e:
	sub.b	r5l,r5l                           ; 1e0e: 18dd
	bra	loc_1e4a:8                          ; 1e10: 4038
loc_1e12:
	mov.b	r5l,r0l                           ; 1e12: 0cd8
	extu.w	r0                               ; 1e14: 1750
	add.w	r6,r0                             ; 1e16: 0960
	mov.w	e2,r1                             ; 1e18: 0da1
	jsr	@func_b99c:24                       ; 1e1a: 5e00b99c
	mov.b	r5h,r0l                           ; 1e1e: 0c58
	extu.w	r0                               ; 1e20: 1750
	cmp.w	e1,r0                             ; 1e22: 1d90
	beq	loc_1e48:8                          ; 1e24: 4722
	mov.b	r5l,r0l                           ; 1e26: 0cd8
	extu.w	r0                               ; 1e28: 1750
	mov.w	r0,r4                             ; 1e2a: 0d04
	add.w	r6,r0                             ; 1e2c: 0960
	mov.w	e6,e0                             ; 1e2e: 0de8
	add.w	r4,e0                             ; 1e30: 0948
	add.w	r6,e0                             ; 1e32: 0968
	mov.w	e0,r1                             ; 1e34: 0d81
	mov.b	@er1,r1l                          ; 1e36: 6819
	mov.b	r3l,r1h                           ; 1e38: 0cb1
loc_1e3a:
	dec.b	r1h                               ; 1e3a: 1a01
	bmi	loc_1e42:8                          ; 1e3c: 4b04
	shll.b	r1l                              ; 1e3e: 1009
	bra	loc_1e3a:8                          ; 1e40: 40f8
loc_1e42:
	mov.b	@er0,r1h                          ; 1e42: 6801
	or.b	r1l,r1h                            ; 1e44: 1491
	mov.b	r1h,@er0                          ; 1e46: 6881
loc_1e48:
	inc	r5l                                 ; 1e48: 0a0d
loc_1e4a:
	mov.b	r5l,r0l                           ; 1e4a: 0cd8
	extu.w	r0                               ; 1e4c: 1750
	cmp.w	e5,r0                             ; 1e4e: 1dd0
	blt	loc_1e12:8                          ; 1e50: 4dc0
	add.w	e6,r6                             ; 1e52: 09e6
	inc	r5h                                 ; 1e54: 0a05
loc_1e56:
	mov.b	r5h,r0l                           ; 1e56: 0c58
	extu.w	r0                               ; 1e58: 1750
	cmp.w	e4,r0                             ; 1e5a: 1dc0
	bge	loc_1ec4:8                          ; 1e5c: 4c66
	bra	loc_1e0e:8                          ; 1e5e: 40ae
loc_1e60:
	mov.w	e4,r0                             ; 1e60: 0dc0
	dec.w	#1,r0                             ; 1e62: 1b50
	mov.b	r5l,r1l                           ; 1e64: 0cd9
	extu.w	r1                               ; 1e66: 1751
	mulxu.w	r1,er0                          ; 1e68: 5210
	shll.w	r0                               ; 1e6a: 1010
	add.w	r0,r6                             ; 1e6c: 0906
	shlr.b	r5h                              ; 1e6e: 1105
	shlr.b	r5h                              ; 1e70: 1105
	shlr.b	r5h                              ; 1e72: 1105
	mov.w	#0x8,r3                           ; 1e74: 79030008
	sub.w	r4,r3                             ; 1e78: 1943
	bra	loc_1ec0:8                          ; 1e7a: 4044
loc_1e7c:
	sub.b	r5l,r5l                           ; 1e7c: 18dd
	bra	loc_1eb4:8                          ; 1e7e: 4034
loc_1e80:
	mov.b	r5l,r0l                           ; 1e80: 0cd8
	extu.w	r0                               ; 1e82: 1750
	add.w	r6,r0                             ; 1e84: 0960
	mov.w	r4,r1                             ; 1e86: 0d41
	jsr	@func_b98a:24                       ; 1e88: 5e00b98a
	cmp.b	#0x1,r5h                          ; 1e8c: a501
	beq	loc_1eb2:8                          ; 1e8e: 4722
	mov.b	r5l,r0l                           ; 1e90: 0cd8
	extu.w	r0                               ; 1e92: 1750
	mov.w	r0,e4                             ; 1e94: 0d0c
	add.w	r6,r0                             ; 1e96: 0960
	mov.w	e4,e0                             ; 1e98: 0dc8
	sub.w	e6,e0                             ; 1e9a: 19e8
	add.w	r6,e0                             ; 1e9c: 0968
	mov.w	e0,r1                             ; 1e9e: 0d81
	mov.b	@er1,r1l                          ; 1ea0: 6819
	mov.b	r3l,r1h                           ; 1ea2: 0cb1
loc_1ea4:
	dec.b	r1h                               ; 1ea4: 1a01
	bmi	loc_1eac:8                          ; 1ea6: 4b04
	shlr.b	r1l                              ; 1ea8: 1109
	bra	loc_1ea4:8                          ; 1eaa: 40f8
loc_1eac:
	mov.b	@er0,r1h                          ; 1eac: 6801
	or.b	r1l,r1h                            ; 1eae: 1491
	mov.b	r1h,@er0                          ; 1eb0: 6881
loc_1eb2:
	inc	r5l                                 ; 1eb2: 0a0d
loc_1eb4:
	mov.b	r5l,r0l                           ; 1eb4: 0cd8
	extu.w	r0                               ; 1eb6: 1750
	cmp.w	e5,r0                             ; 1eb8: 1dd0
	blt	loc_1e80:8                          ; 1eba: 4dc4
	sub.w	e6,r6                             ; 1ebc: 19e6
	dec.b	r5h                               ; 1ebe: 1a05
loc_1ec0:
	mov.b	r5h,r5h                           ; 1ec0: 0c55
	bne	loc_1e7c:8                          ; 1ec2: 46b8
loc_1ec4:
	mov.w	@er7+,r6                          ; 1ec4: 6d76
	mov.w	@er7+,r4                          ; 1ec6: 6d74
	rts                                     ; 1ec8: 5470
