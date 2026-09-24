	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3810

func_3810:
	mov.w	#0xf0f2,r0                        ; 3810: 7900f0f2
	bclr	#0x0,@er0                          ; 3814: 7d007200
	sub.b	r0l,r0l                           ; 3818: 1888
	mov.b	r0l,@TMRW:16                      ; 381a: 6a88f0f0
	mov.b	#0xc0,r0h                         ; 381e: f0c0
	mov.b	r0h,@TCRW:16                      ; 3820: 6a80f0f1
	mov.w	#0xf0f3,r1                        ; 3824: 7901f0f3
	bclr	#0x0,@er1                          ; 3828: 7d107200
	bclr	#0x6,@CKSTPR2:8                    ; 382c: 7ffb7260
	rts                                     ; 3830: 5470
