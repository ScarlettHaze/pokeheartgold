	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aae0

func_aae0:
	mov.b	#0x4,r0l                          ; aae0: f804
	jsr	@func_9c40:24                       ; aae2: 5e009c40
	mov.b	r0l,r0l                           ; aae6: 0c88
	beq	loc_ac1c:16                         ; aae8: 58700130
	jmp	@loc_abc0:24                        ; aaec: 5a00abc0
