	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_1ab2

func_1ab2:
	mov.b	r0l,r4l                           ; 1ab2: 0c8c
	mov.b	r0h,r5h                           ; 1ab4: 0c05
	mov.b	r1l,r5l                           ; 1ab6: 0c9d
	jsr	@func_247e:24                       ; 1ab8: 5e00247e
	mov.w	#0x140,r0                         ; 1abc: 79000140
	jsr	@func_2488:24                       ; 1ac0: 5e002488
	mov.w	r0,r6                             ; 1ac4: 0d06
	jsr	@func_8766:24                       ; 1ac6: 5e008766
	mov.w	#0x140,r1                         ; 1aca: 79010140
	mov.w	r6,e0                             ; 1ace: 0d68
	mov.w	#0xf580,r0                        ; 1ad0: 7900f580
	jsr	@func_5384:24                       ; 1ad4: 5e005384
	mov.b	r5l,r1l                           ; 1ad8: 0cd9
	mov.w	r6,e0                             ; 1ada: 0d68
	mov.w	#0x1050,r0                        ; 1adc: 79001050
	jsr	@func_18b6:24                       ; 1ae0: 5e0018b6
	mov.w	r6,e0                             ; 1ae4: 0d68
	mov.b	r5h,r0h                           ; 1ae6: 0c50
	mov.b	r4l,r0l                           ; 1ae8: 0cc8
	mov.w	#0x1050,r1                        ; 1aea: 79011050
	jsr	@func_80ac:24                       ; 1aee: 5e0080ac
	rts                                     ; 1af2: 5470
