	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_6528

func_6528:
	mov.w	r6,@-er7                          ; 6528: 6df6
	mov.b	r0l,r3l                           ; 652a: 0c8b
	mov.b	r0h,r4h                           ; 652c: 0c04
	mov.b	r1l,r4l                           ; 652e: 0c9c
	jsr	@func_247e:24                       ; 6530: 5e00247e
	mov.w	#0x10,r0                          ; 6534: 79000010
	jsr	@func_2488:24                       ; 6538: 5e002488
	mov.w	r0,r5                             ; 653c: 0d05
	mov.w	#0x2470,r6                        ; 653e: 79062470
	mov.w	r0,e0                             ; 6542: 0d08
	mov.w	r6,r0                             ; 6544: 0d60
	mov.w	#0x10,r1                          ; 6546: 79010010
	jsr	@func_5384:24                       ; 654a: 5e005384
	sub.b	r6l,r6l                           ; 654e: 18ee
loc_6550:
	mov.b	r6l,r0l                           ; 6550: 0ce8
	extu.w	r0                               ; 6552: 1750
	add.w	r5,r0                             ; 6554: 0950
	mov.b	r4l,r1l                           ; 6556: 0cc9
	jsr	@func_b99c:24                       ; 6558: 5e00b99c
	inc	r6l                                 ; 655c: 0a0e
	cmp.b	#0x10,r6l                         ; 655e: ae10
	bcs	loc_6550:8                          ; 6560: 45ee
	mov.w	r5,e0                             ; 6562: 0d58
	mov.b	r4h,r0h                           ; 6564: 0c40
	mov.b	r3l,r0l                           ; 6566: 0cb8
	mov.w	#0x808,r1                         ; 6568: 79010808
	jsr	@func_80ac:24                       ; 656c: 5e0080ac
	mov.w	@er7+,r6                          ; 6570: 6d76
	rts                                     ; 6572: 5470
