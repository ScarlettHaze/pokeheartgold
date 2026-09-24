	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ab5c

func_ab5c:
	mov.b	@0xf7d3:16,r0l                    ; ab5c: 6a08f7d3
	beq	loc_ac1c:16                         ; ab60: 587000b8
	cmp.b	#0x4,r1l                          ; ab64: a904
	bcs	loc_ac1c:16                         ; ab66: 585000b2
	bra	loc_abc0:8                          ; ab6a: 4054
