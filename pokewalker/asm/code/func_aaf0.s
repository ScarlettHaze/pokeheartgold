	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aaf0

func_aaf0:
	mov.b	#0x2,r0l                          ; aaf0: f802
	jsr	@func_9c40:24                       ; aaf2: 5e009c40
	mov.b	r0l,r0l                           ; aaf6: 0c88
	beq	loc_ac1c:16                         ; aaf8: 58700120
	jmp	@loc_abc0:24                        ; aafc: 5a00abc0
