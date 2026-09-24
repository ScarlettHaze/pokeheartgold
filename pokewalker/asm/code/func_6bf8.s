	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6bf8

func_6bf8:
	mov.b	@0xf7cf:16,r0l                    ; 6bf8: 6a08f7cf
	beq	loc_6c0e:8                          ; 6bfc: 4710
	mov.b	@0xf7ce:16,r0l                    ; 6bfe: 6a08f7ce
	extu.w	r0                               ; 6c02: 1750
	dec.w	#1,r0                             ; 6c04: 1b50
	mov.b	@(0xbeb0:16,er0),r0l              ; 6c06: 6e08beb0
	jsr	@func_6ad8:24                       ; 6c0a: 5e006ad8
loc_6c0e:
	jsr	@func_6b10:24                       ; 6c0e: 5e006b10
	mov.b	@0xf7b6:16,r0l                    ; 6c12: 6a08f7b6
	bld	#0x2,r0l                            ; 6c16: 7728
	bcc	loc_6c86:8                          ; 6c18: 446c
	mov.b	@0xf7d0:16,r6l                    ; 6c1a: 6a0ef7d0
	mov.b	@0xf7d1:16,r0l                    ; 6c1e: 6a08f7d1
	bld	#0x1,r0l                            ; 6c22: 7718
	bcs	loc_6c30:8                          ; 6c24: 450a
	mov.b	r6l,r0l                           ; 6c26: 0ce8
	sub.b	r0h,r0h                           ; 6c28: 1800
	jsr	@func_69be:24                       ; 6c2a: 5e0069be
	bra	loc_6c74:8                          ; 6c2e: 4044
loc_6c30:
	bld	#0x2,r0l                            ; 6c30: 7728
	bcs	loc_6c3a:8                          ; 6c32: 4506
	mov.b	r6l,r0l                           ; 6c34: 0ce8
	mov.b	#0x18,r0h                         ; 6c36: f018
	bra	loc_6c70:8                          ; 6c38: 4036
loc_6c3a:
	jsr	@func_247e:24                       ; 6c3a: 5e00247e
	mov.w	#0x10,r0                          ; 6c3e: 79000010
	jsr	@func_2488:24                       ; 6c42: 5e002488
	mov.w	r0,r6                             ; 6c46: 0d06
	mov.w	r0,e0                             ; 6c48: 0d08
	mov.w	#0x8f00,r0                        ; 6c4a: 79008f00
	mov.w	#0x10,r1                          ; 6c4e: 79010010
	jsr	@func_5384:24                       ; 6c52: 5e005384
	mov.b	@(0xe:16,er6),r0l                 ; 6c56: 6e68000e
	bld	#0x0,r0l                            ; 6c5a: 7708
	bcs	loc_6c6a:8                          ; 6c5c: 450c
	mov.b	#0x18,r0h                         ; 6c5e: f018
	mov.b	@0xf7d0:16,r0l                    ; 6c60: 6a08f7d0
	jsr	@func_1972:24                       ; 6c64: 5e001972
	bra	loc_6c74:8                          ; 6c68: 400a
loc_6c6a:
	mov.b	#0x18,r0h                         ; 6c6a: f018
	mov.b	@0xf7d0:16,r0l                    ; 6c6c: 6a08f7d0
loc_6c70:
	jsr	@func_1936:24                       ; 6c70: 5e001936
loc_6c74:
	mov.b	@0xf7d1:16,r0l                    ; 6c74: 6a08f7d1
	bld	#0x1,r0l                            ; 6c78: 7718
	bcc	loc_6c82:8                          ; 6c7a: 4406
	jsr	@func_6ba0:24                       ; 6c7c: 5e006ba0
	bra	loc_6c86:8                          ; 6c80: 4004
loc_6c82:
	jsr	@func_6b4c:24                       ; 6c82: 5e006b4c
loc_6c86:
	rts                                     ; 6c86: 5470
