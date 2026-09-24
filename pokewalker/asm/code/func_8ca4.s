	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_8ca4

func_8ca4:
	mov.w	#0xa,e6                           ; 8ca4: 790e000a
	mov.w	r0,r5                             ; 8ca8: 0d05
	mov.b	@0xf7ce:16,r1l                    ; 8caa: 6a09f7ce
	extu.w	r1                               ; 8cae: 1751
	add.w	#0x9,r1                           ; 8cb0: 79110009
	exts.l	er1                              ; 8cb4: 17f1
	divxs.w	e6,er1                          ; 8cb6: 01d053e1
	mov.w	e1,r1                             ; 8cba: 0d91
	mov.b	r1l,@0xf7ce:16                    ; 8cbc: 6a89f7ce
	sub.b	r1l,r1l                           ; 8cc0: 1899
loc_8cc2:
	mov.b	@0xf7ce:16,r0l                    ; 8cc2: 6a08f7ce
	mov.w	#0x1,e0                           ; 8cc6: 79080001
loc_8cca:
	dec.b	r0l                               ; 8cca: 1a08
	bmi	loc_8cd2:8                          ; 8ccc: 4b04
	shll.w	e0                               ; 8cce: 1018
	bra	loc_8cca:8                          ; 8cd0: 40f8
loc_8cd2:
	and.w	r5,e0                             ; 8cd2: 6658
	bne	loc_8cf2:8                          ; 8cd4: 461c
	mov.b	@0xf7ce:16,r0l                    ; 8cd6: 6a08f7ce
	extu.w	r0                               ; 8cda: 1750
	add.w	#0x9,r0                           ; 8cdc: 79100009
	exts.l	er0                              ; 8ce0: 17f0
	divxs.w	e6,er0                          ; 8ce2: 01d053e0
	mov.w	e0,r0                             ; 8ce6: 0d80
	mov.b	r0l,@0xf7ce:16                    ; 8ce8: 6a88f7ce
	inc	r1l                                 ; 8cec: 0a09
	cmp.b	#0xa,r1l                          ; 8cee: a90a
	bcs	loc_8cc2:8                          ; 8cf0: 45d0
loc_8cf2:
	rts                                     ; 8cf2: 5470
