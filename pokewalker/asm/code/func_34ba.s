	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_34ba

func_34ba:
	mov.b	@0xf7ce:16,r0l                    ; 34ba: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 34be: a804
	bcc	loc_34d2:8                          ; 34c0: 4410
	mov.b	r0l,r1l                           ; 34c2: 0c89
	add.b	#0xff,r1l                         ; 34c4: 89ff
	mov.b	#0x5,r1h                          ; 34c6: f105
	mov.w	#0x2000,r0                        ; 34c8: 79002000
	jsr	@func_1bc6:24                       ; 34cc: 5e001bc6
	bra	loc_34dc:8                          ; 34d0: 400a
loc_34d2:
	mov.b	#0x5,r1l                          ; 34d2: f905
	mov.w	#0x2000,r0                        ; 34d4: 79002000
	jsr	@func_1b40:24                       ; 34d8: 5e001b40
loc_34dc:
	mov.w	#0xe,r1                           ; 34dc: 7901000e
	mov.w	#0x2230,r0                        ; 34e0: 79002230
	jmp	@loc_364e:24                        ; 34e4: 5a00364e
