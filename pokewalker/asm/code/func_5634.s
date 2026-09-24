	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5634

func_5634:
	mov.w	r0,e3                             ; 5634: 0d0b
	mov.b	r1l,r4l                           ; 5636: 0c9c
	mov.b	#0x3,r5h                          ; 5638: f503
	mov.w	#0xf7b5,r2                        ; 563a: 7902f7b5
	bclr	#0x6,@er2                          ; 563e: 7d207260
	mov.w	e3,r2                             ; 5642: 0db2
	mov.b	r2h,r2l                           ; 5644: 0c2a
	sub.b	r2h,r2h                           ; 5646: 1822
	mov.b	r2l,r5l                           ; 5648: 0cad
	jmp	@loc_573a:24                        ; 564a: 5a00573a
loc_564e:
	jsr	@func_4f70:24                       ; 564e: 5e004f70
	mov.b	@SSER:16,r0l                      ; 5652: 6a08f0e3
	and.b	#0x3f,r0l                         ; 5656: e83f
	mov.b	r0l,@SSER:16                      ; 5658: 6a88f0e3
	sub.b	r0l,r0l                           ; 565c: 1888
	mov.b	r0l,@SSSR:16                      ; 565e: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 5662: 6a00f0e3
	or.b	#0xc0,r0h                          ; 5666: c0c0
	mov.b	r0h,@SSER:16                      ; 5668: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 566c: 7fd47220
loc_5670:
	mov.b	@SSSR:16,r0l                      ; 5670: 6a08f0e4
	bld	#0x2,r0l                            ; 5674: 7728
	bcc	loc_5670:8                          ; 5676: 44f8
	mov.b	#0x5,r0l                          ; 5678: f805
	mov.b	r0l,@SSTDR:16                     ; 567a: 6a88f0eb
	jsr	@func_4fa0:24                       ; 567e: 5e004fa0
loc_5682:
	mov.b	@SSSR:16,r0l                      ; 5682: 6a08f0e4
	bld	#0x2,r0l                            ; 5686: 7728
	bcc	loc_5682:8                          ; 5688: 44f8
	mov.b	#0xff,r0l                         ; 568a: f8ff
	mov.b	r0l,@SSTDR:16                     ; 568c: 6a88f0eb
	jsr	@func_4fa0:24                       ; 5690: 5e004fa0
	mov.b	r0l,r3l                           ; 5694: 0c8b
	and.b	#0x1,r3l                          ; 5696: eb01
	cmp.b	#0x1,r3l                          ; 5698: ab01
	beq	loc_5682:8                          ; 569a: 47e6
loc_569c:
	mov.b	@SSSR:16,r0l                      ; 569c: 6a08f0e4
	bld	#0x3,r0l                            ; 56a0: 7738
	bcc	loc_569c:8                          ; 56a2: 44f8
	bset	#0x2,@PDR1:8                       ; 56a4: 7fd47020
	mov.b	@SSER:16,r0l                      ; 56a8: 6a08f0e3
	and.b	#0x3f,r0l                         ; 56ac: e83f
	mov.b	r0l,@SSER:16                      ; 56ae: 6a88f0e3
	sub.b	r0l,r0l                           ; 56b2: 1888
	mov.b	r0l,@SSSR:16                      ; 56b4: 6a88f0e4
	mov.w	#0xf0e3,r1                        ; 56b8: 7901f0e3
	bset	#0x7,@er1                          ; 56bc: 7d107070
	bclr	#0x2,@PDR1:8                       ; 56c0: 7fd47220
loc_56c4:
	mov.b	@SSSR:16,r0l                      ; 56c4: 6a08f0e4
	bld	#0x2,r0l                            ; 56c8: 7728
	bcc	loc_56c4:8                          ; 56ca: 44f8
	mov.b	#0x6,r0l                          ; 56cc: f806
	mov.b	r0l,@SSTDR:16                     ; 56ce: 6a88f0eb
loc_56d2:
	mov.b	@SSSR:16,r0l                      ; 56d2: 6a08f0e4
	bld	#0x3,r0l                            ; 56d6: 7738
	bcc	loc_56d2:8                          ; 56d8: 44f8
	bset	#0x2,@PDR1:8                       ; 56da: 7fd47020
	bclr	#0x2,@PDR1:8                       ; 56de: 7fd47220
loc_56e2:
	mov.b	@SSSR:16,r0l                      ; 56e2: 6a08f0e4
	bld	#0x2,r0l                            ; 56e6: 7728
	bcc	loc_56e2:8                          ; 56e8: 44f8
	mov.b	#0x2,r0l                          ; 56ea: f802
	mov.b	r0l,@SSTDR:16                     ; 56ec: 6a88f0eb
loc_56f0:
	mov.b	@SSSR:16,r0l                      ; 56f0: 6a08f0e4
	bld	#0x2,r0l                            ; 56f4: 7728
	bcc	loc_56f0:8                          ; 56f6: 44f8
	mov.b	r5l,@SSTDR:16                     ; 56f8: 6a8df0eb
	mov.w	e3,r0                             ; 56fc: 0db0
	mov.b	r0l,r3l                           ; 56fe: 0c8b
loc_5700:
	mov.b	@SSSR:16,r0l                      ; 5700: 6a08f0e4
	bld	#0x2,r0l                            ; 5704: 7728
	bcc	loc_5700:8                          ; 5706: 44f8
	mov.b	r3l,@SSTDR:16                     ; 5708: 6a8bf0eb
	mov.b	#0x80,r3l                         ; 570c: fb80
loc_570e:
	mov.b	r4l,r0h                           ; 570e: 0cc0
loc_5710:
	mov.b	@SSSR:16,r0l                      ; 5710: 6a08f0e4
	bld	#0x2,r0l                            ; 5714: 7728
	bcc	loc_5710:8                          ; 5716: 44f8
	mov.b	r0h,@SSTDR:16                     ; 5718: 6a80f0eb
	dec.b	r3l                               ; 571c: 1a0b
	bne	loc_570e:8                          ; 571e: 46ee
loc_5720:
	mov.b	@SSSR:16,r0l                      ; 5720: 6a08f0e4
	bld	#0x3,r0l                            ; 5724: 7738
	bcc	loc_5720:8                          ; 5726: 44f8
	bset	#0x2,@PDR1:8                       ; 5728: 7fd47020
	jsr	@func_4f92:24                       ; 572c: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 5730: 6a08f7b5
	bld	#0x6,r0l                            ; 5734: 7768
	bcc	loc_5740:8                          ; 5736: 4408
	dec.b	r5h                               ; 5738: 1a05
loc_573a:
	mov.b	r5h,r5h                           ; 573a: 0c55
	bne	loc_564e:16                         ; 573c: 5860ff0e
loc_5740:
	rts                                     ; 5740: 5470
