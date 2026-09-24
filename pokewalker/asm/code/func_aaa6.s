	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_aaa6

func_aaa6:
	cmp.b	#0x4,r1l                          ; aaa6: a904
	bcs	loc_ac1c:16                         ; aaa8: 58500170
	mov.b	#0xa,r0l                          ; aaac: f80a
	jsr	@func_9c40:24                       ; aaae: 5e009c40
	mov.b	r0l,r0l                           ; aab2: 0c88
	bne	loc_abc0:16                         ; aab4: 58600108
	mov.b	@0xf7ce:16,r0l                    ; aab8: 6a08f7ce
	cmp.b	#0x1,r0l                          ; aabc: a801
	beq	loc_ac1c:16                         ; aabe: 5870015a
	mov.b	#0x4,r0l                          ; aac2: f804
	jsr	@func_9c40:24                       ; aac4: 5e009c40
	mov.b	r0l,r0l                           ; aac8: 0c88
	beq	loc_ac1c:16                         ; aaca: 5870014e
	mov.w	#D_bfa2,r0                        ; aace: 7900bfa2
	jsr	@func_37c6:24                       ; aad2: 5e0037c6
	mov.b	@0xf7ce:16,r0l                    ; aad6: 6a08f7ce
	dec.b	r0l                               ; aada: 1a08
	jmp	@loc_abce:24                        ; aadc: 5a00abce
