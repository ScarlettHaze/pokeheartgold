	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a6e2

func_a6e2:
	mov.w	r0,@-er7                          ; a6e2: 6df0
	mov.b	@RMINDR:16,r0l                    ; a6e4: 6a08f069
	btst	#0x7,r0l                           ; a6e8: 7378
	bne	loc_a6f0:8                          ; a6ea: 4604
	mov.b	r0l,@0xf7a5:16                    ; a6ec: 6a88f7a5
loc_a6f0:
	mov.w	#0xf7a7,r0                        ; a6f0: 7900f7a7
	bset	#0x0,@er0                          ; a6f4: 7d007000
	mov.w	#0xf067,r0                        ; a6f8: 7900f067
	bclr	#0x3,@er0                          ; a6fc: 7d007230
	mov.w	@er7+,r0                          ; a700: 6d70
	rte                                     ; a702: 5670
