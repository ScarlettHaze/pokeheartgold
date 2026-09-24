	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_73b8

func_73b8:
	mov.b	@0xf7b6:16,r0l                    ; 73b8: 6a08f7b6
	bld	#0x1,r0l                            ; 73bc: 7718
	bcc	loc_73f8:8                          ; 73be: 4438
	mov.b	#0xe,r0l                          ; 73c0: f80e
	jsr	@func_9c40:24                       ; 73c2: 5e009c40
	mov.b	r0l,r0l                           ; 73c6: 0c88
	beq	loc_73f8:8                          ; 73c8: 472e
	jsr	@func_6a1c:24                       ; 73ca: 5e006a1c
	sub.b	r0l,r0l                           ; 73ce: 1888
	jsr	@func_69b8:24                       ; 73d0: 5e0069b8
	sub.b	r0l,r0l                           ; 73d4: 1888
	jsr	@func_36f2:24                       ; 73d6: 5e0036f2
	bra	loc_73f8:8                          ; 73da: 401c
