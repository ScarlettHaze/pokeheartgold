	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_67de

func_67de:
	mov.w	#0x224,r6                         ; 67de: 79060224
	jsr	@func_247e:24                       ; 67e2: 5e00247e
	mov.w	r6,r0                             ; 67e6: 0d60
	jsr	@func_2488:24                       ; 67e8: 5e002488
	mov.w	r0,r5                             ; 67ec: 0d05
	mov.w	#0xef44,e5                        ; 67ee: 790def44
	mov.w	#0xf168,e6                        ; 67f2: 790ef168
	mov.b	#0xa,r4l                          ; 67f6: fc0a
loc_67f8:
	mov.w	r6,r1                             ; 67f8: 0d61
	mov.w	r5,e0                             ; 67fa: 0d58
	mov.w	e5,r0                             ; 67fc: 0dd0
	jsr	@func_5384:24                       ; 67fe: 5e005384
	mov.w	r6,r1                             ; 6802: 0d61
	mov.w	r5,e0                             ; 6804: 0d58
	mov.w	e6,r0                             ; 6806: 0de0
	jsr	@func_524e:24                       ; 6808: 5e00524e
	sub.w	r6,e5                             ; 680c: 196d
	sub.w	r6,e6                             ; 680e: 196e
	dec.b	r4l                               ; 6810: 1a0c
	bne	loc_67f8:8                          ; 6812: 46e4
	rts                                     ; 6814: 5470
