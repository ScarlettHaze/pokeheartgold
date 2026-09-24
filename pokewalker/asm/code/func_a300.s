	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a300

func_a300:
	mov.w	r0,@-er7                          ; a300: 6df0
	mov.w	#0xf7b5,r0                        ; a302: 7900f7b5
	bset	#0x3,@er0                          ; a306: 7d007030
	mov.b	#0x1,r0l                          ; a30a: f801
	mov.b	r0l,@0xf7bb:16                    ; a30c: 6a88f7bb
	bset	#0x2,@CKSTPR1:8                    ; a310: 7ffa7020
	bclr	#0x0,@IRR1:8                       ; a314: 7ff67200
	mov.w	@er7+,r0                          ; a318: 6d70
	rte                                     ; a31a: 5670
