	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_25ac

func_25ac:
	mov.b	@0xf7b5:16,r0l                    ; 25ac: 6a08f7b5
	bld	#0x4,r0l                            ; 25b0: 7748
	bcc	loc_25c6:8                          ; 25b2: 4412
	mov.w	#0x25,r0                          ; 25b4: 79000025
loc_25b8:
	nop                                     ; 25b8: 0000
	nop                                     ; 25ba: 0000
	nop                                     ; 25bc: 0000
	nop                                     ; 25be: 0000
	nop                                     ; 25c0: 0000
	dec.w	#1,r0                             ; 25c2: 1b50
	bne	loc_25b8:8                          ; 25c4: 46f2
loc_25c6:
	rts                                     ; 25c6: 5470
