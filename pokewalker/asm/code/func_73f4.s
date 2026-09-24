	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_73f4
	.global loc_73f8

func_73f4:
	jsr	@func_aef8:24                       ; 73f4: 5e00aef8
loc_73f8:
	mov.b	@0xf7ab:16,r0l                    ; 73f8: 6a08f7ab
	inc	r0l                                 ; 73fc: 0a08
	mov.b	r0l,@0xf7ab:16                    ; 73fe: 6a88f7ab
	jmp	@loc_7a2a:24                        ; 7402: 5a007a2a
