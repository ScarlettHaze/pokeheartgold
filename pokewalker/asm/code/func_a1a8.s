	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_a1a8

func_a1a8:
	mov.w	r6,@-er7                          ; a1a8: 6df6
	mov.w	r5,@-er7                          ; a1aa: 6df5
	mov.b	@0xf7ae:16,r5l                    ; a1ac: 6a0df7ae
	add.b	#0x3f,r5l                         ; a1b0: 8d3f
	and.b	#0x3f,r5l                         ; a1b2: ed3f
	mov.b	@0xf7ae:16,r0l                    ; a1b4: 6a08f7ae
	extu.w	r0                               ; a1b8: 1750
	mov.b	@(0xf826:16,er0),r0l              ; a1ba: 6e08f826
	exts.w	r0                               ; a1be: 17d0
	extu.w	r5                               ; a1c0: 1755
	mov.w	r5,r6                             ; a1c2: 0d56
	mov.b	@(0xf826:16,er5),r5l              ; a1c4: 6e5df826
	exts.w	r5                               ; a1c8: 17d5
	sub.w	r5,r0                             ; a1ca: 1950
	mov.w	r0,r0                             ; a1cc: 0d00
	blt	loc_a1e6:8                          ; a1ce: 4d16
	mov.b	@0xf7ae:16,r0l                    ; a1d0: 6a08f7ae
	extu.w	r0                               ; a1d4: 1750
	mov.b	@(0xf826:16,er0),r0l              ; a1d6: 6e08f826
	exts.w	r0                               ; a1da: 17d0
	mov.b	@(0xf826:16,er6),r1l              ; a1dc: 6e69f826
	exts.w	r1                               ; a1e0: 17d1
	sub.w	r1,r0                             ; a1e2: 1910
	bra	loc_a1fc:8                          ; a1e4: 4016
loc_a1e6:
	mov.b	@0xf7ae:16,r0l                    ; a1e6: 6a08f7ae
	extu.w	r0                               ; a1ea: 1750
	mov.b	@(0xf826:16,er0),r0l              ; a1ec: 6e08f826
	exts.w	r0                               ; a1f0: 17d0
	neg.w	r0                                ; a1f2: 1790
	mov.b	@(0xf826:16,er6),r1l              ; a1f4: 6e69f826
	exts.w	r1                               ; a1f8: 17d1
	add.w	r1,r0                             ; a1fa: 0910
loc_a1fc:
	mov.w	r0,e0                             ; a1fc: 0d08
	mov.b	@0xf7ae:16,r0l                    ; a1fe: 6a08f7ae
	extu.w	r0                               ; a202: 1750
	mov.b	@(0xf866:16,er0),r0l              ; a204: 6e08f866
	exts.w	r0                               ; a208: 17d0
	mov.b	@(0xf866:16,er6),r1l              ; a20a: 6e69f866
	exts.w	r1                               ; a20e: 17d1
	sub.w	r1,r0                             ; a210: 1910
	mov.w	r0,r0                             ; a212: 0d00
	blt	loc_a22c:8                          ; a214: 4d16
	mov.b	@0xf7ae:16,r0l                    ; a216: 6a08f7ae
	extu.w	r0                               ; a21a: 1750
	mov.b	@(0xf866:16,er0),r0l              ; a21c: 6e08f866
	exts.w	r0                               ; a220: 17d0
	mov.b	@(0xf866:16,er6),r1l              ; a222: 6e69f866
	exts.w	r1                               ; a226: 17d1
	sub.w	r1,r0                             ; a228: 1910
	bra	loc_a242:8                          ; a22a: 4016
loc_a22c:
	mov.b	@0xf7ae:16,r0l                    ; a22c: 6a08f7ae
	extu.w	r0                               ; a230: 1750
	mov.b	@(0xf866:16,er0),r0l              ; a232: 6e08f866
	exts.w	r0                               ; a236: 17d0
	neg.w	r0                                ; a238: 1790
	mov.b	@(0xf866:16,er6),r1l              ; a23a: 6e69f866
	exts.w	r1                               ; a23e: 17d1
	add.w	r1,r0                             ; a240: 0910
loc_a242:
	add.w	r0,e0                             ; a242: 0908
	mov.b	@0xf7ae:16,r0l                    ; a244: 6a08f7ae
	extu.w	r0                               ; a248: 1750
	mov.b	@(0xf8a6:16,er0),r0l              ; a24a: 6e08f8a6
	exts.w	r0                               ; a24e: 17d0
	mov.b	@(0xf8a6:16,er6),r1l              ; a250: 6e69f8a6
	exts.w	r1                               ; a254: 17d1
	sub.w	r1,r0                             ; a256: 1910
	mov.w	r0,r0                             ; a258: 0d00
	blt	loc_a272:8                          ; a25a: 4d16
	mov.b	@0xf7ae:16,r0l                    ; a25c: 6a08f7ae
	extu.w	r0                               ; a260: 1750
	mov.b	@(0xf8a6:16,er0),r0l              ; a262: 6e08f8a6
	exts.w	r0                               ; a266: 17d0
	mov.b	@(0xf8a6:16,er6),r1l              ; a268: 6e69f8a6
	exts.w	r1                               ; a26c: 17d1
	sub.w	r1,r0                             ; a26e: 1910
	bra	loc_a288:8                          ; a270: 4016
loc_a272:
	mov.b	@0xf7ae:16,r0l                    ; a272: 6a08f7ae
	extu.w	r0                               ; a276: 1750
	mov.b	@(0xf8a6:16,er0),r0l              ; a278: 6e08f8a6
	exts.w	r0                               ; a27c: 17d0
	neg.w	r0                                ; a27e: 1790
	mov.b	@(0xf8a6:16,er6),r1l              ; a280: 6e69f8a6
	exts.w	r1                               ; a284: 17d1
	add.w	r1,r0                             ; a286: 0910
loc_a288:
	add.w	r0,e0                             ; a288: 0908
	cmp.w	#0x1e,e0                          ; a28a: 7928001e
	bls	loc_a294:8                          ; a28e: 4304
	mov.b	#0x1,r0l                          ; a290: f801
	bra	loc_a296:8                          ; a292: 4002
loc_a294:
	sub.b	r0l,r0l                           ; a294: 1888
loc_a296:
	mov.w	@er7+,r5                          ; a296: 6d75
	mov.w	@er7+,r6                          ; a298: 6d76
	rts                                     ; a29a: 5470
