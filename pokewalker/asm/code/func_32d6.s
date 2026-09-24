	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_32d6

func_32d6:
	mov.b	@0xf7d2:16,r0l                    ; 32d6: 6a08f7d2
	mov.b	@0xf7d3:16,r0h                    ; 32da: 6a00f7d3
	cmp.b	r0h,r0l                           ; 32de: 1c08
	bcs	loc_367c:16                         ; 32e0: 58500398
	jsr	@func_369c:24                       ; 32e4: 5e00369c
	mov.b	r0l,r0l                           ; 32e8: 0c88
	bne	loc_367c:16                         ; 32ea: 5860038e
	mov.b	@0xf7ce:16,r0l                    ; 32ee: 6a08f7ce
	cmp.b	#0x4,r0l                          ; 32f2: a804
	bcc	loc_3306:8                          ; 32f4: 4410
	mov.b	r0l,r1l                           ; 32f6: 0c89
	add.b	#0xff,r1l                         ; 32f8: 89ff
	mov.b	#0x5,r1h                          ; 32fa: f105
	mov.w	#0x2000,r0                        ; 32fc: 79002000
	jsr	@func_1bc6:24                       ; 3300: 5e001bc6
	bra	loc_3310:8                          ; 3304: 400a
loc_3306:
	mov.b	#0x5,r1l                          ; 3306: f905
	mov.w	#0x2000,r0                        ; 3308: 79002000
	jsr	@func_1b40:24                       ; 330c: 5e001b40
loc_3310:
	mov.w	#0x10e,r1                         ; 3310: 7901010e
	mov.w	#0x1f30,r0                        ; 3314: 79001f30
	jmp	@loc_364e:24                        ; 3318: 5a00364e
