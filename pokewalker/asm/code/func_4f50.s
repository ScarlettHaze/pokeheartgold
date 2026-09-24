	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4f50

func_4f50:
	add.w	r5,r1                             ; 4f50: 0951
	add.w	r0,r1                             ; 4f52: 0901
	mov.w	@er1,e5                           ; 4f54: 691d
	mov.w	e5,r0                             ; 4f56: 0dd0
	mov.b	r0h,r0l                           ; 4f58: 0c08
	sub.b	r0h,r0h                           ; 4f5a: 1800
	mov.w	e5,r1                             ; 4f5c: 0dd1
	mov.b	r1l,r1h                           ; 4f5e: 0c91
	sub.b	r1l,r1l                           ; 4f60: 1899
	or.w	r1,r0                              ; 4f62: 6410
	extu.l	er0                              ; 4f64: 1770
	mov.l	@0xf79c:16,er1                    ; 4f66: 01006b01f79c
	cmp.l	er0,er1                           ; 4f6c: 1f81
	rts                                     ; 4f6e: 5470
