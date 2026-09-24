	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7b64

func_7b64:
	mov.w	#0x64,r2                          ; 7b64: 79020064
loc_7b68:
	jsr	@func_25ac:24                       ; 7b68: 5e0025ac
	dec.w	#1,r2                             ; 7b6c: 1b52
	bne	loc_7b68:8                          ; 7b6e: 46f8
	rts                                     ; 7b70: 5470
