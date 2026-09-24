	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0636

func_0636:
	mov.w	r3,@-er7                          ; 0636: 6df3
	mov.w	r6,@-er7                          ; 0638: 6df6
	mov.w	#0xf7e6,r6                        ; 063a: 7906f7e6
	mov.w	#0xf7b6,r0                        ; 063e: 7900f7b6
	bclr	#0x2,@er0                          ; 0642: 7d007220
	mov.w	#0xf797,r0                        ; 0646: 7900f797
	bclr	#0x0,@er0                          ; 064a: 7d007200
	sub.b	r0l,r0l                           ; 064e: 1888
	mov.b	r0l,@0xf793:16                    ; 0650: 6a88f793
	sub.w	e0,e0                             ; 0654: 1988
	mov.w	e0,@0xf78e:16                     ; 0656: 6b88f78e
	mov.w	#0x18,e1                          ; 065a: 79090018
	mov.w	#0xf780,r1                        ; 065e: 7901f780
	mov.l	#0x2560156,er0                    ; 0662: 7a0002560156
	jsr	@func_50d8:24                       ; 0668: 5e0050d8
	mov.w	#0x68,e1                          ; 066c: 79090068
	mov.w	r6,r1                             ; 0670: 0d61
	mov.l	#0x1ed00ed,er0                    ; 0672: 7a0001ed00ed
	jsr	@func_5128:24                       ; 0678: 5e005128
	sub.l	er0,er0                           ; 067c: 1a80
	mov.l	er0,@(0x4:16,er6)                 ; 067e: 01006fe00004
	mov.w	r0,@(0xa:16,er6)                  ; 0684: 6fe0000a
	mov.b	#0x5b,r0l                         ; 0688: f85b
	add.w	r6,r0                             ; 068a: 0960
	bclr	#0x1,@er0                          ; 068c: 7d007210
	mov.w	#0x5b,r0                          ; 0690: 7900005b
	add.w	r6,r0                             ; 0694: 0960
	bclr	#0x2,@er0                          ; 0696: 7d007220
	mov.w	r6,r1                             ; 069a: 0d61
	mov.w	#0x68,e1                          ; 069c: 79090068
	mov.l	#0x1ed00ed,er0                    ; 06a0: 7a0001ed00ed
	jsr	@func_50d8:24                       ; 06a6: 5e0050d8
	jsr	@func_187e:24                       ; 06aa: 5e00187e
	jsr	@func_188c:24                       ; 06ae: 5e00188c
	sub.b	r1l,r1l                           ; 06b2: 1899
	mov.l	#0x6c8b800,er0                    ; 06b4: 7a0006c8b800
	jsr	@func_5742:24                       ; 06ba: 5e005742
	sub.b	r1l,r1l                           ; 06be: 1899
	mov.l	#0x1568de24,er0                   ; 06c0: 7a001568de24
	jsr	@func_5742:24                       ; 06c6: 5e005742
	mov.w	#0x8f00,r0                        ; 06ca: 79008f00
	sub.b	r1l,r1l                           ; 06ce: 1899
	mov.w	#0x10,e0                          ; 06d0: 79080010
	jsr	@func_5742:24                       ; 06d4: 5e005742
	mov.w	@er7+,r6                          ; 06d8: 6d76
	mov.w	@er7+,r3                          ; 06da: 6d73
	rts                                     ; 06dc: 5470
