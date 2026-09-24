	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_552e

func_552e:
	jsr	@RegSave_er2_er6:24                 ; 552e: 5e00ba42
	mov.w	r0,e6                             ; 5532: 0d0e
	mov.b	#0x3,r6h                          ; 5534: f603
	mov.w	#0xf7b5,r1                        ; 5536: 7901f7b5
	bclr	#0x6,@er1                          ; 553a: 7d107260
	mov.w	e6,r5                             ; 553e: 0de5
	mov.b	r5h,r5l                           ; 5540: 0c5d
	sub.b	r5h,r5h                           ; 5542: 1855
	jmp	@loc_5628:24                        ; 5544: 5a005628
loc_5548:
	jsr	@func_259e:24                       ; 5548: 5e00259e
	jsr	@func_4f70:24                       ; 554c: 5e004f70
	mov.b	@SSER:16,r0l                      ; 5550: 6a08f0e3
	and.b	#0x3f,r0l                         ; 5554: e83f
	mov.b	r0l,@SSER:16                      ; 5556: 6a88f0e3
	sub.b	r0l,r0l                           ; 555a: 1888
	mov.b	r0l,@SSSR:16                      ; 555c: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 5560: 6a00f0e3
	or.b	#0xc0,r0h                          ; 5564: c0c0
	mov.b	r0h,@SSER:16                      ; 5566: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 556a: 7fd47220
loc_556e:
	mov.b	@SSSR:16,r0l                      ; 556e: 6a08f0e4
	bld	#0x2,r0l                            ; 5572: 7728
	bcc	loc_556e:8                          ; 5574: 44f8
	mov.b	#0x5,r0l                          ; 5576: f805
	mov.b	r0l,@SSTDR:16                     ; 5578: 6a88f0eb
	jsr	@func_4fa0:24                       ; 557c: 5e004fa0
loc_5580:
	mov.b	@SSSR:16,r0l                      ; 5580: 6a08f0e4
	bld	#0x2,r0l                            ; 5584: 7728
	bcc	loc_5580:8                          ; 5586: 44f8
	mov.b	#0xff,r0l                         ; 5588: f8ff
	mov.b	r0l,@SSTDR:16                     ; 558a: 6a88f0eb
	jsr	@func_4fa0:24                       ; 558e: 5e004fa0
	mov.b	r0l,r6l                           ; 5592: 0c8e
	and.b	#0x1,r6l                          ; 5594: ee01
	cmp.b	#0x1,r6l                          ; 5596: ae01
	beq	loc_5580:8                          ; 5598: 47e6
loc_559a:
	mov.b	@SSSR:16,r0l                      ; 559a: 6a08f0e4
	bld	#0x3,r0l                            ; 559e: 7738
	bcc	loc_559a:8                          ; 55a0: 44f8
	bset	#0x2,@PDR1:8                       ; 55a2: 7fd47020
	mov.b	@SSER:16,r0l                      ; 55a6: 6a08f0e3
	and.b	#0x3f,r0l                         ; 55aa: e83f
	mov.b	r0l,@SSER:16                      ; 55ac: 6a88f0e3
	sub.b	r0l,r0l                           ; 55b0: 1888
	mov.b	r0l,@SSSR:16                      ; 55b2: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 55b6: 6a00f0e3
	or.b	#0xc0,r0h                          ; 55ba: c0c0
	mov.b	r0h,@SSER:16                      ; 55bc: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 55c0: 7fd47220
loc_55c4:
	mov.b	@SSSR:16,r0l                      ; 55c4: 6a08f0e4
	bld	#0x2,r0l                            ; 55c8: 7728
	bcc	loc_55c4:8                          ; 55ca: 44f8
	mov.b	#0x3,r0l                          ; 55cc: f803
	mov.b	r0l,@SSTDR:16                     ; 55ce: 6a88f0eb
	jsr	@func_4fa0:24                       ; 55d2: 5e004fa0
loc_55d6:
	mov.b	@SSSR:16,r0l                      ; 55d6: 6a08f0e4
	bld	#0x2,r0l                            ; 55da: 7728
	bcc	loc_55d6:8                          ; 55dc: 44f8
	mov.b	r5l,@SSTDR:16                     ; 55de: 6a8df0eb
	jsr	@func_4fa0:24                       ; 55e2: 5e004fa0
	mov.w	e6,r0                             ; 55e6: 0de0
	mov.b	r0l,r6l                           ; 55e8: 0c8e
loc_55ea:
	mov.b	@SSSR:16,r0l                      ; 55ea: 6a08f0e4
	bld	#0x2,r0l                            ; 55ee: 7728
	bcc	loc_55ea:8                          ; 55f0: 44f8
	mov.b	r6l,@SSTDR:16                     ; 55f2: 6a8ef0eb
	jsr	@func_4fa0:24                       ; 55f6: 5e004fa0
loc_55fa:
	mov.b	@SSSR:16,r0l                      ; 55fa: 6a08f0e4
	bld	#0x2,r0l                            ; 55fe: 7728
	bcc	loc_55fa:8                          ; 5600: 44f8
	mov.b	#0xff,r0l                         ; 5602: f8ff
	mov.b	r0l,@SSTDR:16                     ; 5604: 6a88f0eb
	jsr	@func_4fa0:24                       ; 5608: 5e004fa0
	mov.b	r0l,r6l                           ; 560c: 0c8e
loc_560e:
	mov.b	@SSSR:16,r0l                      ; 560e: 6a08f0e4
	bld	#0x3,r0l                            ; 5612: 7738
	bcc	loc_560e:8                          ; 5614: 44f8
	bset	#0x2,@PDR1:8                       ; 5616: 7fd47020
	jsr	@func_4f92:24                       ; 561a: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 561e: 6a08f7b5
	bld	#0x6,r0l                            ; 5622: 7768
	bcc	loc_562e:8                          ; 5624: 4408
	dec.b	r6h                               ; 5626: 1a06
loc_5628:
	mov.b	r6h,r6h                           ; 5628: 0c66
	bne	loc_5548:16                         ; 562a: 5860ff1a
loc_562e:
	mov.b	r6l,r0l                           ; 562e: 0ce8
	jmp	@RegRestore_er2_er6:24              ; 5630: 5a00ba62
