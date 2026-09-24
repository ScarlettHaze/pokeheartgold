	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_3298

func_3298:
	mov.b	@0xf7d2:16,r6l                    ; 3298: 6a0ef7d2
	cmp.b	#0x3,r6l                          ; 329c: ae03
	bcc	loc_367c:16                         ; 329e: 584003da
	mov.b	#0x3,r0l                          ; 32a2: f803
	mov.w	r0,@-er7                          ; 32a4: 6df0
	mov.b	r0l,r6h                           ; 32a6: 0c86
	sub.b	r6l,r6h                           ; 32a8: 18e6
	mov.b	r6h,r6l                           ; 32aa: 0c6e
	mov.b	#0x8,r6h                          ; 32ac: f608
	mulxu.b	r6h,r6                          ; 32ae: 5066
	mov.b	r6l,r6h                           ; 32b0: 0ce6
	mov.b	r6h,r1h                           ; 32b2: 0c61
	mov.b	#0x60,r1l                         ; 32b4: f960
	sub.w	r0,r0                             ; 32b6: 1900
	jsr	@func_7e58:24                       ; 32b8: 5e007e58
	adds	#2,er7                             ; 32bc: 0b87
	mov.b	#0x3,r0l                          ; 32be: f803
	mov.w	r0,@-er7                          ; 32c0: 6df0
	mov.b	#0x40,r0h                         ; 32c2: f040
	sub.b	r6h,r0h                           ; 32c4: 1860
	mov.b	r6h,r1h                           ; 32c6: 0c61
	mov.b	#0x60,r1l                         ; 32c8: f960
	sub.b	r0l,r0l                           ; 32ca: 1888
	jsr	@func_7e58:24                       ; 32cc: 5e007e58
	adds	#2,er7                             ; 32d0: 0b87
	jmp	@loc_367c:24                        ; 32d2: 5a00367c
