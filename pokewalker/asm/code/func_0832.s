	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0832

func_0832:
	mov.w	r6,@-er7                          ; 0832: 6df6
	bsr	func_07f2:8                         ; 0834: 55bc
	mov.w	#func_25ac,r6                     ; 0836: 790625ac
	jsr	@er6                                ; 083a: 5d60
	jsr	@er6                                ; 083c: 5d60
	sub.b	r0l,r0l                           ; 083e: 1888
	mov.b	r0l,@PDR3:8                       ; 0840: 38d6
	jsr	@er6                                ; 0842: 5d60
	jsr	@er6                                ; 0844: 5d60
	bset	#0x6,@CKSTPR2:8                    ; 0846: 7ffb7060
	mov.b	@TCRW:16,r0l                      ; 084a: 6a08f0f1
	and.b	#0x8f,r0l                         ; 084e: e88f
	or.b	#0x40,r0l                          ; 0850: c840
	mov.b	r0l,@TCRW:16                      ; 0852: 6a88f0f1
	mov.w	#0xf0f1,r0                        ; 0856: 7900f0f1
	bclr	#0x7,@er0                          ; 085a: 7d007270
	mov.b	#0xf2,r0l                         ; 085e: f8f2
	bclr	#0x0,@er0                          ; 0860: 7d007200
	mov.b	#0xf0,r0l                         ; 0864: f8f0
	bset	#0x7,@er0                          ; 0866: 7d007070
	mov.b	@SSR3:8,r6l                       ; 086a: 2e9c
	and.b	#0xc4,r6l                         ; 086c: eec4
	mov.b	r6l,@SSR3:8                       ; 086e: 3e9c
	bld	#0x6,@SSR3:8                        ; 0870: 7e9c7760
	bcc	loc_087c:8                          ; 0874: 4406
	mov.b	@RDR3:8,r0l                       ; 0876: 289d
	mov.b	r0l,@0xf8cd:16                    ; 0878: 6a88f8cd
loc_087c:
	mov.w	@er7+,r6                          ; 087c: 6d76
	rts                                     ; 087e: 5470
