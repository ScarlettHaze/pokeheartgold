	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_2938

func_2938:
	sub.b	r0l,r0l                           ; 2938: 1888
	mov.b	r0l,@0xf7cf:16                    ; 293a: 6a88f7cf
	mov.b	#0x4,r0h                          ; 293e: f004
	mov.b	r0h,@0xf7d0:16                    ; 2940: 6a80f7d0
	mov.b	r0h,@0xf7d1:16                    ; 2944: 6a80f7d1
	mov.b	r0l,@0xf7d2:16                    ; 2948: 6a88f7d2
	mov.b	#0x6,r1l                          ; 294c: f906
	mov.b	r1l,@0xf7d3:16                    ; 294e: 6a89f7d3
	mov.b	#0x38,r1l                         ; 2952: f938
	mov.b	r1l,@0xf7d4:16                    ; 2954: 6a89f7d4
	mov.b	#0xe0,r1l                         ; 2958: f9e0
	mov.b	r1l,@0xf7d5:16                    ; 295a: 6a89f7d5
	mov.b	@0xf7d8:16,r1l                    ; 295e: 6a09f7d8
	and.b	#0x1e,r1l                         ; 2962: e91e
	mov.b	r1l,@0xf7d8:16                    ; 2964: 6a89f7d8
	mov.b	r0l,@0xf7d9:16                    ; 2968: 6a88f7d9
	mov.b	#0xa,r0l                          ; 296c: f80a
	jmp	@func_36f2:24                       ; 296e: 5a0036f2
