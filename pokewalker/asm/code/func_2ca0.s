	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2ca0

func_2ca0:
	mov.b	r6l,r0l                           ; 2ca0: 0ce8
	extu.w	r0                               ; 2ca2: 1750
	mov.b	@(0xbb0e:16,er0),r0l              ; 2ca4: 6e08bb0e
	mov.b	r0l,@0xf7d5:16                    ; 2ca8: 6a88f7d5
	mov.b	@0xf7d2:16,r0l                    ; 2cac: 6a08f7d2
	mov.b	@0xf7d3:16,r0h                    ; 2cb0: 6a00f7d3
	cmp.b	r0h,r0l                           ; 2cb4: 1c08
	bcs	loc_30a4:16                         ; 2cb6: 585003ea
	mov.w	#0xf7d8,r0                        ; 2cba: 7900f7d8
	bset	#0x0,@er0                          ; 2cbe: 7d007000
	jsr	@func_369c:24                       ; 2cc2: 5e00369c
	mov.b	r0l,r0l                           ; 2cc6: 0c88
	bne	loc_30a4:16                         ; 2cc8: 586003d8
	mov.b	#0xe,r0l                          ; 2ccc: f80e
	jsr	@func_9c40:24                       ; 2cce: 5e009c40
	mov.b	r0l,r0l                           ; 2cd2: 0c88
	beq	loc_30a4:16                         ; 2cd4: 587003cc
	jmp	@loc_2e32:24                        ; 2cd8: 5a002e32
