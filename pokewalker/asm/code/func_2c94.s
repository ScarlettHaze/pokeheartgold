	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2c94

func_2c94:
	cmp.b	r6h,r6l                           ; 2c94: 1c6e
	bcs	loc_30a4:16                         ; 2c96: 5850040a
	mov.b	#0x1,r0l                          ; 2c9a: f801
	jmp	@loc_2fb4:24                        ; 2c9c: 5a002fb4
