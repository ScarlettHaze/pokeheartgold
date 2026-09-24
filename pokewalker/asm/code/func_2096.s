	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2096

func_2096:
	mov.w	r3,@-er7                          ; 2096: 6df3
	mov.w	r4,@-er7                          ; 2098: 6df4
	mov.w	r5,@-er7                          ; 209a: 6df5
	mov.l	er6,@-er7                         ; 209c: 01006df6
	mov.b	r0l,r2l                           ; 20a0: 0c8a
	mov.b	r0h,r5l                           ; 20a2: 0c0d
	mov.b	r1l,r3h                           ; 20a4: 0c93
	mov.b	r1h,r3l                           ; 20a6: 0c1b
	jsr	@func_247e:24                       ; 20a8: 5e00247e
	mov.w	#0x180,e6                         ; 20ac: 790e0180
	mov.w	e6,r0                             ; 20b0: 0de0
	jsr	@func_2488:24                       ; 20b2: 5e002488
	mov.w	r0,r6                             ; 20b6: 0d06
	mov.w	#0x18,r0                          ; 20b8: 79000018
	jsr	@func_2488:24                       ; 20bc: 5e002488
	mov.w	r0,r4                             ; 20c0: 0d04
	mov.b	r5l,r0l                           ; 20c2: 0cd8
	extu.w	r0                               ; 20c4: 1750
	mulxu.w	e6,er0                          ; 20c6: 52e0
	mov.w	#0x2530,r5                        ; 20c8: 79052530
	add.w	r0,r5                             ; 20cc: 0905
	mov.w	e6,r1                             ; 20ce: 0de1
	mov.w	r5,r0                             ; 20d0: 0d50
	mov.w	r6,e0                             ; 20d2: 0d68
	jsr	@func_5384:24                       ; 20d4: 5e005384
	mov.b	r3h,r1l                           ; 20d8: 0c39
	mov.w	r6,e0                             ; 20da: 0d68
	mov.w	#0x1060,r0                        ; 20dc: 79001060
	jsr	@func_18b6:24                       ; 20e0: 5e0018b6
	mov.b	r3l,r3l                           ; 20e4: 0cbb
	beq	loc_215e:8                          ; 20e6: 4776
	mov.b	@0xf7ac:16,r0l                    ; 20e8: 6a08f7ac
	extu.w	r0                               ; 20ec: 1750
	shar.w	r0                               ; 20ee: 1190
	btst	#0x0,r0l                           ; 20f0: 7308
	beq	loc_215e:8                          ; 20f2: 476a
	mov.w	#0x638,r0                         ; 20f4: 79000638
	mov.w	#0x18,r1                          ; 20f8: 79010018
	mov.w	r4,e0                             ; 20fc: 0d48
	jsr	@func_5384:24                       ; 20fe: 5e005384
	sub.b	r5l,r5l                           ; 2102: 18dd
loc_2104:
	mov.b	r5l,r0l                           ; 2104: 0cd8
	extu.w	r0                               ; 2106: 1750
	mov.w	r0,e6                             ; 2108: 0d0e
	shll.w	r0                               ; 210a: 1010
	add.w	r6,r0                             ; 210c: 0960
	mov.w	e6,r3                             ; 210e: 0de3
	add.w	r4,r3                             ; 2110: 0943
	add.w	#0x10,r3                          ; 2112: 79130010
	mov.b	@er3,r1l                          ; 2116: 6839
	mov.b	@(0x170:16,er0),r1h               ; 2118: 6e010170
	and.b	r1l,r1h                           ; 211c: 1691
	mov.b	r1h,@(0x170:16,er0)               ; 211e: 6e810170
	mov.b	r5l,r0l                           ; 2122: 0cd8
	extu.w	r0                               ; 2124: 1750
	shll.w	r0                               ; 2126: 1010
	inc.w	#1,r0                             ; 2128: 0b50
	add.w	r6,r0                             ; 212a: 0960
	mov.b	@er3,r3l                          ; 212c: 683b
	mov.b	@(0x170:16,er0),r1l               ; 212e: 6e090170
	and.b	r3l,r1l                           ; 2132: 16b9
	mov.b	r1l,@(0x170:16,er0)               ; 2134: 6e890170
	inc	r5l                                 ; 2138: 0a0d
	cmp.b	#0x8,r5l                          ; 213a: ad08
	bcs	loc_2104:8                          ; 213c: 45c6
	sub.b	r5l,r5l                           ; 213e: 18dd
loc_2140:
	mov.b	r5l,r0l                           ; 2140: 0cd8
	extu.w	r0                               ; 2142: 1750
	mov.w	r0,e6                             ; 2144: 0d0e
	add.w	r6,r0                             ; 2146: 0960
	mov.w	r4,r1                             ; 2148: 0d41
	add.w	e6,r1                             ; 214a: 09e1
	mov.b	@er1,r1l                          ; 214c: 6819
	mov.b	@(0x170:16,er0),r1h               ; 214e: 6e010170
	or.b	r1l,r1h                            ; 2152: 1491
	mov.b	r1h,@(0x170:16,er0)               ; 2154: 6e810170
	inc	r5l                                 ; 2158: 0a0d
	cmp.b	#0x10,r5l                         ; 215a: ad10
	bcs	loc_2140:8                          ; 215c: 45e2
loc_215e:
	mov.w	r6,e0                             ; 215e: 0d68
	mov.w	#0x1060,r1                        ; 2160: 79011060
	mov.b	r2l,r0h                           ; 2164: 0ca0
	sub.b	r0l,r0l                           ; 2166: 1888
	jsr	@func_80ac:24                       ; 2168: 5e0080ac
	mov.l	@er7+,er6                         ; 216c: 01006d76
	mov.w	@er7+,r5                          ; 2170: 6d75
	mov.w	@er7+,r4                          ; 2172: 6d74
	mov.w	@er7+,r3                          ; 2174: 6d73
	rts                                     ; 2176: 5470
