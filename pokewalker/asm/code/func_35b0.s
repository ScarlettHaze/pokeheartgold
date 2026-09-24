	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_35b0

func_35b0:
	mov.w	#0x1e0,e4                         ; 35b0: 790c01e0
	add.w	r5,e4                             ; 35b4: 095c
	mov.w	e4,r0                             ; 35b6: 0dc0
	mov.w	e6,r1                             ; 35b8: 0de1
	mov.w	r6,e0                             ; 35ba: 0d68
	jsr	@er3                                ; 35bc: 5d30
	mov.w	r6,e0                             ; 35be: 0d68
	mov.w	#0x808,r1                         ; 35c0: 79010808
	mov.w	#0xc14,r0                         ; 35c4: 79000c14
	jsr	@er4                                ; 35c8: 5d40
	mov.w	#0x1dc0,e4                        ; 35ca: 790c1dc0
	add.w	r5,e4                             ; 35ce: 095c
	mov.w	e4,r0                             ; 35d0: 0dc0
	mov.w	e6,r1                             ; 35d2: 0de1
	mov.w	r6,e0                             ; 35d4: 0d68
	jsr	@er3                                ; 35d6: 5d30
	mov.b	@0xf7d2:16,r0l                    ; 35d8: 6a08f7d2
	shll.b	r0l                              ; 35dc: 1008
	mov.b	#0xa,r0h                          ; 35de: f00a
	sub.b	r0l,r0h                           ; 35e0: 1880
	mov.b	#0xc,r0l                          ; 35e2: f80c
	mov.b	@0xf7d2:16,r1l                    ; 35e4: 6a09f7d2
	sub.b	r1l,r0l                           ; 35e8: 1898
	mov.w	r6,e0                             ; 35ea: 0d68
	mov.w	#0x808,r1                         ; 35ec: 79010808
	jsr	@er4                                ; 35f0: 5d40
	mov.b	@0xf7d2:16,r0l                    ; 35f2: 6a08f7d2
	shll.b	r0l                              ; 35f6: 1008
	mov.b	#0xc,r0h                          ; 35f8: f00c
	sub.b	r0l,r0h                           ; 35fa: 1880
	mov.b	@0xf7d2:16,r0l                    ; 35fc: 6a08f7d2
	add.b	#0x1c,r0l                         ; 3600: 881c
	mov.w	r6,e0                             ; 3602: 0d68
	mov.w	#0x808,r1                         ; 3604: 79010808
	bra	loc_366c:8                          ; 3608: 4062
