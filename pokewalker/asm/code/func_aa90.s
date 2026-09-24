	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aa90

func_aa90:
	mov.b	@0xf7cf:16,r0l                    ; aa90: 6a08f7cf
	beq	loc_ac1c:16                         ; aa94: 58700184
	mov.b	@0xf7ce:16,r0l                    ; aa98: 6a08f7ce
	inc	r0l                                 ; aa9c: 0a08
	mov.b	r0l,@0xf7ce:16                    ; aa9e: 6a88f7ce
	jmp	@loc_ac1c:24                        ; aaa2: 5a00ac1c
