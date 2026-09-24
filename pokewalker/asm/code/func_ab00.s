	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ab00

func_ab00:
	mov.b	#0x8,r0l                          ; ab00: f808
	jsr	@func_9c40:24                       ; ab02: 5e009c40
	mov.b	r0l,r0l                           ; ab06: 0c88
	beq	loc_ac1c:16                         ; ab08: 58700110
	jmp	@loc_abc0:24                        ; ab0c: 5a00abc0
