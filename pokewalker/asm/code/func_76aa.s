	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_76aa

func_76aa:
	mov.w	r4,@-er7                          ; 76aa: 6df4
	mov.w	r5,@-er7                          ; 76ac: 6df5
	mov.w	r6,@-er7                          ; 76ae: 6df6
	sub.w	#0x6,r7                           ; 76b0: 79370006
	mov.w	r7,r5                             ; 76b4: 0d75
	mov.b	#0x87,r0l                         ; 76b6: f887
	mov.b	r0l,@SSMR:16                      ; 76b8: 6a88f0e2
	bclr	#0x0,@PDR9:8                       ; 76bc: 7fdc7200
loc_76c0:
	mov.b	@SSSR:16,r0l                      ; 76c0: 6a08f0e4
	bld	#0x2,r0l                            ; 76c4: 7728
	bcc	loc_76c0:8                          ; 76c6: 44f8
	mov.b	#0xa,r0l                          ; 76c8: f80a
	mov.b	r0l,@SSTDR:16                     ; 76ca: 6a88f0eb
loc_76ce:
	mov.b	@SSSR:16,r0l                      ; 76ce: 6a08f0e4
	bld	#0x3,r0l                            ; 76d2: 7738
	bcc	loc_76ce:8                          ; 76d4: 44f8
	sub.b	r0l,r0l                           ; 76d6: 1888
	mov.b	r0l,@SSTDR:16                     ; 76d8: 6a88f0eb
	mov.b	#0x5e,r0h                         ; 76dc: f05e
	mov.b	r0h,@TCSRWD1:8                    ; 76de: 30b1
	mov.b	r0l,@TCWD:8                       ; 76e0: 38b3
	mov.b	#0x9e,r0h                         ; 76e2: f09e
	mov.b	r0h,@TCSRWD1:8                    ; 76e4: 30b1
	mov.b	#0xa7,r0h                         ; 76e6: f0a7
	mov.b	r0h,@SYSCR1:8                     ; 76e8: 30f0
	mov.b	#0xeb,r0h                         ; 76ea: f0eb
	mov.b	r0h,@SYSCR2:8                     ; 76ec: 30f1
	mov.w	#0xf7b5,r1                        ; 76ee: 7901f7b5
	bset	#0x4,@er1                          ; 76f2: 7d107040
	bset	#0x0,@PDR9:8                       ; 76f6: 7fdc7000
	mov.b	#0x86,r0h                         ; 76fa: f086
	mov.b	r0h,@SSMR:16                      ; 76fc: 6a80f0e2
	sleep                                   ; 7700: 0180
	mov.b	#0x6,r0h                          ; 7702: f006
	mov.w	r5,e0                             ; 7704: 0d58
	mov.b	#0x2,r0l                          ; 7706: f802
	jsr	@func_26a0:24                       ; 7708: 5e0026a0
	bclr	#0x0,@PDR9:8                       ; 770c: 7fdc7200
loc_7710:
	mov.b	@SSSR:16,r0l                      ; 7710: 6a08f0e4
	bld	#0x2,r0l                            ; 7714: 7728
	bcc	loc_7710:8                          ; 7716: 44f8
	mov.b	#0xa,r0l                          ; 7718: f80a
	mov.b	r0l,@SSTDR:16                     ; 771a: 6a88f0eb
loc_771e:
	mov.b	@SSSR:16,r0l                      ; 771e: 6a08f0e4
	bld	#0x2,r0l                            ; 7722: 7728
	bcc	loc_771e:8                          ; 7724: 44f8
	mov.b	#0x1,r0l                          ; 7726: f801
	mov.b	r0l,@SSTDR:16                     ; 7728: 6a88f0eb
loc_772c:
	mov.b	@SSSR:16,r0l                      ; 772c: 6a08f0e4
	bld	#0x3,r0l                            ; 7730: 7738
	bcc	loc_772c:8                          ; 7732: 44f8
	bset	#0x0,@PDR9:8                       ; 7734: 7fdc7000
	mov.b	@0xf7ae:16,r0l                    ; 7738: 6a08f7ae
	extu.w	r0                               ; 773c: 1750
	mov.b	@(0x1:16,er5),r1l                 ; 773e: 6e590001
	mov.b	r1l,@(0xf826:16,er0)              ; 7742: 6e89f826
	mov.b	@0xf7ae:16,r0l                    ; 7746: 6a08f7ae
	extu.w	r0                               ; 774a: 1750
	mov.b	@(0x3:16,er5),r1l                 ; 774c: 6e590003
	mov.b	r1l,@(0xf866:16,er0)              ; 7750: 6e89f866
	mov.b	@0xf7ae:16,r0l                    ; 7754: 6a08f7ae
	extu.w	r0                               ; 7758: 1750
	mov.b	@(0x5:16,er5),r1l                 ; 775a: 6e590005
	mov.b	r1l,@(0xf8a6:16,er0)              ; 775e: 6e89f8a6
	mov.b	@0xf7b1:16,r0l                    ; 7762: 6a08f7b1
	cmp.b	#0x17,r0l                         ; 7766: a817
	bne	loc_7876:16                         ; 7768: 5860010a
	mov.b	@0xf7ae:16,r4l                    ; 776c: 6a0cf7ae
	add.b	#0x3f,r4l                         ; 7770: 8c3f
	and.b	#0x3f,r4l                         ; 7772: ec3f
	mov.b	@0xf7ae:16,r0l                    ; 7774: 6a08f7ae
	bne	loc_7788:8                          ; 7778: 460e
	sub.w	r0,r0                             ; 777a: 1900
	mov.w	r0,@0xf7d2:16                     ; 777c: 6b80f7d2
	mov.w	r0,@0xf7d4:16                     ; 7780: 6b80f7d4
	mov.w	r0,@0xf7d6:16                     ; 7784: 6b80f7d6
loc_7788:
	mov.b	@0xf7ae:16,r0l                    ; 7788: 6a08f7ae
	extu.w	r0                               ; 778c: 1750
	mov.b	@(0xf826:16,er0),r0l              ; 778e: 6e08f826
	exts.w	r0                               ; 7792: 17d0
	extu.w	r4                               ; 7794: 1754
	mov.w	r4,r6                             ; 7796: 0d46
	mov.b	@(0xf826:16,er4),r4l              ; 7798: 6e4cf826
	exts.w	r4                               ; 779c: 17d4
	sub.w	r4,r0                             ; 779e: 1940
	mov.w	r0,r0                             ; 77a0: 0d00
	blt	loc_77ba:8                          ; 77a2: 4d16
	mov.b	@0xf7ae:16,r0l                    ; 77a4: 6a08f7ae
	extu.w	r0                               ; 77a8: 1750
	mov.b	@(0xf826:16,er0),r0l              ; 77aa: 6e08f826
	exts.w	r0                               ; 77ae: 17d0
	mov.b	@(0xf826:16,er6),r1l              ; 77b0: 6e69f826
	exts.w	r1                               ; 77b4: 17d1
	sub.w	r1,r0                             ; 77b6: 1910
	bra	loc_77d0:8                          ; 77b8: 4016
loc_77ba:
	mov.b	@0xf7ae:16,r0l                    ; 77ba: 6a08f7ae
	extu.w	r0                               ; 77be: 1750
	mov.b	@(0xf826:16,er0),r0l              ; 77c0: 6e08f826
	exts.w	r0                               ; 77c4: 17d0
	neg.w	r0                                ; 77c6: 1790
	mov.b	@(0xf826:16,er6),r1l              ; 77c8: 6e69f826
	exts.w	r1                               ; 77cc: 17d1
	add.w	r1,r0                             ; 77ce: 0910
loc_77d0:
	mov.w	@0xf7d2:16,e0                     ; 77d0: 6b08f7d2
	add.w	r0,e0                             ; 77d4: 0908
	mov.w	e0,@0xf7d2:16                     ; 77d6: 6b88f7d2
	mov.b	@0xf7ae:16,r0l                    ; 77da: 6a08f7ae
	extu.w	r0                               ; 77de: 1750
	mov.b	@(0xf866:16,er0),r0l              ; 77e0: 6e08f866
	exts.w	r0                               ; 77e4: 17d0
	mov.b	@(0xf866:16,er6),r1l              ; 77e6: 6e69f866
	exts.w	r1                               ; 77ea: 17d1
	sub.w	r1,r0                             ; 77ec: 1910
	mov.w	r0,r0                             ; 77ee: 0d00
	blt	loc_7808:8                          ; 77f0: 4d16
	mov.b	@0xf7ae:16,r0l                    ; 77f2: 6a08f7ae
	extu.w	r0                               ; 77f6: 1750
	mov.b	@(0xf866:16,er0),r0l              ; 77f8: 6e08f866
	exts.w	r0                               ; 77fc: 17d0
	mov.b	@(0xf866:16,er6),r1l              ; 77fe: 6e69f866
	exts.w	r1                               ; 7802: 17d1
	sub.w	r1,r0                             ; 7804: 1910
	bra	loc_781e:8                          ; 7806: 4016
loc_7808:
	mov.b	@0xf7ae:16,r0l                    ; 7808: 6a08f7ae
	extu.w	r0                               ; 780c: 1750
	mov.b	@(0xf866:16,er0),r0l              ; 780e: 6e08f866
	exts.w	r0                               ; 7812: 17d0
	neg.w	r0                                ; 7814: 1790
	mov.b	@(0xf866:16,er6),r1l              ; 7816: 6e69f866
	exts.w	r1                               ; 781a: 17d1
	add.w	r1,r0                             ; 781c: 0910
loc_781e:
	mov.w	@0xf7d4:16,e0                     ; 781e: 6b08f7d4
	add.w	r0,e0                             ; 7822: 0908
	mov.w	e0,@0xf7d4:16                     ; 7824: 6b88f7d4
	mov.b	@0xf7ae:16,r0l                    ; 7828: 6a08f7ae
	extu.w	r0                               ; 782c: 1750
	mov.b	@(0xf8a6:16,er0),r0l              ; 782e: 6e08f8a6
	exts.w	r0                               ; 7832: 17d0
	mov.b	@(0xf8a6:16,er6),r1l              ; 7834: 6e69f8a6
	exts.w	r1                               ; 7838: 17d1
	sub.w	r1,r0                             ; 783a: 1910
	mov.w	r0,r0                             ; 783c: 0d00
	blt	loc_7856:8                          ; 783e: 4d16
	mov.b	@0xf7ae:16,r0l                    ; 7840: 6a08f7ae
	extu.w	r0                               ; 7844: 1750
	mov.b	@(0xf8a6:16,er0),r0l              ; 7846: 6e08f8a6
	exts.w	r0                               ; 784a: 17d0
	mov.b	@(0xf8a6:16,er6),r1l              ; 784c: 6e69f8a6
	exts.w	r1                               ; 7850: 17d1
	sub.w	r1,r0                             ; 7852: 1910
	bra	loc_786c:8                          ; 7854: 4016
loc_7856:
	mov.b	@0xf7ae:16,r0l                    ; 7856: 6a08f7ae
	extu.w	r0                               ; 785a: 1750
	mov.b	@(0xf8a6:16,er0),r0l              ; 785c: 6e08f8a6
	exts.w	r0                               ; 7860: 17d0
	neg.w	r0                                ; 7862: 1790
	mov.b	@(0xf8a6:16,er6),r1l              ; 7864: 6e69f8a6
	exts.w	r1                               ; 7868: 17d1
	add.w	r1,r0                             ; 786a: 0910
loc_786c:
	mov.w	@0xf7d6:16,e0                     ; 786c: 6b08f7d6
	add.w	r0,e0                             ; 7870: 0908
	mov.w	e0,@0xf7d6:16                     ; 7872: 6b88f7d6
loc_7876:
	add.w	#0x6,r7                           ; 7876: 79170006
	mov.w	@er7+,r6                          ; 787a: 6d76
	mov.w	@er7+,r5                          ; 787c: 6d75
	mov.w	@er7+,r4                          ; 787e: 6d74
	rts                                     ; 7880: 5470
