	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9108

func_9108:
	mov.b	#0x9,r0l                          ; 9108: f809
	mov.b	r0l,@0xf7ce:16                    ; 910a: 6a88f7ce
	mov.w	@0xf7d2:16,r0                     ; 910e: 6b00f7d2
	jmp	@loc_8c0e:24                        ; 9112: 5a008c0e
