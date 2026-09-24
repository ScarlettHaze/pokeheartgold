	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1d7a

func_1d7a:
	mov.w	r6,@-er7                          ; 1d7a: 6df6
	mov.w	r5,@-er7                          ; 1d7c: 6df5
	mov.w	r0,r5                             ; 1d7e: 0d05
	mov.b	r1l,r6l                           ; 1d80: 0c9e
	beq	loc_1dc2:8                          ; 1d82: 473e
	mov.b	r6l,r6h                           ; 1d84: 0ce6
	shlr.b	r6h                              ; 1d86: 1106
	shlr.b	r6h                              ; 1d88: 1106
	shlr.b	r6h                              ; 1d8a: 1106
	mov.w	#0x68,e1                          ; 1d8c: 79090068
	mov.w	r5,r1                             ; 1d90: 0d51
	mov.l	#0x1ed00ed,er0                    ; 1d92: 7a0001ed00ed
	jsr	@func_5128:24                       ; 1d98: 5e005128
	and.b	#0x7,r6l                          ; 1d9c: ee07
	mov.b	r6l,r0l                           ; 1d9e: 0ce8
	mov.w	#0x1,e0                           ; 1da0: 79080001
loc_1da4:
	dec.b	r0l                               ; 1da4: 1a08
	bmi	loc_1dac:8                          ; 1da6: 4b04
	shll.w	e0                               ; 1da8: 1018
	bra	loc_1da4:8                          ; 1daa: 40f8
loc_1dac:
	mov.b	r6h,r6l                           ; 1dac: 0c6e
	extu.w	r6                               ; 1dae: 1756
	add.w	#0x38,r5                          ; 1db0: 79150038
	add.w	r6,r5                             ; 1db4: 0965
	mov.b	@er5,r5l                          ; 1db6: 685d
	extu.w	r5                               ; 1db8: 1755
	and.w	e0,r5                             ; 1dba: 6685
	beq	loc_1dc2:8                          ; 1dbc: 4704
	mov.b	#0x1,r0l                          ; 1dbe: f801
	bra	loc_1dc4:8                          ; 1dc0: 4002
loc_1dc2:
	sub.b	r0l,r0l                           ; 1dc2: 1888
loc_1dc4:
	mov.w	@er7+,r5                          ; 1dc4: 6d75
	mov.w	@er7+,r6                          ; 1dc6: 6d76
	rts                                     ; 1dc8: 5470
