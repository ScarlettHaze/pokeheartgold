	.h8300hn
	.include "registers.inc"
	.section .text

	.global Start

Start:
	mov.w	#0xff80,r7                        ; 02c4: 7907ff80
	subs	#4,er7                             ; 02c8: 1b97
	jsr	@InitSections:24                    ; 02ca: 5e00ba78
	jsr	@func_b0f2:24                       ; 02ce: 5e00b0f2
	jsr	@func_273c:24                       ; 02d2: 5e00273c
	bld	#0x0,@TCSRWD1:8                     ; 02d6: 7eb17700
	bcc	loc_02f2:8                          ; 02da: 4416
	mov.w	#0x72,r0                          ; 02dc: 79000072
	jsr	@func_552e:24                       ; 02e0: 5e00552e
	mov.b	r0l,r6l                           ; 02e4: 0c8e
	inc	r6l                                 ; 02e6: 0a0e
	mov.b	r6l,r1l                           ; 02e8: 0ce9
	mov.w	#0x72,r0                          ; 02ea: 79000072
	jsr	@func_4fca:24                       ; 02ee: 5e004fca
loc_02f2:
	mov.w	#0xf780,r6                        ; 02f2: 7906f780
	sub.w	e0,e0                             ; 02f6: 1988
	sub.b	r0l,r0l                           ; 02f8: 1888
loc_02fa:
	mov.b	r0l,@er6                          ; 02fa: 68e8
	inc.w	#1,r6                             ; 02fc: 0b56
	inc.w	#1,e0                             ; 02fe: 0b58
	cmp.w	#0x3e,e0                          ; 0300: 7928003e
	bcs	loc_02fa:8                          ; 0304: 45f4
	mov.b	r0l,@0xf7a8:16                    ; 0306: 6a88f7a8
	mov.w	#0xf7b5,r0                        ; 030a: 7900f7b5
	bset	#0x4,@er0                          ; 030e: 7d007040
	mov.b	@0xf7b6:16,r0l                    ; 0312: 6a08f7b6
	and.b	#0xe7,r0l                         ; 0316: e8e7
	or.b	#0x10,r0l                          ; 0318: c810
	mov.b	r0l,@0xf7b6:16                    ; 031a: 6a88f7b6
	mov.b	#0x3c,r0l                         ; 031e: f83c
	mov.b	r0l,@0xf7af:16                    ; 0320: 6a88f7af
	mov.b	#0x5a,r0l                         ; 0324: f85a
	mov.b	r0l,@0xf7b0:16                    ; 0326: 6a88f7b0
	mov.w	#0xe10,r0                         ; 032a: 79000e10
	mov.w	r0,@0xf7a2:16                     ; 032e: 6b80f7a2
	jsr	@func_9328:24                       ; 0332: 5e009328
	jsr	@func_5990:24                       ; 0336: 5e005990
	jsr	@func_245e:24                       ; 033a: 5e00245e
	jsr	@func_b2e2:24                       ; 033e: 5e00b2e2
	jsr	@func_246c:24                       ; 0342: 5e00246c
	bra	loc_034c:8                          ; 0346: 4004
loc_0348:
	jsr	@func_259e:24                       ; 0348: 5e00259e
loc_034c:
	mov.w	#0x13,r0                          ; 034c: 79000013
	jsr	@func_289a:24                       ; 0350: 5e00289a
	mov.b	r0l,r0l                           ; 0354: 0c88
	bne	loc_0348:8                          ; 0356: 46f0
	jsr	@func_36aa:24                       ; 0358: 5e0036aa
	mov.b	@0xf797:16,r0h                    ; 035c: 6a00f797
	shlr.b	r0h                              ; 0360: 1100
	and.b	#0x3,r0h                          ; 0362: e003
	mov.b	r0h,r0l                           ; 0364: 0c08
	jsr	@func_3832:24                       ; 0366: 5e003832
	jsr	@func_7b72:24                       ; 036a: 5e007b72
	jsr	@func_b390:24                       ; 036e: 5e00b390
	mov.w	r7,e0                             ; 0372: 0d78
	mov.w	#0x4,r1                           ; 0374: 79010004
	mov.w	#0x153,r0                         ; 0378: 79000153
	jsr	@func_5384:24                       ; 037c: 5e005384
	mov.l	@er7,er0                          ; 0380: 01006970
	jsr	@func_25c8:24                       ; 0384: 5e0025c8
	jsr	@func_082e:24                       ; 0388: 5e00082e
	jsr	@func_9b34:24                       ; 038c: 5e009b34
	jsr	@func_273c:24                       ; 0390: 5e00273c
	mov.w	#func_7882,r0                     ; 0394: 79007882
	jsr	@func_693a:24                       ; 0398: 5e00693a
	jsr	@func_6a1c:24                       ; 039c: 5e006a1c
	sub.b	r0l,r0l                           ; 03a0: 1888
	mov.b	r0l,@0xf7b1:16                    ; 03a2: 6a88f7b1
	jsr	@func_0078:24                       ; 03a6: 5e000078
	ldc	#0x0,ccr                            ; 03aa: 0700
loc_03ac:
	mov.w	@0xf7e0:16,r0                     ; 03ac: 6b00f7e0
	jsr	@er0                                ; 03b0: 5d00
	bra	loc_03ac:8                          ; 03b2: 40f8
