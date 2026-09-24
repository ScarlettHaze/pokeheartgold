	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5990

func_5990:
	jsr	@func_7a0a:24                       ; 5990: 5e007a0a
	ldc	#0x80,ccr                           ; 5994: 0780
	mov.b	#0xc0,r0l                         ; 5996: f8c0
	mov.b	r0l,@SSER:16                      ; 5998: 6a88f0e3
	mov.b	@SSMR:16,r0l                      ; 599c: 6a08f0e2
	and.b	#0xf8,r0l                         ; 59a0: e8f8
	or.b	#0x6,r0l                           ; 59a2: c806
	mov.b	r0l,@SSMR:16                      ; 59a4: 6a88f0e2
	mov.b	@SSSR:16,r0l                      ; 59a8: 6a08f0e4
	bld	#0x6,r0l                            ; 59ac: 7768
	bcc	loc_59b8:8                          ; 59ae: 4408
	mov.w	#0xf0e4,r0                        ; 59b0: 7900f0e4
	bclr	#0x6,@er0                          ; 59b4: 7d007260
loc_59b8:
	bclr	#0x0,@PDR1:8                       ; 59b8: 7fd47200
loc_59bc:
	mov.b	@SSSR:16,r0l                      ; 59bc: 6a08f0e4
	bld	#0x2,r0l                            ; 59c0: 7728
	bcc	loc_59bc:8                          ; 59c2: 44f8
	mov.b	#0xe2,r0l                         ; 59c4: f8e2
	mov.b	r0l,@SSTDR:16                     ; 59c6: 6a88f0eb
loc_59ca:
	mov.b	@SSSR:16,r0l                      ; 59ca: 6a08f0e4
	bld	#0x3,r0l                            ; 59ce: 7738
	bcc	loc_59ca:8                          ; 59d0: 44f8
	bset	#0x0,@PDR1:8                       ; 59d2: 7fd47000
loc_59d6:
	mov.b	@SSSR:16,r0l                      ; 59d6: 6a08f0e4
	bld	#0x1,r0l                            ; 59da: 7718
	bcc	loc_59d6:8                          ; 59dc: 44f8
	mov.b	@SSRDR:16,r6l                     ; 59de: 6a0ef0e9
	mov.b	#0x80,r0l                         ; 59e2: f880
	mov.b	r0l,@SSER:16                      ; 59e4: 6a88f0e3
	jsr	@func_25ac:24                       ; 59e8: 5e0025ac
	cmp.b	#0xaa,r6l                         ; 59ec: aeaa
	beq	loc_5a16:8                          ; 59ee: 4726
	bclr	#0x0,@PDR1:8                       ; 59f0: 7fd47200
loc_59f4:
	mov.b	@SSSR:16,r0l                      ; 59f4: 6a08f0e4
	bld	#0x2,r0l                            ; 59f8: 7728
	bcc	loc_59f4:8                          ; 59fa: 44f8
	mov.b	#0xb0,r0l                         ; 59fc: f8b0
	mov.b	r0l,@SSTDR:16                     ; 59fe: 6a88f0eb
loc_5a02:
	mov.b	@SSSR:16,r0l                      ; 5a02: 6a08f0e4
	bld	#0x3,r0l                            ; 5a06: 7738
	bcc	loc_5a02:8                          ; 5a08: 44f8
	bset	#0x0,@PDR1:8                       ; 5a0a: 7fd47000
	jsr	@func_25ac:24                       ; 5a0e: 5e0025ac
	jmp	@loc_5c00:24                        ; 5a12: 5a005c00
loc_5a16:
	mov.b	@0x005c:16,r6l                    ; 5a16: 6a0e005c
	bclr	#0x0,@PDR1:8                       ; 5a1a: 7fd47200
loc_5a1e:
	mov.b	@SSSR:16,r0l                      ; 5a1e: 6a08f0e4
	bld	#0x2,r0l                            ; 5a22: 7728
	bcc	loc_5a1e:8                          ; 5a24: 44f8
	mov.b	r6l,@SSTDR:16                     ; 5a26: 6a8ef0eb
loc_5a2a:
	mov.b	@SSSR:16,r0l                      ; 5a2a: 6a08f0e4
	bld	#0x3,r0l                            ; 5a2e: 7738
	bcc	loc_5a2a:8                          ; 5a30: 44f8
	bset	#0x0,@PDR1:8                       ; 5a32: 7fd47000
	jsr	@func_25ac:24                       ; 5a36: 5e0025ac
	mov.b	@0x005d:16,r6l                    ; 5a3a: 6a0e005d
	bclr	#0x0,@PDR1:8                       ; 5a3e: 7fd47200
loc_5a42:
	mov.b	@SSSR:16,r0l                      ; 5a42: 6a08f0e4
	bld	#0x2,r0l                            ; 5a46: 7728
	bcc	loc_5a42:8                          ; 5a48: 44f8
	mov.b	r6l,@SSTDR:16                     ; 5a4a: 6a8ef0eb
loc_5a4e:
	mov.b	@SSSR:16,r0l                      ; 5a4e: 6a08f0e4
	bld	#0x3,r0l                            ; 5a52: 7738
	bcc	loc_5a4e:8                          ; 5a54: 44f8
	bset	#0x0,@PDR1:8                       ; 5a56: 7fd47000
	jsr	@func_25ac:24                       ; 5a5a: 5e0025ac
	sub.w	r6,r6                             ; 5a5e: 1966
loc_5a60:
	mov.b	@(0x50:16,er6),r0h                ; 5a60: 6e600050
	bclr	#0x0,@PDR1:8                       ; 5a64: 7fd47200
loc_5a68:
	mov.b	@SSSR:16,r0l                      ; 5a68: 6a08f0e4
	bld	#0x2,r0l                            ; 5a6c: 7728
	bcc	loc_5a68:8                          ; 5a6e: 44f8
	mov.b	r0h,@SSTDR:16                     ; 5a70: 6a80f0eb
loc_5a74:
	mov.b	@SSSR:16,r0l                      ; 5a74: 6a08f0e4
	bld	#0x3,r0l                            ; 5a78: 7738
	bcc	loc_5a74:8                          ; 5a7a: 44f8
	bset	#0x0,@PDR1:8                       ; 5a7c: 7fd47000
	jsr	@func_25ac:24                       ; 5a80: 5e0025ac
	inc.w	#1,r6                             ; 5a84: 0b56
	cmp.w	#0xc,r6                           ; 5a86: 7926000c
	blt	loc_5a60:8                          ; 5a8a: 4dd4
	mov.b	#0x9e,r0l                         ; 5a8c: f89e
	mov.b	r0l,@TCSRWD1:8                    ; 5a8e: 38b1
	mov.b	#0xa2,r0l                         ; 5a90: f8a2
	mov.b	r0l,@TCSRWD1:8                    ; 5a92: 38b1
	mov.b	#0x8e,r0l                         ; 5a94: f88e
	mov.b	r0l,@TCSRWD1:8                    ; 5a96: 38b1
	bclr	#0x0,@PDR1:8                       ; 5a98: 7fd47200
loc_5a9c:
	mov.b	@SSSR:16,r0l                      ; 5a9c: 6a08f0e4
	bld	#0x2,r0l                            ; 5aa0: 7728
	bcc	loc_5a9c:8                          ; 5aa2: 44f8
	mov.b	#0x4,r0l                          ; 5aa4: f804
	mov.b	r0l,@SSTDR:16                     ; 5aa6: 6a88f0eb
loc_5aaa:
	mov.b	@SSSR:16,r0l                      ; 5aaa: 6a08f0e4
	bld	#0x3,r0l                            ; 5aae: 7738
	bcc	loc_5aaa:8                          ; 5ab0: 44f8
	bset	#0x0,@PDR1:8                       ; 5ab2: 7fd47000
	sub.w	r0,r0                             ; 5ab6: 1900
	jsr	@func_a72a:24                       ; 5ab8: 5e00a72a
	mov.b	r0l,r0l                           ; 5abc: 0c88
	bne	loc_5ae0:8                          ; 5abe: 4620
	bclr	#0x0,@PDR1:8                       ; 5ac0: 7fd47200
loc_5ac4:
	mov.b	@SSSR:16,r0l                      ; 5ac4: 6a08f0e4
	bld	#0x2,r0l                            ; 5ac8: 7728
	bcc	loc_5ac4:8                          ; 5aca: 44f8
	mov.b	#0xf4,r0l                         ; 5acc: f8f4
	mov.b	r0l,@SSTDR:16                     ; 5ace: 6a88f0eb
loc_5ad2:
	mov.b	@SSSR:16,r0l                      ; 5ad2: 6a08f0e4
	bld	#0x3,r0l                            ; 5ad6: 7738
	bcc	loc_5ad2:8                          ; 5ad8: 44f8
	bset	#0x0,@PDR1:8                       ; 5ada: 7fd47000
loc_5ade:
	bra	loc_5ade:8                          ; 5ade: 40fe
loc_5ae0:
	mov.w	#0x101,r0                         ; 5ae0: 79000101
	jsr	@func_b1ae:24                       ; 5ae4: 5e00b1ae
	bclr	#0x0,@PDR1:8                       ; 5ae8: 7fd47200
loc_5aec:
	mov.b	@SSSR:16,r0l                      ; 5aec: 6a08f0e4
	bld	#0x2,r0l                            ; 5af0: 7728
	bcc	loc_5aec:8                          ; 5af2: 44f8
	mov.b	#0x3,r0l                          ; 5af4: f803
	mov.b	r0l,@SSTDR:16                     ; 5af6: 6a88f0eb
loc_5afa:
	mov.b	@SSSR:16,r0l                      ; 5afa: 6a08f0e4
	bld	#0x3,r0l                            ; 5afe: 7738
	bcc	loc_5afa:8                          ; 5b00: 44f8
	bset	#0x0,@PDR1:8                       ; 5b02: 7fd47000
	jsr	@func_a800:24                       ; 5b06: 5e00a800
	mov.b	r0l,r0l                           ; 5b0a: 0c88
	bne	loc_5b2e:8                          ; 5b0c: 4620
	bclr	#0x0,@PDR1:8                       ; 5b0e: 7fd47200
loc_5b12:
	mov.b	@SSSR:16,r0l                      ; 5b12: 6a08f0e4
	bld	#0x2,r0l                            ; 5b16: 7728
	bcc	loc_5b12:8                          ; 5b18: 44f8
	mov.b	#0xf3,r0l                         ; 5b1a: f8f3
	mov.b	r0l,@SSTDR:16                     ; 5b1c: 6a88f0eb
loc_5b20:
	mov.b	@SSSR:16,r0l                      ; 5b20: 6a08f0e4
	bld	#0x3,r0l                            ; 5b24: 7738
	bcc	loc_5b20:8                          ; 5b26: 44f8
	bset	#0x0,@PDR1:8                       ; 5b28: 7fd47000
loc_5b2c:
	bra	loc_5b2c:8                          ; 5b2c: 40fe
loc_5b2e:
	bclr	#0x0,@PDR1:8                       ; 5b2e: 7fd47200
loc_5b32:
	mov.b	@SSSR:16,r0l                      ; 5b32: 6a08f0e4
	bld	#0x2,r0l                            ; 5b36: 7728
	bcc	loc_5b32:8                          ; 5b38: 44f8
	mov.b	#0x2,r0l                          ; 5b3a: f802
	mov.b	r0l,@SSTDR:16                     ; 5b3c: 6a88f0eb
loc_5b40:
	mov.b	@SSSR:16,r0l                      ; 5b40: 6a08f0e4
	bld	#0x3,r0l                            ; 5b44: 7738
	bcc	loc_5b40:8                          ; 5b46: 44f8
	bset	#0x0,@PDR1:8                       ; 5b48: 7fd47000
	jsr	@func_a830:24                       ; 5b4c: 5e00a830
	bclr	#0x0,@PDR1:8                       ; 5b50: 7fd47200
loc_5b54:
	mov.b	@SSSR:16,r0l                      ; 5b54: 6a08f0e4
	bld	#0x2,r0l                            ; 5b58: 7728
	bcc	loc_5b54:8                          ; 5b5a: 44f8
	mov.b	#0x1,r0l                          ; 5b5c: f801
	mov.b	r0l,@SSTDR:16                     ; 5b5e: 6a88f0eb
loc_5b62:
	mov.b	@SSSR:16,r0l                      ; 5b62: 6a08f0e4
	bld	#0x3,r0l                            ; 5b66: 7738
	bcc	loc_5b62:8                          ; 5b68: 44f8
	bset	#0x0,@PDR1:8                       ; 5b6a: 7fd47000
	jsr	@func_a8f8:24                       ; 5b6e: 5e00a8f8
	mov.b	r0l,r0l                           ; 5b72: 0c88
	bne	loc_5b96:8                          ; 5b74: 4620
	bclr	#0x0,@PDR1:8                       ; 5b76: 7fd47200
loc_5b7a:
	mov.b	@SSSR:16,r0l                      ; 5b7a: 6a08f0e4
	bld	#0x2,r0l                            ; 5b7e: 7728
	bcc	loc_5b7a:8                          ; 5b80: 44f8
	mov.b	#0xf1,r0l                         ; 5b82: f8f1
	mov.b	r0l,@SSTDR:16                     ; 5b84: 6a88f0eb
loc_5b88:
	mov.b	@SSSR:16,r0l                      ; 5b88: 6a08f0e4
	bld	#0x3,r0l                            ; 5b8c: 7738
	bcc	loc_5b88:8                          ; 5b8e: 44f8
	bset	#0x0,@PDR1:8                       ; 5b90: 7fd47000
loc_5b94:
	bra	loc_5b94:8                          ; 5b94: 40fe
loc_5b96:
	bclr	#0x0,@PDR1:8                       ; 5b96: 7fd47200
loc_5b9a:
	mov.b	@SSSR:16,r0l                      ; 5b9a: 6a08f0e4
	bld	#0x2,r0l                            ; 5b9e: 7728
	bcc	loc_5b9a:8                          ; 5ba0: 44f8
	sub.b	r0l,r0l                           ; 5ba2: 1888
	mov.b	r0l,@SSTDR:16                     ; 5ba4: 6a88f0eb
loc_5ba8:
	mov.b	@SSSR:16,r0l                      ; 5ba8: 6a08f0e4
	bld	#0x3,r0l                            ; 5bac: 7738
	bcc	loc_5ba8:8                          ; 5bae: 44f8
	bset	#0x0,@PDR1:8                       ; 5bb0: 7fd47000
	bclr	#0x0,@PDR9:8                       ; 5bb4: 7fdc7200
loc_5bb8:
	mov.b	@SSSR:16,r0l                      ; 5bb8: 6a08f0e4
	bld	#0x2,r0l                            ; 5bbc: 7728
	bcc	loc_5bb8:8                          ; 5bbe: 44f8
	mov.b	#0xa,r0l                          ; 5bc0: f80a
	mov.b	r0l,@SSTDR:16                     ; 5bc2: 6a88f0eb
loc_5bc6:
	mov.b	@SSSR:16,r0l                      ; 5bc6: 6a08f0e4
	bld	#0x2,r0l                            ; 5bca: 7728
	bcc	loc_5bc6:8                          ; 5bcc: 44f8
	mov.b	#0x1,r0l                          ; 5bce: f801
	mov.b	r0l,@SSTDR:16                     ; 5bd0: 6a88f0eb
loc_5bd4:
	mov.b	@SSSR:16,r0l                      ; 5bd4: 6a08f0e4
	bld	#0x3,r0l                            ; 5bd8: 7738
	bcc	loc_5bd4:8                          ; 5bda: 44f8
	bset	#0x0,@PDR9:8                       ; 5bdc: 7fdc7000
	ldc	#0x80,ccr                           ; 5be0: 0780
	bclr	#0x6,@CKSTPR1:8                    ; 5be2: 7ffa7260
	bclr	#0x4,@CKSTPR1:8                    ; 5be6: 7ffa7240
	bclr	#0x2,@CKSTPR1:8                    ; 5bea: 7ffa7220
	bclr	#0x0,@CKSTPR1:8                    ; 5bee: 7ffa7200
	sub.b	r0l,r0l                           ; 5bf2: 1888
	mov.b	r0l,@CKSTPR2:8                    ; 5bf4: 38fb
	mov.b	#0x1,r0l                          ; 5bf6: f801
	mov.b	r0l,@PDR3:8                       ; 5bf8: 38d6
	sub.b	r0h,r0h                           ; 5bfa: 1800
	jsr	@func_256e:24                       ; 5bfc: 5e00256e
loc_5c00:
	bset	#0x0,@PDR1:8                       ; 5c00: 7fd47000
	ldc	#0x0,ccr                            ; 5c04: 0700
	jmp	@loc_7a2a:24                        ; 5c06: 5a007a2a
