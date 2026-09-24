	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2ffa
	.global loc_3008
	.global loc_300a

func_2ffa:
	cmp.b	r6h,r6l                           ; 2ffa: 1c6e
	bcs	loc_30a4:16                         ; 2ffc: 585000a4
	mov.b	@0xf7d9:16,r0l                    ; 3000: 6a08f7d9
	cmp.b	#0x3,r0l                          ; 3004: a803
	bcc	loc_3018:8                          ; 3006: 4410
loc_3008:
	mov.b	#0xd,r0l                          ; 3008: f80d
loc_300a:
	mov.b	r0l,@0xf7cf:16                    ; 300a: 6a88f7cf
	sub.b	r0l,r0l                           ; 300e: 1888
	mov.b	r0l,@0xf7d2:16                    ; 3010: 6a88f7d2
	mov.b	#0x4,r0l                          ; 3014: f804
	bra	loc_3082:8                          ; 3016: 406a
loc_3018:
	mov.b	#0xf,r0l                          ; 3018: f80f
	mov.b	r0l,@0xf7cf:16                    ; 301a: 6a88f7cf
	sub.b	r0l,r0l                           ; 301e: 1888
	mov.b	r0l,@0xf7d2:16                    ; 3020: 6a88f7d2
	mov.b	#0x6,r0h                          ; 3024: f006
	mov.b	r0h,@0xf7d3:16                    ; 3026: 6a80f7d3
	bra	loc_3044:8                          ; 302a: 4018
