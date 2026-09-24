	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b9ce

func_b9ce:
	mov.w	r0,@-er7                          ; b9ce: 6df0
	mov.w	r1,@-er7                          ; b9d0: 6df1
	mov.l	er2,@-er7                         ; b9d2: 01006df2
	mov.l	er3,@-er7                         ; b9d6: 01006df3
	btst	#0x0,r1l                           ; b9da: 7309
	beq	loc_b9e6:8                          ; b9dc: 4708
	mov.b	@er0+,r3l                         ; b9de: 6c0b
	mov.b	r3l,@er1                          ; b9e0: 689b
	adds	#1,er1                             ; b9e2: 0b01
	dec.w	#1,r2                             ; b9e4: 1b52
loc_b9e6:
	mov.w	r2,e2                             ; b9e6: 0d2a
	shlr.w	e2                               ; b9e8: 111a
	btst	#0x0,r0l                           ; b9ea: 7308
	beq	loc_ba10:8                          ; b9ec: 4722
	shlr.w	e2                               ; b9ee: 111a
	beq	loc_ba06:8                          ; b9f0: 4714
loc_b9f2:
	mov.b	@er0+,r3h                         ; b9f2: 6c03
	mov.b	@er0+,r3l                         ; b9f4: 6c0b
	mov.w	r3,e3                             ; b9f6: 0d3b
	mov.b	@er0+,r3h                         ; b9f8: 6c03
	mov.b	@er0+,r3l                         ; b9fa: 6c0b
	mov.l	er3,@er1                          ; b9fc: 01006993
	adds	#4,er1                             ; ba00: 0b91
	dec.w	#1,e2                             ; ba02: 1b5a
	bne	loc_b9f2:8                          ; ba04: 46ec
loc_ba06:
	btst	#0x1,r2l                           ; ba06: 731a
	beq	loc_ba2c:8                          ; ba08: 4722
	mov.b	@er0+,r3h                         ; ba0a: 6c03
	mov.b	@er0+,r3l                         ; ba0c: 6c0b
	bra	loc_ba28:8                          ; ba0e: 4018
loc_ba10:
	shlr.w	e2                               ; ba10: 111a
	beq	loc_ba22:8                          ; ba12: 470e
loc_ba14:
	mov.l	@er0+,er3                         ; ba14: 01006d03
	mov.l	er3,@er1                          ; ba18: 01006993
	adds	#4,er1                             ; ba1c: 0b91
	dec.w	#1,e2                             ; ba1e: 1b5a
	bne	loc_ba14:8                          ; ba20: 46f2
loc_ba22:
	btst	#0x1,r2l                           ; ba22: 731a
	beq	loc_ba2c:8                          ; ba24: 4706
	mov.w	@er0+,r3                          ; ba26: 6d03
loc_ba28:
	mov.w	r3,@er1                           ; ba28: 6993
	adds	#2,er1                             ; ba2a: 0b81
loc_ba2c:
	btst	#0x0,r2l                           ; ba2c: 730a
	beq	loc_ba34:8                          ; ba2e: 4704
	mov.b	@er0,r3l                          ; ba30: 680b
	mov.b	r3l,@er1                          ; ba32: 689b
loc_ba34:
	mov.l	@er7+,er3                         ; ba34: 01006d73
	mov.l	@er7+,er2                         ; ba38: 01006d72
	mov.w	@er7+,r1                          ; ba3c: 6d71
	mov.w	@er7+,r0                          ; ba3e: 6d70
	rts                                     ; ba40: 5470
