	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_350e

func_350e:
	mov.b	@0xf7d2:16,r0l                    ; 350e: 6a08f7d2
	cmp.b	#0x3,r0l                          ; 3512: a803
	bls	loc_367c:16                         ; 3514: 58300164
	mov.b	@0xf7ce:16,r0l                    ; 3518: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 351c: a804
	bcc	loc_3530:8                          ; 351e: 4410
	mov.b	r0l,r1l                           ; 3520: 0c89
	add.b	#0xff,r1l                         ; 3522: 89ff
	mov.b	#0x5,r1h                          ; 3524: f105
	mov.w	#0x2000,r0                        ; 3526: 79002000
	jsr	@func_1bc6:24                       ; 352a: 5e001bc6
	bra	loc_353a:8                          ; 352e: 400a
loc_3530:
	mov.b	#0x5,r1l                          ; 3530: f905
	mov.w	#0x2000,r0                        ; 3532: 79002000
	jsr	@func_1b40:24                       ; 3536: 5e001b40
loc_353a:
	mov.w	#0x10e,r1                         ; 353a: 7901010e
	mov.w	#0x2130,r0                        ; 353e: 79002130
	jmp	@loc_364e:24                        ; 3542: 5a00364e
