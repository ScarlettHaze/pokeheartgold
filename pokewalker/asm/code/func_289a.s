	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_289a

func_289a:
	mov.l	er3,@-er7                         ; 289a: 01006df3
	mov.w	r5,@-er7                          ; 289e: 6df5
	mov.l	er6,@-er7                         ; 28a0: 01006df6
	subs	#2,er7                             ; 28a4: 1b87
	mov.w	r0,r6                             ; 28a6: 0d06
	mov.w	r7,r1                             ; 28a8: 0d71
	mov.w	#0x2,e1                           ; 28aa: 79090002
	mov.l	#0x1800080,er0                    ; 28ae: 7a0001800080
	jsr	@func_5128:24                       ; 28b4: 5e005128
	mov.w	@er7,r0                           ; 28b8: 6970
	jsr	@func_27ec:24                       ; 28ba: 5e0027ec
	mov.b	r0l,r0l                           ; 28be: 0c88
	bne	loc_28d6:8                          ; 28c0: 4614
	sub.w	r0,r0                             ; 28c2: 1900
	mov.w	r0,@er7                           ; 28c4: 69f0
	mov.w	r7,r1                             ; 28c6: 0d71
	mov.w	#0x2,e1                           ; 28c8: 79090002
	mov.l	#0x1800080,er0                    ; 28cc: 7a0001800080
	jsr	@func_50d8:24                       ; 28d2: 5e0050d8
loc_28d6:
	mov.w	@er7,r0                           ; 28d6: 6970
	and.w	#0xfff,r0                         ; 28d8: 79600fff
	mov.w	r0,@er7                           ; 28dc: 69f0
	mov.w	@er7,r0                           ; 28de: 6970
	mulxu.w	r6,er0                          ; 28e0: 5260
	extu.l	er0                              ; 28e2: 1770
	mov.w	#0x14,r1                          ; 28e4: 79010014
	divxu.w	r1,er0                          ; 28e8: 5310
	mov.w	r0,@er7                           ; 28ea: 69f0
	jsr	@func_281e:24                       ; 28ec: 5e00281e
	mov.w	@er7,e0                           ; 28f0: 6978
	cmp.w	e0,r0                             ; 28f2: 1d80
	bhi	loc_28fa:8                          ; 28f4: 4204
	mov.b	#0x1,r0l                          ; 28f6: f801
	bra	loc_28fc:8                          ; 28f8: 4002
loc_28fa:
	sub.b	r0l,r0l                           ; 28fa: 1888
loc_28fc:
	adds	#2,er7                             ; 28fc: 0b87
	mov.l	@er7+,er6                         ; 28fe: 01006d76
	mov.w	@er7+,r5                          ; 2902: 6d75
	mov.l	@er7+,er3                         ; 2904: 01006d73
	rts                                     ; 2908: 5470
