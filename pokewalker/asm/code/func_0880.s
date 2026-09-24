	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0880

func_0880:
	bsr	func_0832:8                         ; 0880: 55b0
	sub.b	r0l,r0l                           ; 0882: 1888
	mov.b	r0l,@0xf7ad:16                    ; 0884: 6a88f7ad
	mov.l	@0xf7c0:16,er1                    ; 0888: 01006b01f7c0
	mov.l	er1,@0xf8b6:16                    ; 088e: 01006b81f8b6
	mov.l	@0xf8b6:16,er1                    ; 0894: 01006b01f8b6
	mov.l	er1,@0xf8ba:16                    ; 089a: 01006b81f8ba
	mov.b	#0x1,r0h                          ; 08a0: f001
	mov.b	r0h,@0xf8be:16                    ; 08a2: 6a80f8be
	mov.b	r0l,@0xf8bf:16                    ; 08a6: 6a88f8bf
	mov.b	r0l,@0xf8c2:16                    ; 08aa: 6a88f8c2
	mov.b	#0xff,r0h                         ; 08ae: f0ff
	mov.b	r0h,@0xf8c4:16                    ; 08b0: 6a80f8c4
	mov.w	#0xf8c3,r1                        ; 08b4: 7901f8c3
	bclr	#0x0,@er1                          ; 08b8: 7d107200
	mov.b	r0l,@0xf7ba:16                    ; 08bc: 6a88f7ba
	mov.b	r0l,@0xf8c1:16                    ; 08c0: 6a88f8c1
	mov.w	@TCNT:16,e0                       ; 08c4: 6b08f0f6
	mov.w	e0,@0xf7b8:16                     ; 08c8: 6b88f7b8
	mov.b	r0l,@0xf8c5:16                    ; 08cc: 6a88f8c5
	mov.b	#0xfc,r0l                         ; 08d0: f8fc
	jmp	@func_0822:24                       ; 08d2: 5a000822
