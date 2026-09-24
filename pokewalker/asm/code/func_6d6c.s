	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6d6c

func_6d6c:
	mov.b	#0x4,r0l                          ; 6d6c: f804
	jsr	@func_9c40:24                       ; 6d6e: 5e009c40
	mov.b	r0l,r0l                           ; 6d72: 0c88
	beq	loc_6db2:8                          ; 6d74: 473c
	mov.b	@0xf797:16,r0l                    ; 6d76: 6a08f797
	and.b	#0x78,r0l                         ; 6d7a: e878
	beq	loc_6da0:8                          ; 6d7c: 4722
	mov.b	@0xf797:16,r0l                    ; 6d7e: 6a08f797
	shlr.b	r0l                              ; 6d82: 1108
	shlr.b	r0l                              ; 6d84: 1108
	shlr.b	r0l                              ; 6d86: 1108
	and.b	#0xf,r0l                          ; 6d88: e80f
	dec.b	r0l                               ; 6d8a: 1a08
	mov.b	r0l,r1l                           ; 6d8c: 0c89
	mov.w	#0xf797,r0                        ; 6d8e: 7900f797
	mov.w	#0x104,r2                         ; 6d92: 79020104
	jsr	@func_b924:24                       ; 6d96: 5e00b924
	mov.b	#0x2,r0l                          ; 6d9a: f802
	jsr	@func_36f2:24                       ; 6d9c: 5e0036f2
loc_6da0:
	mov.b	@0xf797:16,r0h                    ; 6da0: 6a00f797
	shlr.b	r0h                              ; 6da4: 1100
	shlr.b	r0h                              ; 6da6: 1100
	shlr.b	r0h                              ; 6da8: 1100
	and.b	#0xf,r0h                          ; 6daa: e00f
	mov.b	r0h,r0l                           ; 6dac: 0c08
	jsr	@func_7c24:24                       ; 6dae: 5e007c24
loc_6db2:
	mov.b	#0x8,r0l                          ; 6db2: f808
	jsr	@func_9c40:24                       ; 6db4: 5e009c40
	mov.b	r0l,r0l                           ; 6db8: 0c88
	beq	loc_6dfa:8                          ; 6dba: 473e
	mov.b	@0xf797:16,r0l                    ; 6dbc: 6a08f797
	and.b	#0x78,r0l                         ; 6dc0: e878
	cmp.b	#0x48,r0l                         ; 6dc2: a848
	bcc	loc_6de8:8                          ; 6dc4: 4422
	mov.b	@0xf797:16,r0l                    ; 6dc6: 6a08f797
	shlr.b	r0l                              ; 6dca: 1108
	shlr.b	r0l                              ; 6dcc: 1108
	shlr.b	r0l                              ; 6dce: 1108
	and.b	#0xf,r0l                          ; 6dd0: e80f
	inc	r0l                                 ; 6dd2: 0a08
	mov.b	r0l,r1l                           ; 6dd4: 0c89
	mov.w	#0xf797,r0                        ; 6dd6: 7900f797
	mov.w	#0x104,r2                         ; 6dda: 79020104
	jsr	@func_b924:24                       ; 6dde: 5e00b924
	mov.b	#0x2,r0l                          ; 6de2: f802
	jsr	@func_36f2:24                       ; 6de4: 5e0036f2
loc_6de8:
	mov.b	@0xf797:16,r0h                    ; 6de8: 6a00f797
	shlr.b	r0h                              ; 6dec: 1100
	shlr.b	r0h                              ; 6dee: 1100
	shlr.b	r0h                              ; 6df0: 1100
	and.b	#0xf,r0h                          ; 6df2: e00f
	mov.b	r0h,r0l                           ; 6df4: 0c08
	jsr	@func_7c24:24                       ; 6df6: 5e007c24
loc_6dfa:
	rts                                     ; 6dfa: 5470
