	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1bc6

func_1bc6:
	mov.w	r5,@-er7                          ; 1bc6: 6df5
	mov.w	r6,@-er7                          ; 1bc8: 6df6
	mov.b	r0l,r2h                           ; 1bca: 0c82
	mov.b	r0h,r5l                           ; 1bcc: 0c0d
	mov.b	r1l,r5h                           ; 1bce: 0c95
	mov.b	r1h,r2l                           ; 1bd0: 0c1a
	jsr	@func_247e:24                       ; 1bd2: 5e00247e
	mov.w	#0x180,r0                         ; 1bd6: 79000180
	jsr	@func_2488:24                       ; 1bda: 5e002488
	mov.w	r0,r6                             ; 1bde: 0d06
	cmp.b	#0x30,r5l                         ; 1be0: ad30
	bne	loc_1bea:8                          ; 1be2: 4606
	jsr	@func_88e2:24                       ; 1be4: 5e0088e2
	bra	loc_1bee:8                          ; 1be8: 4004
loc_1bea:
	jsr	@func_8766:24                       ; 1bea: 5e008766
loc_1bee:
	mov.b	r5h,r0l                           ; 1bee: 0c58
	extu.w	r0                               ; 1bf0: 1750
	mov.w	#0x140,e0                         ; 1bf2: 79080140
	mulxu.w	e0,er0                          ; 1bf6: 5280
	add.w	#0xa4fe,r0                        ; 1bf8: 7910a4fe
	mov.w	#0x140,r1                         ; 1bfc: 79010140
	mov.w	r6,e0                             ; 1c00: 0d68
	jsr	@func_5384:24                       ; 1c02: 5e005384
	mov.b	r2l,r1l                           ; 1c06: 0ca9
	mov.w	r6,e0                             ; 1c08: 0d68
	mov.w	#0x1050,r0                        ; 1c0a: 79001050
	jsr	@func_18b6:24                       ; 1c0e: 5e0018b6
	mov.w	r6,e0                             ; 1c12: 0d68
	mov.b	r5l,r0h                           ; 1c14: 0cd0
	mov.b	r2h,r0l                           ; 1c16: 0c28
	mov.w	#0x1050,r1                        ; 1c18: 79011050
	jsr	@func_80ac:24                       ; 1c1c: 5e0080ac
	mov.w	@er7+,r6                          ; 1c20: 6d76
	mov.w	@er7+,r5                          ; 1c22: 6d75
	rts                                     ; 1c24: 5470
