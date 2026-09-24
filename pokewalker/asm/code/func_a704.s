	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a704

func_a704:
	mov.w	r0,@-er7                          ; a704: 6df0
	mov.b	@RHRDR:16,r0l                     ; a706: 6a08f06a
	btst	#0x7,r0l                           ; a70a: 7378
	bne	loc_a716:8                          ; a70c: 4608
	mov.b	@RHRDR:16,r0l                     ; a70e: 6a08f06a
	mov.b	r0l,@0xf7a6:16                    ; a712: 6a88f7a6
loc_a716:
	mov.w	#0xf7a7,r0                        ; a716: 7900f7a7
	bset	#0x1,@er0                          ; a71a: 7d007010
	mov.w	#0xf067,r0                        ; a71e: 7900f067
	bclr	#0x4,@er0                          ; a722: 7d007240
	mov.w	@er7+,r0                          ; a726: 6d70
	rte                                     ; a728: 5670
