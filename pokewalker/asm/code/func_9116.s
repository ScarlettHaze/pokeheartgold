	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9116

func_9116:
	mov.b	#0x4,r0l                          ; 9116: f804
	jsr	@func_9c40:24                       ; 9118: 5e009c40
	mov.b	r0l,r0l                           ; 911c: 0c88
	beq	loc_9150:8                          ; 911e: 4730
	mov.w	@0xf7d2:16,r0                     ; 9120: 6b00f7d2
	jsr	@func_8c62:24                       ; 9124: 5e008c62
	mov.b	r0l,r0l                           ; 9128: 0c88
	beq	loc_914a:8                          ; 912a: 471e
	mov.w	@0xf7d0:16,r0                     ; 912c: 6b00f7d0
	beq	loc_9166:8                          ; 9130: 4734
	sub.b	r0l,r0l                           ; 9132: 1888
	mov.b	r0l,@0xf7ce:16                    ; 9134: 6a88f7ce
	mov.w	@0xf7d0:16,r0                     ; 9138: 6b00f7d0
	jsr	@func_8ca4:24                       ; 913c: 5e008ca4
	mov.b	#0xa,r0l                          ; 9140: f80a
	jsr	@func_69b8:24                       ; 9142: 5e0069b8
	mov.b	#0x2,r0l                          ; 9146: f802
	bra	loc_9186:8                          ; 9148: 403c
loc_914a:
	mov.b	#0x2,r0l                          ; 914a: f802
	jsr	@func_36f2:24                       ; 914c: 5e0036f2
loc_9150:
	mov.b	#0x8,r0l                          ; 9150: f808
	jsr	@func_9c40:24                       ; 9152: 5e009c40
	mov.b	r0l,r0l                           ; 9156: 0c88
	beq	loc_9170:8                          ; 9158: 4716
	mov.w	@0xf7d2:16,r0                     ; 915a: 6b00f7d2
	jsr	@func_8bd2:24                       ; 915e: 5e008bd2
	mov.b	r0l,r0l                           ; 9162: 0c88
	beq	loc_916a:8                          ; 9164: 4704
loc_9166:
	mov.b	#0x1,r0l                          ; 9166: f801
	bra	loc_9186:8                          ; 9168: 401c
loc_916a:
	mov.b	#0x2,r0l                          ; 916a: f802
	jsr	@func_36f2:24                       ; 916c: 5e0036f2
loc_9170:
	mov.b	#0x2,r0l                          ; 9170: f802
	jsr	@func_9c40:24                       ; 9172: 5e009c40
	mov.b	r0l,r0l                           ; 9176: 0c88
	beq	loc_918a:8                          ; 9178: 4710
	jsr	@func_6a1c:24                       ; 917a: 5e006a1c
	sub.b	r0l,r0l                           ; 917e: 1888
	jsr	@func_69b8:24                       ; 9180: 5e0069b8
	sub.b	r0l,r0l                           ; 9184: 1888
loc_9186:
	jsr	@func_36f2:24                       ; 9186: 5e0036f2
loc_918a:
	rts                                     ; 918a: 5470
