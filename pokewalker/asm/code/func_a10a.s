	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a10a

func_a10a:
	mov.b	#0xe,r0l                          ; a10a: f80e
	jsr	@func_9c40:24                       ; a10c: 5e009c40
	mov.b	r0l,r0l                           ; a110: 0c88
	beq	loc_a12a:8                          ; a112: 4716
	sub.b	r0l,r0l                           ; a114: 1888
	mov.b	r0l,@0xf7d0:16                    ; a116: 6a88f7d0
	mov.b	#0x4,r0l                          ; a11a: f804
	jsr	@func_36f2:24                       ; a11c: 5e0036f2
	jsr	@func_6a1c:24                       ; a120: 5e006a1c
	sub.b	r0l,r0l                           ; a124: 1888
	jsr	@func_69b8:24                       ; a126: 5e0069b8
loc_a12a:
	rts                                     ; a12a: 5470
