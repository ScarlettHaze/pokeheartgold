	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3f72

func_3f72:
	mov.w	r2,@-er7                          ; 3f72: 6df2
	mov.w	r3,@-er7                          ; 3f74: 6df3
	mov.w	r4,@-er7                          ; 3f76: 6df4
	mov.w	#0x420,r0                         ; 3f78: 79000420
	jsr	@func_1936:24                       ; 3f7c: 5e001936
	mov.b	#0x5,r1l                          ; 3f80: f905
	mov.w	#0x2000,r0                        ; 3f82: 79002000
	jsr	@func_1a58:24                       ; 3f86: 5e001a58
	mov.w	#0xe,r1                           ; 3f8a: 7901000e
	mov.w	#0xd30,r0                         ; 3f8e: 79000d30
	jsr	@func_2096:24                       ; 3f92: 5e002096
	mov.b	@0xf7cf:16,r0l                    ; 3f96: 6a08f7cf
	cmp.b	#0x10,r0l                         ; 3f9a: a810
	bcc	loc_3fa4:8                          ; 3f9c: 4406
	inc	r0l                                 ; 3f9e: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 3fa0: 6a88f7cf
loc_3fa4:
	jsr	@func_369c:24                       ; 3fa4: 5e00369c
	mov.b	r0l,r0l                           ; 3fa8: 0c88
	bne	loc_3fbe:8                          ; 3faa: 4612
	mov.b	@0xf7cf:16,r0l                    ; 3fac: 6a08f7cf
	cmp.b	#0x8,r0l                          ; 3fb0: a808
	bls	loc_3fbe:8                          ; 3fb2: 430a
	jsr	@func_6a1c:24                       ; 3fb4: 5e006a1c
	sub.b	r0l,r0l                           ; 3fb8: 1888
	jsr	@func_69b8:24                       ; 3fba: 5e0069b8
loc_3fbe:
	mov.w	@er7+,r4                          ; 3fbe: 6d74
	mov.w	@er7+,r3                          ; 3fc0: 6d73
	mov.w	@er7+,r2                          ; 3fc2: 6d72
	rts                                     ; 3fc4: 5470
