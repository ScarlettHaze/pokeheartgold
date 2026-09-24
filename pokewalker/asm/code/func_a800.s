	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a800

func_a800:
	sub.l	er0,er0                           ; a800: 1a80
	jsr	@func_a4fe:24                       ; a802: 5e00a4fe
	mov.w	#0x2710,r6                        ; a806: 79062710
loc_a80a:
	jsr	@func_25ac:24                       ; a80a: 5e0025ac
	dec.w	#1,r6                             ; a80e: 1b56
	bne	loc_a80a:8                          ; a810: 46f8
loc_a812:
	mov.b	@RSECDR:16,r0l                    ; a812: 6a08f068
	bmi	loc_a812:8                          ; a816: 4bfa
	mov.b	@RSECDR:16,r6l                    ; a818: 6a0ef068
	mov.b	@RSECDR:16,r6h                    ; a81c: 6a06f068
	cmp.b	r6h,r6l                           ; a820: 1c6e
	bne	loc_a812:8                          ; a822: 46ee
	mov.b	r6l,r6l                           ; a824: 0cee
	bne	loc_a82c:8                          ; a826: 4604
	sub.b	r0l,r0l                           ; a828: 1888
	bra	loc_a82e:8                          ; a82a: 4002
loc_a82c:
	mov.b	#0x1,r0l                          ; a82c: f801
loc_a82e:
	rts                                     ; a82e: 5470
