	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2fc4

func_2fc4:
	cmp.b	r6h,r6l                           ; 2fc4: 1c6e
	bcs	loc_30a4:16                         ; 2fc6: 585000da
	bra	loc_3008:8                          ; 2fca: 403c
