	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9328

func_9328:
	sub.b	r0l,r0l                           ; 9328: 1888
	mov.b	r0l,@0xf8ee:16                    ; 932a: 6a88f8ee
	sub.l	er1,er1                           ; 932e: 1a91
	mov.l	er1,@0xf8ea:16                    ; 9330: 01006b81f8ea
	mov.l	er1,@0xf8e6:16                    ; 9336: 01006b81f8e6
	mov.b	r0l,@0xf8ef:16                    ; 933c: 6a88f8ef
	rts                                     ; 9340: 5470
