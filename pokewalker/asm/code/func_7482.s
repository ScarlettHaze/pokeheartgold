	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7482

func_7482:
	mov.b	@0xf7b6:16,r0l                    ; 7482: 6a08f7b6
	bld	#0x1,r0l                            ; 7486: 7718
	bcs	loc_7490:8                          ; 7488: 4506
	jsr	@func_711a:24                       ; 748a: 5e00711a
	bra	loc_74b8:8                          ; 748e: 4028
loc_7490:
	jsr	@func_728a:24                       ; 7490: 5e00728a
	bra	loc_74b8:8                          ; 7494: 4022
