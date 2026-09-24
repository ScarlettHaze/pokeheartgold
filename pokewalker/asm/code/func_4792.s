	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4792

func_4792:
	sub.b	r0l,r0l                           ; 4792: 1888
	mov.b	r0l,@0xf7cf:16                    ; 4794: 6a88f7cf
	mov.b	r0l,@0xf7d1:16                    ; 4798: 6a88f7d1
	mov.b	#0x2,r0h                          ; 479c: f002
	mov.b	r0h,@0xf7d2:16                    ; 479e: 6a80f7d2
	jsr	@func_25d0:24                       ; 47a2: 5e0025d0
	shll.w	r0                               ; 47a6: 1010
	shll.w	r0                               ; 47a8: 1010
	shll.w	r0                               ; 47aa: 1010
	mov.b	r0h,r0l                           ; 47ac: 0c08
	extu.w	r0                               ; 47ae: 1750
	exts.l	er0                              ; 47b0: 17f0
	mov.w	#0x6,r2                           ; 47b2: 79020006
	divxs.w	r2,er0                          ; 47b6: 01d05320
	mov.w	e0,r0                             ; 47ba: 0d80
	mov.b	r0l,@0xf7d3:16                    ; 47bc: 6a88f7d3
	mov.b	#0xff,r0l                         ; 47c0: f8ff
	mov.b	r0l,@0xf7d4:16                    ; 47c2: 6a88f7d4
	sub.b	r0l,r0l                           ; 47c6: 1888
	mov.b	r0l,@0xf7d5:16                    ; 47c8: 6a88f7d5
	rts                                     ; 47cc: 5470
