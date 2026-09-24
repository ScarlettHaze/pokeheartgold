#!/bin/bash
# Assemble the repo's asm/*.s with GNU binutils (no MWCC/wine needed) so that
# match_xmap.py can read function sizes. The objects are only for measuring,
# they are not linkable.
# usage: tools/xmap/assemble_asm.sh <outdir>   (run from the repo root)
set -e
R=$(pwd)
OUT=$(realpath -m "${1:?usage: $0 <outdir>}")
mkdir -p "$OUT/obj" "$OUT/inc" "$OUT/asm"
cp -r asm/macros asm/macros.inc "$OUT/asm/"
# GNU as: '@' starts a comment on ARM, use %function
sed -i 's/@function/%function/;s/@object/%object/' "$OUT"/asm/macros/*.inc
for f in asm/include/*.inc global.inc; do
    sed -E '/^\s*\.public/d; /FS_EXTERN_OVERLAY/d; /^#/d' "$f" > "$OUT/inc/$(basename "$f")"
done
export R OUT
ls asm/*.s | xargs -P"$(nproc)" -I{} sh -c '
    cd "$OUT"; b="$OUT/obj/$(basename {} .s)"
    cpp -P -undef -DSDK_ASM -DPM_ASM -DHEARTGOLD -I"$R" -I"$R/include" -I"$R/files" -I"$R/files/msgdata" -I"$R/lib/include" -I"$R/asm/include" "$R/{}" 2>/dev/null \
    | sed -E "s/;.*$//; s/^\s*\.public.*$//; s/^\s*\.rodata\s*$/.section .rodata/; s/^\s*(\.section\s+[.a-z_]+),\s*[0-9]+\s*$/\1/; s/FS_OVERLAY_ID\([^)]*\)/0/g" > "$b.s"
    arm-none-eabi-as -mcpu=arm946e-s -I"$OUT" -I"$OUT/inc" -o "$b.o" "$b.s" 2> "$b.err" || echo "failed: {} (see $b.err)"
'
echo "assembled $(ls "$OUT"/obj/*.o | wc -l) of $(ls asm/*.s | wc -l) files into $OUT/obj"
