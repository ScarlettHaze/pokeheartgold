	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a32e

func_a32e:
	mov.l	@0xf780:16,er1                    ; a32e: 01006b01f780
	cmp.l	#0x98967f,er0                     ; a334: 7a200098967f
	bcs	loc_a342:8                          ; a33a: 4506
	mov.l	#0x98967f,er0                     ; a33c: 7a000098967f
loc_a342:
	mov.l	er0,@0xf780:16                    ; a342: 01006b80f780
	rts                                     ; a348: 5470
