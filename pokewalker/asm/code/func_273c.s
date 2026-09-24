	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_273c

func_273c:
	mov.w	r4,@-er7                          ; 273c: 6df4
	mov.w	r6,@-er7                          ; 273e: 6df6
	subs	#2,er7                             ; 2740: 1b87
	mov.b	@SSSR:16,r0l                      ; 2742: 6a08f0e4
	and.b	#0x4,r0l                          ; 2746: e804
	mov.b	r0l,@SSSR:16                      ; 2748: 6a88f0e4
	mov.w	#0x8015,r0                        ; 274c: 79008015
	bsr	func_270a:8                         ; 2750: 55b8
	mov.w	r7,r6                             ; 2752: 0d76
	mov.b	#0x2,r0h                          ; 2754: f002
	mov.w	r6,e0                             ; 2756: 0d68
	sub.b	r0l,r0l                           ; 2758: 1888
	jsr	@func_26a0:24                       ; 275a: 5e0026a0
	mov.b	@er6,r0l                          ; 275e: 6868
	and.b	#0x7,r0l                          ; 2760: e807
	cmp.b	#0x2,r0l                          ; 2762: a802
	beq	loc_276e:8                          ; 2764: 4708
	bset	#0x0,@PDR9:8                       ; 2766: 7fdc7000
	sub.b	r0l,r0l                           ; 276a: 1888
	bra	loc_27ba:8                          ; 276c: 404c
loc_276e:
	mov.b	#0x1,r0h                          ; 276e: f001
	mov.w	r6,e0                             ; 2770: 0d68
	mov.b	#0x14,r0l                         ; 2772: f814
	jsr	@func_26a0:24                       ; 2774: 5e0026a0
	mov.b	@er6,r0l                          ; 2778: 6868
	and.b	#0xe0,r0l                         ; 277a: e8e0
	or.b	#0x6,r0l                           ; 277c: c806
	mov.b	r0l,@er6                          ; 277e: 68e8
	mov.b	r0l,r0h                           ; 2780: 0c80
	mov.b	#0x14,r0l                         ; 2782: f814
	bsr	func_270a:8                         ; 2784: 5584
	mov.w	#0xb,r0                           ; 2786: 7900000b
	bsr	func_270a:16                        ; 278a: 5c00ff7c
	mov.w	#0x100a,r0                        ; 278e: 7900100a
	jsr	@func_270a:24                       ; 2792: 5e00270a
	mov.b	#0x1,r0h                          ; 2796: f001
	mov.w	r6,e0                             ; 2798: 0d68
	mov.b	#0x1e,r0l                         ; 279a: f81e
	jsr	@func_26a0:24                       ; 279c: 5e0026a0
	bset	#0x7,@er6                          ; 27a0: 7d607070
	mov.b	@er6,r0h                          ; 27a4: 6860
	mov.b	#0x1e,r0l                         ; 27a6: f81e
	jsr	@func_270a:24                       ; 27a8: 5e00270a
	mov.w	#0xa,r0                           ; 27ac: 7900000a
	jsr	@func_270a:24                       ; 27b0: 5e00270a
	bset	#0x0,@PDR9:8                       ; 27b4: 7fdc7000
	mov.b	#0x1,r0l                          ; 27b8: f801
loc_27ba:
	adds	#2,er7                             ; 27ba: 0b87
	mov.w	@er7+,r6                          ; 27bc: 6d76
	mov.w	@er7+,r4                          ; 27be: 6d74
	rts                                     ; 27c0: 5470
