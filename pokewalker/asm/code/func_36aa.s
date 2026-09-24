	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_36aa

func_36aa:
	mov.b	#0x78,r0l                         ; 36aa: f878
	mov.b	r0l,@0xf7cc:16                    ; 36ac: 6a88f7cc
	sub.b	r0l,r0l                           ; 36b0: 1888
	mov.b	r0l,@0xf7c6:16                    ; 36b2: 6a88f7c6
	mov.b	@PCR8:8,r0h                       ; 36b6: 20eb
	or.b	#0xc,r0h                           ; 36b8: c00c
	mov.b	r0h,@PCR8:8                       ; 36ba: 30eb
	bclr	#0x2,@PDR8:8                       ; 36bc: 7fdb7220
	bclr	#0x3,@PDR8:8                       ; 36c0: 7fdb7230
	bset	#0x6,@CKSTPR2:8                    ; 36c4: 7ffb7060
	mov.b	#0xc0,r0h                         ; 36c8: f0c0
	mov.b	r0h,@TCRW:16                      ; 36ca: 6a80f0f1
	mov.b	#0x10,r0h                         ; 36ce: f010
	mov.b	r0h,@TIOR0:16                     ; 36d0: 6a80f0f4
	mov.b	#0x1,r0h                          ; 36d4: f001
	mov.b	r0h,@TIOR1:16                     ; 36d6: 6a80f0f5
	sub.w	e0,e0                             ; 36da: 1988
	mov.w	e0,@GRA:16                        ; 36dc: 6b88f0f8
	mov.w	e0,@GRB:16                        ; 36e0: 6b88f0fa
	mov.w	e0,@GRC:16                        ; 36e4: 6b88f0fc
	bclr	#0x6,@CKSTPR2:8                    ; 36e8: 7ffb7260
	mov.w	e0,@0xf7c4:16                     ; 36ec: 6b88f7c4
	rts                                     ; 36f0: 5470
