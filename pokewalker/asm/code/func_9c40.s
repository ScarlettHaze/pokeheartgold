	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9c40

func_9c40:
	mov.b	@0xf79a:16,r0h                    ; 9c40: 6a00f79a
	and.b	r0h,r0l                           ; 9c44: 1608
	rts                                     ; 9c46: 5470
