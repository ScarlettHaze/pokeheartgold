	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7d4a

func_7d4a:
	mov.b	r0l,r3l                           ; 7d4a: 0c8b
	mov.b	#0x80,r0h                         ; 7d4c: f080
	mov.b	r0h,@SSER:16                      ; 7d4e: 6a80f0e3
	bclr	#0x0,@PDR1:8                       ; 7d52: 7fd47200
	sub.b	r1l,r1l                           ; 7d56: 1899
loc_7d58:
	mov.b	r1l,r1h                           ; 7d58: 0c91
	bclr	#0x1,@PDR1:8                       ; 7d5a: 7fd47210
loc_7d5e:
	mov.b	@SSSR:16,r0l                      ; 7d5e: 6a08f0e4
	bld	#0x2,r0l                            ; 7d62: 7728
	bcc	loc_7d5e:8                          ; 7d64: 44f8
	mov.b	#0x10,r0l                         ; 7d66: f810
	mov.b	r0l,@SSTDR:16                     ; 7d68: 6a88f0eb
loc_7d6c:
	mov.b	@SSSR:16,r0l                      ; 7d6c: 6a08f0e4
	bld	#0x2,r0l                            ; 7d70: 7728
	bcc	loc_7d6c:8                          ; 7d72: 44f8
	sub.b	r0l,r0l                           ; 7d74: 1888
	mov.b	r0l,@SSTDR:16                     ; 7d76: 6a88f0eb
	cmp.b	#0x7,r1h                          ; 7d7a: a107
	bls	loc_7d80:8                          ; 7d7c: 4302
	sleep                                   ; 7d7e: 0180
loc_7d80:
	mov.b	@SSSR:16,r0l                      ; 7d80: 6a08f0e4
	bld	#0x2,r0l                            ; 7d84: 7728
	bcc	loc_7d80:8                          ; 7d86: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 7d88: 6a08f7e4
	mov.b	#0x8,r0h                          ; 7d8c: f008
	mulxu.b	r0h,r0                          ; 7d8e: 5000
	add.b	r1h,r0l                           ; 7d90: 0818
	add.b	#0xb0,r0l                         ; 7d92: 88b0
	mov.b	r0l,@SSTDR:16                     ; 7d94: 6a88f0eb
loc_7d98:
	mov.b	@SSSR:16,r0l                      ; 7d98: 6a08f0e4
	bld	#0x3,r0l                            ; 7d9c: 7738
	bcc	loc_7d98:8                          ; 7d9e: 44f8
	bset	#0x1,@PDR1:8                       ; 7da0: 7fd47010
	mov.b	#0x60,r1h                         ; 7da4: f160
	jmp	@loc_7e34:24                        ; 7da6: 5a007e34
loc_7daa:
	mov.b	r3l,r0l                           ; 7daa: 0cb8
	beq	loc_7dbc:8                          ; 7dac: 470e
	cmp.b	#0x1,r0l                          ; 7dae: a801
	beq	loc_7dda:8                          ; 7db0: 4728
	cmp.b	#0x2,r0l                          ; 7db2: a802
	beq	loc_7df8:8                          ; 7db4: 4742
	cmp.b	#0x3,r0l                          ; 7db6: a803
	bne	loc_7e32:8                          ; 7db8: 4678
	bra	loc_7e16:8                          ; 7dba: 405a
loc_7dbc:
	mov.b	@SSSR:16,r0l                      ; 7dbc: 6a08f0e4
	bld	#0x2,r0l                            ; 7dc0: 7728
	bcc	loc_7dbc:8                          ; 7dc2: 44f8
	sub.b	r0l,r0l                           ; 7dc4: 1888
	mov.b	r0l,@SSTDR:16                     ; 7dc6: 6a88f0eb
loc_7dca:
	mov.b	@SSSR:16,r0l                      ; 7dca: 6a08f0e4
	bld	#0x2,r0l                            ; 7dce: 7728
	bcc	loc_7dca:8                          ; 7dd0: 44f8
	sub.b	r0l,r0l                           ; 7dd2: 1888
	mov.b	r0l,@SSTDR:16                     ; 7dd4: 6a88f0eb
	bra	loc_7e32:8                          ; 7dd8: 4058
loc_7dda:
	mov.b	@SSSR:16,r0l                      ; 7dda: 6a08f0e4
	bld	#0x2,r0l                            ; 7dde: 7728
	bcc	loc_7dda:8                          ; 7de0: 44f8
	sub.b	r0l,r0l                           ; 7de2: 1888
	mov.b	r0l,@SSTDR:16                     ; 7de4: 6a88f0eb
loc_7de8:
	mov.b	@SSSR:16,r0l                      ; 7de8: 6a08f0e4
	bld	#0x2,r0l                            ; 7dec: 7728
	bcc	loc_7de8:8                          ; 7dee: 44f8
	mov.b	#0xff,r0l                         ; 7df0: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7df2: 6a88f0eb
	bra	loc_7e32:8                          ; 7df6: 403a
loc_7df8:
	mov.b	@SSSR:16,r0l                      ; 7df8: 6a08f0e4
	bld	#0x2,r0l                            ; 7dfc: 7728
	bcc	loc_7df8:8                          ; 7dfe: 44f8
	mov.b	#0xff,r0l                         ; 7e00: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7e02: 6a88f0eb
loc_7e06:
	mov.b	@SSSR:16,r0l                      ; 7e06: 6a08f0e4
	bld	#0x2,r0l                            ; 7e0a: 7728
	bcc	loc_7e06:8                          ; 7e0c: 44f8
	sub.b	r0l,r0l                           ; 7e0e: 1888
	mov.b	r0l,@SSTDR:16                     ; 7e10: 6a88f0eb
	bra	loc_7e32:8                          ; 7e14: 401c
loc_7e16:
	mov.b	@SSSR:16,r0l                      ; 7e16: 6a08f0e4
	bld	#0x2,r0l                            ; 7e1a: 7728
	bcc	loc_7e16:8                          ; 7e1c: 44f8
	mov.b	#0xff,r0l                         ; 7e1e: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7e20: 6a88f0eb
loc_7e24:
	mov.b	@SSSR:16,r0l                      ; 7e24: 6a08f0e4
	bld	#0x2,r0l                            ; 7e28: 7728
	bcc	loc_7e24:8                          ; 7e2a: 44f8
	mov.b	#0xff,r0l                         ; 7e2c: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7e2e: 6a88f0eb
loc_7e32:
	dec.b	r1h                               ; 7e32: 1a01
loc_7e34:
	mov.b	r1h,r1h                           ; 7e34: 0c11
	bne	loc_7daa:16                         ; 7e36: 5860ff70
loc_7e3a:
	mov.b	@SSSR:16,r0l                      ; 7e3a: 6a08f0e4
	bld	#0x3,r0l                            ; 7e3e: 7738
	bcc	loc_7e3a:8                          ; 7e40: 44f8
	inc	r1l                                 ; 7e42: 0a09
	cmp.b	#0x8,r1l                          ; 7e44: a908
	bcs	loc_7d58:16                         ; 7e46: 5850ff0e
loc_7e4a:
	mov.b	@SSSR:16,r0l                      ; 7e4a: 6a08f0e4
	bld	#0x3,r0l                            ; 7e4e: 7738
	bcc	loc_7e4a:8                          ; 7e50: 44f8
	bset	#0x0,@PDR1:8                       ; 7e52: 7fd47000
	rts                                     ; 7e56: 5470
