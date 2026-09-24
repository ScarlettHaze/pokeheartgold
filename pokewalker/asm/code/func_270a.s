	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_270a

func_270a:
	mov.b	r0l,r1h                           ; 270a: 0c81
	mov.b	#0x80,r1l                         ; 270c: f980
	mov.b	r1l,@SSER:16                      ; 270e: 6a89f0e3
	bclr	#0x0,@PDR9:8                       ; 2712: 7fdc7200
loc_2716:
	mov.b	@SSSR:16,r0l                      ; 2716: 6a08f0e4
	bld	#0x2,r0l                            ; 271a: 7728
	bcc	loc_2716:8                          ; 271c: 44f8
	mov.b	r1h,@SSTDR:16                     ; 271e: 6a81f0eb
loc_2722:
	mov.b	@SSSR:16,r0l                      ; 2722: 6a08f0e4
	bld	#0x2,r0l                            ; 2726: 7728
	bcc	loc_2722:8                          ; 2728: 44f8
	mov.b	r0h,@SSTDR:16                     ; 272a: 6a80f0eb
loc_272e:
	mov.b	@SSSR:16,r0l                      ; 272e: 6a08f0e4
	bld	#0x3,r0l                            ; 2732: 7738
	bcc	loc_272e:8                          ; 2734: 44f8
	bset	#0x0,@PDR9:8                       ; 2736: 7fdc7000
	rts                                     ; 273a: 5470
