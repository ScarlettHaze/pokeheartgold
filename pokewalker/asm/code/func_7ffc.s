	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7ffc

func_7ffc:
	mov.w	r6,@-er7                          ; 7ffc: 6df6
	mov.b	#0x80,r0h                         ; 7ffe: f080
	mov.b	r0h,@SSER:16                      ; 8000: 6a80f0e3
	bclr	#0x0,@PDR1:8                       ; 8004: 7fd47200
	sub.b	r1l,r1l                           ; 8008: 1899
	extu.w	r0                               ; 800a: 1750
	shar.w	r0                               ; 800c: 1190
	shar.w	r0                               ; 800e: 1190
	shar.w	r0                               ; 8010: 1190
	mov.w	r0,e0                             ; 8012: 0d08
	bra	loc_8092:8                          ; 8014: 407c
loc_8016:
	mov.b	r1l,r6l                           ; 8016: 0c9e
	bclr	#0x1,@PDR1:8                       ; 8018: 7fd47210
loc_801c:
	mov.b	@SSSR:16,r0l                      ; 801c: 6a08f0e4
	bld	#0x2,r0l                            ; 8020: 7728
	bcc	loc_801c:8                          ; 8022: 44f8
	mov.b	#0x10,r0l                         ; 8024: f810
	mov.b	r0l,@SSTDR:16                     ; 8026: 6a88f0eb
loc_802a:
	mov.b	@SSSR:16,r0l                      ; 802a: 6a08f0e4
	bld	#0x2,r0l                            ; 802e: 7728
	bcc	loc_802a:8                          ; 8030: 44f8
	sub.b	r0l,r0l                           ; 8032: 1888
	mov.b	r0l,@SSTDR:16                     ; 8034: 6a88f0eb
	cmp.b	#0x7,r6l                          ; 8038: ae07
	bls	loc_803e:8                          ; 803a: 4302
	sleep                                   ; 803c: 0180
loc_803e:
	mov.b	@SSSR:16,r0l                      ; 803e: 6a08f0e4
	bld	#0x2,r0l                            ; 8042: 7728
	bcc	loc_803e:8                          ; 8044: 44f8
	mov.b	@0xf7e4:16,r0l                    ; 8046: 6a08f7e4
	mov.b	#0x8,r0h                          ; 804a: f008
	mulxu.b	r0h,r0                          ; 804c: 5000
	add.b	r6l,r0l                           ; 804e: 08e8
	add.b	#0xb0,r0l                         ; 8050: 88b0
	mov.b	r0l,@SSTDR:16                     ; 8052: 6a88f0eb
loc_8056:
	mov.b	@SSSR:16,r0l                      ; 8056: 6a08f0e4
	bld	#0x3,r0l                            ; 805a: 7738
	bcc	loc_8056:8                          ; 805c: 44f8
	bset	#0x1,@PDR1:8                       ; 805e: 7fd47010
	mov.b	#0x60,r6l                         ; 8062: fe60
	bra	loc_8084:8                          ; 8064: 401e
loc_8066:
	mov.b	@SSSR:16,r0l                      ; 8066: 6a08f0e4
	bld	#0x2,r0l                            ; 806a: 7728
	bcc	loc_8066:8                          ; 806c: 44f8
	sub.b	r0l,r0l                           ; 806e: 1888
	mov.b	r0l,@SSTDR:16                     ; 8070: 6a88f0eb
loc_8074:
	mov.b	@SSSR:16,r0l                      ; 8074: 6a08f0e4
	bld	#0x2,r0l                            ; 8078: 7728
	bcc	loc_8074:8                          ; 807a: 44f8
	sub.b	r0l,r0l                           ; 807c: 1888
	mov.b	r0l,@SSTDR:16                     ; 807e: 6a88f0eb
	dec.b	r6l                               ; 8082: 1a0e
loc_8084:
	mov.b	r6l,r6l                           ; 8084: 0cee
	bne	loc_8066:8                          ; 8086: 46de
loc_8088:
	mov.b	@SSSR:16,r0l                      ; 8088: 6a08f0e4
	bld	#0x3,r0l                            ; 808c: 7738
	bcc	loc_8088:8                          ; 808e: 44f8
	inc	r1l                                 ; 8090: 0a09
loc_8092:
	mov.b	r1l,r0l                           ; 8092: 0c98
	extu.w	r0                               ; 8094: 1750
	cmp.w	e0,r0                             ; 8096: 1d80
	blt	loc_8016:16                         ; 8098: 58d0ff7a
loc_809c:
	mov.b	@SSSR:16,r0l                      ; 809c: 6a08f0e4
	bld	#0x3,r0l                            ; 80a0: 7738
	bcc	loc_809c:8                          ; 80a2: 44f8
	bset	#0x0,@PDR1:8                       ; 80a4: 7fd47000
	mov.w	@er7+,r6                          ; 80a8: 6d76
	rts                                     ; 80aa: 5470
