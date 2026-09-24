	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_03b4

func_03b4:
	mov.l	er2,@-er7                         ; 03b4: 01006df2
	mov.w	r3,@-er7                          ; 03b8: 6df3
	mov.l	er4,@-er7                         ; 03ba: 01006df4
	mov.l	er5,@-er7                         ; 03be: 01006df5
	mov.l	er6,@-er7                         ; 03c2: 01006df6
	jsr	@func_075c:24                       ; 03c6: 5e00075c
	mov.w	#0xf7e6,r1                        ; 03ca: 7901f7e6
	mov.w	#0x68,r2                          ; 03ce: 79020068
	jsr	@func_b9ce:24                       ; 03d2: 5e00b9ce
	mov.b	@0xf841:16,r0l                    ; 03d6: 6a08f841
	and.b	#0xf8,r0l                         ; 03da: e8f8
	cmp.b	#0xc0,r0l                         ; 03dc: a8c0
	bcc	loc_040e:8                          ; 03de: 442e
	mov.b	@0xf841:16,r0l                    ; 03e0: 6a08f841
	shlr.b	r0l                              ; 03e4: 1108
	shlr.b	r0l                              ; 03e6: 1108
	shlr.b	r0l                              ; 03e8: 1108
	extu.w	r0                               ; 03ea: 1750
	mov.w	r0,r6                             ; 03ec: 0d06
	exts.l	er0                              ; 03ee: 17f0
	mov.w	#0xa,r1                           ; 03f0: 7901000a
	divxs.w	r1,er0                          ; 03f4: 01d05310
	mov.w	#0x10,e0                          ; 03f8: 79080010
	mulxu.w	e0,er0                          ; 03fc: 5280
	mov.w	r6,r2                             ; 03fe: 0d62
	exts.l	er2                              ; 0400: 17f2
	divxs.w	r1,er2                          ; 0402: 01d05312
	mov.w	e2,r2                             ; 0406: 0da2
	or.b	r2l,r0l                            ; 0408: 14a8
	mov.b	r0l,@0xf7a8:16                    ; 040a: 6a88f7a8
loc_040e:
	mov.l	@0xf846:16,er6                    ; 040e: 01006b06f846
	beq	loc_0422:8                          ; 0414: 470c
	mov.l	er6,@0xf788:16                    ; 0416: 01006b86f788
	mov.l	er6,er0                           ; 041c: 0fe0
	jsr	@func_a4fe:24                       ; 041e: 5e00a4fe
loc_0422:
	jmp	@loc_0700:24                        ; 0422: 5a000700
