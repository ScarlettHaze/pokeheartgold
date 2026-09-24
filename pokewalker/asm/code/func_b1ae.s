	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_b1ae

func_b1ae:
	mov.w	r3,@-er7                          ; b1ae: 6df3
	mov.w	r4,@-er7                          ; b1b0: 6df4
	mov.l	er5,@-er7                         ; b1b2: 01006df5
	mov.w	r6,@-er7                          ; b1b6: 6df6
	sub.l	er5,er5                           ; b1b8: 1ad5
	mov.b	r0l,r4h                           ; b1ba: 0c84
	mov.b	r0h,r4l                           ; b1bc: 0c0c
	mov.l	er5,@0xf79c:16                    ; b1be: 01006b85f79c
	sub.w	e0,e0                             ; b1c4: 1988
	mov.w	e0,@0xf7a0:16                     ; b1c6: 6b88f7a0
	mov.w	#0xf7b6,r1                        ; b1ca: 7901f7b6
	bclr	#0x1,@er1                          ; b1ce: 7d107210
	bclr	#0x2,@er1                          ; b1d2: 7d107220
	jsr	@func_075c:24                       ; b1d6: 5e00075c
	mov.w	r0,r6                             ; b1da: 0d06
	mov.w	r0,r1                             ; b1dc: 0d01
	mov.w	#0x68,e1                          ; b1de: 79090068
	mov.l	#0x1ed00ed,er0                    ; b1e2: 7a0001ed00ed
	jsr	@func_5128:24                       ; b1e8: 5e005128
	mov.l	er5,@er6                          ; b1ec: 010069e5
	mov.l	er5,@(0x4:16,er6)                 ; b1f0: 01006fe50004
	sub.w	r0,r0                             ; b1f6: 1900
	mov.w	r0,@(0x8:16,er6)                  ; b1f8: 6fe00008
	mov.w	r0,@(0xa:16,er6)                  ; b1fc: 6fe0000a
	mov.l	er5,@(0xc:16,er6)                 ; b200: 01006fe5000c
	mov.w	r0,e0                             ; b206: 0d08
	sub.b	r1l,r1l                           ; b208: 1899
loc_b20a:
	mov.w	#0x48,r0                          ; b20a: 79000048
	add.w	r6,r0                             ; b20e: 0960
	add.w	e0,r0                             ; b210: 0980
	mov.b	r1l,@er0                          ; b212: 6889
	inc.w	#1,e0                             ; b214: 0b58
	cmp.w	#0x12,e0                          ; b216: 79280012
	bcs	loc_b20a:8                          ; b21a: 45ee
	mov.b	r4h,r4h                           ; b21c: 0c44
	beq	loc_b234:8                          ; b21e: 4714
	sub.w	e0,e0                             ; b220: 1988
loc_b222:
	mov.w	#0x38,r0                          ; b222: 79000038
	add.w	r6,r0                             ; b226: 0960
	add.w	e0,r0                             ; b228: 0980
	mov.b	r1l,@er0                          ; b22a: 6889
	inc.w	#1,e0                             ; b22c: 0b58
	cmp.w	#0x10,e0                          ; b22e: 79280010
	bcs	loc_b222:8                          ; b232: 45ee
loc_b234:
	mov.w	#0x5b,r0                          ; b234: 7900005b
	add.w	r6,r0                             ; b238: 0960
	bclr	#0x0,@er0                          ; b23a: 7d007200
	mov.w	#0x5b,r0                          ; b23e: 7900005b
	add.w	r6,r0                             ; b242: 0960
	bclr	#0x1,@er0                          ; b244: 7d007210
	mov.w	#0x5b,r0                          ; b248: 7900005b
	add.w	r6,r0                             ; b24c: 0960
	bclr	#0x2,@er0                          ; b24e: 7d007220
	mov.b	@(0x5b:16,er6),r0l                ; b252: 6e68005b
	and.b	#0x7,r0l                          ; b256: e807
	mov.b	r0l,@(0x5b:16,er6)                ; b258: 6ee8005b
	sub.b	r0l,r0l                           ; b25c: 1888
	mov.b	r0l,@(0x5a:16,er6)                ; b25e: 6ee8005a
	mov.b	r0l,@(0x5e:16,er6)                ; b262: 6ee8005e
	mov.b	#0x2,r0h                          ; b266: f002
	mov.b	r0h,@(0x5f:16,er6)                ; b268: 6ee0005f
	mov.l	er5,@(0x60:16,er6)                ; b26c: 01006fe50060
	mov.l	#0x280010,er1                     ; b272: 7a0100280010
	add.w	r6,r1                             ; b278: 0961
	mov.l	#0x1830083,er0                    ; b27a: 7a0001830083
	jsr	@func_5128:24                       ; b280: 5e005128
	mov.b	r4l,r4l                           ; b284: 0ccc
	beq	loc_b28e:8                          ; b286: 4706
	mov.l	er5,@(0x64:16,er6)                ; b288: 01006fe50064
loc_b28e:
	mov.w	r6,r1                             ; b28e: 0d61
	mov.w	#0x68,e1                          ; b290: 79090068
	mov.l	#0x1ed00ed,er0                    ; b294: 7a0001ed00ed
	jsr	@func_50d8:24                       ; b29a: 5e0050d8
	mov.b	r4l,r0l                           ; b29e: 0cc8
	jsr	@func_b124:24                       ; b2a0: 5e00b124
	mov.b	r4l,r4l                           ; b2a4: 0ccc
	beq	loc_b2b6:8                          ; b2a6: 470e
	sub.b	r1l,r1l                           ; b2a8: 1899
	mov.l	#0xd4cce80,er0                    ; b2aa: 7a000d4cce80
	jsr	@func_5742:24                       ; b2b0: 5e005742
	bra	loc_b2c2:8                          ; b2b4: 400c
loc_b2b6:
	jsr	@func_187e:24                       ; b2b6: 5e00187e
	jsr	@func_188c:24                       ; b2ba: 5e00188c
	jsr	@func_18a8:24                       ; b2be: 5e0018a8
loc_b2c2:
	mov.b	r4h,r4h                           ; b2c2: 0c44
	beq	loc_b2d2:8                          ; b2c4: 470c
	sub.b	r1l,r1l                           ; b2c6: 1899
	mov.l	#0x6c8b800,er0                    ; b2c8: 7a0006c8b800
	jsr	@func_5742:24                       ; b2ce: 5e005742
loc_b2d2:
	sub.b	r1l,r1l                           ; b2d2: 1899
	mov.l	#0x1568de24,er0                   ; b2d4: 7a001568de24
	jsr	@func_5742:24                       ; b2da: 5e005742
	jmp	@loc_2660:24                        ; b2de: 5a002660
