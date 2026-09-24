	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a3aa

func_a3aa:
	subs	#2,er7                             ; a3aa: 1b87
	mov.w	#0xf7b5,r0                        ; a3ac: 7900f7b5
	bset	#0x2,@er0                          ; a3b0: 7d007020
	mov.l	@0xf780:16,er0                    ; a3b4: 01006b00f780
	cmp.l	#0x98967f,er0                     ; a3ba: 7a200098967f
	bcc	loc_a3de:8                          ; a3c0: 441c
	mov.l	@0xf784:16,er0                    ; a3c2: 01006b00f784
	cmp.l	#0x98967f,er0                     ; a3c8: 7a200098967f
	bcc	loc_a3de:8                          ; a3ce: 440e
	mov.l	@0xf784:16,er0                    ; a3d0: 01006b00f784
	inc.l	#1,er0                            ; a3d6: 0b70
	mov.l	er0,@0xf784:16                    ; a3d8: 01006b80f784
loc_a3de:
	mov.w	#0x18,e1                          ; a3de: 79090018
	mov.w	#0xf780,r1                        ; a3e2: 7901f780
	mov.l	#0x2560156,er0                    ; a3e6: 7a0002560156
	jsr	@func_50d8:24                       ; a3ec: 5e0050d8
	mov.b	@0xf7b6:16,r0l                    ; a3f0: 6a08f7b6
	bld	#0x2,r0l                            ; a3f4: 7728
	bcc	loc_a440:8                          ; a3f6: 4448
	jsr	@func_247e:24                       ; a3f8: 5e00247e
	mov.w	#0xbe,r0                          ; a3fc: 790000be
	jsr	@func_2488:24                       ; a400: 5e002488
	mov.w	r0,r6                             ; a404: 0d06
	mov.w	r0,e0                             ; a406: 0d08
	mov.w	#0xbe,r1                          ; a408: 790100be
	mov.w	#0x8f00,r0                        ; a40c: 79008f00
	jsr	@func_5384:24                       ; a410: 5e005384
	sub.b	r0l,r0l                           ; a414: 1888
	mov.w	r0,@-er7                          ; a416: 6df0
	sub.b	r1h,r1h                           ; a418: 1811
	mov.b	@0xf797:16,r0l                    ; a41a: 6a08f797
	bld	#0x0,r0l                            ; a41e: 7708
	bst	#0x0,r1h                            ; a420: 6701
	mov.w	#0x88,r0                          ; a422: 79000088
	mov.w	r1,@(0x2:16,er7)                  ; a426: 6ff10002
	jsr	@func_2488:24                       ; a42a: 5e002488
	mov.w	r0,e0                             ; a42e: 0d08
	mov.w	r6,r0                             ; a430: 0d60
	sub.w	e1,e1                             ; a432: 1999
	mov.b	@(0x2:16,er7),r1h                 ; a434: 6e710002
	mov.b	#0x1b,r1l                         ; a438: f91b
	jsr	@func_4546:24                       ; a43a: 5e004546
	adds	#2,er7                             ; a43e: 0b87
loc_a440:
	sub.w	r0,r0                             ; a440: 1900
	mov.w	r0,@0xf7a0:16                     ; a442: 6b80f7a0
	mov.b	@0xf7a8:16,r0l                    ; a446: 6a08f7a8
	mov.b	@0xf7a6:16,r0h                    ; a44a: 6a00f7a6
	cmp.b	r0h,r0l                           ; a44e: 1c08
	bne	loc_a45a:8                          ; a450: 4608
	mov.w	#0xf7a7,r0                        ; a452: 7900f7a7
	bset	#0x2,@er0                          ; a456: 7d007020
loc_a45a:
	adds	#2,er7                             ; a45a: 0b87
	rts                                     ; a45c: 5470
