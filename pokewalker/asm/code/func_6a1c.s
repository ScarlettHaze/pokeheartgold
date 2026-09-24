	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6a1c

func_6a1c:
	sub.b	r0l,r0l                           ; 6a1c: 1888
	mov.b	r0l,@0xf7ce:16                    ; 6a1e: 6a88f7ce
	mov.b	r0l,@0xf7cf:16                    ; 6a22: 6a88f7cf
	mov.b	#0x20,r0h                         ; 6a26: f020
	mov.b	r0h,@0xf7d0:16                    ; 6a28: 6a80f7d0
	mov.w	#0xf7d1,r1                        ; 6a2c: 7901f7d1
	bclr	#0x0,@er1                          ; 6a30: 7d107200
	bclr	#0x1,@er1                          ; 6a34: 7d107210
	bclr	#0x2,@er1                          ; 6a38: 7d107220
	rts                                     ; 6a3c: 5470
