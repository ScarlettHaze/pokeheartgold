	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_360a
	.global loc_364e
	.global loc_3654
	.global loc_366c

func_360a:
	mov.w	#0x1e0,e4                         ; 360a: 790c01e0
	add.w	r5,e4                             ; 360e: 095c
	mov.w	e4,r0                             ; 3610: 0dc0
	mov.w	e6,r1                             ; 3612: 0de1
	mov.w	r6,e0                             ; 3614: 0d68
	jsr	@er3                                ; 3616: 5d30
	mov.w	r6,e0                             ; 3618: 0d68
	mov.w	#0x808,r1                         ; 361a: 79010808
	mov.w	#0xc14,r0                         ; 361e: 79000c14
	jsr	@er4                                ; 3622: 5d40
	mov.b	@0xf7ce:16,r0l                    ; 3624: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 3628: a804
	bcc	loc_363c:8                          ; 362a: 4410
	mov.b	r0l,r1l                           ; 362c: 0c89
	add.b	#0xff,r1l                         ; 362e: 89ff
	mov.b	#0x5,r1h                          ; 3630: f105
	mov.w	#0x2000,r0                        ; 3632: 79002000
	jsr	@func_1bc6:24                       ; 3636: 5e001bc6
	bra	loc_3646:8                          ; 363a: 400a
loc_363c:
	mov.b	#0x5,r1l                          ; 363c: f905
	mov.w	#0x2000,r0                        ; 363e: 79002000
	jsr	@func_1b40:24                       ; 3642: 5e001b40
loc_3646:
	mov.w	#0x10e,r1                         ; 3646: 7901010e
	mov.w	#0x2030,r0                        ; 364a: 79002030
loc_364e:
	jsr	@func_2096:24                       ; 364e: 5e002096
	bra	loc_367c:8                          ; 3652: 4028
loc_3654:
	mov.w	#func_1cf0,e4                     ; 3654: 790c1cf0
	add.w	r5,e4                             ; 3658: 095c
	mov.w	e4,r0                             ; 365a: 0dc0
	mov.w	e5,r1                             ; 365c: 0dd1
	mov.w	r6,e0                             ; 365e: 0d68
	jsr	@er3                                ; 3660: 5d30
	mov.w	r6,e0                             ; 3662: 0d68
	mov.w	#0x1820,r1                        ; 3664: 79011820
	mov.w	#0x8,r0                           ; 3668: 79000008
loc_366c:
	jsr	@er4                                ; 366c: 5d40
	bra	loc_367c:8                          ; 366e: 400c
