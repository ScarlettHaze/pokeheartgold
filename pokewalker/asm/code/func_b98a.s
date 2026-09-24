	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b98a

func_b98a:
	mov.w	r1,@-er7                          ; b98a: 6df1
	mov.b	@er0,r1h                          ; b98c: 6801
	bra	loc_b992:8                          ; b98e: 4002
loc_b990:
	shll.b	r1h                              ; b990: 1001
loc_b992:
	dec.b	r1l                               ; b992: 1a09
	bge	loc_b990:8                          ; b994: 4cfa
	mov.b	r1h,@er0                          ; b996: 6881
	mov.w	@er7+,r1                          ; b998: 6d71
	rts                                     ; b99a: 5470
