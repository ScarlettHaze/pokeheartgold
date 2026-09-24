	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1d22

func_1d22:
	mov.w	r6,@-er7                          ; 1d22: 6df6
	mov.w	r5,@-er7                          ; 1d24: 6df5
	mov.w	r0,r5                             ; 1d26: 0d05
	mov.b	r1l,r6l                           ; 1d28: 0c9e
	beq	loc_1d74:8                          ; 1d2a: 4748
	mov.b	r6l,r6h                           ; 1d2c: 0ce6
	shlr.b	r6h                              ; 1d2e: 1106
	shlr.b	r6h                              ; 1d30: 1106
	shlr.b	r6h                              ; 1d32: 1106
	mov.w	#0x68,e1                          ; 1d34: 79090068
	mov.w	r5,r1                             ; 1d38: 0d51
	mov.l	#0x1ed00ed,er0                    ; 1d3a: 7a0001ed00ed
	jsr	@func_5128:24                       ; 1d40: 5e005128
	mov.b	r6h,r0l                           ; 1d44: 0c68
	extu.w	r0                               ; 1d46: 1750
	mov.w	#0x38,r1                          ; 1d48: 79010038
	add.w	r5,r1                             ; 1d4c: 0951
	add.w	r0,r1                             ; 1d4e: 0901
	and.b	#0x7,r6l                          ; 1d50: ee07
	mov.w	#0x1,r0                           ; 1d52: 79000001
loc_1d56:
	dec.b	r6l                               ; 1d56: 1a0e
	bmi	loc_1d5e:8                          ; 1d58: 4b04
	shll.w	r0                               ; 1d5a: 1010
	bra	loc_1d56:8                          ; 1d5c: 40f8
loc_1d5e:
	mov.b	@er1,r0h                          ; 1d5e: 6810
	or.b	r0l,r0h                            ; 1d60: 1480
	mov.b	r0h,@er1                          ; 1d62: 6890
	mov.w	r5,r1                             ; 1d64: 0d51
	mov.w	#0x68,e1                          ; 1d66: 79090068
	mov.l	#0x1ed00ed,er0                    ; 1d6a: 7a0001ed00ed
	jsr	@func_50d8:24                       ; 1d70: 5e0050d8
loc_1d74:
	mov.w	@er7+,r5                          ; 1d74: 6d75
	mov.w	@er7+,r6                          ; 1d76: 6d76
	rts                                     ; 1d78: 5470
