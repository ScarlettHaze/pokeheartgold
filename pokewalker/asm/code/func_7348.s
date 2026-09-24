	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7348

func_7348:
	jsr	@func_7a0a:24                       ; 7348: 5e007a0a
	jsr	@func_25d0:24                       ; 734c: 5e0025d0
	mov.b	@0xf7b1:16,r0l                    ; 7350: 6a08f7b1
	cmp.b	#0x17,r0l                         ; 7354: a817
	bhi	loc_73f8:16                         ; 7356: 5820009e
	extu.w	r0                               ; 735a: 1750
	mov.b	@(0xbe7e:16,er0),r0l              ; 735c: 6e08be7e
	add.w	#0x7366,r0                        ; 7360: 79107366
	jmp	@er0                                ; 7364: 5900
