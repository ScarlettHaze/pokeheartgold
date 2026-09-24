	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a682

func_a682:
	mov.l	er0,@-er7                         ; a682: 01006df0
	mov.b	@RSECDR:16,r0l                    ; a686: 6a08f068
	btst	#0x7,r0l                           ; a68a: 7378
	bne	loc_a692:8                          ; a68c: 4604
	mov.b	r0l,@0xf7a4:16                    ; a68e: 6a88f7a4
loc_a692:
	mov.l	@0xf788:16,er0                    ; a692: 01006b00f788
	inc.l	#1,er0                            ; a698: 0b70
	mov.l	er0,@0xf788:16                    ; a69a: 01006b80f788
	mov.w	@0xf7a2:16,r0                     ; a6a0: 6b00f7a2
	inc.w	#1,r0                             ; a6a4: 0b50
	cmp.w	#0xe10,r0                         ; a6a6: 79200e10
	bls	loc_a6b0:8                          ; a6aa: 4304
	mov.w	#0xe10,r0                         ; a6ac: 79000e10
loc_a6b0:
	mov.w	r0,@0xf7a2:16                     ; a6b0: 6b80f7a2
	mov.b	@0xf7af:16,r0l                    ; a6b4: 6a08f7af
	beq	loc_a6c4:8                          ; a6b8: 470a
	mov.b	@0xf7af:16,r0l                    ; a6ba: 6a08f7af
	dec.b	r0l                               ; a6be: 1a08
	mov.b	r0l,@0xf7af:16                    ; a6c0: 6a88f7af
loc_a6c4:
	mov.b	@0xf7b0:16,r0l                    ; a6c4: 6a08f7b0
	beq	loc_a6d4:8                          ; a6c8: 470a
	mov.b	@0xf7b0:16,r0l                    ; a6ca: 6a08f7b0
	dec.b	r0l                               ; a6ce: 1a08
	mov.b	r0l,@0xf7b0:16                    ; a6d0: 6a88f7b0
loc_a6d4:
	mov.w	#0xf067,r0                        ; a6d4: 7900f067
	bclr	#0x2,@er0                          ; a6d8: 7d007220
	mov.l	@er7+,er0                         ; a6dc: 01006d70
	rte                                     ; a6e0: 5670
