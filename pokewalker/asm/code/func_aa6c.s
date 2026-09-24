	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aa6c

func_aa6c:
	mov.b	#0x3c,r0l                         ; aa6c: f83c
	mov.b	r0l,@0xf7af:16                    ; aa6e: 6a88f7af
	mov.b	#0x1e,r0l                         ; aa72: f81e
	mov.b	r0l,@0xf7b0:16                    ; aa74: 6a88f7b0
	mov.b	@0xf7d0:16,r1l                    ; aa78: 6a09f7d0
	mov.b	@0xf7ce:16,r0l                    ; aa7c: 6a08f7ce
	cmp.b	#0x12,r0l                         ; aa80: a812
	bhi	loc_ac1c:16                         ; aa82: 58200196
	extu.w	r0                               ; aa86: 1750
	add.w	r0,r0                             ; aa88: 0900
	mov.w	@(0xbf2a:16,er0),r0               ; aa8a: 6f00bf2a
	jmp	@er0                                ; aa8e: 5900
