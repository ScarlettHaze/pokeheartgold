	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5742

func_5742:
	jsr	@RegSave_er2_er6:24                 ; 5742: 5e00ba42
	mov.w	r0,e4                             ; 5746: 0d0c
	mov.w	e0,e5                             ; 5748: 0d8d
	mov.b	r1l,r4h                           ; 574a: 0c94
	mov.b	#0x3,r4l                          ; 574c: fc03
	mov.w	#0xf7b5,r2                        ; 574e: 7902f7b5
	bclr	#0x6,@er2                          ; 5752: 7d207260
	jmp	@loc_586a:24                        ; 5756: 5a00586a
loc_575a:
	jsr	@func_259e:24                       ; 575a: 5e00259e
	mov.w	e4,r6                             ; 575e: 0dc6
	mov.w	e5,e6                             ; 5760: 0dde
	jsr	@func_4f70:24                       ; 5762: 5e004f70
	jmp	@loc_5856:24                        ; 5766: 5a005856
loc_576a:
	mov.b	@SSER:16,r0l                      ; 576a: 6a08f0e3
	and.b	#0x3f,r0l                         ; 576e: e83f
	mov.b	r0l,@SSER:16                      ; 5770: 6a88f0e3
	sub.b	r0l,r0l                           ; 5774: 1888
	mov.b	r0l,@SSSR:16                      ; 5776: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 577a: 6a00f0e3
	or.b	#0xc0,r0h                          ; 577e: c0c0
	mov.b	r0h,@SSER:16                      ; 5780: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 5784: 7fd47220
loc_5788:
	mov.b	@SSSR:16,r0l                      ; 5788: 6a08f0e4
	bld	#0x2,r0l                            ; 578c: 7728
	bcc	loc_5788:8                          ; 578e: 44f8
	mov.b	#0x5,r0l                          ; 5790: f805
	mov.b	r0l,@SSTDR:16                     ; 5792: 6a88f0eb
	jsr	@func_4fa0:24                       ; 5796: 5e004fa0
loc_579a:
	mov.b	@SSSR:16,r0l                      ; 579a: 6a08f0e4
	bld	#0x2,r0l                            ; 579e: 7728
	bcc	loc_579a:8                          ; 57a0: 44f8
	mov.b	#0xff,r0l                         ; 57a2: f8ff
	mov.b	r0l,@SSTDR:16                     ; 57a4: 6a88f0eb
	jsr	@func_4fa0:24                       ; 57a8: 5e004fa0
	mov.b	r0l,r5l                           ; 57ac: 0c8d
	and.b	#0x1,r5l                          ; 57ae: ed01
	cmp.b	#0x1,r5l                          ; 57b0: ad01
	beq	loc_579a:8                          ; 57b2: 47e6
loc_57b4:
	mov.b	@SSSR:16,r0l                      ; 57b4: 6a08f0e4
	bld	#0x3,r0l                            ; 57b8: 7738
	bcc	loc_57b4:8                          ; 57ba: 44f8
	bset	#0x2,@PDR1:8                       ; 57bc: 7fd47020
	mov.b	@SSER:16,r0l                      ; 57c0: 6a08f0e3
	and.b	#0x3f,r0l                         ; 57c4: e83f
	mov.b	r0l,@SSER:16                      ; 57c6: 6a88f0e3
	sub.b	r0l,r0l                           ; 57ca: 1888
	mov.b	r0l,@SSSR:16                      ; 57cc: 6a88f0e4
	mov.w	#0xf0e3,r1                        ; 57d0: 7901f0e3
	bset	#0x7,@er1                          ; 57d4: 7d107070
	bclr	#0x2,@PDR1:8                       ; 57d8: 7fd47220
loc_57dc:
	mov.b	@SSSR:16,r0l                      ; 57dc: 6a08f0e4
	bld	#0x2,r0l                            ; 57e0: 7728
	bcc	loc_57dc:8                          ; 57e2: 44f8
	mov.b	#0x6,r0l                          ; 57e4: f806
	mov.b	r0l,@SSTDR:16                     ; 57e6: 6a88f0eb
loc_57ea:
	mov.b	@SSSR:16,r0l                      ; 57ea: 6a08f0e4
	bld	#0x3,r0l                            ; 57ee: 7738
	bcc	loc_57ea:8                          ; 57f0: 44f8
	bset	#0x2,@PDR1:8                       ; 57f2: 7fd47020
	bclr	#0x2,@PDR1:8                       ; 57f6: 7fd47220
loc_57fa:
	mov.b	@SSSR:16,r0l                      ; 57fa: 6a08f0e4
	bld	#0x2,r0l                            ; 57fe: 7728
	bcc	loc_57fa:8                          ; 5800: 44f8
	mov.b	#0x2,r0l                          ; 5802: f802
	mov.b	r0l,@SSTDR:16                     ; 5804: 6a88f0eb
	mov.b	r6h,r5l                           ; 5808: 0c6d
loc_580a:
	mov.b	@SSSR:16,r0l                      ; 580a: 6a08f0e4
	bld	#0x2,r0l                            ; 580e: 7728
	bcc	loc_580a:8                          ; 5810: 44f8
	mov.b	r5l,@SSTDR:16                     ; 5812: 6a8df0eb
	mov.b	r6l,r5l                           ; 5816: 0ced
loc_5818:
	mov.b	@SSSR:16,r0l                      ; 5818: 6a08f0e4
	bld	#0x2,r0l                            ; 581c: 7728
	bcc	loc_5818:8                          ; 581e: 44f8
	mov.b	r5l,@SSTDR:16                     ; 5820: 6a8df0eb
	sub.b	r5l,r5l                           ; 5824: 18dd
loc_5826:
	mov.b	r4h,r0h                           ; 5826: 0c40
loc_5828:
	mov.b	@SSSR:16,r0l                      ; 5828: 6a08f0e4
	bld	#0x2,r0l                            ; 582c: 7728
	bcc	loc_5828:8                          ; 582e: 44f8
	mov.b	r0h,@SSTDR:16                     ; 5830: 6a80f0eb
	inc.w	#1,r6                             ; 5834: 0b56
	dec.w	#1,e6                             ; 5836: 1b5e
	mov.w	r6,r0                             ; 5838: 0d60
	and.w	#0x7f,r0                          ; 583a: 7960007f
	beq	loc_584a:8                          ; 583e: 470a
	mov.w	e6,e6                             ; 5840: 0dee
	beq	loc_584a:8                          ; 5842: 4706
	inc	r5l                                 ; 5844: 0a0d
	cmp.b	#0x80,r5l                         ; 5846: ad80
	bcs	loc_5826:8                          ; 5848: 45dc
loc_584a:
	mov.b	@SSSR:16,r0l                      ; 584a: 6a08f0e4
	bld	#0x3,r0l                            ; 584e: 7738
	bcc	loc_584a:8                          ; 5850: 44f8
	bset	#0x2,@PDR1:8                       ; 5852: 7fd47020
loc_5856:
	mov.w	e6,e6                             ; 5856: 0dee
	bne	loc_576a:16                         ; 5858: 5860ff0e
	jsr	@func_4f92:24                       ; 585c: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 5860: 6a08f7b5
	bld	#0x6,r0l                            ; 5864: 7768
	bcc	loc_5870:8                          ; 5866: 4408
	dec.b	r4l                               ; 5868: 1a0c
loc_586a:
	mov.b	r4l,r4l                           ; 586a: 0ccc
	bne	loc_575a:16                         ; 586c: 5860feea
loc_5870:
	jmp	@RegRestore_er2_er6:24              ; 5870: 5a00ba62
