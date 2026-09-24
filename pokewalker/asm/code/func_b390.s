	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b390

func_b390:
	mov.l	er2,@-er7                         ; b390: 01006df2
	mov.w	r3,@-er7                          ; b394: 6df3
	mov.l	er4,@-er7                         ; b396: 01006df4
	mov.l	er5,@-er7                         ; b39a: 01006df5
	mov.l	er6,@-er7                         ; b39e: 01006df6
	mov.w	#0x3a98,r6                        ; b3a2: 79063a98
loc_b3a6:
	jsr	@func_259e:24                       ; b3a6: 5e00259e
	jsr	@func_25ac:24                       ; b3aa: 5e0025ac
	dec.w	#1,r6                             ; b3ae: 1b56
	bne	loc_b3a6:8                          ; b3b0: 46f4
	mov.l	@0xf788:16,er0                    ; b3b2: 01006b00f788
	jsr	@func_a4fe:24                       ; b3b8: 5e00a4fe
	jmp	@loc_0700:24                        ; b3bc: 5a000700
