	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8dd4

func_8dd4:
	mov.w	#0x183c,r0                        ; 8dd4: 7900183c
	jsr	@func_1936:24                       ; 8dd8: 5e001936
	mov.b	#0x7,r1l                          ; 8ddc: f907
	mov.w	#0x3000,r0                        ; 8dde: 79003000
	jsr	@func_1a58:24                       ; 8de2: 5e001a58
	jmp	@loc_8f4e:24                        ; 8de6: 5a008f4e
