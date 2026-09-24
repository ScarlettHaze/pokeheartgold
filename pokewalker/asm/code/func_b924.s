	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b924

func_b924:
	mov.w	r3,@-er7                          ; b924: 6df3
	mov.w	r1,@-er7                          ; b926: 6df1
	mov.b	#0x0,r1h                          ; b928: f100
	bset	r2l,r1h                            ; b92a: 60a1
	dec.b	r1h                               ; b92c: 1a01
	and.b	r1h,r1l                           ; b92e: 1619
	mov.b	#0x8,r3l                          ; b930: fb08
	sub.b	r2h,r3l                           ; b932: 182b
	sub.b	r2l,r3l                           ; b934: 18ab
	beq	loc_b93e:8                          ; b936: 4706
loc_b938:
	shll.w	r1                               ; b938: 1011
	dec.b	r3l                               ; b93a: 1a0b
	bgt	loc_b938:8                          ; b93c: 4efa
loc_b93e:
	mov.b	@er0,r3l                          ; b93e: 680b
	not.b	r1h                               ; b940: 1701
	and.b	r1h,r3l                           ; b942: 161b
	or.b	r1l,r3l                            ; b944: 149b
	mov.b	r3l,@er0                          ; b946: 688b
	mov.w	@er7+,r1                          ; b948: 6d71
	mov.w	@er7+,r3                          ; b94a: 6d73
	rts                                     ; b94c: 5470
