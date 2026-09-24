	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a29c

func_a29c:
	mov.b	#0x3c,r0l                         ; a29c: f83c
	mov.b	r0l,@0xf7af:16                    ; a29e: 6a88f7af
	mov.b	#0x5a,r0l                         ; a2a2: f85a
	mov.b	r0l,@0xf7b0:16                    ; a2a4: 6a88f7b0
	mov.b	@0xf7b6:16,r0l                    ; a2a8: 6a08f7b6
	and.b	#0x18,r0l                         ; a2ac: e818
	cmp.b	#0x10,r0l                         ; a2ae: a810
	beq	loc_a2d8:8                          ; a2b0: 4726
	mov.b	@0xf7b6:16,r0l                    ; a2b2: 6a08f7b6
	and.b	#0x18,r0l                         ; a2b6: e818
	bne	loc_a2c0:8                          ; a2b8: 4606
	sub.b	r0l,r0l                           ; a2ba: 1888
	mov.b	r0l,@0xf7ae:16                    ; a2bc: 6a88f7ae
loc_a2c0:
	mov.b	@0xf7b6:16,r0l                    ; a2c0: 6a08f7b6
	and.b	#0xe7,r0l                         ; a2c4: e8e7
	or.b	#0x10,r0l                          ; a2c6: c810
	mov.b	r0l,@0xf7b6:16                    ; a2c8: 6a88f7b6
	mov.w	#0xf06d,r0                        ; a2cc: 7900f06d
	bset	#0x0,@er0                          ; a2d0: 7d007000
	jsr	@func_7fb8:24                       ; a2d4: 5e007fb8
loc_a2d8:
	rts                                     ; a2d8: 5470
