	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_18b6

func_18b6:
	mov.w	r6,@-er7                          ; 18b6: 6df6
	mov.w	r5,@-er7                          ; 18b8: 6df5
	mov.w	#0xffff,e1                        ; 18ba: 7909ffff
	mov.b	r0l,r5h                           ; 18be: 0c85
	mov.w	e0,r6                             ; 18c0: 0d86
	btst	#0x0,r1l                           ; 18c2: 7309
	beq	loc_18e0:8                          ; 18c4: 471a
	sub.b	r5l,r5l                           ; 18c6: 18dd
	bra	loc_18dc:8                          ; 18c8: 4012
loc_18ca:
	mov.b	r5l,r0l                           ; 18ca: 0cd8
	extu.w	r0                               ; 18cc: 1750
	shll.w	r0                               ; 18ce: 1010
	add.w	r6,r0                             ; 18d0: 0960
	mov.w	@er0,e0                           ; 18d2: 6908
	or.w	#0x101,e0                          ; 18d4: 79480101
	mov.w	e0,@er0                           ; 18d8: 6988
	inc	r5l                                 ; 18da: 0a0d
loc_18dc:
	cmp.b	r5h,r5l                           ; 18dc: 1c5d
	bcs	loc_18ca:8                          ; 18de: 45ea
loc_18e0:
	mov.b	r5h,r0l                           ; 18e0: 0c58
	extu.w	r0                               ; 18e2: 1750
	mov.w	r0,e0                             ; 18e4: 0d08
	btst	#0x2,r1l                           ; 18e6: 7329
	beq	loc_18f2:8                          ; 18e8: 4708
	mov.w	e1,@er6                           ; 18ea: 69e9
	shll.w	r0                               ; 18ec: 1010
	add.w	r6,r0                             ; 18ee: 0960
	mov.w	e1,@er0                           ; 18f0: 6989
loc_18f2:
	btst	#0x3,r1l                           ; 18f2: 7339
	beq	loc_190c:8                          ; 18f4: 4716
	mov.w	e0,r0                             ; 18f6: 0d80
	shll.w	r0                               ; 18f8: 1010
	add.w	r6,r0                             ; 18fa: 0960
	mov.w	e1,@(0xfffe:16,er0)               ; 18fc: 6f89fffe
	mov.w	e0,r0                             ; 1900: 0d80
	shll.w	r0                               ; 1902: 1010
	shll.w	r0                               ; 1904: 1010
	add.w	r6,r0                             ; 1906: 0960
	mov.w	e1,@(0xfffe:16,er0)               ; 1908: 6f89fffe
loc_190c:
	btst	#0x1,r1l                           ; 190c: 7319
	beq	loc_1930:8                          ; 190e: 4720
	sub.b	r5l,r5l                           ; 1910: 18dd
	mov.w	e0,r1                             ; 1912: 0d81
	shll.w	r1                               ; 1914: 1011
	bra	loc_192c:8                          ; 1916: 4014
loc_1918:
	mov.b	r5l,r0l                           ; 1918: 0cd8
	extu.w	r0                               ; 191a: 1750
	shll.w	r0                               ; 191c: 1010
	add.w	r1,r0                             ; 191e: 0910
	add.w	r6,r0                             ; 1920: 0960
	mov.w	@er0,e0                           ; 1922: 6908
	or.w	#0x8080,e0                         ; 1924: 79488080
	mov.w	e0,@er0                           ; 1928: 6988
	inc	r5l                                 ; 192a: 0a0d
loc_192c:
	cmp.b	r5h,r5l                           ; 192c: 1c5d
	bcs	loc_1918:8                          ; 192e: 45e8
loc_1930:
	mov.w	@er7+,r5                          ; 1930: 6d75
	mov.w	@er7+,r6                          ; 1932: 6d76
	rts                                     ; 1934: 5470
