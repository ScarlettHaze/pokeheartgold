	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1f3e

func_1f3e:
	extu.w	r0                               ; 1f3e: 1750
	mov.w	@0xf78e:16,e0                     ; 1f40: 6b08f78e
	add.w	r0,e0                             ; 1f44: 0908
	mov.w	e0,@0xf78e:16                     ; 1f46: 6b88f78e
	mov.w	e0,r0                             ; 1f4a: 0d80
	cmp.w	#0x270f,r0                        ; 1f4c: 7920270f
	bls	loc_1f5a:8                          ; 1f50: 4308
	mov.w	#0x270f,r0                        ; 1f52: 7900270f
	mov.w	r0,@0xf78e:16                     ; 1f56: 6b80f78e
loc_1f5a:
	mov.w	#0x18,e1                          ; 1f5a: 79090018
	mov.w	#0xf780,r1                        ; 1f5e: 7901f780
	mov.l	#0x2560156,er0                    ; 1f62: 7a0002560156
	jmp	@func_50d8:24                       ; 1f68: 5a0050d8
