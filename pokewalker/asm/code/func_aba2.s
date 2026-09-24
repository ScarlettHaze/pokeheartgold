	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aba2

func_aba2:
	mov.b	@0xf7d1:16,r0l                    ; aba2: 6a08f7d1
	mov.b	@0xf7d2:16,r0h                    ; aba6: 6a00f7d2
	cmp.b	r0h,r0l                           ; abaa: 1c08
	beq	loc_ac1c:8                          ; abac: 476e
	bra	loc_abc0:8                          ; abae: 4010
