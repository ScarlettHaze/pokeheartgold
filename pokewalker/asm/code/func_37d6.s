	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_37d6

func_37d6:
	bset	#0x6,@CKSTPR2:8                    ; 37d6: 7ffb7060
	mov.w	#0xf0f2,r0                        ; 37da: 7900f0f2
	bclr	#0x0,@er0                          ; 37de: 7d007200
	mov.b	#0xc0,r0l                         ; 37e2: f8c0
	mov.b	r0l,@TCRW:16                      ; 37e4: 6a88f0f1
	mov.b	#0x10,r0l                         ; 37e8: f810
	mov.b	r0l,@TIOR0:16                     ; 37ea: 6a88f0f4
	mov.b	#0x1,r0l                          ; 37ee: f801
	mov.b	r0l,@TIOR1:16                     ; 37f0: 6a88f0f5
	mov.w	#0xf0f3,r1                        ; 37f4: 7901f0f3
	bclr	#0x0,@er1                          ; 37f8: 7d107200
	mov.b	#0xf2,r1l                         ; 37fc: f9f2
	bset	#0x0,@er1                          ; 37fe: 7d107000
	sub.w	e0,e0                             ; 3802: 1988
	mov.w	e0,@TCNT:16                       ; 3804: 6b88f0f6
	mov.b	#0x80,r0h                         ; 3808: f080
	mov.b	r0h,@TMRW:16                      ; 380a: 6a80f0f0
	rts                                     ; 380e: 5470
