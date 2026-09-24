	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1856

func_1856:
	bclr	#0x1,@IRR1:8                       ; 1856: 7ff67210
	mov.b	#0x1,r0l                          ; 185a: f801
	mov.b	r0l,@PDR3:8                       ; 185c: 38d6
	mov.b	r0l,@0xff91:8                     ; 185e: 3891
	sub.b	r0h,r0h                           ; 1860: 1800
	mov.b	r0h,@SCR3:8                       ; 1862: 309a
	bclr	#0x6,@CKSTPR1:8                    ; 1864: 7ffa7260
	mov.w	#0xf0f1,r1                        ; 1868: 7901f0f1
	bset	#0x7,@er1                          ; 186c: 7d107070
	mov.b	#0xf0,r1l                         ; 1870: f9f0
	bclr	#0x7,@er1                          ; 1872: 7d107270
	bclr	#0x6,@CKSTPR2:8                    ; 1876: 7ffb7260
	jmp	@loc_009a:24                        ; 187a: 5a00009a
