	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_4cd6

func_4cd6:
	mov.w	#0x280,r5                         ; 4cd6: 79050280
	mov.b	@0xf7cf:16,r0l                    ; 4cda: 6a08f7cf
	cmp.b	#0x1,r0l                          ; 4cde: a801
	bne	loc_4cea:8                          ; 4ce0: 4608
	jsr	@func_4b9c:24                       ; 4ce2: 5e004b9c
	jmp	@loc_4f48:24                        ; 4ce6: 5a004f48
loc_4cea:
	jsr	@func_247e:24                       ; 4cea: 5e00247e
	mov.w	#0x140,r0                         ; 4cee: 79000140
	jsr	@func_2488:24                       ; 4cf2: 5e002488
	mov.w	r0,r4                             ; 4cf6: 0d04
	mov.w	#0x180,r0                         ; 4cf8: 79000180
	jsr	@func_2488:24                       ; 4cfc: 5e002488
	mov.w	r0,r6                             ; 4d00: 0d06
	mov.w	r5,r3                             ; 4d02: 0d53
	mov.w	r3,r0                             ; 4d04: 0d30
	mov.w	#0x140,r1                         ; 4d06: 79010140
	mov.w	r4,e0                             ; 4d0a: 0d48
	jsr	@func_5384:24                       ; 4d0c: 5e005384
	mov.b	@0xf7d2:16,r0l                    ; 4d10: 6a08f7d2
	extu.w	r0                               ; 4d14: 1750
	mov.w	#0x20,e0                          ; 4d16: 79080020
	mulxu.w	e0,er0                          ; 4d1a: 5280
	add.w	r0,r4                             ; 4d1c: 0904
	mov.w	r4,e0                             ; 4d1e: 0d48
	mov.w	#0x1008,r1                        ; 4d20: 79011008
	mov.w	#0x40,r0                          ; 4d24: 79000040
	jsr	@func_80ac:24                       ; 4d28: 5e0080ac
	mov.w	#0x1950,r4                        ; 4d2c: 79041950
	add.w	r5,r4                             ; 4d30: 0954
	mov.w	r4,r0                             ; 4d32: 0d40
	mov.w	#0x80,r1                          ; 4d34: 79010080
	mov.w	r6,e0                             ; 4d38: 0d68
	jsr	@func_5384:24                       ; 4d3a: 5e005384
	mov.w	r6,e0                             ; 4d3e: 0d68
	mov.w	#0x1020,r1                        ; 4d40: 79011020
	mov.w	#0x20,r0                          ; 4d44: 79000020
	jsr	@func_80ac:24                       ; 4d48: 5e0080ac
	mov.w	#0x19d0,r4                        ; 4d4c: 790419d0
	add.w	r5,r4                             ; 4d50: 0954
	mov.w	r4,r0                             ; 4d52: 0d40
	mov.w	#0x60,r1                          ; 4d54: 79010060
	mov.w	r6,e0                             ; 4d58: 0d68
	jsr	@func_5384:24                       ; 4d5a: 5e005384
	mov.w	r6,e0                             ; 4d5e: 0d68
	mov.w	#0x1018,r1                        ; 4d60: 79011018
	mov.w	#0x48,r0                          ; 4d64: 79000048
	jsr	@func_80ac:24                       ; 4d68: 5e0080ac
	mov.b	@0xf797:16,r0l                    ; 4d6c: 6a08f797
	bld	#0x0,r0l                            ; 4d70: 7708
	bcc	loc_4d7a:8                          ; 4d72: 4406
	mov.w	#0xc83c,r4                        ; 4d74: 7904c83c
	bra	loc_4d7e:8                          ; 4d78: 4004
loc_4d7a:
	mov.w	#0x8fbe,r4                        ; 4d7a: 79048fbe
loc_4d7e:
	mov.w	r4,r0                             ; 4d7e: 0d40
	mov.w	#0xc0,r1                          ; 4d80: 790100c0
	mov.w	r6,e0                             ; 4d84: 0d68
	jsr	@func_5384:24                       ; 4d86: 5e005384
	mov.w	r6,e0                             ; 4d8a: 0d68
	mov.w	#0x1820,r1                        ; 4d8c: 79011820
	sub.w	r0,r0                             ; 4d90: 1900
	jsr	@func_80ac:24                       ; 4d92: 5e0080ac
	mov.b	@0xf7d0:16,r0l                    ; 4d96: 6a08f7d0
	beq	loc_4da2:8                          ; 4d9a: 4706
	dec.b	r0l                               ; 4d9c: 1a08
	mov.b	r0l,@0xf7d0:16                    ; 4d9e: 6a88f7d0
loc_4da2:
	mov.w	#0x18d0,r4                        ; 4da2: 790418d0
	add.w	r5,r4                             ; 4da6: 0954
	mov.w	r4,r0                             ; 4da8: 0d40
	mov.w	#0x80,r1                          ; 4daa: 79010080
	mov.w	r6,e0                             ; 4dae: 0d68
	jsr	@func_5384:24                       ; 4db0: 5e005384
	sub.w	e6,e6                             ; 4db4: 19ee
	mov.w	r6,r3                             ; 4db6: 0d63
	add.w	#0x40,r3                          ; 4db8: 79130040
loc_4dbc:
	mov.b	@0xf7cf:16,r0l                    ; 4dbc: 6a08f7cf
	cmp.b	#0x2,r0l                          ; 4dc0: a802
	bne	loc_4dce:8                          ; 4dc2: 460a
	mov.b	@0xf7d1:16,r0l                    ; 4dc4: 6a08f7d1
	extu.w	r0                               ; 4dc8: 1750
	cmp.w	r0,e6                             ; 4dca: 1d0e
	beq	loc_4df8:8                          ; 4dcc: 472a
loc_4dce:
	mov.w	e6,r0                             ; 4dce: 0de0
	mov.b	#0x10,r0h                         ; 4dd0: f010
	mulxu.b	r0h,r0                          ; 4dd2: 5000
	mov.b	r0l,r4l                           ; 4dd4: 0c8c
	mov.b	@0xf7d4:16,r0l                    ; 4dd6: 6a08f7d4
	extu.w	r0                               ; 4dda: 1750
	cmp.w	r0,e6                             ; 4ddc: 1d0e
	bne	loc_4dea:8                          ; 4dde: 460a
	mov.b	r4l,r0l                           ; 4de0: 0cc8
	mov.w	r3,e0                             ; 4de2: 0d38
	mov.w	#0x1010,r1                        ; 4de4: 79011010
	bra	loc_4df2:8                          ; 4de8: 4008
loc_4dea:
	mov.b	r4l,r0l                           ; 4dea: 0cc8
	mov.w	r6,e0                             ; 4dec: 0d68
	mov.b	#0x10,r1h                         ; 4dee: f110
	mov.b	r1h,r1l                           ; 4df0: 0c19
loc_4df2:
	mov.b	#0x18,r0h                         ; 4df2: f018
	jsr	@func_80ac:24                       ; 4df4: 5e0080ac
loc_4df8:
	inc.w	#1,e6                             ; 4df8: 0b5e
	cmp.w	#0x6,e6                           ; 4dfa: 792e0006
	blt	loc_4dbc:8                          ; 4dfe: 4dbc
	mov.w	#0x10,e6                          ; 4e00: 790e0010
	mov.b	@0xf7cf:16,r0l                    ; 4e04: 6a08f7cf
	beq	loc_4e1e:8                          ; 4e08: 4714
	cmp.b	#0x2,r0l                          ; 4e0a: a802
	beq	loc_4e5e:8                          ; 4e0c: 4750
	cmp.b	#0x3,r0l                          ; 4e0e: a803
	beq	loc_4ece:16                         ; 4e10: 587000ba
	cmp.b	#0x4,r0l                          ; 4e14: a804
	bne	loc_4f48:16                         ; 4e16: 5860012e
	jmp	@loc_4f10:24                        ; 4e1a: 5a004f10
loc_4e1e:
	mov.b	@0xf7ac:16,r4l                    ; 4e1e: 6a0cf7ac
	and.b	#0x1,r4l                          ; 4e22: ec01
	extu.w	r4                               ; 4e24: 1754
	mov.w	e6,e4                             ; 4e26: 0dec
	mulxu.w	e4,er4                          ; 4e28: 52c4
	mov.w	#0x278,r0                         ; 4e2a: 79000278
	add.w	r5,r0                             ; 4e2e: 0950
	add.w	r0,r4                             ; 4e30: 0904
	mov.w	e6,r1                             ; 4e32: 0de1
	mov.w	r4,r0                             ; 4e34: 0d40
	mov.w	r6,e0                             ; 4e36: 0d68
	jsr	@func_5384:24                       ; 4e38: 5e005384
	mov.w	r6,e0                             ; 4e3c: 0d68
	mov.b	@0xf7d1:16,r0l                    ; 4e3e: 6a08f7d1
	mov.b	#0x10,r0h                         ; 4e42: f010
	mulxu.b	r0h,r0                          ; 4e44: 5000
	add.b	#0x4,r0l                          ; 4e46: 8804
	mov.w	#0x808,r1                         ; 4e48: 79010808
	mov.b	#0x28,r0h                         ; 4e4c: f028
	jsr	@func_80ac:24                       ; 4e4e: 5e0080ac
	mov.w	#0xf,r1                           ; 4e52: 7901000f
	mov.w	#0x1730,r0                        ; 4e56: 79001730
	jmp	@loc_4f44:24                        ; 4e5a: 5a004f44
loc_4e5e:
	mov.w	#0x208,r4                         ; 4e5e: 79040208
	add.w	r5,r4                             ; 4e62: 0954
	mov.w	e6,r1                             ; 4e64: 0de1
	mov.w	r4,r0                             ; 4e66: 0d40
	mov.w	r6,e0                             ; 4e68: 0d68
	jsr	@func_5384:24                       ; 4e6a: 5e005384
	mov.w	r6,e0                             ; 4e6e: 0d68
	mov.b	@0xf7d1:16,r0l                    ; 4e70: 6a08f7d1
	mov.b	#0x10,r0h                         ; 4e74: f010
	mulxu.b	r0h,r0                          ; 4e76: 5000
	add.b	#0x4,r0l                          ; 4e78: 8804
	mov.w	#0x808,r1                         ; 4e7a: 79010808
	mov.b	#0x18,r0h                         ; 4e7e: f018
	jsr	@func_80ac:24                       ; 4e80: 5e0080ac
	mov.b	@0xf7d5:16,r0l                    ; 4e84: 6a08f7d5
	beq	loc_4ea4:8                          ; 4e88: 471a
	extu.w	r0                               ; 4e8a: 1750
	mov.w	r0,e0                             ; 4e8c: 0d08
	mov.b	#0xd,r1l                          ; 4e8e: f90d
	mov.w	#0x2002,r0                        ; 4e90: 79002002
	jsr	@func_1f6c:24                       ; 4e94: 5e001f6c
	mov.w	#0x10e,r1                         ; 4e98: 7901010e
	mov.w	#0xf30,r0                         ; 4e9c: 79000f30
	jmp	@loc_4f44:24                        ; 4ea0: 5a004f44
loc_4ea4:
	mov.b	@0xf7ce:16,r6l                    ; 4ea4: 6a0ef7ce
	cmp.b	#0xa,r6l                          ; 4ea8: ae0a
	bcs	loc_4eb8:8                          ; 4eaa: 450c
	mov.b	#0xd,r1l                          ; 4eac: f90d
	mov.w	#0x2000,r0                        ; 4eae: 79002000
	jsr	@func_1c80:24                       ; 4eb2: 5e001c80
	bra	loc_4ec4:8                          ; 4eb6: 400c
loc_4eb8:
	mov.b	r6l,r1l                           ; 4eb8: 0ce9
	mov.b	#0xd,r1h                          ; 4eba: f10d
	mov.w	#0x2000,r0                        ; 4ebc: 79002000
	jsr	@func_1c26:24                       ; 4ec0: 5e001c26
loc_4ec4:
	mov.w	#0x10e,r1                         ; 4ec4: 7901010e
	mov.w	#0x1830,r0                        ; 4ec8: 79001830
	bra	loc_4f44:8                          ; 4ecc: 4076
loc_4ece:
	mov.w	#0x10f,r1                         ; 4ece: 7901010f
	mov.w	#0x1930,r0                        ; 4ed2: 79001930
	jsr	@func_2096:24                       ; 4ed6: 5e002096
	mov.b	@0xf7d2:16,r0l                    ; 4eda: 6a08f7d2
	bne	loc_4f48:8                          ; 4ede: 4668
	mov.w	#0x208,r4                         ; 4ee0: 79040208
	add.w	r5,r4                             ; 4ee4: 0954
	mov.w	e6,r1                             ; 4ee6: 0de1
	mov.w	r4,r0                             ; 4ee8: 0d40
	mov.w	r6,e0                             ; 4eea: 0d68
	jsr	@func_5384:24                       ; 4eec: 5e005384
	mov.w	#0x3,e6                           ; 4ef0: 790e0003
loc_4ef4:
	mov.b	@0xf7d3:16,r0l                    ; 4ef4: 6a08f7d3
	mov.b	#0x10,r0h                         ; 4ef8: f010
	mulxu.b	r0h,r0                          ; 4efa: 5000
	add.b	#0x4,r0l                          ; 4efc: 8804
	mov.w	r6,e0                             ; 4efe: 0d68
	mov.w	#0x808,r1                         ; 4f00: 79010808
	mov.b	#0x16,r0h                         ; 4f04: f016
	jsr	@func_80ac:24                       ; 4f06: 5e0080ac
	dec.w	#1,e6                             ; 4f0a: 1b5e
	beq	loc_4f48:8                          ; 4f0c: 473a
	bra	loc_4ef4:8                          ; 4f0e: 40e4
loc_4f10:
	mov.b	@0xf7d1:16,r0l                    ; 4f10: 6a08f7d1
	extu.w	r0                               ; 4f14: 1750
	mov.w	r0,r1                             ; 4f16: 0d01
	mov.b	@0xf7d3:16,r6l                    ; 4f18: 6a0ef7d3
	extu.w	r6                               ; 4f1c: 1756
	mov.w	r6,e6                             ; 4f1e: 0d6e
	sub.w	e6,r0                             ; 4f20: 19e0
	mov.w	r0,r6                             ; 4f22: 0d06
	bge	loc_4f2c:8                          ; 4f24: 4c06
	mov.w	r1,r0                             ; 4f26: 0d10
	neg.w	r0                                ; 4f28: 1790
	add.w	e6,r0                             ; 4f2a: 09e0
loc_4f2c:
	cmp.w	#0x2,r0                           ; 4f2c: 79200002
	bge	loc_4f3c:8                          ; 4f30: 4c0a
	mov.w	#0x10f,r1                         ; 4f32: 7901010f
	mov.w	#0x1a30,r0                        ; 4f36: 79001a30
	bra	loc_4f44:8                          ; 4f3a: 4008
loc_4f3c:
	mov.w	#0x10f,r1                         ; 4f3c: 7901010f
	mov.w	#0x1b30,r0                        ; 4f40: 79001b30
loc_4f44:
	jsr	@func_2096:24                       ; 4f44: 5e002096
loc_4f48:
	sub.w	r0,r0                             ; 4f48: 1900
	jsr	@func_21fe:24                       ; 4f4a: 5e0021fe
	rts                                     ; 4f4e: 5470
