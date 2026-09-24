	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a34a

func_a34a:
	mov.l	er2,@-er7                         ; a34a: 01006df2
	mov.w	r3,@-er7                          ; a34e: 6df3
	mov.w	r5,@-er7                          ; a350: 6df5
	mov.l	er6,@-er7                         ; a352: 01006df6
	mov.b	@0xf7b5:16,r0l                    ; a356: 6a08f7b5
	bld	#0x5,r0l                            ; a35a: 7758
	bcs	loc_a388:8                          ; a35c: 452a
	mov.b	@0xf7a7:16,r0l                    ; a35e: 6a08f7a7
	btst	#0x0,r0l                           ; a362: 7308
	beq	loc_a368:8                          ; a364: 4702
	bsr	func_a396:8                         ; a366: 552e
loc_a368:
	mov.b	@0xf7a7:16,r0l                    ; a368: 6a08f7a7
	btst	#0x1,r0l                           ; a36c: 7318
	beq	loc_a372:8                          ; a36e: 4702
	bsr	func_a3aa:8                         ; a370: 5538
loc_a372:
	mov.b	@0xf7a7:16,r0l                    ; a372: 6a08f7a7
	btst	#0x2,r0l                           ; a376: 7328
	beq	loc_a37e:8                          ; a378: 4704
	jsr	@func_a45e:24                       ; a37a: 5e00a45e
loc_a37e:
	mov.b	@0xf7a7:16,r0l                    ; a37e: 6a08f7a7
	and.b	#0xf8,r0l                         ; a382: e8f8
	mov.b	r0l,@0xf7a7:16                    ; a384: 6a88f7a7
loc_a388:
	mov.l	@er7+,er6                         ; a388: 01006d76
	mov.w	@er7+,r5                          ; a38c: 6d75
	mov.w	@er7+,r3                          ; a38e: 6d73
	mov.l	@er7+,er2                         ; a390: 01006d72
	rts                                     ; a394: 5470
