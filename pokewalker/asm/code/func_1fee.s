	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1fee

func_1fee:
	mov.w	r3,@-er7                          ; 1fee: 6df3
	mov.w	r4,@-er7                          ; 1ff0: 6df4
	mov.w	r5,@-er7                          ; 1ff2: 6df5
	mov.w	r6,@-er7                          ; 1ff4: 6df6
	mov.b	r0l,r3l                           ; 1ff6: 0c8b
	mov.b	r0h,r2l                           ; 1ff8: 0c0a
	mov.l	er1,er5                           ; 1ffa: 0f95
	jsr	@func_247e:24                       ; 1ffc: 5e00247e
	mov.w	#0x140,r0                         ; 2000: 79000140
	jsr	@func_2488:24                       ; 2004: 5e002488
	mov.w	r0,r4                             ; 2008: 0d04
	mov.w	r0,e0                             ; 200a: 0d08
	mov.w	#0x280,r0                         ; 200c: 79000280
	mov.w	#0x140,r1                         ; 2010: 79010140
	jsr	@func_5384:24                       ; 2014: 5e005384
	mov.b	@(0xb:16,er7),r0l                 ; 2018: 6e78000b
	beq	loc_2044:8                          ; 201c: 4726
	mov.w	r4,r6                             ; 201e: 0d46
	mov.b	#0xa,r1l                          ; 2020: f90a
loc_2022:
	jsr	@func_2680:24                       ; 2022: 5e002680
	jsr	@func_2680:24                       ; 2026: 5e002680
	mov.w	@er6,r0                           ; 202a: 6960
	or.w	#0x101,r0                          ; 202c: 79400101
	mov.w	r0,@er6                           ; 2030: 69e0
	inc.w	#2,r6                             ; 2032: 0bd6
	mov.w	@er6,r0                           ; 2034: 6960
	or.w	#0x101,r0                          ; 2036: 79400101
	mov.w	r0,@er6                           ; 203a: 69e0
	add.w	#0x12,r6                          ; 203c: 79160012
	dec.b	r1l                               ; 2040: 1a09
	bne	loc_2022:8                          ; 2042: 46de
loc_2044:
	mov.l	er5,er5                           ; 2044: 0fd5
	bne	loc_2088:8                          ; 2046: 4640
	mov.w	r4,e0                             ; 2048: 0d48
	mov.b	r3l,r0l                           ; 204a: 0cb8
	mov.w	#0x1008,r1                        ; 204c: 79011008
	mov.b	r2l,r0h                           ; 2050: 0ca0
	jsr	@func_80ac:24                       ; 2052: 5e0080ac
	bra	loc_208c:8                          ; 2056: 4034
loc_2058:
	mov.l	er5,er0                           ; 2058: 0fd0
	sub.l	er1,er1                           ; 205a: 1a91
	mov.b	#0xa,r1l                          ; 205c: f90a
	jsr	@func_b94e:24                       ; 205e: 5e00b94e
	extu.w	r1                               ; 2062: 1751
	mov.w	#0x20,e1                          ; 2064: 79090020
	mulxu.w	e1,er1                          ; 2068: 5291
	add.w	r4,r1                             ; 206a: 0941
	mov.w	r1,e0                             ; 206c: 0d18
	mov.w	#0x1008,r1                        ; 206e: 79011008
	mov.b	r2l,r0h                           ; 2072: 0ca0
	mov.b	r3l,r0l                           ; 2074: 0cb8
	jsr	@func_80ac:24                       ; 2076: 5e0080ac
	mov.l	er5,er0                           ; 207a: 0fd0
	sub.l	er1,er1                           ; 207c: 1a91
	mov.b	#0xa,r1l                          ; 207e: f90a
	jsr	@func_b94e:24                       ; 2080: 5e00b94e
	mov.l	er0,er5                           ; 2084: 0f85
	add.b	#0xf8,r3l                         ; 2086: 8bf8
loc_2088:
	mov.l	er5,er5                           ; 2088: 0fd5
	bne	loc_2058:8                          ; 208a: 46cc
loc_208c:
	mov.w	@er7+,r6                          ; 208c: 6d76
	mov.w	@er7+,r5                          ; 208e: 6d75
	mov.w	@er7+,r4                          ; 2090: 6d74
	mov.w	@er7+,r3                          ; 2092: 6d73
	rts                                     ; 2094: 5470
