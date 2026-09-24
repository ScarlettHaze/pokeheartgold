	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5384

func_5384:
	jsr	@RegSave_er2_er6:24                 ; 5384: 5e00ba42
	mov.w	r0,e4                             ; 5388: 0d0c
	mov.w	e0,r3                             ; 538a: 0d83
	mov.w	r1,r4                             ; 538c: 0d14
	mov.b	#0x3,r5h                          ; 538e: f503
	mov.w	#0xf7b5,r2                        ; 5390: 7902f7b5
	bclr	#0x6,@er2                          ; 5394: 7d207260
	jmp	@loc_5524:24                        ; 5398: 5a005524
loc_539c:
	jsr	@func_259e:24                       ; 539c: 5e00259e
	mov.w	r3,r6                             ; 53a0: 0d36
	mov.w	e4,e6                             ; 53a2: 0dce
	mov.w	r4,e5                             ; 53a4: 0d4d
	jsr	@func_4f70:24                       ; 53a6: 5e004f70
	mov.b	@SSER:16,r0l                      ; 53aa: 6a08f0e3
	and.b	#0x3f,r0l                         ; 53ae: e83f
	mov.b	r0l,@SSER:16                      ; 53b0: 6a88f0e3
	sub.b	r0l,r0l                           ; 53b4: 1888
	mov.b	r0l,@SSSR:16                      ; 53b6: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 53ba: 6a00f0e3
	or.b	#0xc0,r0h                          ; 53be: c0c0
	mov.b	r0h,@SSER:16                      ; 53c0: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 53c4: 7fd47220
loc_53c8:
	mov.b	@SSSR:16,r0l                      ; 53c8: 6a08f0e4
	bld	#0x2,r0l                            ; 53cc: 7728
	bcc	loc_53c8:8                          ; 53ce: 44f8
	mov.b	#0x5,r0l                          ; 53d0: f805
	mov.b	r0l,@SSTDR:16                     ; 53d2: 6a88f0eb
	jsr	@func_4fa0:24                       ; 53d6: 5e004fa0
loc_53da:
	mov.b	@SSSR:16,r0l                      ; 53da: 6a08f0e4
	bld	#0x2,r0l                            ; 53de: 7728
	bcc	loc_53da:8                          ; 53e0: 44f8
	mov.b	#0xff,r0l                         ; 53e2: f8ff
	mov.b	r0l,@SSTDR:16                     ; 53e4: 6a88f0eb
	jsr	@func_4fa0:24                       ; 53e8: 5e004fa0
	mov.b	r0l,r5l                           ; 53ec: 0c8d
	and.b	#0x1,r5l                          ; 53ee: ed01
	cmp.b	#0x1,r5l                          ; 53f0: ad01
	beq	loc_53da:8                          ; 53f2: 47e6
loc_53f4:
	mov.b	@SSSR:16,r0l                      ; 53f4: 6a08f0e4
	bld	#0x3,r0l                            ; 53f8: 7738
	bcc	loc_53f4:8                          ; 53fa: 44f8
	bset	#0x2,@PDR1:8                       ; 53fc: 7fd47020
	mov.b	@SSER:16,r0l                      ; 5400: 6a08f0e3
	and.b	#0x3f,r0l                         ; 5404: e83f
	mov.b	r0l,@SSER:16                      ; 5406: 6a88f0e3
	sub.b	r0l,r0l                           ; 540a: 1888
	mov.b	r0l,@SSSR:16                      ; 540c: 6a88f0e4
	mov.b	@SSER:16,r0h                      ; 5410: 6a00f0e3
	or.b	#0xc0,r0h                          ; 5414: c0c0
	mov.b	r0h,@SSER:16                      ; 5416: 6a80f0e3
	bclr	#0x2,@PDR1:8                       ; 541a: 7fd47220
loc_541e:
	mov.b	@SSSR:16,r0l                      ; 541e: 6a08f0e4
	bld	#0x2,r0l                            ; 5422: 7728
	bcc	loc_541e:8                          ; 5424: 44f8
	mov.b	#0x3,r0l                          ; 5426: f803
	mov.b	r0l,@SSTDR:16                     ; 5428: 6a88f0eb
loc_542c:
	mov.b	@SSSR:16,r0l                      ; 542c: 6a08f0e4
	bld	#0x6,r0l                            ; 5430: 7768
	bcc	loc_5446:8                          ; 5432: 4412
	mov.w	#0xf0e4,r0                        ; 5434: 7900f0e4
	bclr	#0x6,@er0                          ; 5438: 7d007260
	mov.w	#0xf7b5,r0                        ; 543c: 7900f7b5
	bset	#0x6,@er0                          ; 5440: 7d007060
	bra	loc_544e:8                          ; 5444: 4008
loc_5446:
	mov.b	@SSSR:16,r0l                      ; 5446: 6a08f0e4
	bld	#0x1,r0l                            ; 544a: 7718
	bcc	loc_542c:8                          ; 544c: 44de
loc_544e:
	mov.b	@SSRDR:16,r0l                     ; 544e: 6a08f0e9
	mov.b	r0l,@er6                          ; 5452: 68e8
	mov.w	e6,r0                             ; 5454: 0de0
	mov.b	r0h,r0l                           ; 5456: 0c08
	sub.b	r0h,r0h                           ; 5458: 1800
	mov.b	r0l,r5l                           ; 545a: 0c8d
loc_545c:
	mov.b	@SSSR:16,r0l                      ; 545c: 6a08f0e4
	bld	#0x2,r0l                            ; 5460: 7728
	bcc	loc_545c:8                          ; 5462: 44f8
	mov.b	r5l,@SSTDR:16                     ; 5464: 6a8df0eb
loc_5468:
	mov.b	@SSSR:16,r0l                      ; 5468: 6a08f0e4
	bld	#0x6,r0l                            ; 546c: 7768
	bcc	loc_5482:8                          ; 546e: 4412
	mov.w	#0xf0e4,r0                        ; 5470: 7900f0e4
	bclr	#0x6,@er0                          ; 5474: 7d007260
	mov.w	#0xf7b5,r0                        ; 5478: 7900f7b5
	bset	#0x6,@er0                          ; 547c: 7d007060
	bra	loc_548a:8                          ; 5480: 4008
loc_5482:
	mov.b	@SSSR:16,r0l                      ; 5482: 6a08f0e4
	bld	#0x1,r0l                            ; 5486: 7718
	bcc	loc_5468:8                          ; 5488: 44de
loc_548a:
	mov.b	@SSRDR:16,r0l                     ; 548a: 6a08f0e9
	mov.b	r0l,@er6                          ; 548e: 68e8
	mov.w	e6,r0                             ; 5490: 0de0
	mov.b	r0l,r5l                           ; 5492: 0c8d
loc_5494:
	mov.b	@SSSR:16,r0l                      ; 5494: 6a08f0e4
	bld	#0x2,r0l                            ; 5498: 7728
	bcc	loc_5494:8                          ; 549a: 44f8
	mov.b	r5l,@SSTDR:16                     ; 549c: 6a8df0eb
loc_54a0:
	mov.b	@SSSR:16,r0l                      ; 54a0: 6a08f0e4
	bld	#0x6,r0l                            ; 54a4: 7768
	bcc	loc_54ba:8                          ; 54a6: 4412
	mov.w	#0xf0e4,r0                        ; 54a8: 7900f0e4
	bclr	#0x6,@er0                          ; 54ac: 7d007260
	mov.w	#0xf7b5,r0                        ; 54b0: 7900f7b5
	bset	#0x6,@er0                          ; 54b4: 7d007060
	bra	loc_54c2:8                          ; 54b8: 4008
loc_54ba:
	mov.b	@SSSR:16,r0l                      ; 54ba: 6a08f0e4
	bld	#0x1,r0l                            ; 54be: 7718
	bcc	loc_54a0:8                          ; 54c0: 44de
loc_54c2:
	mov.b	@SSRDR:16,r0l                     ; 54c2: 6a08f0e9
	mov.b	r0l,@er6                          ; 54c6: 68e8
	bra	loc_5506:8                          ; 54c8: 403c
loc_54ca:
	mov.b	@SSSR:16,r0l                      ; 54ca: 6a08f0e4
	bld	#0x2,r0l                            ; 54ce: 7728
	bcc	loc_54ca:8                          ; 54d0: 44f8
	mov.b	#0xff,r0l                         ; 54d2: f8ff
	mov.b	r0l,@SSTDR:16                     ; 54d4: 6a88f0eb
loc_54d8:
	mov.b	@SSSR:16,r0l                      ; 54d8: 6a08f0e4
	bld	#0x6,r0l                            ; 54dc: 7768
	bcc	loc_54f2:8                          ; 54de: 4412
	mov.w	#0xf0e4,r0                        ; 54e0: 7900f0e4
	bclr	#0x6,@er0                          ; 54e4: 7d007260
	mov.w	#0xf7b5,r0                        ; 54e8: 7900f7b5
	bset	#0x6,@er0                          ; 54ec: 7d007060
	bra	loc_54fa:8                          ; 54f0: 4008
loc_54f2:
	mov.b	@SSSR:16,r0l                      ; 54f2: 6a08f0e4
	bld	#0x1,r0l                            ; 54f6: 7718
	bcc	loc_54d8:8                          ; 54f8: 44de
loc_54fa:
	mov.b	@SSRDR:16,r0l                     ; 54fa: 6a08f0e9
	mov.b	r0l,@er6                          ; 54fe: 68e8
	inc.w	#1,r6                             ; 5500: 0b56
	inc.w	#1,e6                             ; 5502: 0b5e
	dec.w	#1,e5                             ; 5504: 1b5d
loc_5506:
	mov.w	e5,e5                             ; 5506: 0ddd
	bne	loc_54ca:8                          ; 5508: 46c0
loc_550a:
	mov.b	@SSSR:16,r0l                      ; 550a: 6a08f0e4
	bld	#0x3,r0l                            ; 550e: 7738
	bcc	loc_550a:8                          ; 5510: 44f8
	bset	#0x2,@PDR1:8                       ; 5512: 7fd47020
	jsr	@func_4f92:24                       ; 5516: 5e004f92
	mov.b	@0xf7b5:16,r0l                    ; 551a: 6a08f7b5
	bld	#0x6,r0l                            ; 551e: 7768
	bcc	loc_552a:8                          ; 5520: 4408
	dec.b	r5h                               ; 5522: 1a05
loc_5524:
	mov.b	r5h,r5h                           ; 5524: 0c55
	bne	loc_539c:16                         ; 5526: 5860fe72
loc_552a:
	jmp	@RegRestore_er2_er6:24              ; 552a: 5a00ba62
