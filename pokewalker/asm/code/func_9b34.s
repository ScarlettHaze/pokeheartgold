	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_9b34

func_9b34:
	sub.b	r0l,r0l                           ; 9b34: 1888
	mov.b	r0l,@0xf798:16                    ; 9b36: 6a88f798
	mov.b	r0l,@0xf799:16                    ; 9b3a: 6a88f799
	mov.b	r0l,@0xf79a:16                    ; 9b3e: 6a88f79a
	mov.b	r0l,@0xf79b:16                    ; 9b42: 6a88f79b
	ldc	#0x80,ccr                           ; 9b46: 0780
	mov.b	@0xf085:16,r0l                    ; 9b48: 6a08f085
	and.b	#0xfc,r0l                         ; 9b4c: e8fc
	mov.b	r0l,@0xf085:16                    ; 9b4e: 6a88f085
	bset	#0x0,@IEGR:8                       ; 9b52: 7ff27000
	bclr	#0x0,@IRR1:8                       ; 9b56: 7ff67200
	bset	#0x0,@IENR1:8                      ; 9b5a: 7ff37000
	mov.b	@0xf085:16,r0l                    ; 9b5e: 6a08f085
	and.b	#0xf3,r0l                         ; 9b62: e8f3
	mov.b	r0l,@0xf085:16                    ; 9b64: 6a88f085
	bset	#0x1,@IEGR:8                       ; 9b68: 7ff27010
	bclr	#0x1,@IRR1:8                       ; 9b6c: 7ff67210
	bset	#0x1,@IENR1:8                      ; 9b70: 7ff37010
	bset	#0x5,@PDRB:8                       ; 9b74: 7fde7050
	bset	#0x4,@PDR8:8                       ; 9b78: 7fdb7040
	bclr	#0x4,@PCR8:8                       ; 9b7c: 7feb7240
	ldc	#0x0,ccr                            ; 9b80: 0700
	rts                                     ; 9b82: 5470
