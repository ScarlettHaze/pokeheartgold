	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_369c

func_369c:
	mov.w	@0xf7c4:16,r0                     ; 369c: 6b00f7c4
	bne	loc_36a6:8                          ; 36a0: 4604
	sub.b	r0l,r0l                           ; 36a2: 1888
	bra	loc_36a8:8                          ; 36a4: 4002
loc_36a6:
	mov.b	#0x1,r0l                          ; 36a6: f801
loc_36a8:
	rts                                     ; 36a8: 5470
