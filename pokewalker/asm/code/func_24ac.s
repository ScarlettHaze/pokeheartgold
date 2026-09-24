	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_24ac

func_24ac:
	mov.b	@0xf7b2:16,r1l                    ; 24ac: 6a09f7b2
	mov.b	@0xf7b3:16,r0l                    ; 24b0: 6a08f7b3
	cmp.b	r1l,r0l                           ; 24b4: 1c98
	beq	loc_256c:16                         ; 24b6: 587000b2
	mov.b	@0xf7b4:16,r0l                    ; 24ba: 6a08f7b4
	add.b	r1l,r0l                           ; 24be: 0898
	mov.b	r0l,@0xf7b4:16                    ; 24c0: 6a88f7b4
	cmp.b	#0x40,r0l                         ; 24c4: a840
	bls	loc_256c:16                         ; 24c6: 583000a2
	mov.w	@0xf7a0:16,r0                     ; 24ca: 6b00f7a0
	inc.w	#1,r0                             ; 24ce: 0b50
	mov.w	r0,@0xf7a0:16                     ; 24d0: 6b80f7a0
	mov.w	@0xf7a0:16,r0                     ; 24d4: 6b00f7a0
	cmp.w	#0x270f,r0                        ; 24d8: 7920270f
	bls	loc_24e6:8                          ; 24dc: 4308
	mov.w	#0x270f,r0                        ; 24de: 7900270f
	mov.w	r0,@0xf7a0:16                     ; 24e2: 6b80f7a0
loc_24e6:
	mov.l	@0xf79c:16,er0                    ; 24e6: 01006b00f79c
	inc.l	#1,er0                            ; 24ec: 0b70
	mov.l	er0,@0xf79c:16                    ; 24ee: 01006b80f79c
	mov.l	@0xf79c:16,er0                    ; 24f4: 01006b00f79c
	cmp.l	#0x1869f,er0                      ; 24fa: 7a200001869f
	bls	loc_250e:8                          ; 2500: 430c
	mov.l	#0x1869f,er0                      ; 2502: 7a000001869f
	mov.l	er0,@0xf79c:16                    ; 2508: 01006b80f79c
loc_250e:
	mov.l	@0xf780:16,er0                    ; 250e: 01006b00f780
	inc.l	#1,er0                            ; 2514: 0b70
	jsr	@func_a32e:24                       ; 2516: 5e00a32e
	mov.b	@0xf792:16,r0l                    ; 251a: 6a08f792
	inc	r0l                                 ; 251e: 0a08
	mov.b	r0l,@0xf792:16                    ; 2520: 6a88f792
	mov.b	@0xf792:16,r0l                    ; 2524: 6a08f792
	cmp.b	#0x14,r0l                         ; 2528: a814
	bcs	loc_254a:8                          ; 252a: 451e
	mov.b	@0xf792:16,r0l                    ; 252c: 6a08f792
	add.b	#0xec,r0l                         ; 2530: 88ec
	mov.b	r0l,@0xf792:16                    ; 2532: 6a88f792
	mov.w	@0xf78e:16,r0                     ; 2536: 6b00f78e
	inc.w	#1,r0                             ; 253a: 0b50
	cmp.w	#0x270f,r0                        ; 253c: 7920270f
	bls	loc_2546:8                          ; 2540: 4304
	mov.w	#0x270f,r0                        ; 2542: 7900270f
loc_2546:
	mov.w	r0,@0xf78e:16                     ; 2546: 6b80f78e
loc_254a:
	mov.b	@0xf7b3:16,r0l                    ; 254a: 6a08f7b3
	inc	r0l                                 ; 254e: 0a08
	mov.b	r0l,@0xf7b3:16                    ; 2550: 6a88f7b3
	mov.b	@0xf7b2:16,r0h                    ; 2554: 6a00f7b2
	cmp.b	r0h,r0l                           ; 2558: 1c08
	bls	loc_2562:8                          ; 255a: 4306
	mov.b	r0h,r0l                           ; 255c: 0c08
	mov.b	r0l,@0xf7b3:16                    ; 255e: 6a88f7b3
loc_2562:
	mov.b	@0xf7b4:16,r0l                    ; 2562: 6a08f7b4
	add.b	#0xc0,r0l                         ; 2566: 88c0
	mov.b	r0l,@0xf7b4:16                    ; 2568: 6a88f7b4
loc_256c:
	rts                                     ; 256c: 5470
