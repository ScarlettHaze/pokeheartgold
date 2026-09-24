	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7998

func_7998:
	mov.b	#0x27,r0l                         ; 7998: f827
	mov.b	r0l,@SYSCR1:8                     ; 799a: 38f0
	mov.b	#0xe0,r0l                         ; 799c: f8e0
	mov.b	r0l,@SYSCR2:8                     ; 799e: 38f1
	mov.w	#0xf7b5,r0                        ; 79a0: 7900f7b5
	bset	#0x4,@er0                          ; 79a4: 7d007040
	mov.w	@GRA:16,r0                        ; 79a8: 6b00f0f8
	beq	loc_79b0:8                          ; 79ac: 4702
	sleep                                   ; 79ae: 0180
loc_79b0:
	jsr	@func_259e:24                       ; 79b0: 5e00259e
	jsr	@func_9b84:24                       ; 79b4: 5e009b84
	jsr	@func_7348:24                       ; 79b8: 5e007348
	mov.b	@0xf7b5:16,r0l                    ; 79bc: 6a08f7b5
	bld	#0x0,r0l                            ; 79c0: 7708
	bcc	loc_79ee:8                          ; 79c2: 442a
	mov.b	@0xf7b6:16,r0l                    ; 79c4: 6a08f7b6
	and.b	#0x18,r0l                         ; 79c8: e818
	cmp.b	#0x10,r0l                         ; 79ca: a810
	bne	loc_79e6:8                          ; 79cc: 4618
	mov.b	#0x40,r0l                         ; 79ce: f840
	jsr	@func_7ffc:24                       ; 79d0: 5e007ffc
	jsr	@func_7406:24                       ; 79d4: 5e007406
	jsr	@func_7cac:24                       ; 79d8: 5e007cac
	mov.b	@0xf7ac:16,r0l                    ; 79dc: 6a08f7ac
	inc	r0l                                 ; 79e0: 0a08
	mov.b	r0l,@0xf7ac:16                    ; 79e2: 6a88f7ac
loc_79e6:
	mov.w	#0xf7b5,r0                        ; 79e6: 7900f7b5
	bclr	#0x0,@er0                          ; 79ea: 7d007200
loc_79ee:
	jsr	@func_369c:24                       ; 79ee: 5e00369c
	mov.b	r0l,r0l                           ; 79f2: 0c88
	bne	loc_7a08:8                          ; 79f4: 4612
	jsr	@func_3810:24                       ; 79f6: 5e003810
	mov.w	#func_7882,r0                     ; 79fa: 79007882
	jsr	@func_693a:24                       ; 79fe: 5e00693a
	sub.b	r0l,r0l                           ; 7a02: 1888
	mov.b	r0l,@0xf7ae:16                    ; 7a04: 6a88f7ae
loc_7a08:
	rts                                     ; 7a08: 5470
