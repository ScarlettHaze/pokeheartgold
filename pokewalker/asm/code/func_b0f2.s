	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b0f2

func_b0f2:
	bset	#0x4,@CKSTPR2:8                    ; b0f2: 7ffb7040
	mov.w	#0xf0e1,r0                        ; b0f6: 7900f0e1
	bset	#0x6,@er0                          ; b0fa: 7d007060
	mov.b	#0x86,r0l                         ; b0fe: f886
	mov.b	r0l,@SSMR:16                      ; b100: 6a88f0e2
	mov.b	#0x8c,r0l                         ; b104: f88c
	mov.b	r0l,@SSCRH:16                     ; b106: 6a88f0e0
	mov.b	#0x8,r0l                          ; b10a: f808
	mov.b	r0l,@0xf087:16                    ; b10c: 6a88f087
	mov.b	#0x1,r0l                          ; b110: f801
	mov.b	r0l,@PCR9:8                       ; b112: 38ec
	mov.b	#0x7,r0h                          ; b114: f007
	mov.b	r0h,@PCR1:8                       ; b116: 30e4
	mov.b	#0x5,r0h                          ; b118: f005
	mov.b	r0h,@PDR1:8                       ; b11a: 30d4
	bset	#0x0,@PDR9:8                       ; b11c: 7fdc7000
	mov.b	r0l,@0xffca:8                     ; b120: 38ca
	rts                                     ; b122: 5470
