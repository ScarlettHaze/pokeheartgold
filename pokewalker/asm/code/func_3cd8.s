	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3cd8

func_3cd8:
	mov.w	#func_80ac,r4                     ; 3cd8: 790480ac
	jsr	@func_247e:24                       ; 3cdc: 5e00247e
	mov.w	#0x180,r0                         ; 3ce0: 79000180
	jsr	@func_2488:24                       ; 3ce4: 5e002488
	mov.w	r0,r6                             ; 3ce8: 0d06
	mov.w	#0x280,r5                         ; 3cea: 79050280
	mov.w	r0,e0                             ; 3cee: 0d08
	mov.w	#0x378,r0                         ; 3cf0: 79000378
	add.w	r5,r0                             ; 3cf4: 0950
	mov.w	#0x20,r1                          ; 3cf6: 79010020
	jsr	@func_5384:24                       ; 3cfa: 5e005384
	mov.w	r6,e0                             ; 3cfe: 0d68
	mov.w	#0x1008,r1                        ; 3d00: 79011008
	sub.w	r0,r0                             ; 3d04: 1900
	jsr	@er4                                ; 3d06: 5d40
	mov.w	#0x88b0,r0                        ; 3d08: 790088b0
	add.w	r5,r0                             ; 3d0c: 0950
	mov.w	#0x140,r1                         ; 3d0e: 79010140
	mov.w	r6,e0                             ; 3d12: 0d68
	jsr	@func_5384:24                       ; 3d14: 5e005384
	mov.w	r6,e0                             ; 3d18: 0d68
	mov.w	#0x1050,r1                        ; 3d1a: 79011050
	mov.w	#0x8,r0                           ; 3d1e: 79000008
	jsr	@er4                                ; 3d22: 5d40
	mov.w	#0x2a8,r0                         ; 3d24: 790002a8
	add.w	r5,r0                             ; 3d28: 0950
	mov.w	#0x20,r1                          ; 3d2a: 79010020
	mov.w	r6,e0                             ; 3d2e: 0d68
	jsr	@func_5384:24                       ; 3d30: 5e005384
	mov.b	@0xf7ac:16,r0l                    ; 3d34: 6a08f7ac
	and.b	#0x1,r0l                          ; 3d38: e801
	extu.w	r0                               ; 3d3a: 1750
	mov.w	#0x10,e0                          ; 3d3c: 79080010
	mulxu.w	e0,er0                          ; 3d40: 5280
	add.w	r6,r0                             ; 3d42: 0960
	mov.w	r0,e0                             ; 3d44: 0d08
	mov.b	@0xf7cf:16,r0l                    ; 3d46: 6a08f7cf
	mov.b	#0x14,r0h                         ; 3d4a: f014
	mulxu.b	r0h,r0                          ; 3d4c: 5000
	add.b	#0x18,r0l                         ; 3d4e: 8818
	mov.w	#0x808,r1                         ; 3d50: 79010808
	mov.b	#0x18,r0h                         ; 3d54: f018
	jsr	@er4                                ; 3d56: 5d40
	mov.b	@0xf7d0:16,r0l                    ; 3d58: 6a08f7d0
	bne	loc_3d64:8                          ; 3d5c: 4606
	mov.w	#0x1e0,r0                         ; 3d5e: 790001e0
	bra	loc_3d68:8                          ; 3d62: 4004
loc_3d64:
	mov.w	#0x208,r0                         ; 3d64: 79000208
loc_3d68:
	add.w	r5,r0                             ; 3d68: 0950
	mov.w	#0x10,r1                          ; 3d6a: 79010010
	mov.w	r6,e0                             ; 3d6e: 0d68
	jsr	@func_5384:24                       ; 3d70: 5e005384
	mov.w	r6,e0                             ; 3d74: 0d68
	mov.w	#0x808,r1                         ; 3d76: 79010808
	mov.w	#0x2018,r0                        ; 3d7a: 79002018
	jsr	@er4                                ; 3d7e: 5d40
	mov.w	r6,e0                             ; 3d80: 0d68
	mov.w	#0x808,r1                         ; 3d82: 79010808
	mov.w	#0x202c,r0                        ; 3d86: 7900202c
	jsr	@er4                                ; 3d8a: 5d40
	mov.w	r6,e0                             ; 3d8c: 0d68
	mov.w	#0x808,r1                         ; 3d8e: 79010808
	mov.w	#0x2040,r0                        ; 3d92: 79002040
	jsr	@er4                                ; 3d96: 5d40
	mov.b	@0xf7cf:16,r0l                    ; 3d98: 6a08f7cf
	blt	loc_3dba:8                          ; 3d9c: 4d1c
	cmp.b	#0x2,r0l                          ; 3d9e: a802
	bgt	loc_3dba:8                          ; 3da0: 4e18
	mov.b	@0xf7d0:16,r0l                    ; 3da2: 6a08f7d0
	bne	loc_3dae:8                          ; 3da6: 4606
	jsr	@func_3c0a:24                       ; 3da8: 5e003c0a
	bra	loc_3db2:8                          ; 3dac: 4004
loc_3dae:
	jsr	@func_3c76:24                       ; 3dae: 5e003c76
loc_3db2:
	mov.w	#0x58,r0                          ; 3db2: 79000058
	jsr	@func_21fe:24                       ; 3db6: 5e0021fe
loc_3dba:
	rts                                     ; 3dba: 5470
