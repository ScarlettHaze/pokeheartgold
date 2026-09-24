	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b8f2

func_b8f2:
	mov.b	@0xf7cf:16,r0l                    ; b8f2: 6a08f7cf
	beq	loc_b902:8                          ; b8f6: 470a
	cmp.b	#0x1,r0l                          ; b8f8: a801
	beq	loc_b914:8                          ; b8fa: 4718
	cmp.b	#0x2,r0l                          ; b8fc: a802
	bne	loc_b91c:8                          ; b8fe: 461c
	bra	loc_b91a:8                          ; b900: 4018
loc_b902:
	mov.b	@0xf7ce:16,r0l                    ; b902: 6a08f7ce
	bne	loc_b90e:8                          ; b906: 4606
	jsr	@func_b48c:24                       ; b908: 5e00b48c
	bra	loc_b91c:8                          ; b90c: 400e
loc_b90e:
	jsr	@func_b682:24                       ; b90e: 5e00b682
	bra	loc_b91c:8                          ; b912: 4008
loc_b914:
	jsr	@func_b7ee:24                       ; b914: 5e00b7ee
	bra	loc_b91c:8                          ; b918: 4002
loc_b91a:
	bsr	func_b8a6:8                         ; b91a: 558a
loc_b91c:
	mov.w	#0x58,r0                          ; b91c: 79000058
	jmp	@func_21fe:24                       ; b920: 5a0021fe
