	.h8300hn
	.include "registers.inc"
	.section .text

	.global InitSections

InitSections:
	mov.w	r2,@-er7                          ; ba78: 6df2
	mov.w	r4,@-er7                          ; ba7a: 6df4
	mov.w	r5,@-er7                          ; ba7c: 6df5
	mov.w	r6,@-er7                          ; ba7e: 6df6
	mov.w	#0xbfc0,r0                        ; ba80: 7900bfc0
	mov.w	#0xbfc4,r1                        ; ba84: 7901bfc4
	mov.b	#0x0,r2l                          ; ba88: fa00
	bra	loc_ba98:8                          ; ba8a: 400c
loc_ba8c:
	mov.w	@er0+,r4                          ; ba8c: 6d04
	mov.w	@er0+,r5                          ; ba8e: 6d05
	bra	loc_ba94:8                          ; ba90: 4002
loc_ba92:
	mov.b	r2l,@-er5                         ; ba92: 6cda
loc_ba94:
	cmp.w	r5,r4                             ; ba94: 1d54
	bcs	loc_ba92:8                          ; ba96: 45fa
loc_ba98:
	cmp.w	r1,r0                             ; ba98: 1d10
	bcs	loc_ba8c:8                          ; ba9a: 45f0
	mov.w	#0xbfba,r0                        ; ba9c: 7900bfba
	mov.w	#0xbfc0,r1                        ; baa0: 7901bfc0
	bra	loc_bab8:8                          ; baa4: 4012
loc_baa6:
	mov.w	@er0+,r4                          ; baa6: 6d04
	mov.w	@er0+,r5                          ; baa8: 6d05
	mov.w	@er0+,r6                          ; baaa: 6d06
	bra	loc_bab4:8                          ; baac: 4006
loc_baae:
	mov.b	@er4+,r2l                         ; baae: 6c4a
	mov.b	r2l,@er6                          ; bab0: 68ea
	adds	#1,er6                             ; bab2: 0b06
loc_bab4:
	cmp.w	r5,r4                             ; bab4: 1d54
	bcs	loc_baae:8                          ; bab6: 45f6
loc_bab8:
	cmp.w	r1,r0                             ; bab8: 1d10
	bcs	loc_baa6:8                          ; baba: 45ea
	mov.w	@er7+,r6                          ; babc: 6d76
	mov.w	@er7+,r5                          ; babe: 6d75
	mov.w	@er7+,r4                          ; bac0: 6d74
	mov.w	@er7+,r2                          ; bac2: 6d72
	rts                                     ; bac4: 5470
