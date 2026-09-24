	.h8300hn
	.include "registers.inc"
	.section .text

	.global func_224c

func_224c:
	mov.l	er2,@-er7                         ; 224c: 01006df2
	mov.l	er3,@-er7                         ; 2250: 01006df3
	mov.w	r4,@-er7                          ; 2254: 6df4
	mov.l	er5,@-er7                         ; 2256: 01006df5
	mov.l	er6,@-er7                         ; 225a: 01006df6
	sub.w	#0xa,r7                           ; 225e: 7937000a
	mov.w	#0xff,e6                          ; 2262: 790e00ff
	mov.w	r0,r4                             ; 2266: 0d04
	mov.b	r1l,r6l                           ; 2268: 0c9e
	mov.b	r1h,r3h                           ; 226a: 0c13
	mov.w	e0,e5                             ; 226c: 0d8d
	mov.w	e1,@(0x4:16,er7)                  ; 226e: 6ff90004
	mov.b	@(0x1f:16,er7),r2l                ; 2272: 6e7a001f
	extu.w	r2                               ; 2276: 1752
	mov.w	r2,r5                             ; 2278: 0d25
	mov.b	r6l,r2l                           ; 227a: 0cea
	extu.w	r2                               ; 227c: 1752
	mov.w	r2,e1                             ; 227e: 0d29
	mov.b	@(0x23:16,er7),r2l                ; 2280: 6e7a0023
	extu.w	r2                               ; 2284: 1752
	add.w	r5,r2                             ; 2286: 0952
	cmp.w	e1,r2                             ; 2288: 1d92
	ble	loc_2296:8                          ; 228a: 4f0a
	mov.b	r6l,r3l                           ; 228c: 0ceb
	mov.b	@(0x1f:16,er7),r2l                ; 228e: 6e7a001f
	sub.b	r2l,r3l                           ; 2292: 18ab
	bra	loc_229a:8                          ; 2294: 4004
loc_2296:
	mov.b	@(0x23:16,er7),r3l                ; 2296: 6e7b0023
loc_229a:
	mov.b	@(0x21:16,er7),r0l                ; 229a: 6e780021
	extu.w	r0                               ; 229e: 1750
	mov.w	r0,e4                             ; 22a0: 0d0c
	shar.w	r0                               ; 22a2: 1190
	shar.w	r0                               ; 22a4: 1190
	shar.w	r0                               ; 22a6: 1190
	extu.w	r1                               ; 22a8: 1751
	mulxu.w	r1,er0                          ; 22aa: 5210
	add.w	r5,r0                             ; 22ac: 0950
	shll.w	r0                               ; 22ae: 1010
	add.w	r0,r4                             ; 22b0: 0904
	sub.b	r5l,r5l                           ; 22b2: 18dd
	mov.b	@(0x21:16,er7),r6l                ; 22b4: 6e7e0021
	and.b	#0x7,r6l                          ; 22b8: ee07
	extu.w	r6                               ; 22ba: 1756
	add.w	#0x8,e4                           ; 22bc: 791c0008
	mov.w	e4,e2                             ; 22c0: 0dca
	jmp	@loc_23a2:24                        ; 22c2: 5a0023a2
loc_22c6:
	mov.b	r5l,r0l                           ; 22c6: 0cd8
	extu.w	r0                               ; 22c8: 1750
	mov.w	r0,e4                             ; 22ca: 0d0c
	shll.w	r0                               ; 22cc: 1010
	add.w	r4,r0                             ; 22ce: 0940
	mov.w	r0,@(0x2:16,er7)                  ; 22d0: 6ff00002
	mov.w	@(0x4:16,er7),r1                  ; 22d4: 6f710004
	add.w	e4,r1                             ; 22d8: 09c1
	mov.w	r1,@er7                           ; 22da: 69f1
	mov.w	#0x8,e3                           ; 22dc: 790b0008
	sub.w	r6,e3                             ; 22e0: 196b
	mov.b	@er1,r1l                          ; 22e2: 6819
	mov.w	e3,r2                             ; 22e4: 0db2
loc_22e6:
	dec.b	r2l                               ; 22e6: 1a0a
	bmi	loc_22ee:8                          ; 22e8: 4b04
	shll.b	r1l                              ; 22ea: 1009
	bra	loc_22e6:8                          ; 22ec: 40f8
loc_22ee:
	mov.w	e6,e0                             ; 22ee: 0de8
	mov.b	r6l,r1h                           ; 22f0: 0ce1
loc_22f2:
	dec.b	r1h                               ; 22f2: 1a01
	bmi	loc_22fa:8                          ; 22f4: 4b04
	shar.w	e0                               ; 22f6: 1198
	bra	loc_22f2:8                          ; 22f8: 40f8
loc_22fa:
	mov.w	e0,r2                             ; 22fa: 0d82
	or.b	r2l,r1l                            ; 22fc: 14a9
	mov.b	@er0,r1h                          ; 22fe: 6801
	and.b	r1l,r1h                           ; 2300: 1691
	mov.b	r1h,@er0                          ; 2302: 6881
	mov.w	@(0x2:16,er7),r0                  ; 2304: 6f700002
	mov.w	@er7,r1                           ; 2308: 6971
	mov.b	@er1,r1l                          ; 230a: 6819
	mov.b	r6l,r1h                           ; 230c: 0ce1
loc_230e:
	dec.b	r1h                               ; 230e: 1a01
	bmi	loc_2316:8                          ; 2310: 4b04
	shll.b	r1l                              ; 2312: 1009
	bra	loc_230e:8                          ; 2314: 40f8
loc_2316:
	mov.w	e6,e0                             ; 2316: 0de8
loc_2318:
	dec.w	#1,e3                             ; 2318: 1b5b
	bmi	loc_2320:8                          ; 231a: 4b04
	shar.w	e0                               ; 231c: 1198
	bra	loc_2318:8                          ; 231e: 40f8
loc_2320:
	mov.w	e0,r2                             ; 2320: 0d82
	or.b	r2l,r1l                            ; 2322: 14a9
	mov.b	@(0x1:16,er0),r1h                 ; 2324: 6e010001
	and.b	r1l,r1h                           ; 2328: 1691
	mov.b	r1h,@(0x1:16,er0)                 ; 232a: 6e810001
	mov.b	r3h,r0l                           ; 232e: 0c38
	extu.w	r0                               ; 2330: 1750
	mov.w	e2,e0                             ; 2332: 0da8
	cmp.w	r0,e0                             ; 2334: 1d08
	bge	loc_23a0:8                          ; 2336: 4c68
	mov.b	r5l,r0l                           ; 2338: 0cd8
	extu.w	r0                               ; 233a: 1750
	add.w	e1,r0                             ; 233c: 0990
	shll.w	r0                               ; 233e: 1010
	add.w	r4,r0                             ; 2340: 0940
	mov.w	r0,@(0x2:16,er7)                  ; 2342: 6ff00002
	mov.b	r5l,r1l                           ; 2346: 0cd9
	extu.w	r1                               ; 2348: 1751
	mov.w	@(0x4:16,er7),r2                  ; 234a: 6f720004
	add.w	r1,r2                             ; 234e: 0912
	mov.w	r2,e3                             ; 2350: 0d2b
	mov.w	#0x8,e4                           ; 2352: 790c0008
	sub.w	r6,e4                             ; 2356: 196c
	mov.b	@er2,r2l                          ; 2358: 682a
	mov.w	e4,r1                             ; 235a: 0dc1
loc_235c:
	dec.b	r1l                               ; 235c: 1a09
	bmi	loc_2364:8                          ; 235e: 4b04
	shlr.b	r2l                              ; 2360: 110a
	bra	loc_235c:8                          ; 2362: 40f8
loc_2364:
	mov.w	e6,e0                             ; 2364: 0de8
	mov.b	r6l,r1l                           ; 2366: 0ce9
loc_2368:
	dec.b	r1l                               ; 2368: 1a09
	bmi	loc_2370:8                          ; 236a: 4b04
	shll.w	e0                               ; 236c: 1018
	bra	loc_2368:8                          ; 236e: 40f8
loc_2370:
	mov.w	e0,r1                             ; 2370: 0d81
	or.b	r1l,r2l                            ; 2372: 149a
	mov.b	@er0,r1l                          ; 2374: 6809
	and.b	r2l,r1l                           ; 2376: 16a9
	mov.b	r1l,@er0                          ; 2378: 6889
	mov.w	e3,r1                             ; 237a: 0db1
	mov.b	@er1,r1l                          ; 237c: 6819
loc_237e:
	dec.w	#1,e4                             ; 237e: 1b5c
	bmi	loc_2386:8                          ; 2380: 4b04
	shlr.b	r1l                              ; 2382: 1109
	bra	loc_237e:8                          ; 2384: 40f8
loc_2386:
	mov.w	e6,e0                             ; 2386: 0de8
	mov.b	r6l,r1h                           ; 2388: 0ce1
loc_238a:
	dec.b	r1h                               ; 238a: 1a01
	bmi	loc_2392:8                          ; 238c: 4b04
	shll.w	e0                               ; 238e: 1018
	bra	loc_238a:8                          ; 2390: 40f8
loc_2392:
	mov.w	e0,r2                             ; 2392: 0d82
	or.b	r2l,r1l                            ; 2394: 14a9
	mov.b	@(0x1:16,er0),r1h                 ; 2396: 6e010001
	and.b	r1l,r1h                           ; 239a: 1691
	mov.b	r1h,@(0x1:16,er0)                 ; 239c: 6e810001
loc_23a0:
	inc	r5l                                 ; 23a0: 0a0d
loc_23a2:
	cmp.b	r3l,r5l                           ; 23a2: 1cbd
	bcs	loc_22c6:16                         ; 23a4: 5850ff1e
	sub.b	r5l,r5l                           ; 23a8: 18dd
	mov.w	#0x8,e3                           ; 23aa: 790b0008
	sub.w	r6,e3                             ; 23ae: 196b
	jmp	@loc_2450:24                        ; 23b0: 5a002450
loc_23b4:
	mov.b	r5l,r0l                           ; 23b4: 0cd8
	extu.w	r0                               ; 23b6: 1750
	shll.w	r0                               ; 23b8: 1010
	mov.w	r0,e4                             ; 23ba: 0d0c
	add.w	r4,r0                             ; 23bc: 0940
	mov.w	r0,@(0x4:16,er7)                  ; 23be: 6ff00004
	mov.w	e5,r1                             ; 23c2: 0dd1
	add.w	e4,r1                             ; 23c4: 09c1
	mov.w	r1,@(0x2:16,er7)                  ; 23c6: 6ff10002
	mov.b	@er1,r1l                          ; 23ca: 6819
	mov.b	r6l,r1h                           ; 23cc: 0ce1
loc_23ce:
	dec.b	r1h                               ; 23ce: 1a01
	bmi	loc_23d6:8                          ; 23d0: 4b04
	shll.b	r1l                              ; 23d2: 1009
	bra	loc_23ce:8                          ; 23d4: 40f8
loc_23d6:
	mov.b	@er0,r1h                          ; 23d6: 6801
	or.b	r1l,r1h                            ; 23d8: 1491
	mov.b	r1h,@er0                          ; 23da: 6881
	mov.w	@(0x4:16,er7),r0                  ; 23dc: 6f700004
	mov.w	@(0x2:16,er7),r1                  ; 23e0: 6f710002
	mov.b	@(0x1:16,er1),r1l                 ; 23e4: 6e190001
	mov.b	r6l,r1h                           ; 23e8: 0ce1
loc_23ea:
	dec.b	r1h                               ; 23ea: 1a01
	bmi	loc_23f2:8                          ; 23ec: 4b04
	shll.b	r1l                              ; 23ee: 1009
	bra	loc_23ea:8                          ; 23f0: 40f8
loc_23f2:
	mov.b	@(0x1:16,er0),r1h                 ; 23f2: 6e010001
	or.b	r1l,r1h                            ; 23f6: 1491
	mov.b	r1h,@(0x1:16,er0)                 ; 23f8: 6e810001
	mov.b	r3h,r0l                           ; 23fc: 0c38
	extu.w	r0                               ; 23fe: 1750
	mov.w	e2,e0                             ; 2400: 0da8
	cmp.w	r0,e0                             ; 2402: 1d08
	bge	loc_244e:8                          ; 2404: 4c48
	mov.b	r5l,r0l                           ; 2406: 0cd8
	extu.w	r0                               ; 2408: 1750
	add.w	e1,r0                             ; 240a: 0990
	shll.w	r0                               ; 240c: 1010
	add.w	r4,r0                             ; 240e: 0940
	mov.w	r0,@(0x4:16,er7)                  ; 2410: 6ff00004
	mov.w	e5,r1                             ; 2414: 0dd1
	add.w	e4,r1                             ; 2416: 09c1
	mov.w	r1,@(0x2:16,er7)                  ; 2418: 6ff10002
	mov.b	@er1,r1l                          ; 241c: 6819
	mov.w	e3,r2                             ; 241e: 0db2
loc_2420:
	dec.b	r2l                               ; 2420: 1a0a
	bmi	loc_2428:8                          ; 2422: 4b04
	shlr.b	r1l                              ; 2424: 1109
	bra	loc_2420:8                          ; 2426: 40f8
loc_2428:
	mov.b	@er0,r1h                          ; 2428: 6801
	or.b	r1l,r1h                            ; 242a: 1491
	mov.b	r1h,@er0                          ; 242c: 6881
	mov.w	@(0x4:16,er7),r0                  ; 242e: 6f700004
	mov.w	@(0x2:16,er7),r1                  ; 2432: 6f710002
	mov.b	@(0x1:16,er1),r1l                 ; 2436: 6e190001
	mov.w	e3,r2                             ; 243a: 0db2
loc_243c:
	dec.b	r2l                               ; 243c: 1a0a
	bmi	loc_2444:8                          ; 243e: 4b04
	shlr.b	r1l                              ; 2440: 1109
	bra	loc_243c:8                          ; 2442: 40f8
loc_2444:
	mov.b	@(0x1:16,er0),r1h                 ; 2444: 6e010001
	or.b	r1l,r1h                            ; 2448: 1491
	mov.b	r1h,@(0x1:16,er0)                 ; 244a: 6e810001
loc_244e:
	inc	r5l                                 ; 244e: 0a0d
loc_2450:
	cmp.b	r3l,r5l                           ; 2450: 1cbd
	bcs	loc_23b4:16                         ; 2452: 5850ff5e
	add.w	#0xa,r7                           ; 2456: 7917000a
	jmp	@loc_266c:24                        ; 245a: 5a00266c
