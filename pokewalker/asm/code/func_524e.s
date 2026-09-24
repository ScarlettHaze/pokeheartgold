	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_524e

func_524e:
	jsr	@RegSave_er2_er6:24                 ; 524e: 5e00ba42
	mov.w	r0,e4                             ; 5252: 0d0c
	mov.w	e0,e3                             ; 5254: 0d8b
	mov.w	r1,e5                             ; 5256: 0d1d
	mov.b	#0x3,r3l                          ; 5258: fb03
	mov.w	#0xf7b5,r2                        ; 525a: 7902f7b5
	bclr	#0x6,@er2                          ; 525e: 7d207260
	jmp	@loc_537a:24                        ; 5262: 5a00537a
loc_5266:
	jsr	@func_259e:24                       ; 5266: 5e00259e
	mov.w	e3,r4                             ; 526a: 0db4
	mov.w	e4,r6                             ; 526c: 0dc6
	mov.w	e5,e6                             ; 526e: 0dde
	jsr	@func_4f70:24                       ; 5270: 5e004f70
	jmp	@loc_5366:24                        ; 5274: 5a005366
loc_5278:
	mov.b	@SSER:16,r0l                      ; 5278: 6a08f0e3
	and.b	#0x3f,r0l                         ; 527c: e83f
	mov.b	r0l,@SSER:16                      ; 527e: 6a88f0e3
	sub.b	r0l,r0l                           ; 5282: 1888
	mov.b	r0l,@SSSR:16                      ; 5284: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 5288: 6a00f0e3
	or.b	#0xc0,r0h                          ; 528c: c0c0
	mov.b	r0h,@SSER:16                      ; 528e: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 5292: 7fd47220
loc_5296:
	mov.b	@SSSR:16,r0l                      ; 5296: 6a08f0e4
	bld	#0x2,r0l                            ; 529a: 7728
	bcc	loc_5296:8                          ; 529c: 44f8
	mov.b	#0x5,r0l                          ; 529e: f805
	mov.b	r0l,@SSTDR:16                     ; 52a0: 6a88f0eb
	jsr	@func_4fa0:24                       ; 52a4: 5e004fa0
loc_52a8:
	mov.b	@SSSR:16,r0l                      ; 52a8: 6a08f0e4
	bld	#0x2,r0l                            ; 52ac: 7728
	bcc	loc_52a8:8                          ; 52ae: 44f8
	mov.b	#0xff,r0l                         ; 52b0: f8ff
	mov.b	r0l,@SSTDR:16                     ; 52b2: 6a88f0eb
	jsr	@func_4fa0:24                       ; 52b6: 5e004fa0
	mov.b	r0l,r5l                           ; 52ba: 0c8d
	and.b	#0x1,r5l                          ; 52bc: ed01
	cmp.b	#0x1,r5l                          ; 52be: ad01
	beq	loc_52a8:8                          ; 52c0: 47e6
loc_52c2:
	mov.b	@SSSR:16,r0l                      ; 52c2: 6a08f0e4
	bld	#0x3,r0l                            ; 52c6: 7738
	bcc	loc_52c2:8                          ; 52c8: 44f8
	bset	#0x2,@PDR1:8                       ; 52ca: 7fd47020
	mov.b	@SSER:16,r0l                      ; 52ce: 6a08f0e3
	and.b	#0x3f,r0l                         ; 52d2: e83f
	mov.b	r0l,@SSER:16                      ; 52d4: 6a88f0e3
	sub.b	r0l,r0l                           ; 52d8: 1888
	mov.b	r0l,@SSSR:16                      ; 52da: 6a88f0e4
	mov.w	#0xf0e3,r1                        ; 52de: 7901f0e3
	bset	#0x7,@er1                          ; 52e2: 7d107070
	bclr	#0x2,@PDR1:8                       ; 52e6: 7fd47220
loc_52ea:
	mov.b	@SSSR:16,r0l                      ; 52ea: 6a08f0e4
	bld	#0x2,r0l                            ; 52ee: 7728
	bcc	loc_52ea:8                          ; 52f0: 44f8
	mov.b	#0x6,r0l                          ; 52f2: f806
	mov.b	r0l,@SSTDR:16                     ; 52f4: 6a88f0eb
loc_52f8:
	mov.b	@SSSR:16,r0l                      ; 52f8: 6a08f0e4
	bld	#0x3,r0l                            ; 52fc: 7738
	bcc	loc_52f8:8                          ; 52fe: 44f8
	bset	#0x2,@PDR1:8                       ; 5300: 7fd47020
	bclr	#0x2,@PDR1:8                       ; 5304: 7fd47220
loc_5308:
	mov.b	@SSSR:16,r0l                      ; 5308: 6a08f0e4
	bld	#0x2,r0l                            ; 530c: 7728
	bcc	loc_5308:8                          ; 530e: 44f8
	mov.b	#0x2,r0l                          ; 5310: f802
	mov.b	r0l,@SSTDR:16                     ; 5312: 6a88f0eb
	mov.b	r6h,r5l                           ; 5316: 0c6d
loc_5318:
	mov.b	@SSSR:16,r0l                      ; 5318: 6a08f0e4
	bld	#0x2,r0l                            ; 531c: 7728
	bcc	loc_5318:8                          ; 531e: 44f8
	mov.b	r5l,@SSTDR:16                     ; 5320: 6a8df0eb
	mov.b	r6l,r5l                           ; 5324: 0ced
loc_5326:
	mov.b	@SSSR:16,r0l                      ; 5326: 6a08f0e4
	bld	#0x2,r0l                            ; 532a: 7728
	bcc	loc_5326:8                          ; 532c: 44f8
	mov.b	r5l,@SSTDR:16                     ; 532e: 6a8df0eb
	sub.b	r5l,r5l                           ; 5332: 18dd
loc_5334:
	mov.b	@er4,r0h                          ; 5334: 6840
loc_5336:
	mov.b	@SSSR:16,r0l                      ; 5336: 6a08f0e4
	bld	#0x2,r0l                            ; 533a: 7728
	bcc	loc_5336:8                          ; 533c: 44f8
	mov.b	r0h,@SSTDR:16                     ; 533e: 6a80f0eb
	inc.w	#1,r4                             ; 5342: 0b54
	inc.w	#1,r6                             ; 5344: 0b56
	dec.w	#1,e6                             ; 5346: 1b5e
	mov.w	r6,r0                             ; 5348: 0d60
	and.w	#0x7f,r0                          ; 534a: 7960007f
	beq	loc_535a:8                          ; 534e: 470a
	mov.w	e6,e6                             ; 5350: 0dee
	beq	loc_535a:8                          ; 5352: 4706
	inc	r5l                                 ; 5354: 0a0d
	cmp.b	#0x80,r5l                         ; 5356: ad80
	bcs	loc_5334:8                          ; 5358: 45da
loc_535a:
	mov.b	@SSSR:16,r0l                      ; 535a: 6a08f0e4
	bld	#0x3,r0l                            ; 535e: 7738
	bcc	loc_535a:8                          ; 5360: 44f8
	bset	#0x2,@PDR1:8                       ; 5362: 7fd47020
loc_5366:
	mov.w	e6,e6                             ; 5366: 0dee
	bne	loc_5278:16                         ; 5368: 5860ff0c
	jsr	@func_4f92:24                       ; 536c: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 5370: 6a08f7b5
	bld	#0x6,r0l                            ; 5374: 7768
	bcc	loc_5380:8                          ; 5376: 4408
	dec.b	r3l                               ; 5378: 1a0b
loc_537a:
	mov.b	r3l,r3l                           ; 537a: 0cbb
	bne	loc_5266:16                         ; 537c: 5860fee6
loc_5380:
	jmp	@RegRestore_er2_er6:24              ; 5380: 5a00ba62
