	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a962

func_a962:
	mov.b	#0x80,r0l                         ; a962: f880
	mov.b	r0l,@SSER:16                      ; a964: 6a88f0e3
	bclr	#0x0,@PDR1:8                       ; a968: 7fd47200
	bset	#0x1,@PDR1:8                       ; a96c: 7fd47010
	sub.b	r6h,r6h                           ; a970: 1866
loc_a972:
	mov.b	r6h,r0h                           ; a972: 0c60
	sub.b	r0l,r0l                           ; a974: 1888
	jsr	@func_7c56:24                       ; a976: 5e007c56
	bset	#0x1,@PDR1:8                       ; a97a: 7fd47010
	sub.b	r6l,r6l                           ; a97e: 18ee
loc_a980:
	mov.b	r6l,r0l                           ; a980: 0ce8
	extu.w	r0                               ; a982: 1750
	exts.l	er0                              ; a984: 17f0
	mov.w	#0x18,r1                          ; a986: 79010018
	divxs.w	r1,er0                          ; a98a: 01d05310
	mov.b	r0h,r0h                           ; a98e: 0c00
	bne	loc_aa1c:16                         ; a990: 58600088
	cmp.b	#0x0,r0l                          ; a994: a800
	beq	loc_a9a6:8                          ; a996: 470e
	cmp.b	#0x1,r0l                          ; a998: a801
	beq	loc_a9c4:8                          ; a99a: 4728
	cmp.b	#0x2,r0l                          ; a99c: a802
	beq	loc_a9e2:8                          ; a99e: 4742
	cmp.b	#0x3,r0l                          ; a9a0: a803
	bne	loc_aa1c:8                          ; a9a2: 4678
	bra	loc_aa00:8                          ; a9a4: 405a
loc_a9a6:
	mov.b	@SSSR:16,r0l                      ; a9a6: 6a08f0e4
	bld	#0x2,r0l                            ; a9aa: 7728
	bcc	loc_a9a6:8                          ; a9ac: 44f8
	sub.b	r0l,r0l                           ; a9ae: 1888
	mov.b	r0l,@SSTDR:16                     ; a9b0: 6a88f0eb
loc_a9b4:
	mov.b	@SSSR:16,r0l                      ; a9b4: 6a08f0e4
	bld	#0x2,r0l                            ; a9b8: 7728
	bcc	loc_a9b4:8                          ; a9ba: 44f8
	sub.b	r0l,r0l                           ; a9bc: 1888
	mov.b	r0l,@SSTDR:16                     ; a9be: 6a88f0eb
	bra	loc_aa1c:8                          ; a9c2: 4058
loc_a9c4:
	mov.b	@SSSR:16,r0l                      ; a9c4: 6a08f0e4
	bld	#0x2,r0l                            ; a9c8: 7728
	bcc	loc_a9c4:8                          ; a9ca: 44f8
	sub.b	r0l,r0l                           ; a9cc: 1888
	mov.b	r0l,@SSTDR:16                     ; a9ce: 6a88f0eb
loc_a9d2:
	mov.b	@SSSR:16,r0l                      ; a9d2: 6a08f0e4
	bld	#0x2,r0l                            ; a9d6: 7728
	bcc	loc_a9d2:8                          ; a9d8: 44f8
	mov.b	#0xff,r0l                         ; a9da: f8ff
	mov.b	r0l,@SSTDR:16                     ; a9dc: 6a88f0eb
	bra	loc_aa1c:8                          ; a9e0: 403a
loc_a9e2:
	mov.b	@SSSR:16,r0l                      ; a9e2: 6a08f0e4
	bld	#0x2,r0l                            ; a9e6: 7728
	bcc	loc_a9e2:8                          ; a9e8: 44f8
	mov.b	#0xff,r0l                         ; a9ea: f8ff
	mov.b	r0l,@SSTDR:16                     ; a9ec: 6a88f0eb
loc_a9f0:
	mov.b	@SSSR:16,r0l                      ; a9f0: 6a08f0e4
	bld	#0x2,r0l                            ; a9f4: 7728
	bcc	loc_a9f0:8                          ; a9f6: 44f8
	sub.b	r0l,r0l                           ; a9f8: 1888
	mov.b	r0l,@SSTDR:16                     ; a9fa: 6a88f0eb
	bra	loc_aa1c:8                          ; a9fe: 401c
loc_aa00:
	mov.b	@SSSR:16,r0l                      ; aa00: 6a08f0e4
	bld	#0x2,r0l                            ; aa04: 7728
	bcc	loc_aa00:8                          ; aa06: 44f8
	mov.b	#0xff,r0l                         ; aa08: f8ff
	mov.b	r0l,@SSTDR:16                     ; aa0a: 6a88f0eb
loc_aa0e:
	mov.b	@SSSR:16,r0l                      ; aa0e: 6a08f0e4
	bld	#0x2,r0l                            ; aa12: 7728
	bcc	loc_aa0e:8                          ; aa14: 44f8
	mov.b	#0xff,r0l                         ; aa16: f8ff
	mov.b	r0l,@SSTDR:16                     ; aa18: 6a88f0eb
loc_aa1c:
	inc	r6l                                 ; aa1c: 0a0e
	cmp.b	#0x60,r6l                         ; aa1e: ae60
	bcs	loc_a980:16                         ; aa20: 5850ff5c
loc_aa24:
	mov.b	@SSSR:16,r0l                      ; aa24: 6a08f0e4
	bld	#0x3,r0l                            ; aa28: 7738
	bcc	loc_aa24:8                          ; aa2a: 44f8
	inc	r6h                                 ; aa2c: 0a06
	cmp.b	#0x8,r6h                          ; aa2e: a608
	bcs	loc_a972:16                         ; aa30: 5850ff3e
loc_aa34:
	mov.b	@SSSR:16,r0l                      ; aa34: 6a08f0e4
	bld	#0x3,r0l                            ; aa38: 7738
	bcc	loc_aa34:8                          ; aa3a: 44f8
	bset	#0x0,@PDR1:8                       ; aa3c: 7fd47000
	rts                                     ; aa40: 5470
