	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_40a8
	.global loc_40ac
	.global loc_40cc
	.global loc_40d0

func_40a8:
	add.w	#0x268,r5                         ; 40a8: 79150268
loc_40ac:
	mov.w	e6,r1                             ; 40ac: 0de1
	mov.w	r5,r0                             ; 40ae: 0d50
	mov.w	r6,e0                             ; 40b0: 0d68
	jsr	@func_5384:24                       ; 40b2: 5e005384
	mov.w	r6,e0                             ; 40b6: 0d68
	mov.w	#0x808,r1                         ; 40b8: 79010808
	mov.w	#0x102c,r0                        ; 40bc: 7900102c
	jsr	@func_80ac:24                       ; 40c0: 5e0080ac
	mov.w	#0xd,r1                           ; 40c4: 7901000d
	mov.w	#0x1220,r0                        ; 40c8: 79001220
loc_40cc:
	jsr	@func_2096:24                       ; 40cc: 5e002096
loc_40d0:
	mov.w	#0xe,r1                           ; 40d0: 7901000e
	mov.w	#0xf30,r0                         ; 40d4: 79000f30
	jsr	@func_2096:24                       ; 40d8: 5e002096
	mov.b	@0xf7cf:16,r0l                    ; 40dc: 6a08f7cf
	cmp.b	#0x10,r0l                         ; 40e0: a810
	bcc	loc_40ea:8                          ; 40e2: 4406
	inc	r0l                                 ; 40e4: 0a08
	mov.b	r0l,@0xf7cf:16                    ; 40e6: 6a88f7cf
loc_40ea:
	mov.l	@er7+,er6                         ; 40ea: 01006d76
	mov.w	@er7+,r5                          ; 40ee: 6d75
	mov.w	@er7+,r4                          ; 40f0: 6d74
	mov.w	@er7+,r3                          ; 40f2: 6d73
	mov.w	@er7+,r2                          ; 40f4: 6d72
	rts                                     ; 40f6: 5470
