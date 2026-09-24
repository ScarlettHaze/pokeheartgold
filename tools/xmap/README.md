# xmap matching tools

Helpers for mapping the repo's undecompiled asm functions to the original
function names and source (`.c`) files recorded in a Metrowerks linker map
(`.xMAP`), such as the Japanese HeartGold map.

The map does not need to come from the same build as the US ROM. Functions are
matched by their order and size within each overlay. Overlay *N* in the map is
`OVY_N` in `main.lsf`.

## Requirements

* `binutils-arm-none-eabi` (GNU `as`/`objdump`; MWCC and wine are not needed)
* `cpp`, Python 3 with `numpy`

## Usage

Run from the repo root:

```sh
tools/xmap/assemble_asm.sh /tmp/gas                       # measure asm function sizes
python3 tools/xmap/match_xmap.py path/to/jpn.xmap \
    --objdir /tmp/gas/obj -o matches.tsv --splits splits.txt
python3 tools/xmap/parse_xmap.py path/to/jpn.xmap -o xmap_symbols.tsv   # optional: raw symbol dump
```

* `matches.tsv`: one row per asm function, with columns
  `overlay, us_name, us_size, orig_name, orig_size, orig_object, confidence`.
  * `exact`: the sizes match, and so do both neighbours'. These are very reliable.
  * `size`: the sizes match.
  * `fuzzy`: the function was placed by position only; the sizes differ, usually
    because the map's build has extra debug code. Check these by hand.
  * `none`: no match was found.
* `splits.txt`: for each asm file, the original object files it covers, in order.
  Use it to decide where to split an asm file into `.c` files.

`assemble_asm.sh` builds objects only so their function sizes can be measured.
Those objects can't be linked into the ROM.
