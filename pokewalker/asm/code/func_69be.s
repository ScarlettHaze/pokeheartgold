	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_69be

func_69be:
	mov.b	r0l,r5h                           ; 69be: 0c85
	mov.b	r0h,r5l                           ; 69c0: 0c0d
	jsr	@func_247e:24                       ; 69c2: 5e00247e
	mov.w	#0x300,e3                         ; 69c6: 790b0300
	mov.w	e3,r0                             ; 69ca: 0db0
	jsr	@func_2488:24                       ; 69cc: 5e002488
	mov.w	r0,r3                             ; 69d0: 0d03
	mov.w	r0,e0                             ; 69d2: 0d08
	mov.w	#0x8f00,r0                        ; 69d4: 79008f00
	mov.w	#0x10,r1                          ; 69d8: 79010010
	jsr	@func_5384:24                       ; 69dc: 5e005384
	mov.b	@0xf7cf:16,r0l                    ; 69e0: 6a08f7cf
	beq	loc_69ee:8                          ; 69e4: 4708
	mov.w	e3,r1                             ; 69e6: 0db1
	mov.w	#0x933e,r0                        ; 69e8: 7900933e
	bra	loc_6a06:8                          ; 69ec: 4018
loc_69ee:
	mov.w	e3,r1                             ; 69ee: 0db1
	mov.b	@0xf7ac:16,r0l                    ; 69f0: 6a08f7ac
	extu.w	r0                               ; 69f4: 1750
	shar.w	r0                               ; 69f6: 1190
	and.w	#0x1,r0                           ; 69f8: 79600001
	mov.w	#0x300,e0                         ; 69fc: 79080300
	mulxu.w	e0,er0                          ; 6a00: 5280
	add.w	#0x933e,r0                        ; 6a02: 7910933e
loc_6a06:
	mov.w	r3,e0                             ; 6a06: 0d38
	jsr	@func_5384:24                       ; 6a08: 5e005384
	mov.w	r3,e0                             ; 6a0c: 0d38
	mov.b	r5l,r0h                           ; 6a0e: 0cd0
	mov.b	r5h,r0l                           ; 6a10: 0c58
	mov.w	#0x3040,r1                        ; 6a12: 79013040
	jsr	@func_80ac:24                       ; 6a16: 5e0080ac
	rts                                     ; 6a1a: 5470
