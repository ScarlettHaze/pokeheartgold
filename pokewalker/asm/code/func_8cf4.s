	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8cf4

func_8cf4:
	mov.b	#0x9,r0l                          ; 8cf4: f809
	mov.b	r0l,@0xf7ce:16                    ; 8cf6: 6a88f7ce
	mov.w	@0xf7d0:16,r0                     ; 8cfa: 6b00f7d0
	jmp	@loc_8c0e:24                        ; 8cfe: 5a008c0e
