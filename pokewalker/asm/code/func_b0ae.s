	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b0ae

func_b0ae:
	sub.b	r6l,r6l                           ; b0ae: 18ee
loc_b0b0:
	extu.w	r6                               ; b0b0: 1756
	mov.w	r6,e6                             ; b0b2: 0d6e
	mov.w	e6,r1                             ; b0b4: 0de1
	mov.b	@(0xbf98:16,er1),r1l              ; b0b6: 6e19bf98
	mov.w	e6,r0                             ; b0ba: 0de0
	jsr	@func_4fca:24                       ; b0bc: 5e004fca
	inc	r6l                                 ; b0c0: 0a0e
	cmp.b	#0x8,r6l                          ; b0c2: ae08
	bcs	loc_b0b0:8                          ; b0c4: 45ea
	rts                                     ; b0c6: 5470
