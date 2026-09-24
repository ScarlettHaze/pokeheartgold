	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_88e2

func_88e2:
	mov.b	#0x80,r0l                         ; 88e2: f880
	mov.b	r0l,@SSER:16                      ; 88e4: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; 88e8: 7fd47200
	bclr	#0x1,@PDR1:8                       ; 88ec: 7fd47210
loc_88f0:
	mov.b	@SSSR:16,r0l                      ; 88f0: 6a08f0e4
	bld	#0x2,r0l                            ; 88f4: 7728
	bcc	loc_88f0:8                          ; 88f6: 44f8
	mov.b	#0x10,r0l                         ; 88f8: f810
	mov.b	r0l,@SSTDR:16                     ; 88fa: 6a88f0eb
loc_88fe:
	mov.b	@SSSR:16,r0l                      ; 88fe: 6a08f0e4
	bld	#0x2,r0l                            ; 8902: 7728
	bcc	loc_88fe:8                          ; 8904: 44f8
	sub.b	r0l,r0l                           ; 8906: 1888
	mov.b	r0l,@SSTDR:16                     ; 8908: 6a88f0eb
loc_890c:
	mov.b	@SSSR:16,r0l                      ; 890c: 6a08f0e4
	bld	#0x2,r0l                            ; 8910: 7728
	bcc	loc_890c:8                          ; 8912: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 8914: 6a08f7e4
	mov.b	#0x8,r0h                          ; 8918: f008
	mulxu.b	r0h,r0                          ; 891a: 5000
	add.b	#0xb6,r0l                         ; 891c: 88b6
	mov.b	r0l,@SSTDR:16                     ; 891e: 6a88f0eb
loc_8922:
	mov.b	@SSSR:16,r0l                      ; 8922: 6a08f0e4
	bld	#0x3,r0l                            ; 8926: 7738
	bcc	loc_8922:8                          ; 8928: 44f8
	bset	#0x1,@PDR1:8                       ; 892a: 7fd47010
loc_892e:
	mov.b	@SSSR:16,r0l                      ; 892e: 6a08f0e4
	bld	#0x2,r0l                            ; 8932: 7728
	bcc	loc_892e:8                          ; 8934: 44f8
	mov.b	#0xff,r0l                         ; 8936: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8938: 6a88f0eb
loc_893c:
	mov.b	@SSSR:16,r0l                      ; 893c: 6a08f0e4
	bld	#0x2,r0l                            ; 8940: 7728
	bcc	loc_893c:8                          ; 8942: 44f8
	mov.b	#0xff,r0l                         ; 8944: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8946: 6a88f0eb
	mov.b	#0xbc,r0h                         ; 894a: f0bc
	bra	loc_895e:8                          ; 894c: 4010
loc_894e:
	mov.b	@SSSR:16,r0l                      ; 894e: 6a08f0e4
	bld	#0x2,r0l                            ; 8952: 7728
	bcc	loc_894e:8                          ; 8954: 44f8
	mov.b	#0x1,r0l                          ; 8956: f801
	mov.b	r0l,@SSTDR:16                     ; 8958: 6a88f0eb
	dec.b	r0h                               ; 895c: 1a00
loc_895e:
	mov.b	r0h,r0h                           ; 895e: 0c00
	bne	loc_894e:8                          ; 8960: 46ec
loc_8962:
	mov.b	@SSSR:16,r0l                      ; 8962: 6a08f0e4
	bld	#0x2,r0l                            ; 8966: 7728
	bcc	loc_8962:8                          ; 8968: 44f8
	mov.b	#0xff,r0l                         ; 896a: f8ff
	mov.b	r0l,@SSTDR:16                     ; 896c: 6a88f0eb
loc_8970:
	mov.b	@SSSR:16,r0l                      ; 8970: 6a08f0e4
	bld	#0x2,r0l                            ; 8974: 7728
	bcc	loc_8970:8                          ; 8976: 44f8
	mov.b	#0xff,r0l                         ; 8978: f8ff
	mov.b	r0l,@SSTDR:16                     ; 897a: 6a88f0eb
loc_897e:
	mov.b	@SSSR:16,r0l                      ; 897e: 6a08f0e4
	bld	#0x3,r0l                            ; 8982: 7738
	bcc	loc_897e:8                          ; 8984: 44f8
	bclr	#0x1,@PDR1:8                       ; 8986: 7fd47210
loc_898a:
	mov.b	@SSSR:16,r0l                      ; 898a: 6a08f0e4
	bld	#0x2,r0l                            ; 898e: 7728
	bcc	loc_898a:8                          ; 8990: 44f8
	mov.b	#0x10,r0l                         ; 8992: f810
	mov.b	r0l,@SSTDR:16                     ; 8994: 6a88f0eb
loc_8998:
	mov.b	@SSSR:16,r0l                      ; 8998: 6a08f0e4
	bld	#0x2,r0l                            ; 899c: 7728
	bcc	loc_8998:8                          ; 899e: 44f8
	sub.b	r0l,r0l                           ; 89a0: 1888
	mov.b	r0l,@SSTDR:16                     ; 89a2: 6a88f0eb
loc_89a6:
	mov.b	@SSSR:16,r0l                      ; 89a6: 6a08f0e4
	bld	#0x2,r0l                            ; 89aa: 7728
	bcc	loc_89a6:8                          ; 89ac: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 89ae: 6a08f7e4
	mov.b	#0x8,r0h                          ; 89b2: f008
	mulxu.b	r0h,r0                          ; 89b4: 5000
	add.b	#0xb7,r0l                         ; 89b6: 88b7
	mov.b	r0l,@SSTDR:16                     ; 89b8: 6a88f0eb
loc_89bc:
	mov.b	@SSSR:16,r0l                      ; 89bc: 6a08f0e4
	bld	#0x3,r0l                            ; 89c0: 7738
	bcc	loc_89bc:8                          ; 89c2: 44f8
	bset	#0x1,@PDR1:8                       ; 89c4: 7fd47010
loc_89c8:
	mov.b	@SSSR:16,r0l                      ; 89c8: 6a08f0e4
	bld	#0x2,r0l                            ; 89cc: 7728
	bcc	loc_89c8:8                          ; 89ce: 44f8
	mov.b	#0xff,r0l                         ; 89d0: f8ff
	mov.b	r0l,@SSTDR:16                     ; 89d2: 6a88f0eb
loc_89d6:
	mov.b	@SSSR:16,r0l                      ; 89d6: 6a08f0e4
	bld	#0x2,r0l                            ; 89da: 7728
	bcc	loc_89d6:8                          ; 89dc: 44f8
	mov.b	#0xff,r0l                         ; 89de: f8ff
	mov.b	r0l,@SSTDR:16                     ; 89e0: 6a88f0eb
loc_89e4:
	mov.b	@SSSR:16,r0l                      ; 89e4: 6a08f0e4
	bld	#0x3,r0l                            ; 89e8: 7738
	bcc	loc_89e4:8                          ; 89ea: 44f8
	mov.b	#0xbc,r0h                         ; 89ec: f0bc
	bra	loc_8a00:8                          ; 89ee: 4010
loc_89f0:
	mov.b	@SSSR:16,r0l                      ; 89f0: 6a08f0e4
	bld	#0x2,r0l                            ; 89f4: 7728
	bcc	loc_89f0:8                          ; 89f6: 44f8
	mov.b	#0x80,r0l                         ; 89f8: f880
	mov.b	r0l,@SSTDR:16                     ; 89fa: 6a88f0eb
	dec.b	r0h                               ; 89fe: 1a00
loc_8a00:
	mov.b	r0h,r0h                           ; 8a00: 0c00
	bne	loc_89f0:8                          ; 8a02: 46ec
loc_8a04:
	mov.b	@SSSR:16,r0l                      ; 8a04: 6a08f0e4
	bld	#0x2,r0l                            ; 8a08: 7728
	bcc	loc_8a04:8                          ; 8a0a: 44f8
	mov.b	#0xff,r0l                         ; 8a0c: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8a0e: 6a88f0eb
loc_8a12:
	mov.b	@SSSR:16,r0l                      ; 8a12: 6a08f0e4
	bld	#0x2,r0l                            ; 8a16: 7728
	bcc	loc_8a12:8                          ; 8a18: 44f8
	mov.b	#0xff,r0l                         ; 8a1a: f8ff
	mov.b	r0l,@SSTDR:16                     ; 8a1c: 6a88f0eb
loc_8a20:
	mov.b	@SSSR:16,r0l                      ; 8a20: 6a08f0e4
	bld	#0x3,r0l                            ; 8a24: 7738
	bcc	loc_8a20:8                          ; 8a26: 44f8
loc_8a28:
	mov.b	@SSSR:16,r0l                      ; 8a28: 6a08f0e4
	bld	#0x3,r0l                            ; 8a2c: 7738
	bcc	loc_8a28:8                          ; 8a2e: 44f8
	bset	#0x0,@PDR1:8                       ; 8a30: 7fd47000
	rts                                     ; 8a34: 5470
