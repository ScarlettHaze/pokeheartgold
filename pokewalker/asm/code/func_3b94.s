	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3b94

func_3b94:
	mov.b	#0x4,r0l                          ; 3b94: f804
	jsr	@func_9c40:24                       ; 3b96: 5e009c40
	mov.b	r0l,r0l                           ; 3b9a: 0c88
	beq	loc_3bbc:8                          ; 3b9c: 471e
	mov.b	@0xf7cf:16,r0l                    ; 3b9e: 6a08f7cf
	bne	loc_3bb0:8                          ; 3ba2: 460c
	jsr	@func_6a1c:24                       ; 3ba4: 5e006a1c
	sub.b	r0l,r0l                           ; 3ba8: 1888
	jsr	@func_69b8:24                       ; 3baa: 5e0069b8
	bra	loc_3bce:8                          ; 3bae: 401e
loc_3bb0:
	dec.b	r0l                               ; 3bb0: 1a08
	mov.b	r0l,@0xf7cf:16                    ; 3bb2: 6a88f7cf
	mov.b	#0x2,r0l                          ; 3bb6: f802
	jsr	@func_36f2:24                       ; 3bb8: 5e0036f2
loc_3bbc:
	mov.b	#0x8,r0l                          ; 3bbc: f808
	jsr	@func_9c40:24                       ; 3bbe: 5e009c40
	mov.b	r0l,r0l                           ; 3bc2: 0c88
	beq	loc_3bde:8                          ; 3bc4: 4718
	mov.b	@0xf7cf:16,r0l                    ; 3bc6: 6a08f7cf
	cmp.b	#0x2,r0l                          ; 3bca: a802
	bne	loc_3bd2:8                          ; 3bcc: 4604
loc_3bce:
	mov.b	#0x1,r0l                          ; 3bce: f801
	bra	loc_3c04:8                          ; 3bd0: 4032
loc_3bd2:
	inc	r0l                                 ; 3bd2: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 3bd4: 6a88f7cf
	mov.b	#0x2,r0l                          ; 3bd8: f802
	jsr	@func_36f2:24                       ; 3bda: 5e0036f2
loc_3bde:
	mov.b	#0x2,r0l                          ; 3bde: f802
	jsr	@func_9c40:24                       ; 3be0: 5e009c40
	mov.b	r0l,r0l                           ; 3be4: 0c88
	beq	loc_3c08:8                          ; 3be6: 4720
	mov.b	@0xf7d0:16,r0l                    ; 3be8: 6a08f7d0
	bne	loc_3bf4:8                          ; 3bec: 4606
	jsr	@func_3a70:24                       ; 3bee: 5e003a70
	bra	loc_3bf8:8                          ; 3bf2: 4004
loc_3bf4:
	jsr	@func_3b02:24                       ; 3bf4: 5e003b02
loc_3bf8:
	jsr	@func_6a1c:24                       ; 3bf8: 5e006a1c
	sub.b	r0l,r0l                           ; 3bfc: 1888
	jsr	@func_69b8:24                       ; 3bfe: 5e0069b8
	sub.b	r0l,r0l                           ; 3c02: 1888
loc_3c04:
	jsr	@func_36f2:24                       ; 3c04: 5e0036f2
loc_3c08:
	rts                                     ; 3c08: 5470
