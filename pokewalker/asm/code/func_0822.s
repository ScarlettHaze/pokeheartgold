	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0822

func_0822:
	mov.b	r0l,r0h                           ; 0822: 0c80
loc_0824:
	mov.b	@SSR3:8,r0l                       ; 0824: 289c
	bpl	loc_0824:8                          ; 0826: 4afc
	xor.b	#0xaa,r0h                         ; 0828: d0aa
	mov.b	r0h,@TDR3:8                       ; 082a: 309b
	rts                                     ; 082c: 5470
