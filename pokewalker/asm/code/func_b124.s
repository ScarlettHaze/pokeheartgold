	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b124

func_b124:
	mov.b	r0l,r0l                           ; b124: 0c88
	beq	loc_b146:8                          ; b126: 471e
	sub.l	er0,er0                           ; b128: 1a80
	mov.l	er0,@0xf780:16                    ; b12a: 01006b80f780
	mov.w	r0,@0xf78c:16                     ; b130: 6b80f78c
	mov.l	#0xd2b0b80,er1                    ; b134: 7a010d2b0b80
	mov.l	er1,@0xf788:16                    ; b13a: 01006b81f788
	mov.l	er0,@0xf784:16                    ; b140: 01006b80f784
loc_b146:
	sub.w	r0,r0                             ; b146: 1900
	mov.w	r0,@0xf790:16                     ; b148: 6b80f790
	mov.w	r0,@0xf78e:16                     ; b14c: 6b80f78e
	mov.b	r0l,@0xf792:16                    ; b150: 6a88f792
	mov.b	@0xf797:16,r1l                    ; b154: 6a09f797
	and.b	#0xa4,r1l                         ; b158: e9a4
	or.b	#0x24,r1l                          ; b15a: c924
	mov.b	r1l,@0xf797:16                    ; b15c: 6a89f797
	mov.b	r0l,@0xf793:16                    ; b160: 6a88f793
	mov.w	#0x18,e1                          ; b164: 79090018
	mov.w	#0xf780,r1                        ; b168: 7901f780
	mov.l	#0x2560156,er0                    ; b16c: 7a0002560156
	jmp	@func_50d8:24                       ; b172: 5a0050d8
