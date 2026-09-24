	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b176

func_b176:
	jsr	@func_247e:24                       ; b176: 5e00247e
	mov.w	#0x68,r0                          ; b17a: 79000068
	jsr	@func_2488:24                       ; b17e: 5e002488
	mov.w	r0,r6                             ; b182: 0d06
	mov.w	r0,r1                             ; b184: 0d01
	mov.w	#0x68,e1                          ; b186: 79090068
	mov.l	#0x1ed00ed,er0                    ; b18a: 7a0001ed00ed
	jsr	@func_5128:24                       ; b190: 5e005128
	mov.w	#0xf7b6,r0                        ; b194: 7900f7b6
	mov.b	@(0x5b:16,er6),r1l                ; b198: 6e69005b
	bld	#0x0,r1l                            ; b19c: 7709
	bst	#0x1,@er0                           ; b19e: 7d006710
	mov.b	@(0x5b:16,er6),r6l                ; b1a2: 6e6e005b
	bld	#0x1,r6l                            ; b1a6: 771e
	bst	#0x2,@er0                           ; b1a8: 7d006720
	rts                                     ; b1ac: 5470
