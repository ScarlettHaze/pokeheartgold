	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6ce2

func_6ce2:
	mov.b	#0x4,r0l                          ; 6ce2: f804
	jsr	@func_9c40:24                       ; 6ce4: 5e009c40
	mov.b	r0l,r0l                           ; 6ce8: 0c88
	beq	loc_6d26:8                          ; 6cea: 473a
	mov.b	@0xf797:16,r0l                    ; 6cec: 6a08f797
	shlr.b	r0l                              ; 6cf0: 1108
	and.b	#0x3,r0l                          ; 6cf2: e803
	extu.w	r0                               ; 6cf4: 1750
	inc.w	#2,r0                             ; 6cf6: 0bd0
	exts.l	er0                              ; 6cf8: 17f0
	mov.w	#0x3,r1                           ; 6cfa: 79010003
	divxs.w	r1,er0                          ; 6cfe: 01d05310
	mov.w	e0,r0                             ; 6d02: 0d80
	mov.b	r0l,r1l                           ; 6d04: 0c89
	mov.w	#0xf797,r0                        ; 6d06: 7900f797
	mov.w	#0x502,r2                         ; 6d0a: 79020502
	jsr	@func_b924:24                       ; 6d0e: 5e00b924
	mov.b	@0xf797:16,r0h                    ; 6d12: 6a00f797
	shlr.b	r0h                              ; 6d16: 1100
	and.b	#0x3,r0h                          ; 6d18: e003
	mov.b	r0h,r0l                           ; 6d1a: 0c08
	jsr	@func_3832:24                       ; 6d1c: 5e003832
	mov.b	#0x2,r0l                          ; 6d20: f802
	jsr	@func_36f2:24                       ; 6d22: 5e0036f2
loc_6d26:
	mov.b	#0x8,r0l                          ; 6d26: f808
	jsr	@func_9c40:24                       ; 6d28: 5e009c40
	mov.b	r0l,r0l                           ; 6d2c: 0c88
	beq	loc_6d6a:8                          ; 6d2e: 473a
	mov.b	@0xf797:16,r0l                    ; 6d30: 6a08f797
	shlr.b	r0l                              ; 6d34: 1108
	and.b	#0x3,r0l                          ; 6d36: e803
	extu.w	r0                               ; 6d38: 1750
	inc.w	#1,r0                             ; 6d3a: 0b50
	exts.l	er0                              ; 6d3c: 17f0
	mov.w	#0x3,r1                           ; 6d3e: 79010003
	divxs.w	r1,er0                          ; 6d42: 01d05310
	mov.w	e0,r0                             ; 6d46: 0d80
	mov.b	r0l,r1l                           ; 6d48: 0c89
	mov.w	#0xf797,r0                        ; 6d4a: 7900f797
	mov.w	#0x502,r2                         ; 6d4e: 79020502
	jsr	@func_b924:24                       ; 6d52: 5e00b924
	mov.b	@0xf797:16,r0h                    ; 6d56: 6a00f797
	shlr.b	r0h                              ; 6d5a: 1100
	and.b	#0x3,r0h                          ; 6d5c: e003
	mov.b	r0h,r0l                           ; 6d5e: 0c08
	jsr	@func_3832:24                       ; 6d60: 5e003832
	mov.b	#0x2,r0l                          ; 6d64: f802
	jsr	@func_36f2:24                       ; 6d66: 5e0036f2
loc_6d6a:
	rts                                     ; 6d6a: 5470
