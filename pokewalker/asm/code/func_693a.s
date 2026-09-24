	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_693a

func_693a:
	mov.w	r6,@-er7                          ; 693a: 6df6
	mov.w	@0xf7e0:16,r6                     ; 693c: 6b06f7e0
	mov.w	r6,@0xf7e2:16                     ; 6940: 6b86f7e2
	mov.w	r0,@0xf7e0:16                     ; 6944: 6b80f7e0
	mov.w	@er7+,r6                          ; 6948: 6d76
	rts                                     ; 694a: 5470
