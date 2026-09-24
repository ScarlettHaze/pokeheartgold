	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_980e

func_980e:
	mov.b	@0xf7aa:16,r0l                    ; 980e: 6a08f7aa
	extu.w	r0                               ; 9812: 1750
	add.w	r6,r0                             ; 9814: 0960
	mov.b	@er0,r0l                          ; 9816: 6808
	extu.w	r0                               ; 9818: 1750
	cmp.w	r0,r1                             ; 981a: 1d01
	bcc	loc_9826:8                          ; 981c: 4408
	sub.w	r0,r0                             ; 981e: 1900
	mov.w	r0,@0xf78e:16                     ; 9820: 6b80f78e
	bra	loc_983c:8                          ; 9824: 4016
loc_9826:
	mov.b	@0xf7aa:16,r0l                    ; 9826: 6a08f7aa
	extu.w	r0                               ; 982a: 1750
	add.w	r0,r6                             ; 982c: 0906
	mov.b	@er6,r0l                          ; 982e: 6868
	extu.w	r0                               ; 9830: 1750
	mov.w	@0xf78e:16,e0                     ; 9832: 6b08f78e
	sub.w	r0,e0                             ; 9836: 1908
	mov.w	e0,@0xf78e:16                     ; 9838: 6b88f78e
loc_983c:
	mov.w	#0x18,e1                          ; 983c: 79090018
	mov.w	#0xf780,r1                        ; 9840: 7901f780
	mov.l	#0x2560156,er0                    ; 9844: 7a0002560156
	jsr	@func_50d8:24                       ; 984a: 5e0050d8
	jsr	@func_4792:24                       ; 984e: 5e004792
	mov.b	#0x2,r0l                          ; 9852: f802
	bra	loc_98b6:8                          ; 9854: 4060
