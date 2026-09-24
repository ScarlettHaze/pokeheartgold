	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_07f2

func_07f2:
	bset	#0x6,@CKSTPR1:8                    ; 07f2: 7ffa7060
	mov.b	#0x1,r0l                          ; 07f6: f801
	mov.b	r0l,@0xff91:8                     ; 07f8: 3891
	mov.b	@SSR3:8,r0l                       ; 07fa: 289c
	and.b	#0x84,r0l                         ; 07fc: e884
	mov.b	r0l,@SSR3:8                       ; 07fe: 389c
	sub.b	r0l,r0l                           ; 0800: 1888
	mov.b	r0l,@0xffa6:8                     ; 0802: 38a6
	mov.b	r0l,@SCR3:8                       ; 0804: 389a
	mov.b	r0l,@SMR3:8                       ; 0806: 3898
	mov.b	r0l,@BRR3:8                       ; 0808: 3899
	mov.b	#0x5,r0l                          ; 080a: f805
loc_080c:
	dec.b	r0l                               ; 080c: 1a08
	bne	loc_080c:8                          ; 080e: 46fc
	mov.b	#0x10,r0l                         ; 0810: f810
	mov.b	r0l,@SCR3:8                       ; 0812: 389a
	mov.b	#0x80,r0l                         ; 0814: f880
	mov.b	r0l,@IrCR:8                       ; 0816: 38a7
	mov.b	#0x11,r0l                         ; 0818: f811
	mov.b	r0l,@0xff91:8                     ; 081a: 3891
	mov.b	#0x30,r0l                         ; 081c: f830
	mov.b	r0l,@SCR3:8                       ; 081e: 389a
	rts                                     ; 0820: 5470
