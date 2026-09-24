	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1a58

func_1a58:
	mov.w	r4,@-er7                          ; 1a58: 6df4
	mov.w	r5,@-er7                          ; 1a5a: 6df5
	mov.w	r6,@-er7                          ; 1a5c: 6df6
	mov.b	r0l,r2l                           ; 1a5e: 0c8a
	mov.b	r0h,r5l                           ; 1a60: 0c0d
	mov.b	r1l,r5h                           ; 1a62: 0c95
	jsr	@func_247e:24                       ; 1a64: 5e00247e
	mov.w	#0x140,r0                         ; 1a68: 79000140
	jsr	@func_2488:24                       ; 1a6c: 5e002488
	mov.w	r0,r6                             ; 1a70: 0d06
	cmp.b	#0x30,r5l                         ; 1a72: ad30
	bne	loc_1a7c:8                          ; 1a74: 4606
	jsr	@func_88e2:24                       ; 1a76: 5e0088e2
	bra	loc_1a80:8                          ; 1a7a: 4004
loc_1a7c:
	jsr	@func_8766:24                       ; 1a7c: 5e008766
loc_1a80:
	mov.w	#0x993e,r4                        ; 1a80: 7904993e
	mov.w	r4,r0                             ; 1a84: 0d40
	mov.w	#0x140,r1                         ; 1a86: 79010140
	mov.w	r6,e0                             ; 1a8a: 0d68
	jsr	@func_5384:24                       ; 1a8c: 5e005384
	mov.b	r5h,r1l                           ; 1a90: 0c59
	mov.w	r6,e0                             ; 1a92: 0d68
	mov.w	#0x1050,r0                        ; 1a94: 79001050
	jsr	@func_18b6:24                       ; 1a98: 5e0018b6
	mov.w	r6,e0                             ; 1a9c: 0d68
	mov.b	r5l,r0h                           ; 1a9e: 0cd0
	mov.b	r2l,r0l                           ; 1aa0: 0ca8
	mov.w	#0x1050,r1                        ; 1aa2: 79011050
	jsr	@func_80ac:24                       ; 1aa6: 5e0080ac
	mov.w	@er7+,r6                          ; 1aaa: 6d76
	mov.w	@er7+,r5                          ; 1aac: 6d75
	mov.w	@er7+,r4                          ; 1aae: 6d74
	rts                                     ; 1ab0: 5470
