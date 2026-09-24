	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2fcc

func_2fcc:
	cmp.b	r6h,r6l                           ; 2fcc: 1c6e
	bcs	loc_30a4:16                         ; 2fce: 585000d2
	jsr	@func_2c32:24                       ; 2fd2: 5e002c32
	mov.b	r0l,r0l                           ; 2fd6: 0c88
	beq	loc_2fe8:8                          ; 2fd8: 470e
	mov.b	@0xf7d9:16,r0l                    ; 2fda: 6a08f7d9
	inc	r0l                                 ; 2fde: 0a08
	mov.b	r0l,@0xf7d9:16                    ; 2fe0: 6a88f7d9
	mov.b	#0xe,r0l                          ; 2fe4: f80e
	bra	loc_300a:8                          ; 2fe6: 4022
loc_2fe8:
	mov.b	#0x11,r0l                         ; 2fe8: f811
	mov.b	r0l,@0xf7cf:16                    ; 2fea: 6a88f7cf
	sub.b	r0l,r0l                           ; 2fee: 1888
	mov.b	r0l,@0xf7d2:16                    ; 2ff0: 6a88f7d2
	mov.b	#0x1,r0l                          ; 2ff4: f801
	jmp	@loc_3082:24                        ; 2ff6: 5a003082
