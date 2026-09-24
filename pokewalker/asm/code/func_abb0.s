	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_abb0
	.global loc_abb4

func_abb0:
	jsr	@func_273c:24                       ; abb0: 5e00273c
loc_abb4:
	mov.b	r0l,@0xf7d3:16                    ; abb4: 6a88f7d3
	bra	loc_abc8:8                          ; abb8: 400e
