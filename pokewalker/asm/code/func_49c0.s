	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_49c0

func_49c0:
	jsr	@func_247e:24                       ; 49c0: 5e00247e
	mov.w	#0x68,r0                          ; 49c4: 79000068
	jsr	@func_2488:24                       ; 49c8: 5e002488
	mov.w	r0,r4                             ; 49cc: 0d04
	mov.w	#0x188,r0                         ; 49ce: 79000188
	jsr	@func_2488:24                       ; 49d2: 5e002488
	mov.w	r0,r6                             ; 49d6: 0d06
	mov.w	#0x7c,r0                          ; 49d8: 7900007c
	jsr	@func_2488:24                       ; 49dc: 5e002488
	mov.w	r0,r5                             ; 49e0: 0d05
	mov.w	r0,e0                             ; 49e2: 0d08
	mov.w	#0x7c,r1                          ; 49e4: 7901007c
	mov.w	#D_bf00,r0                        ; 49e8: 7900bf00
	jsr	@func_5384:24                       ; 49ec: 5e005384
	mov.w	@(0x4a:16,er5),e6                 ; 49f0: 6f5e004a
	mov.w	e6,r0                             ; 49f4: 0de0
	mov.b	r0h,r0l                           ; 49f6: 0c08
	sub.b	r0h,r0h                           ; 49f8: 1800
	mov.w	e6,r1                             ; 49fa: 0de1
	mov.b	r1l,r1h                           ; 49fc: 0c91
	sub.b	r1l,r1l                           ; 49fe: 1899
	or.w	r1,r0                              ; 4a00: 6410
	extu.l	er0                              ; 4a02: 1770
	mov.l	@0xf79c:16,er1                    ; 4a04: 01006b01f79c
	cmp.l	er0,er1                           ; 4a0a: 1f81
	bcs	loc_4a48:8                          ; 4a0c: 453a
	jsr	@func_25d0:24                       ; 4a0e: 5e0025d0
	shlr.w	r0                               ; 4a12: 1110
	shlr.w	r0                               ; 4a14: 1110
	shlr.w	r0                               ; 4a16: 1110
	extu.w	r0                               ; 4a18: 1750
	exts.l	er0                              ; 4a1a: 17f0
	mov.w	#0x64,r2                          ; 4a1c: 79020064
	divxs.w	r2,er0                          ; 4a20: 01d05320
	mov.b	@(0x4c:16,er5),r1l                ; 4a24: 6e59004c
	extu.w	r1                               ; 4a28: 1751
	cmp.w	r1,e0                             ; 4a2a: 1d18
	bge	loc_4a48:8                          ; 4a2c: 4c1a
	mov.w	r6,r0                             ; 4a2e: 0d60
	jsr	@func_499c:24                       ; 4a30: 5e00499c
	mov.w	@(0x6:16,er6),r0                  ; 4a34: 6f600006
	bne	loc_4a48:8                          ; 4a38: 460e
	mov.b	@(0x7b:16,er5),r1l                ; 4a3a: 6e59007b
	mov.w	r4,r0                             ; 4a3e: 0d40
	jsr	@func_1d7a:24                       ; 4a40: 5e001d7a
	mov.b	r0l,r0l                           ; 4a44: 0c88
	beq	loc_4a5e:8                          ; 4a46: 4716
loc_4a48:
	mov.b	@0xf7d2:16,r0l                    ; 4a48: 6a08f7d2
	shll.b	r0l                              ; 4a4c: 1008
	shll.b	r0l                              ; 4a4e: 1008
	add.b	#0x2,r0l                          ; 4a50: 8802
	mov.b	r0l,@0xf7d5:16                    ; 4a52: 6a88f7d5
	jsr	@func_1f3e:24                       ; 4a56: 5e001f3e
	jmp	@loc_4af0:24                        ; 4a5a: 5a004af0
loc_4a5e:
	mov.w	r4,r0                             ; 4a5e: 0d40
	mov.b	@(0x7b:16,er5),r1l                ; 4a60: 6e59007b
	jsr	@func_1d22:24                       ; 4a64: 5e001d22
	mov.w	#0xbe,r0                          ; 4a68: 790000be
	jsr	@func_2488:24                       ; 4a6c: 5e002488
	mov.w	r0,r4                             ; 4a70: 0d04
	mov.w	r0,e0                             ; 4a72: 0d08
	mov.w	#0xbe,r1                          ; 4a74: 790100be
	mov.w	#0x8f00,r0                        ; 4a78: 79008f00
	jsr	@func_5384:24                       ; 4a7c: 5e005384
	mov.b	#0xa,r0l                          ; 4a80: f80a
	mov.b	r0l,@0xf7ce:16                    ; 4a82: 6a88f7ce
	mov.l	@er5,er0                          ; 4a86: 01006950
	mov.l	er0,@er6                          ; 4a8a: 010069e0
	mov.w	@(0x4:16,er5),r0                  ; 4a8e: 6f500004
	mov.w	r0,@(0x4:16,er6)                  ; 4a92: 6fe00004
	mov.w	@(0x48:16,er5),r5                 ; 4a96: 6f550048
	mov.w	r5,@(0x6:16,er6)                  ; 4a9a: 6fe50006
	mov.w	#0xca3c,r0                        ; 4a9e: 7900ca3c
	mov.w	#0x180,r1                         ; 4aa2: 79010180
	mov.w	#0x8,e0                           ; 4aa6: 79080008
	add.w	r6,e0                             ; 4aaa: 0968
	jsr	@func_5384:24                       ; 4aac: 5e005384
	mov.w	r6,r0                             ; 4ab0: 0d60
	jsr	@func_49ae:24                       ; 4ab2: 5e0049ae
	mov.w	#0xb800,r0                        ; 4ab6: 7900b800
	jsr	@func_552e:24                       ; 4aba: 5e00552e
	or.b	#0x40,r0l                          ; 4abe: c840
	mov.b	r0l,r1l                           ; 4ac0: 0c89
	mov.w	#0xb800,r0                        ; 4ac2: 7900b800
	jsr	@func_4fca:24                       ; 4ac6: 5e004fca
	mov.b	@0xf7b6:16,r0l                    ; 4aca: 6a08f7b6
	bld	#0x2,r0l                            ; 4ace: 7728
	bcc	loc_4af0:8                          ; 4ad0: 441e
	sub.b	r0l,r0l                           ; 4ad2: 1888
	mov.w	r0,@-er7                          ; 4ad4: 6df0
	mov.w	#0x88,r0                          ; 4ad6: 79000088
	jsr	@func_2488:24                       ; 4ada: 5e002488
	mov.w	r0,e0                             ; 4ade: 0d08
	mov.w	@(0x6:16,er6),e1                  ; 4ae0: 6f690006
	mov.w	r4,r0                             ; 4ae4: 0d40
	mov.w	#0x10c,r1                         ; 4ae6: 7901010c
	jsr	@func_4546:24                       ; 4aea: 5e004546
	adds	#2,er7                             ; 4aee: 0b87
loc_4af0:
	rts                                     ; 4af0: 5470
