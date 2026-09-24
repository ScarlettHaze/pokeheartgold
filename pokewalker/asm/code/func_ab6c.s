	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ab6c

func_ab6c:
	mov.w	#0x2,e1                           ; ab6c: 79090002
	mov.w	#0xf7d4,r1                        ; ab70: 7901f7d4
	mov.l	#0x1800080,er0                    ; ab74: 7a0001800080
	jsr	@func_5128:24                       ; ab7a: 5e005128
	mov.w	@0xf7d4:16,r0                     ; ab7e: 6b00f7d4
	jsr	@func_27ec:24                       ; ab82: 5e0027ec
	mov.b	r0l,@0xf7d3:16                    ; ab86: 6a88f7d3
	mov.w	@0xf7d4:16,r0                     ; ab8a: 6b00f7d4
	bne	loc_abc8:8                          ; ab8e: 4638
	sub.b	r0l,r0l                           ; ab90: 1888
	bra	loc_abb4:8                          ; ab92: 4020
