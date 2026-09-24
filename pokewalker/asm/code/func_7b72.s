	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7b72

func_7b72:
	mov.w	r2,@-er7                          ; 7b72: 6df2
	mov.l	er6,@-er7                         ; 7b74: 01006df6
	jsr	@func_247e:24                       ; 7b78: 5e00247e
	mov.w	#0x40,r0                          ; 7b7c: 79000040
	jsr	@func_2488:24                       ; 7b80: 5e002488
	mov.w	r0,r6                             ; 7b84: 0d06
	mov.w	r0,r1                             ; 7b86: 0d01
	mov.w	#0x40,e1                          ; 7b88: 79090040
	mov.l	#0x1ac00ac,er0                    ; 7b8c: 7a0001ac00ac
	jsr	@func_5128:24                       ; 7b92: 5e005128
	mov.b	#0x80,r0l                         ; 7b96: f880
	mov.b	r0l,@SSER:16                      ; 7b98: 6a88f0e3
	bclr	#0x1,@PDR1:8                       ; 7b9c: 7fd47210
	mov.b	#0xe1,r0l                         ; 7ba0: f8e1
	bsr	func_7b44:8                         ; 7ba2: 55a0
	mov.b	@er6,r0l                          ; 7ba4: 6868
	beq	loc_7bac:8                          ; 7ba6: 4704
	cmp.b	#0xff,r0l                         ; 7ba8: a8ff
	bne	loc_7bb0:8                          ; 7baa: 4604
loc_7bac:
	mov.w	#D_beb8,r6                        ; 7bac: 7906beb8
loc_7bb0:
	mov.w	r6,r0                             ; 7bb0: 0d60
	inc.w	#1,r6                             ; 7bb2: 0b56
	mov.b	@er0,r0l                          ; 7bb4: 6808
	mov.b	r0l,@0xf7a9:16                    ; 7bb6: 6a88f7a9
loc_7bba:
	mov.b	@er6,r0l                          ; 7bba: 6868
	cmp.b	#0xfe,r0l                         ; 7bbc: a8fe
	beq	loc_7be4:8                          ; 7bbe: 4724
	cmp.b	#0xfd,r0l                         ; 7bc0: a8fd
	bne	loc_7bd8:8                          ; 7bc2: 4614
	inc.w	#1,r6                             ; 7bc4: 0b56
	sub.w	e6,e6                             ; 7bc6: 19ee
	bra	loc_7bce:8                          ; 7bc8: 4004
loc_7bca:
	bsr	func_7b64:8                         ; 7bca: 5598
	inc.w	#1,e6                             ; 7bcc: 0b5e
loc_7bce:
	mov.b	@er6,r0l                          ; 7bce: 6868
	extu.w	r0                               ; 7bd0: 1750
	cmp.w	r0,e6                             ; 7bd2: 1d0e
	bcs	loc_7bca:8                          ; 7bd4: 45f4
	inc.w	#1,r6                             ; 7bd6: 0b56
loc_7bd8:
	mov.w	r6,r0                             ; 7bd8: 0d60
	inc.w	#1,r6                             ; 7bda: 0b56
	mov.b	@er0,r0l                          ; 7bdc: 6808
	jsr	@func_7b44:24                       ; 7bde: 5e007b44
	bra	loc_7bba:8                          ; 7be2: 40d6
loc_7be4:
	mov.b	#0xa6,r0l                         ; 7be4: f8a6
	jsr	@func_7b44:24                       ; 7be6: 5e007b44
	mov.b	@0xf797:16,r0h                    ; 7bea: 6a00f797
	shlr.b	r0h                              ; 7bee: 1100
	shlr.b	r0h                              ; 7bf0: 1100
	shlr.b	r0h                              ; 7bf2: 1100
	and.b	#0xf,r0h                          ; 7bf4: e00f
	mov.b	r0h,r0l                           ; 7bf6: 0c08
	bsr	func_7c24:8                         ; 7bf8: 552a
	mov.b	#0x1,r0l                          ; 7bfa: f801
	mov.b	r0l,@0xf7e4:16                    ; 7bfc: 6a88f7e4
	mov.b	#0x40,r0l                         ; 7c00: f840
	jsr	@func_7ffc:24                       ; 7c02: 5e007ffc
	sub.b	r0l,r0l                           ; 7c06: 1888
	mov.b	r0l,@0xf7e4:16                    ; 7c08: 6a88f7e4
	mov.b	#0x40,r0l                         ; 7c0c: f840
	jsr	@func_7ffc:24                       ; 7c0e: 5e007ffc
	bclr	#0x1,@PDR1:8                       ; 7c12: 7fd47210
	mov.b	#0xaf,r0l                         ; 7c16: f8af
	jsr	@func_7b44:24                       ; 7c18: 5e007b44
	mov.l	@er7+,er6                         ; 7c1c: 01006d76
	mov.w	@er7+,r2                          ; 7c20: 6d72
	rts                                     ; 7c22: 5470
