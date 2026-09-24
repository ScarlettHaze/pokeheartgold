	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_50d8

func_50d8:
	jsr	@RegSave_er2_er6:24                 ; 50d8: 5e00ba42
	mov.w	r0,e5                             ; 50dc: 0d0d
	mov.w	e0,r4                             ; 50de: 0d84
	mov.w	r1,r5                             ; 50e0: 0d15
	mov.w	e1,e6                             ; 50e2: 0d9e
	mov.b	#0x1,r6h                          ; 50e4: f601
	mov.w	e6,r1                             ; 50e6: 0de1
	mov.w	r5,e0                             ; 50e8: 0d58
	jsr	@func_524e:24                       ; 50ea: 5e00524e
	sub.b	r1l,r1l                           ; 50ee: 1899
	bra	loc_50fe:8                          ; 50f0: 400c
loc_50f2:
	mov.b	r1l,r0l                           ; 50f2: 0c98
	extu.w	r0                               ; 50f4: 1750
	add.w	r5,r0                             ; 50f6: 0950
	mov.b	@er0,r0l                          ; 50f8: 6808
	add.b	r0l,r6h                           ; 50fa: 0886
	inc	r1l                                 ; 50fc: 0a09
loc_50fe:
	mov.b	r1l,r0l                           ; 50fe: 0c98
	extu.w	r0                               ; 5100: 1750
	cmp.w	e6,r0                             ; 5102: 1de0
	bcs	loc_50f2:8                          ; 5104: 45ec
	add.w	e6,e5                             ; 5106: 09ed
	mov.w	e5,r0                             ; 5108: 0dd0
	mov.b	r6h,r1l                           ; 510a: 0c69
	jsr	@func_4fca:24                       ; 510c: 5e004fca
	mov.w	r5,e0                             ; 5110: 0d58
	mov.w	e6,r1                             ; 5112: 0de1
	mov.w	r4,r0                             ; 5114: 0d40
	jsr	@func_524e:24                       ; 5116: 5e00524e
	mov.b	r6h,r1l                           ; 511a: 0c69
	add.w	e6,r4                             ; 511c: 09e4
	mov.w	r4,r0                             ; 511e: 0d40
	jsr	@func_4fca:24                       ; 5120: 5e004fca
	jmp	@RegRestore_er2_er6:24              ; 5124: 5a00ba62
