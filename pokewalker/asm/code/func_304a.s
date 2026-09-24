	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_304a
	.global loc_3064

func_304a:
	cmp.b	r6h,r6l                           ; 304a: 1c6e
	bcs	loc_30a4:8                          ; 304c: 4556
	mov.b	#0xe,r0l                          ; 304e: f80e
	jsr	@func_9c40:24                       ; 3050: 5e009c40
	mov.b	r0l,r0l                           ; 3054: 0c88
	beq	loc_30a4:8                          ; 3056: 474c
	jsr	@func_2a96:24                       ; 3058: 5e002a96
	mov.b	@0xf7b1:16,r0l                    ; 305c: 6a08f7b1
	cmp.b	#0x4,r0l                          ; 3060: a804
	bne	loc_30a4:8                          ; 3062: 4640
loc_3064:
	jsr	@func_6a1c:24                       ; 3064: 5e006a1c
	sub.b	r0l,r0l                           ; 3068: 1888
	jsr	@func_69b8:24                       ; 306a: 5e0069b8
	bra	loc_30a4:8                          ; 306e: 4034
