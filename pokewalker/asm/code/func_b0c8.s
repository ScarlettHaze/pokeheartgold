	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b0c8

func_b0c8:
	sub.b	r6l,r6l                           ; b0c8: 18ee
	bra	loc_b0ea:8                          ; b0ca: 401e
loc_b0cc:
	extu.w	r6                               ; b0cc: 1756
	mov.w	r6,e6                             ; b0ce: 0d6e
	mov.w	e6,r0                             ; b0d0: 0de0
	jsr	@func_552e:24                       ; b0d2: 5e00552e
	extu.w	r0                               ; b0d6: 1750
	mov.w	e6,r1                             ; b0d8: 0de1
	mov.b	@(0xbf98:16,er1),r1l              ; b0da: 6e19bf98
	exts.w	r1                               ; b0de: 17d1
	cmp.w	r1,r0                             ; b0e0: 1d10
	beq	loc_b0e8:8                          ; b0e2: 4704
	sub.b	r0l,r0l                           ; b0e4: 1888
	bra	loc_b0f0:8                          ; b0e6: 4008
loc_b0e8:
	inc	r6l                                 ; b0e8: 0a0e
loc_b0ea:
	cmp.b	#0x8,r6l                          ; b0ea: ae08
	bcs	loc_b0cc:8                          ; b0ec: 45de
	mov.b	#0x1,r0l                          ; b0ee: f801
loc_b0f0:
	rts                                     ; b0f0: 5470
