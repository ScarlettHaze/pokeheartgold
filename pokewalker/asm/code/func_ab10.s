	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_ab10
	.global loc_ab1a

func_ab10:
	cmp.b	#0x2,r1l                          ; ab10: a902
	bcs	loc_ac1c:16                         ; ab12: 58500106
	jmp	@loc_abc8:24                        ; ab16: 5a00abc8
loc_ab1a:
	mov.b	@RSECDR:16,r0l                    ; ab1a: 6a08f068
	bmi	loc_ab1a:8                          ; ab1e: 4bfa
	mov.b	@RSECDR:16,r1l                    ; ab20: 6a09f068
	mov.b	@RSECDR:16,r0l                    ; ab24: 6a08f068
	cmp.b	r0l,r1l                           ; ab28: 1c89
	bne	loc_ab1a:8                          ; ab2a: 46ee
	mov.b	r1l,@0xf7d1:16                    ; ab2c: 6a89f7d1
	mov.w	#0x300,r0                         ; ab30: 79000300
	jsr	@func_a72a:24                       ; ab34: 5e00a72a
	mov.b	r0l,@0xf7d3:16                    ; ab38: 6a88f7d3
	mov.w	#0x101,r0                         ; ab3c: 79000101
	jsr	@func_b1ae:24                       ; ab40: 5e00b1ae
loc_ab44:
	mov.b	@RSECDR:16,r0l                    ; ab44: 6a08f068
	bmi	loc_ab44:8                          ; ab48: 4bfa
	mov.b	@RSECDR:16,r1l                    ; ab4a: 6a09f068
	mov.b	@RSECDR:16,r0l                    ; ab4e: 6a08f068
	cmp.b	r0l,r1l                           ; ab52: 1c89
	bne	loc_ab44:8                          ; ab54: 46ee
	mov.b	r1l,@0xf7d2:16                    ; ab56: 6a89f7d2
	bra	loc_abc8:8                          ; ab5a: 406c
