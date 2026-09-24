	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_7420

func_7420:
	mov.b	@0xf7b6:16,r0l                    ; 7420: 6a08f7b6
	bld	#0x1,r0l                            ; 7424: 7718
	bcs	loc_7430:8                          ; 7426: 4508
	jsr	@func_703c:24                       ; 7428: 5e00703c
	jmp	@loc_74b8:24                        ; 742c: 5a0074b8
loc_7430:
	jsr	@func_6bf8:24                       ; 7430: 5e006bf8
	jsr	@func_74bc:24                       ; 7434: 5e0074bc
	bra	loc_74b8:8                          ; 7438: 407e
