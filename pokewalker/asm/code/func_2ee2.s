	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2ee2

func_2ee2:
	mov.b	#0xe,r0l                          ; 2ee2: f80e
	jsr	@func_9c40:24                       ; 2ee4: 5e009c40
	mov.b	r0l,r0l                           ; 2ee8: 0c88
	beq	loc_30a4:16                         ; 2eea: 587001b6
	jmp	@loc_3064:24                        ; 2eee: 5a003064
