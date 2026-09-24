	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5874

func_5874:
	jsr	@RegSave_er2_er6:24                 ; 5874: 5e00ba42
	mov.w	r0,e5                             ; 5878: 0d0d
	mov.w	e0,r3                             ; 587a: 0d83
	mov.b	#0x3,r5l                          ; 587c: fd03
	mov.w	#0xf7b5,r1                        ; 587e: 7901f7b5
	bclr	#0x6,@er1                          ; 5882: 7d107260
	jmp	@loc_5986:24                        ; 5886: 5a005986
loc_588a:
	jsr	@func_259e:24                       ; 588a: 5e00259e
	mov.w	r3,r4                             ; 588e: 0d34
	mov.w	e5,e6                             ; 5890: 0dde
	jsr	@func_4f70:24                       ; 5892: 5e004f70
	mov.b	@SSER:16,r0l                      ; 5896: 6a08f0e3
	and.b	#0x3f,r0l                         ; 589a: e83f
	mov.b	r0l,@SSER:16                      ; 589c: 6a88f0e3
	sub.b	r0l,r0l                           ; 58a0: 1888
	mov.b	r0l,@SSSR:16                      ; 58a2: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 58a6: 6a00f0e3
	or.b	#0xc0,r0h                          ; 58aa: c0c0
	mov.b	r0h,@SSER:16                      ; 58ac: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 58b0: 7fd47220
loc_58b4:
	mov.b	@SSSR:16,r0l                      ; 58b4: 6a08f0e4
	bld	#0x2,r0l                            ; 58b8: 7728
	bcc	loc_58b4:8                          ; 58ba: 44f8
	mov.b	#0x5,r0l                          ; 58bc: f805
	mov.b	r0l,@SSTDR:16                     ; 58be: 6a88f0eb
	jsr	@func_4fa0:24                       ; 58c2: 5e004fa0
loc_58c6:
	mov.b	@SSSR:16,r0l                      ; 58c6: 6a08f0e4
	bld	#0x2,r0l                            ; 58ca: 7728
	bcc	loc_58c6:8                          ; 58cc: 44f8
	mov.b	#0xff,r0l                         ; 58ce: f8ff
	mov.b	r0l,@SSTDR:16                     ; 58d0: 6a88f0eb
	jsr	@func_4fa0:24                       ; 58d4: 5e004fa0
	mov.b	r0l,r6l                           ; 58d8: 0c8e
	and.b	#0x1,r6l                          ; 58da: ee01
	cmp.b	#0x1,r6l                          ; 58dc: ae01
	beq	loc_58c6:8                          ; 58de: 47e6
loc_58e0:
	mov.b	@SSSR:16,r0l                      ; 58e0: 6a08f0e4
	bld	#0x3,r0l                            ; 58e4: 7738
	bcc	loc_58e0:8                          ; 58e6: 44f8
	bset	#0x2,@PDR1:8                       ; 58e8: 7fd47020
	mov.b	@SSER:16,r0l                      ; 58ec: 6a08f0e3
	and.b	#0x3f,r0l                         ; 58f0: e83f
	mov.b	r0l,@SSER:16                      ; 58f2: 6a88f0e3
	sub.b	r0l,r0l                           ; 58f6: 1888
	mov.b	r0l,@SSSR:16                      ; 58f8: 6a88f0e4
	mov.w	#0xf0e3,r1                        ; 58fc: 7901f0e3
	bset	#0x7,@er1                          ; 5900: 7d107070
	bclr	#0x2,@PDR1:8                       ; 5904: 7fd47220
loc_5908:
	mov.b	@SSSR:16,r0l                      ; 5908: 6a08f0e4
	bld	#0x2,r0l                            ; 590c: 7728
	bcc	loc_5908:8                          ; 590e: 44f8
	mov.b	#0x6,r0l                          ; 5910: f806
	mov.b	r0l,@SSTDR:16                     ; 5912: 6a88f0eb
loc_5916:
	mov.b	@SSSR:16,r0l                      ; 5916: 6a08f0e4
	bld	#0x3,r0l                            ; 591a: 7738
	bcc	loc_5916:8                          ; 591c: 44f8
	bset	#0x2,@PDR1:8                       ; 591e: 7fd47020
	bclr	#0x2,@PDR1:8                       ; 5922: 7fd47220
loc_5926:
	mov.b	@SSSR:16,r0l                      ; 5926: 6a08f0e4
	bld	#0x2,r0l                            ; 592a: 7728
	bcc	loc_5926:8                          ; 592c: 44f8
	mov.b	#0x2,r0l                          ; 592e: f802
	mov.b	r0l,@SSTDR:16                     ; 5930: 6a88f0eb
	mov.w	e6,r0                             ; 5934: 0de0
	mov.b	r0h,r0l                           ; 5936: 0c08
	sub.b	r0h,r0h                           ; 5938: 1800
	mov.b	r0l,r6l                           ; 593a: 0c8e
loc_593c:
	mov.b	@SSSR:16,r0l                      ; 593c: 6a08f0e4
	bld	#0x2,r0l                            ; 5940: 7728
	bcc	loc_593c:8                          ; 5942: 44f8
	mov.b	r6l,@SSTDR:16                     ; 5944: 6a8ef0eb
	mov.w	e6,r0                             ; 5948: 0de0
	mov.b	r0l,r6l                           ; 594a: 0c8e
loc_594c:
	mov.b	@SSSR:16,r0l                      ; 594c: 6a08f0e4
	bld	#0x2,r0l                            ; 5950: 7728
	bcc	loc_594c:8                          ; 5952: 44f8
	mov.b	r6l,@SSTDR:16                     ; 5954: 6a8ef0eb
	mov.b	#0x80,r6l                         ; 5958: fe80
loc_595a:
	mov.b	@er4+,r0h                         ; 595a: 6c40
loc_595c:
	mov.b	@SSSR:16,r0l                      ; 595c: 6a08f0e4
	bld	#0x2,r0l                            ; 5960: 7728
	bcc	loc_595c:8                          ; 5962: 44f8
	mov.b	r0h,@SSTDR:16                     ; 5964: 6a80f0eb
	dec.b	r6l                               ; 5968: 1a0e
	bne	loc_595a:8                          ; 596a: 46ee
loc_596c:
	mov.b	@SSSR:16,r0l                      ; 596c: 6a08f0e4
	bld	#0x3,r0l                            ; 5970: 7738
	bcc	loc_596c:8                          ; 5972: 44f8
	bset	#0x2,@PDR1:8                       ; 5974: 7fd47020
	jsr	@func_4f92:24                       ; 5978: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 597c: 6a08f7b5
	bld	#0x6,r0l                            ; 5980: 7768
	bcc	loc_598c:8                          ; 5982: 4408
	dec.b	r5l                               ; 5984: 1a0d
loc_5986:
	mov.b	r5l,r5l                           ; 5986: 0cdd
	bne	loc_588a:16                         ; 5988: 5860fefe
loc_598c:
	jmp	@RegRestore_er2_er6:24              ; 598c: 5a00ba62
