	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a396

func_a396:
	mov.w	@0xf790:16,r0                     ; a396: 6b00f790
	inc.w	#1,r0                             ; a39a: 0b50
	beq	loc_a3a8:8                          ; a39c: 470a
	mov.w	@0xf790:16,r0                     ; a39e: 6b00f790
	inc.w	#1,r0                             ; a3a2: 0b50
	mov.w	r0,@0xf790:16                     ; a3a4: 6b80f790
loc_a3a8:
	rts                                     ; a3a8: 5470
