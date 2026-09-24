	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2178

func_2178:
	mov.w	r3,@-er7                          ; 2178: 6df3
	mov.w	r4,@-er7                          ; 217a: 6df4
	mov.l	er5,@-er7                         ; 217c: 01006df5
	mov.w	r6,@-er7                          ; 2180: 6df6
	mov.b	r0l,r6l                           ; 2182: 0c8e
	mov.w	e0,r5                             ; 2184: 0d85
	sub.b	r1l,r1l                           ; 2186: 1899
	mov.b	r1l,r2l                           ; 2188: 0c9a
	mov.b	r6l,r1l                           ; 218a: 0ce9
	extu.w	r1                               ; 218c: 1751
	shar.w	r1                               ; 218e: 1191
	mov.w	r1,e1                             ; 2190: 0d19
	mov.b	r0h,r0l                           ; 2192: 0c08
	extu.w	r0                               ; 2194: 1750
	shar.w	r0                               ; 2196: 1190
	shar.w	r0                               ; 2198: 1190
	shar.w	r0                               ; 219a: 1190
	mov.w	r0,e5                             ; 219c: 0d0d
	mov.b	r6l,r0l                           ; 219e: 0ce8
	add.b	#0xff,r0l                         ; 21a0: 88ff
	mov.b	r0l,r2h                           ; 21a2: 0c82
	mov.b	r6l,r0l                           ; 21a4: 0ce8
	extu.w	r0                               ; 21a6: 1750
	shll.w	r0                               ; 21a8: 1010
	mov.w	r0,e4                             ; 21aa: 0d0c
	bra	loc_21f2:8                          ; 21ac: 4044
loc_21ae:
	mov.b	r2h,r6h                           ; 21ae: 0c26
	sub.b	r6l,r6l                           ; 21b0: 18ee
	bra	loc_21e2:8                          ; 21b2: 402e
loc_21b4:
	mov.b	r6l,r0l                           ; 21b4: 0ce8
	extu.w	r0                               ; 21b6: 1750
	shll.w	r0                               ; 21b8: 1010
	add.w	r5,r0                             ; 21ba: 0950
	mov.w	r0,r4                             ; 21bc: 0d04
	mov.b	r6h,r3l                           ; 21be: 0c6b
	extu.w	r3                               ; 21c0: 1753
	shll.w	r3                               ; 21c2: 1013
	add.w	r5,r3                             ; 21c4: 0953
	mov.w	@er3,e0                           ; 21c6: 6938
	mov.w	@er0,r1                           ; 21c8: 6901
	xor.w	e0,r1                             ; 21ca: 6581
	mov.w	r1,@er0                           ; 21cc: 6981
	mov.w	r1,r0                             ; 21ce: 0d10
	mov.w	@er3,e0                           ; 21d0: 6938
	xor.w	r0,e0                             ; 21d2: 6508
	mov.w	e0,@er3                           ; 21d4: 69b8
	mov.w	e0,r3                             ; 21d6: 0d83
	mov.w	@er4,r0                           ; 21d8: 6940
	xor.w	r3,r0                             ; 21da: 6530
	mov.w	r0,@er4                           ; 21dc: 69c0
	inc	r6l                                 ; 21de: 0a0e
	dec.b	r6h                               ; 21e0: 1a06
loc_21e2:
	mov.b	r6l,r0l                           ; 21e2: 0ce8
	extu.w	r0                               ; 21e4: 1750
	cmp.w	e1,r0                             ; 21e6: 1d90
	blt	loc_21b4:8                          ; 21e8: 4dca
	add.w	e4,r5                             ; 21ea: 09c5
	mov.b	r2l,r0l                           ; 21ec: 0ca8
	inc	r0l                                 ; 21ee: 0a08
	mov.b	r0l,r2l                           ; 21f0: 0c8a
loc_21f2:
	mov.b	r2l,r0l                           ; 21f2: 0ca8
	extu.w	r0                               ; 21f4: 1750
	cmp.w	e5,r0                             ; 21f6: 1dd0
	blt	loc_21ae:8                          ; 21f8: 4db4
	jmp	@loc_2660:24                        ; 21fa: 5a002660
