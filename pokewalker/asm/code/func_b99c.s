	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b99c

func_b99c:
	mov.w	r1,@-er7                          ; b99c: 6df1
	mov.b	@er0,r1h                          ; b99e: 6801
	bra	loc_b9a4:8                          ; b9a0: 4002
loc_b9a2:
	shlr.b	r1h                              ; b9a2: 1101
loc_b9a4:
	dec.b	r1l                               ; b9a4: 1a09
	bge	loc_b9a2:8                          ; b9a6: 4cfa
	mov.b	r1h,@er0                          ; b9a8: 6881
	mov.w	@er7+,r1                          ; b9aa: 6d71
	rts                                     ; b9ac: 5470
