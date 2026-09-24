	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7406

func_7406:
	jsr	@func_7a0a:24                       ; 7406: 5e007a0a
	mov.b	@0xf7b1:16,r0l                    ; 740a: 6a08f7b1
	cmp.b	#0x18,r0l                         ; 740e: a818
	bhi	loc_74b8:16                         ; 7410: 582000a4
	extu.w	r0                               ; 7414: 1750
	mov.b	@(0xbe96:16,er0),r0l              ; 7416: 6e08be96
	add.w	#0x7420,r0                        ; 741a: 79107420
	jmp	@er0                                ; 741e: 5900
