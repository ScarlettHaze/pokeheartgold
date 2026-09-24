	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8766

func_8766:
	mov.w	#0xf7e4,r1                        ; 8766: 7901f7e4
	mov.b	#0x80,r0l                         ; 876a: f880
	mov.b	r0l,@SSER:16                      ; 876c: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 8770: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 8774: 7fd47210
loc_8778:
	mov.b	@SSSR:16,r0l                      ; 8778: 6a08f0e4
	bld	#0x2,r0l                            ; 877c: 7728
	bcc	loc_8778:8                          ; 877e: 44f8
	mov.b	#0x10,r0l                         ; 8780: f810
	mov.b	r0l,@SSTDR:16                     ; 8782: 6a88f0eb
loc_8786:
	mov.b	@SSSR:16,r0l                      ; 8786: 6a08f0e4
	bld	#0x2,r0l                            ; 878a: 7728
	bcc	loc_8786:8                          ; 878c: 44f8
	sub.b	r0l,r0l                           ; 878e: 1888
	mov.b	r0l,@SSTDR:16                     ; 8790: 6a88f0eb
loc_8794:
	mov.b	@SSSR:16,r0l                      ; 8794: 6a08f0e4
	bld	#0x2,r0l                            ; 8798: 7728
	bcc	loc_8794:8                          ; 879a: 44f8
	mov.b	@er1,r0l                          ; 879c: 6818
	mov.b	#0x8,r0h                          ; 879e: f008
	mulxu.b	r0h,r0                          ; 87a0: 5000
	add.b	#0xb4,r0l                         ; 87a2: 88b4
	mov.b	r0l,@SSTDR:16                     ; 87a4: 6a88f0eb
loc_87a8:
	mov.b	@SSSR:16,r0l                      ; 87a8: 6a08f0e4
	bld	#0x3,r0l                            ; 87ac: 7738
	bcc	loc_87a8:8                          ; 87ae: 44f8
	bset	#0x1,@PDR1:8                       ; 87b0: 7fd47010
loc_87b4:
	mov.b	@SSSR:16,r0l                      ; 87b4: 6a08f0e4
	bld	#0x2,r0l                            ; 87b8: 7728
	bcc	loc_87b4:8                          ; 87ba: 44f8
	mov.b	#0xff,r0l                         ; 87bc: f8ff
	mov.b	r0l,@SSTDR:16                     ; 87be: 6a88f0eb
loc_87c2:
	mov.b	@SSSR:16,r0l                      ; 87c2: 6a08f0e4
	bld	#0x2,r0l                            ; 87c6: 7728
	bcc	loc_87c2:8                          ; 87c8: 44f8
	mov.b	#0xff,r0l                         ; 87ca: f8ff
	mov.b	r0l,@SSTDR:16                     ; 87cc: 6a88f0eb
	mov.b	#0xbc,r0h                         ; 87d0: f0bc
	bra	loc_87e4:8                          ; 87d2: 4010
loc_87d4:
	mov.b	@SSSR:16,r0l                      ; 87d4: 6a08f0e4
	bld	#0x2,r0l                            ; 87d8: 7728
	bcc	loc_87d4:8                          ; 87da: 44f8
	mov.b	#0x1,r0l                          ; 87dc: f801
	mov.b	r0l,@SSTDR:16                     ; 87de: 6a88f0eb
	dec.b	r0h                               ; 87e2: 1a00
loc_87e4:
	mov.b	r0h,r0h                           ; 87e4: 0c00
	bne	loc_87d4:8                          ; 87e6: 46ec
loc_87e8:
	mov.b	@SSSR:16,r0l                      ; 87e8: 6a08f0e4
	bld	#0x2,r0l                            ; 87ec: 7728
	bcc	loc_87e8:8                          ; 87ee: 44f8
	mov.b	#0xff,r0l                         ; 87f0: f8ff
	mov.b	r0l,@SSTDR:16                     ; 87f2: 6a88f0eb
loc_87f6:
	mov.b	@SSSR:16,r0l                      ; 87f6: 6a08f0e4
	bld	#0x2,r0l                            ; 87fa: 7728
	bcc	loc_87f6:8                          ; 87fc: 44f8
	mov.b	#0xff,r0l                         ; 87fe: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8800: 6a88f0eb
loc_8804:
	mov.b	@SSSR:16,r0l                      ; 8804: 6a08f0e4
	bld	#0x3,r0l                            ; 8808: 7738
	bcc	loc_8804:8                          ; 880a: 44f8
	bclr	#0x1,@PDR1:8                       ; 880c: 7fd47210
loc_8810:
	mov.b	@SSSR:16,r0l                      ; 8810: 6a08f0e4
	bld	#0x2,r0l                            ; 8814: 7728
	bcc	loc_8810:8                          ; 8816: 44f8
	mov.b	#0x10,r0l                         ; 8818: f810
	mov.b	r0l,@SSTDR:16                     ; 881a: 6a88f0eb
loc_881e:
	mov.b	@SSSR:16,r0l                      ; 881e: 6a08f0e4
	bld	#0x2,r0l                            ; 8822: 7728
	bcc	loc_881e:8                          ; 8824: 44f8
	sub.b	r0l,r0l                           ; 8826: 1888
	mov.b	r0l,@SSTDR:16                     ; 8828: 6a88f0eb
loc_882c:
	mov.b	@SSSR:16,r0l                      ; 882c: 6a08f0e4
	bld	#0x2,r0l                            ; 8830: 7728
	bcc	loc_882c:8                          ; 8832: 44f8
	mov.b	@er1,r0l                          ; 8834: 6818
	mov.b	#0x8,r0h                          ; 8836: f008
	mulxu.b	r0h,r0                          ; 8838: 5000
	add.b	#0xb5,r0l                         ; 883a: 88b5
	mov.b	r0l,@SSTDR:16                     ; 883c: 6a88f0eb
loc_8840:
	mov.b	@SSSR:16,r0l                      ; 8840: 6a08f0e4
	bld	#0x3,r0l                            ; 8844: 7738
	bcc	loc_8840:8                          ; 8846: 44f8
	bset	#0x1,@PDR1:8                       ; 8848: 7fd47010
loc_884c:
	mov.b	@SSSR:16,r0l                      ; 884c: 6a08f0e4
	bld	#0x2,r0l                            ; 8850: 7728
	bcc	loc_884c:8                          ; 8852: 44f8
	mov.b	#0xff,r0l                         ; 8854: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8856: 6a88f0eb
loc_885a:
	mov.b	@SSSR:16,r0l                      ; 885a: 6a08f0e4
	bld	#0x2,r0l                            ; 885e: 7728
	bcc	loc_885a:8                          ; 8860: 44f8
	mov.b	#0xff,r0l                         ; 8862: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8864: 6a88f0eb
loc_8868:
	mov.b	@SSSR:16,r0l                      ; 8868: 6a08f0e4
	bld	#0x3,r0l                            ; 886c: 7738
	bcc	loc_8868:8                          ; 886e: 44f8
	bclr	#0x1,@PDR1:8                       ; 8870: 7fd47210
loc_8874:
	mov.b	@SSSR:16,r0l                      ; 8874: 6a08f0e4
	bld	#0x2,r0l                            ; 8878: 7728
	bcc	loc_8874:8                          ; 887a: 44f8
	mov.b	#0x15,r0l                         ; 887c: f815
	mov.b	r0l,@SSTDR:16                     ; 887e: 6a88f0eb
loc_8882:
	mov.b	@SSSR:16,r0l                      ; 8882: 6a08f0e4
	bld	#0x2,r0l                            ; 8886: 7728
	bcc	loc_8882:8                          ; 8888: 44f8
	mov.b	#0xf,r0l                          ; 888a: f80f
	mov.b	r0l,@SSTDR:16                     ; 888c: 6a88f0eb
loc_8890:
	mov.b	@SSSR:16,r0l                      ; 8890: 6a08f0e4
	bld	#0x2,r0l                            ; 8894: 7728
	bcc	loc_8890:8                          ; 8896: 44f8
	mov.b	@er1,r0l                          ; 8898: 6818
	mov.b	#0x8,r0h                          ; 889a: f008
	mulxu.b	r0h,r0                          ; 889c: 5000
	add.b	#0xb5,r0l                         ; 889e: 88b5
	mov.b	r0l,@SSTDR:16                     ; 88a0: 6a88f0eb
loc_88a4:
	mov.b	@SSSR:16,r0l                      ; 88a4: 6a08f0e4
	bld	#0x3,r0l                            ; 88a8: 7738
	bcc	loc_88a4:8                          ; 88aa: 44f8
	bset	#0x1,@PDR1:8                       ; 88ac: 7fd47010
loc_88b0:
	mov.b	@SSSR:16,r0l                      ; 88b0: 6a08f0e4
	bld	#0x2,r0l                            ; 88b4: 7728
	bcc	loc_88b0:8                          ; 88b6: 44f8
	mov.b	#0xff,r0l                         ; 88b8: f8ff
	mov.b	r0l,@SSTDR:16                     ; 88ba: 6a88f0eb
loc_88be:
	mov.b	@SSSR:16,r0l                      ; 88be: 6a08f0e4
	bld	#0x2,r0l                            ; 88c2: 7728
	bcc	loc_88be:8                          ; 88c4: 44f8
	mov.b	#0xff,r0l                         ; 88c6: f8ff
	mov.b	r0l,@SSTDR:16                     ; 88c8: 6a88f0eb
loc_88cc:
	mov.b	@SSSR:16,r0l                      ; 88cc: 6a08f0e4
	bld	#0x3,r0l                            ; 88d0: 7738
	bcc	loc_88cc:8                          ; 88d2: 44f8
loc_88d4:
	mov.b	@SSSR:16,r0l                      ; 88d4: 6a08f0e4
	bld	#0x3,r0l                            ; 88d8: 7738
	bcc	loc_88d4:8                          ; 88da: 44f8
	bset	#0x0,@PDR1:8                       ; 88dc: 7fd47000
	rts                                     ; 88e0: 5470
