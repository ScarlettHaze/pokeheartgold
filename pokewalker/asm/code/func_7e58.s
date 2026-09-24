	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7e58

func_7e58:
	mov.w	r4,@-er7                          ; 7e58: 6df4
	mov.l	er5,@-er7                         ; 7e5a: 01006df5
	mov.l	er6,@-er7                         ; 7e5e: 01006df6
	mov.b	r0l,r5h                           ; 7e62: 0c85
	mov.b	r0h,r6l                           ; 7e64: 0c0e
	mov.b	r1h,r5l                           ; 7e66: 0c1d
	mov.b	@(0xd:16,er7),r4l                 ; 7e68: 6e7c000d
	mov.b	#0x80,r2l                         ; 7e6c: fa80
	mov.b	r2l,@SSER:16                      ; 7e6e: 6a8af0e3
	bclr	#0x0,@PDR1:8                       ; 7e72: 7fd47200
	mov.b	r6l,r6h                           ; 7e76: 0ce6
	shlr.b	r6h                              ; 7e78: 1106
	shlr.b	r6h                              ; 7e7a: 1106
	shlr.b	r6h                              ; 7e7c: 1106
	mov.b	r5h,r2l                           ; 7e7e: 0c5a
	extu.w	r2                               ; 7e80: 1752
	extu.w	r1                               ; 7e82: 1751
	add.w	r1,r2                             ; 7e84: 0912
	mov.w	r2,e6                             ; 7e86: 0d2e
	mov.b	r6l,r1l                           ; 7e88: 0ce9
	extu.w	r1                               ; 7e8a: 1751
	mov.b	r5l,r2l                           ; 7e8c: 0cda
	extu.w	r2                               ; 7e8e: 1752
	add.w	r2,r1                             ; 7e90: 0921
	exts.l	er1                              ; 7e92: 17f1
	mov.w	#0x8,e0                           ; 7e94: 79080008
	divxs.w	e0,er1                          ; 7e98: 01d05381
	mov.w	r1,e5                             ; 7e9c: 0d1d
	jmp	@loc_7f9e:24                        ; 7e9e: 5a007f9e
loc_7ea2:
	mov.b	r6h,r5l                           ; 7ea2: 0c6d
	mov.b	r5h,r6l                           ; 7ea4: 0c5e
	bclr	#0x1,@PDR1:8                       ; 7ea6: 7fd47210
loc_7eaa:
	mov.b	@SSSR:16,r0l                      ; 7eaa: 6a08f0e4
	bld	#0x2,r0l                            ; 7eae: 7728
	bcc	loc_7eaa:8                          ; 7eb0: 44f8
	mov.b	r6l,r0l                           ; 7eb2: 0ce8
	mov.b	#0x10,r1l                         ; 7eb4: f910
	sub.b	r0h,r0h                           ; 7eb6: 1800
	divxu.b	r1l,r0                          ; 7eb8: 5190
	and.b	#0x7,r0l                          ; 7eba: e807
	add.b	#0x10,r0l                         ; 7ebc: 8810
	mov.b	r0l,@SSTDR:16                     ; 7ebe: 6a88f0eb
loc_7ec2:
	mov.b	@SSSR:16,r0l                      ; 7ec2: 6a08f0e4
	bld	#0x2,r0l                            ; 7ec6: 7728
	bcc	loc_7ec2:8                          ; 7ec8: 44f8
	and.b	#0xf,r6l                          ; 7eca: ee0f
	mov.b	r6l,@SSTDR:16                     ; 7ecc: 6a8ef0eb
	cmp.b	#0x7,r5l                          ; 7ed0: ad07
	bls	loc_7ed6:8                          ; 7ed2: 4302
	sleep                                   ; 7ed4: 0180
loc_7ed6:
	mov.b	@SSSR:16,r0l                      ; 7ed6: 6a08f0e4
	bld	#0x2,r0l                            ; 7eda: 7728
	bcc	loc_7ed6:8                          ; 7edc: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 7ede: 6a08f7e4
	mov.b	#0x8,r0h                          ; 7ee2: f008
	mulxu.b	r0h,r0                          ; 7ee4: 5000
	add.b	r5l,r0l                           ; 7ee6: 08d8
	add.b	#0xb0,r0l                         ; 7ee8: 88b0
	mov.b	r0l,@SSTDR:16                     ; 7eea: 6a88f0eb
loc_7eee:
	mov.b	@SSSR:16,r0l                      ; 7eee: 6a08f0e4
	bld	#0x3,r0l                            ; 7ef2: 7738
	bcc	loc_7eee:8                          ; 7ef4: 44f8
	bset	#0x1,@PDR1:8                       ; 7ef6: 7fd47010
	mov.b	r5h,r6l                           ; 7efa: 0c5e
	jmp	@loc_7f8a:24                        ; 7efc: 5a007f8a
loc_7f00:
	mov.b	r4l,r0l                           ; 7f00: 0cc8
	beq	loc_7f12:8                          ; 7f02: 470e
	cmp.b	#0x1,r0l                          ; 7f04: a801
	beq	loc_7f30:8                          ; 7f06: 4728
	cmp.b	#0x2,r0l                          ; 7f08: a802
	beq	loc_7f4e:8                          ; 7f0a: 4742
	cmp.b	#0x3,r0l                          ; 7f0c: a803
	bne	loc_7f88:8                          ; 7f0e: 4678
	bra	loc_7f6c:8                          ; 7f10: 405a
loc_7f12:
	mov.b	@SSSR:16,r0l                      ; 7f12: 6a08f0e4
	bld	#0x2,r0l                            ; 7f16: 7728
	bcc	loc_7f12:8                          ; 7f18: 44f8
	sub.b	r0l,r0l                           ; 7f1a: 1888
	mov.b	r0l,@SSTDR:16                     ; 7f1c: 6a88f0eb
loc_7f20:
	mov.b	@SSSR:16,r0l                      ; 7f20: 6a08f0e4
	bld	#0x2,r0l                            ; 7f24: 7728
	bcc	loc_7f20:8                          ; 7f26: 44f8
	sub.b	r0l,r0l                           ; 7f28: 1888
	mov.b	r0l,@SSTDR:16                     ; 7f2a: 6a88f0eb
	bra	loc_7f88:8                          ; 7f2e: 4058
loc_7f30:
	mov.b	@SSSR:16,r0l                      ; 7f30: 6a08f0e4
	bld	#0x2,r0l                            ; 7f34: 7728
	bcc	loc_7f30:8                          ; 7f36: 44f8
	sub.b	r0l,r0l                           ; 7f38: 1888
	mov.b	r0l,@SSTDR:16                     ; 7f3a: 6a88f0eb
loc_7f3e:
	mov.b	@SSSR:16,r0l                      ; 7f3e: 6a08f0e4
	bld	#0x2,r0l                            ; 7f42: 7728
	bcc	loc_7f3e:8                          ; 7f44: 44f8
	mov.b	#0xff,r0l                         ; 7f46: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7f48: 6a88f0eb
	bra	loc_7f88:8                          ; 7f4c: 403a
loc_7f4e:
	mov.b	@SSSR:16,r0l                      ; 7f4e: 6a08f0e4
	bld	#0x2,r0l                            ; 7f52: 7728
	bcc	loc_7f4e:8                          ; 7f54: 44f8
	mov.b	#0xff,r0l                         ; 7f56: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7f58: 6a88f0eb
loc_7f5c:
	mov.b	@SSSR:16,r0l                      ; 7f5c: 6a08f0e4
	bld	#0x2,r0l                            ; 7f60: 7728
	bcc	loc_7f5c:8                          ; 7f62: 44f8
	sub.b	r0l,r0l                           ; 7f64: 1888
	mov.b	r0l,@SSTDR:16                     ; 7f66: 6a88f0eb
	bra	loc_7f88:8                          ; 7f6a: 401c
loc_7f6c:
	mov.b	@SSSR:16,r0l                      ; 7f6c: 6a08f0e4
	bld	#0x2,r0l                            ; 7f70: 7728
	bcc	loc_7f6c:8                          ; 7f72: 44f8
	mov.b	#0xff,r0l                         ; 7f74: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7f76: 6a88f0eb
loc_7f7a:
	mov.b	@SSSR:16,r0l                      ; 7f7a: 6a08f0e4
	bld	#0x2,r0l                            ; 7f7e: 7728
	bcc	loc_7f7a:8                          ; 7f80: 44f8
	mov.b	#0xff,r0l                         ; 7f82: f8ff
	mov.b	r0l,@SSTDR:16                     ; 7f84: 6a88f0eb
loc_7f88:
	inc	r6l                                 ; 7f88: 0a0e
loc_7f8a:
	mov.b	r6l,r0l                           ; 7f8a: 0ce8
	extu.w	r0                               ; 7f8c: 1750
	cmp.w	e6,r0                             ; 7f8e: 1de0
	blt	loc_7f00:16                         ; 7f90: 58d0ff6c
loc_7f94:
	mov.b	@SSSR:16,r0l                      ; 7f94: 6a08f0e4
	bld	#0x3,r0l                            ; 7f98: 7738
	bcc	loc_7f94:8                          ; 7f9a: 44f8
	inc	r6h                                 ; 7f9c: 0a06
loc_7f9e:
	mov.b	r6h,r0l                           ; 7f9e: 0c68
	extu.w	r0                               ; 7fa0: 1750
	cmp.w	e5,r0                             ; 7fa2: 1dd0
	blt	loc_7ea2:16                         ; 7fa4: 58d0fefa
loc_7fa8:
	mov.b	@SSSR:16,r0l                      ; 7fa8: 6a08f0e4
	bld	#0x3,r0l                            ; 7fac: 7738
	bcc	loc_7fa8:8                          ; 7fae: 44f8
	bset	#0x0,@PDR1:8                       ; 7fb0: 7fd47000
	jmp	@loc_8ab0:24                        ; 7fb4: 5a008ab0
