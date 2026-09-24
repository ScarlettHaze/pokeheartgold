	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_21fe

func_21fe:
	mov.w	r6,@-er7                          ; 21fe: 6df6
	mov.w	r5,@-er7                          ; 2200: 6df5
	mov.b	r0l,r5h                           ; 2202: 0c85
	mov.b	r0h,r5l                           ; 2204: 0c0d
	mov.b	@0xf7b5:16,r1l                    ; 2206: 6a09f7b5
	bld	#0x1,r1l                            ; 220a: 7719
	bcc	loc_2246:8                          ; 220c: 4438
	mov.b	@0xf7ac:16,r0l                    ; 220e: 6a08f7ac
	extu.w	r0                               ; 2212: 1750
	shar.w	r0                               ; 2214: 1190
	shar.w	r0                               ; 2216: 1190
	btst	#0x0,r0l                           ; 2218: 7308
	bne	loc_2246:8                          ; 221a: 462a
	jsr	@func_247e:24                       ; 221c: 5e00247e
	mov.w	#0x10,r0                          ; 2220: 79000010
	jsr	@func_2488:24                       ; 2224: 5e002488
	mov.w	r0,r6                             ; 2228: 0d06
	mov.w	r0,e0                             ; 222a: 0d08
	mov.w	#0x660,r0                         ; 222c: 79000660
	mov.w	#0x10,r1                          ; 2230: 79010010
	jsr	@func_5384:24                       ; 2234: 5e005384
	mov.w	r6,e0                             ; 2238: 0d68
	mov.b	r5l,r0h                           ; 223a: 0cd0
	mov.b	r5h,r0l                           ; 223c: 0c58
	mov.b	#0x8,r1h                          ; 223e: f108
	mov.b	r1h,r1l                           ; 2240: 0c19
	jsr	@func_80ac:24                       ; 2242: 5e0080ac
loc_2246:
	mov.w	@er7+,r5                          ; 2246: 6d75
	mov.w	@er7+,r6                          ; 2248: 6d76
	rts                                     ; 224a: 5470
