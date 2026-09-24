	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_281e

func_281e:
	sub.w	e6,e6                             ; 281e: 19ee
	bset	#0x4,@PCR8:8                       ; 2820: 7feb7040
	mov.b	#0x10,r0l                         ; 2824: f810
	mov.b	r0l,@PDR8:8                       ; 2826: 38db
	jsr	@func_25ac:24                       ; 2828: 5e0025ac
	mov.l	#0x80040,er1                      ; 282c: 7a0100080040
loc_2832:
	bset	#0x4,@CKSTPR1:8                    ; 2832: 7ffa7040
	nop                                     ; 2836: 0000
	nop                                     ; 2838: 0000
	nop                                     ; 283a: 0000
	nop                                     ; 283c: 0000
	nop                                     ; 283e: 0000
	bclr	#0x6,@IENR2:8                      ; 2840: 7ff47260
	mov.b	@AMR:8,r0l                        ; 2844: 28be
	and.b	#0xf0,r0l                         ; 2846: e8f0
	or.b	#0x7,r0l                           ; 2848: c807
	mov.b	r0l,@AMR:8                        ; 284a: 38be
	mov.b	@0xf7b5:16,r0l                    ; 284c: 6a08f7b5
	bld	#0x4,r0l                            ; 2850: 7748
	bcc	loc_285e:8                          ; 2852: 440a
	mov.b	@AMR:8,r0l                        ; 2854: 28be
	and.b	#0xcf,r0l                         ; 2856: e8cf
	or.b	#0x20,r0l                          ; 2858: c820
	mov.b	r0l,@AMR:8                        ; 285a: 38be
	bra	loc_2866:8                          ; 285c: 4008
loc_285e:
	mov.b	@AMR:8,r0l                        ; 285e: 28be
	and.b	#0xcf,r0l                         ; 2860: e8cf
	or.b	#0x30,r0l                          ; 2862: c830
	mov.b	r0l,@AMR:8                        ; 2864: 38be
loc_2866:
	bset	#0x7,@ADSR:8                       ; 2866: 7fbf7070
loc_286a:
	mov.b	@ADSR:8,r0l                       ; 286a: 28bf
	bmi	loc_286a:8                          ; 286c: 4bfc
	mov.b	@AMR:8,r0l                        ; 286e: 28be
	and.b	#0xf0,r0l                         ; 2870: e8f0
	mov.b	r0l,@AMR:8                        ; 2872: 38be
	bclr	#0x4,@CKSTPR1:8                    ; 2874: 7ffa7240
	mov.w	@ADRR:16,r0                       ; 2878: 6b00ffbc
	extu.l	er0                              ; 287c: 1770
	divxu.w	r1,er0                          ; 287e: 5310
	add.w	r0,e6                             ; 2880: 090e
	dec.w	#1,e1                             ; 2882: 1b59
	bne	loc_2832:8                          ; 2884: 46ac
	sub.b	r0l,r0l                           ; 2886: 1888
	mov.b	r0l,@PDR8:8                       ; 2888: 38db
	bclr	#0x4,@PCR8:8                       ; 288a: 7feb7240
	mov.w	e6,r0                             ; 288e: 0de0
	exts.l	er0                              ; 2890: 17f0
	mov.b	#0x8,r1l                          ; 2892: f908
	divxs.w	r1,er0                          ; 2894: 01d05310
	rts                                     ; 2898: 5470
