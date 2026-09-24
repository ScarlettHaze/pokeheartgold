	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_0772

func_0772:
	jsr	@RegSave_er2_er6:24                 ; 0772: 5e00ba42
	mov.b	r0l,r5l                           ; 0776: 0c8d
	mov.w	#0xf8ce,r6                        ; 0778: 7906f8ce
	mov.b	r0h,@er6                          ; 077c: 68e0
	mov.b	r1l,@(0x1:16,er6)                 ; 077e: 6ee90001
	mov.l	@0xf8ba:16,er1                    ; 0782: 01006b01f8ba
	mov.l	er1,@(0x4:16,er6)                 ; 0788: 01006fe10004
	sub.b	r0h,r0h                           ; 078e: 1800
	mov.b	r0h,@(0x2:16,er6)                 ; 0790: 6ee00002
	mov.b	r0h,@(0x3:16,er6)                 ; 0794: 6ee00003
	mov.b	r5l,r1l                           ; 0798: 0cd9
	extu.w	r1                               ; 079a: 1751
	add.w	#0x8,r1                           ; 079c: 79110008
	extu.l	er1                              ; 07a0: 1771
	mov.w	r6,r0                             ; 07a2: 0d60
	jsr	@func_0714:24                       ; 07a4: 5e000714
	mov.w	r0,e6                             ; 07a8: 0d0e
	mov.b	r0l,@(0x2:16,er6)                 ; 07aa: 6ee80002
	mov.b	r0h,r0l                           ; 07ae: 0c08
	sub.b	r0h,r0h                           ; 07b0: 1800
	mov.b	r0l,@(0x3:16,er6)                 ; 07b2: 6ee80003
	add.b	#0x8,r5l                          ; 07b6: 8d08
	sub.w	r6,r6                             ; 07b8: 1966
	bra	loc_07c4:8                          ; 07ba: 4008
loc_07bc:
	mov.b	@(0xf8ce:16,er6),r0l              ; 07bc: 6e68f8ce
	bsr	func_0822:8                         ; 07c0: 5560
	inc.w	#1,r6                             ; 07c2: 0b56
loc_07c4:
	mov.b	r5l,r0l                           ; 07c4: 0cd8
	extu.w	r0                               ; 07c6: 1750
	cmp.w	r0,r6                             ; 07c8: 1d06
	bcs	loc_07bc:8                          ; 07ca: 45f0
loc_07cc:
	bld	#0x2,@SSR3:8                        ; 07cc: 7e9c7720
	bcc	loc_07cc:8                          ; 07d0: 44fa
	mov.w	@TCNT:16,r6                       ; 07d2: 6b06f0f6
loc_07d6:
	mov.w	@TCNT:16,r0                       ; 07d6: 6b00f0f6
	sub.w	r6,r0                             ; 07da: 1960
	cmp.w	#0x2,r0                           ; 07dc: 79200002
	bcs	loc_07d6:8                          ; 07e0: 45f4
	bld	#0x6,@SSR3:8                        ; 07e2: 7e9c7760
	bcc	loc_07ee:8                          ; 07e6: 4406
	mov.b	@RDR3:8,r0l                       ; 07e8: 289d
	mov.b	r0l,@0xf8cd:16                    ; 07ea: 6a88f8cd
loc_07ee:
	jmp	@RegRestore_er2_er6:24              ; 07ee: 5a00ba62
