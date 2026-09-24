	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_632c

func_632c:
	mov.l	er2,@-er7                         ; 632c: 01006df2
	mov.l	er3,@-er7                         ; 6330: 01006df3
	mov.w	r4,@-er7                          ; 6334: 6df4
	mov.l	er5,@-er7                         ; 6336: 01006df5
	mov.l	er6,@-er7                         ; 633a: 01006df6
	jsr	@func_247e:24                       ; 633e: 5e00247e
	mov.w	#0x38,r0                          ; 6342: 79000038
	jsr	@func_2488:24                       ; 6346: 5e002488
	mov.w	r0,r6                             ; 634a: 0d06
	mov.w	r0,e0                             ; 634c: 0d08
	mov.w	#0x38,r1                          ; 634e: 79010038
	mov.w	#0xf6c0,r0                        ; 6352: 7900f6c0
	jsr	@func_5384:24                       ; 6356: 5e005384
	mov.w	#0xf7ce,r0                        ; 635a: 7900f7ce
	mov.b	@(0x37:16,er6),r6l                ; 635e: 6e6e0037
	bld	#0x0,r6l                            ; 6362: 770e
	bst	#0x1,@er0                           ; 6364: 7d006710
	sub.b	r0l,r0l                           ; 6368: 1888
	mov.b	r0l,@0xf7cf:16                    ; 636a: 6a88f7cf
	mov.b	r0l,@0xf7d0:16                    ; 636e: 6a88f7d0
	bsr	func_6382:8                         ; 6372: 550e
	jsr	@func_67de:24                       ; 6374: 5e0067de
	jsr	@func_6816:24                       ; 6378: 5e006816
	jmp	@loc_266c:24                        ; 637c: 5a00266c
