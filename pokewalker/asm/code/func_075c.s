	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_075c
	.global loc_0762

func_075c:
	mov.w	#0xf8d6,r0                        ; 075c: 7900f8d6
	rts                                     ; 0760: 5470
loc_0762:
	mov.b	#0x3,r0l                          ; 0762: f803
	mov.b	r0l,@0xf088:16                    ; 0764: 6a88f088
	mov.b	#0x1,r0l                          ; 0768: f801
	mov.b	r0l,@PDR3:8                       ; 076a: 38d6
	mov.b	#0x5,r0l                          ; 076c: f805
	mov.b	r0l,@PCR3:8                       ; 076e: 38e6
	rts                                     ; 0770: 5470
