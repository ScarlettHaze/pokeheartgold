	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a2f6

func_a2f6:
	mov.b	@0xf7b0:16,r0l                    ; a2f6: 6a08f7b0
	bne	loc_a2fe:8                          ; a2fa: 4602
	bsr	func_a2da:8                         ; a2fc: 55dc
loc_a2fe:
	rts                                     ; a2fe: 5470
