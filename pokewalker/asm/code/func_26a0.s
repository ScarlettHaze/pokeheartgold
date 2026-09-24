	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_26a0

func_26a0:
	mov.b	r0l,r1h                           ; 26a0: 0c81
	mov.w	e0,r4                             ; 26a2: 0d84
	mov.b	@SSSR:16,r1l                      ; 26a4: 6a09f0e4
	and.b	#0x4,r1l                          ; 26a8: e904
	mov.b	r1l,@SSSR:16                      ; 26aa: 6a89f0e4
	mov.b	#0xc0,r1l                         ; 26ae: f9c0
	mov.b	r1l,@SSER:16                      ; 26b0: 6a89f0e3
	bset	#0x7,r1h                           ; 26b4: 7071
	bclr	#0x0,@PDR9:8                       ; 26b6: 7fdc7200
loc_26ba:
	mov.b	@SSSR:16,r0l                      ; 26ba: 6a08f0e4
	bld	#0x2,r0l                            ; 26be: 7728
	bcc	loc_26ba:8                          ; 26c0: 44f8
	mov.b	r1h,@SSTDR:16                     ; 26c2: 6a81f0eb
loc_26c6:
	mov.b	@SSSR:16,r0l                      ; 26c6: 6a08f0e4
	bld	#0x1,r0l                            ; 26ca: 7718
	bcc	loc_26c6:8                          ; 26cc: 44f8
	mov.b	@SSRDR:16,r0l                     ; 26ce: 6a08f0e9
loc_26d2:
	mov.b	@SSSR:16,r0l                      ; 26d2: 6a08f0e4
	bld	#0x2,r0l                            ; 26d6: 7728
	bcc	loc_26d2:8                          ; 26d8: 44f8
	mov.b	#0xff,r0l                         ; 26da: f8ff
	mov.b	r0l,@SSTDR:16                     ; 26dc: 6a88f0eb
loc_26e0:
	mov.b	@SSSR:16,r0l                      ; 26e0: 6a08f0e4
	bld	#0x1,r0l                            ; 26e4: 7718
	bcc	loc_26e0:8                          ; 26e6: 44f8
	mov.b	@SSRDR:16,r1h                     ; 26e8: 6a01f0e9
	mov.b	r1h,@er4                          ; 26ec: 68c1
	inc.w	#1,r4                             ; 26ee: 0b54
	dec.b	r0h                               ; 26f0: 1a00
	bne	loc_26d2:8                          ; 26f2: 46de
loc_26f4:
	mov.b	@SSSR:16,r0l                      ; 26f4: 6a08f0e4
	bld	#0x3,r0l                            ; 26f8: 7738
	bcc	loc_26f4:8                          ; 26fa: 44f8
	bset	#0x0,@PDR9:8                       ; 26fc: 7fdc7000
	mov.b	#0x80,r0l                         ; 2700: f880
	mov.b	r0l,@SSER:16                      ; 2702: 6a88f0e3
	sub.b	r0l,r0l                           ; 2706: 1888
	rts                                     ; 2708: 5470
