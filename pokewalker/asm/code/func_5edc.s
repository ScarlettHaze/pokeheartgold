	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_5edc

func_5edc:
	jsr	@func_247e:24                       ; 5edc: 5e00247e
	mov.w	#0xc0,r0                          ; 5ee0: 790000c0
	jsr	@func_2488:24                       ; 5ee4: 5e002488
	mov.w	@0xf7d2:16,r0                     ; 5ee8: 6b00f7d2
	bld	#0x1,@er0                           ; 5eec: 7c007710
	bcc	loc_5efa:8                          ; 5ef0: 4408
	mov.w	#0x420,r0                         ; 5ef2: 79000420
	jsr	@func_1936:24                       ; 5ef6: 5e001936
loc_5efa:
	mov.w	@0xf7d2:16,r0                     ; 5efa: 6b00f7d2
	mov.b	@er0,r1l                          ; 5efe: 6809
	and.b	#0xe0,r1l                         ; 5f00: e9e0
	cmp.b	#0xe0,r1l                         ; 5f02: a9e0
	beq	loc_5f14:8                          ; 5f04: 470e
	mov.b	@er0,r0l                          ; 5f06: 6808
	rotl.b	r0l                              ; 5f08: 1288
	rotl.b	r0l                              ; 5f0a: 1288
	rotl.b	r0l                              ; 5f0c: 1288
	and.b	#0x7,r0l                          ; 5f0e: e807
	jsr	@func_6ad8:24                       ; 5f10: 5e006ad8
loc_5f14:
	mov.w	@0xf7d2:16,r0                     ; 5f14: 6b00f7d2
	bld	#0x2,@er0                           ; 5f18: 7c007720
	bcc	loc_5f26:8                          ; 5f1c: 4408
	mov.b	#0x14,r0h                         ; 5f1e: f014
	mov.b	r0h,r0l                           ; 5f20: 0c08
	jsr	@func_1b94:24                       ; 5f22: 5e001b94
loc_5f26:
	mov.b	@0xf7cf:16,r6l                    ; 5f26: 6a0ef7cf
	mov.w	@0xf7d2:16,r0                     ; 5f2a: 6b00f7d2
	mov.b	@(0x2:16,er0),r1l                 ; 5f2e: 6e090002
	cmp.b	#0xfc,r1l                         ; 5f32: a9fc
	beq	loc_5f44:8                          ; 5f34: 470e
	cmp.b	#0xfd,r1l                         ; 5f36: a9fd
	beq	loc_5f50:8                          ; 5f38: 4716
	cmp.b	#0xfe,r1l                         ; 5f3a: a9fe
	beq	loc_5f5e:8                          ; 5f3c: 4720
	cmp.b	#0xff,r1l                         ; 5f3e: a9ff
	beq	loc_5f7a:8                          ; 5f40: 4738
	bra	loc_5f6e:8                          ; 5f42: 402a
loc_5f44:
	mov.b	#0x5,r1l                          ; 5f44: f905
	mov.w	#0x2000,r0                        ; 5f46: 79002000
	jsr	@func_1a58:24                       ; 5f4a: 5e001a58
	bra	loc_5f7a:8                          ; 5f4e: 402a
loc_5f50:
	mov.b	r6l,r1l                           ; 5f50: 0ce9
	mov.b	#0xd,r1h                          ; 5f52: f10d
	mov.w	#0x2000,r0                        ; 5f54: 79002000
	jsr	@func_1c26:24                       ; 5f58: 5e001c26
	bra	loc_5f7a:8                          ; 5f5c: 401c
loc_5f5e:
	extu.w	r6                               ; 5f5e: 1756
	mov.w	r6,e0                             ; 5f60: 0d68
	mov.b	#0xd,r1l                          ; 5f62: f90d
	mov.w	#0x2002,r0                        ; 5f64: 79002002
	jsr	@func_1f6c:24                       ; 5f68: 5e001f6c
	bra	loc_5f7a:8                          ; 5f6c: 400c
loc_5f6e:
	mov.b	r1l,r0h                           ; 5f6e: 0c90
	mov.w	#0xd,r1                           ; 5f70: 7901000d
	mov.b	#0x20,r0l                         ; 5f74: f820
	jsr	@func_2096:24                       ; 5f76: 5e002096
loc_5f7a:
	mov.w	@0xf7d2:16,r0                     ; 5f7a: 6b00f7d2
	mov.b	@er0,r1l                          ; 5f7e: 6809
	and.b	#0x18,r1l                         ; 5f80: e918
	cmp.b	#0x8,r1l                          ; 5f82: a908
	bls	loc_5f92:8                          ; 5f84: 430c
	mov.b	@(0x3:16,er0),r0h                 ; 5f86: 6e000003
	mov.b	@0xf7d0:16,r0l                    ; 5f8a: 6a08f7d0
	add.b	r0l,r0h                           ; 5f8e: 0880
	bra	loc_5fb0:8                          ; 5f90: 401e
loc_5f92:
	mov.b	@(0x2:16,er0),r0l                 ; 5f92: 6e080002
	cmp.b	#0xff,r0l                         ; 5f96: a8ff
	bne	loc_5fa8:8                          ; 5f98: 460e
	mov.w	@0xf7d2:16,r0                     ; 5f9a: 6b00f7d2
	mov.b	@(0x3:16,er0),r0h                 ; 5f9e: 6e000003
	mov.w	#0x10f,r1                         ; 5fa2: 7901010f
	bra	loc_5fb4:8                          ; 5fa6: 400c
loc_5fa8:
	mov.w	@0xf7d2:16,r0                     ; 5fa8: 6b00f7d2
	mov.b	@(0x3:16,er0),r0h                 ; 5fac: 6e000003
loc_5fb0:
	mov.w	#0x10e,r1                         ; 5fb0: 7901010e
loc_5fb4:
	mov.b	#0x30,r0l                         ; 5fb4: f830
	jsr	@func_2096:24                       ; 5fb6: 5e002096
	sub.w	r0,r0                             ; 5fba: 1900
	jsr	@func_21fe:24                       ; 5fbc: 5e0021fe
	rts                                     ; 5fc0: 5470
