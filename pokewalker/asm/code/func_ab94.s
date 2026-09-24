	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ab94

func_ab94:
	mov.b	@0xf7d3:16,r0l                    ; ab94: 6a08f7d3
	beq	loc_ac1c:16                         ; ab98: 58700080
	cmp.b	#0x4,r1l                          ; ab9c: a904
	bcs	loc_ac1c:8                          ; ab9e: 457c
	bra	loc_abc0:8                          ; aba0: 401e
