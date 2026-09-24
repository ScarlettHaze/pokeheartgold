	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_188c

func_188c:
	mov.w	#0xcf0c,r6                        ; 188c: 7906cf0c
	mov.b	#0x18,r3l                         ; 1890: fb18
loc_1892:
	mov.w	#0x84,r0                          ; 1892: 79000084
	add.w	r6,r0                             ; 1896: 0960
	sub.b	r1l,r1l                           ; 1898: 1899
	jsr	@func_4fca:24                       ; 189a: 5e004fca
	add.w	#0x88,r6                          ; 189e: 79160088
	dec.b	r3l                               ; 18a2: 1a0b
	bne	loc_1892:8                          ; 18a4: 46ec
	rts                                     ; 18a6: 5470
