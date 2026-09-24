# Pokéwalker

A disassembly and (in-progress) decompilation of the Pokéwalker's internal 48 KiB flash ROM.
The Pokéwalker is the pedometer accessory that shipped with HeartGold/SoulSilver.

It builds the following ROM:

* **pokewalker.bin** `sha1: 19a4c4fd64c7087b2eb62a3a30cfbb88d2a1f744` (build date string "Jun 26 2009")

## Setup

Get the internal flash dump from your own Pokéwalker (see [Dmitry's write-up](http://dmitry.gr/?r=05.Projects&proj=28.%20pokewalker)
for how) and save it as `pokewalker/baserom.bin`. It isn't needed to build, only to regenerate `asm/`.

Install the H8 binutils and build:

```sh
sudo apt install binutils-h8300-hms   # provides h8300-hitachi-coff-{as,ld,objcopy,objdump}
make                                   # builds build/pokewalker.bin and checks its sha1
```

## Hardware at a glance

| | |
|---|---|
| CPU | Renesas H8/38606R, H8/300H core in **normal mode** (16-bit addresses, 16-bit vectors) |
| Flash | 48 KiB internal, `0x0000-0xBFFF` (this ROM) |
| RAM | 2 KiB, `0xF780-0xFF7F`. The stack starts at `0xFF80` |
| EEPROM | 64 KiB external over SSU (graphics, save data, routes). Not memory-mapped |
| LCD | 96×64, 2bpp, over SSU |
| IR | SCI3 in IrDA mode |

## ROM layout

| Range | Contents | Source |
|---|---|---|
| `0000-004F` | interrupt vector table (40 × 16-bit) | `asm/header.s` |
| `0050-005D` | `"Jun 26 2009"` + version word `0x0002` | `asm/header.s` |
| `005E-0077` | `rte` stubs for unused interrupts | `asm/header.s` |
| `0078-BAC5` | code (Renesas P section), 405 functions | `asm/code/*.s` |
| `BAC6-BFB9` | constant data (C section): tables, jump tables, small bitmaps, strings | `asm/rodata.s` |
| `BFBA-BFC3` | section init tables (DTBL/BTBL) read by `InitSections` | `asm/sectinit.s` |
| `BFC4-BFC7` | initial contents of the D section (copied to RAM `0xFEF0`) | `asm/sectinit.s` |
| `BFC8-BFFF` | unused, `0xFF` | `asm/sectinit.s` |

The B section (zero-initialized RAM) runs from `0xF780` to `0xFEF0`.

The layout (`_INITSCT` section tables, register save/restore helpers at `0xBA42`, `$sp`-style
prologues) shows the ROM was built with **Renesas' H8 C compiler (ch38)**, not GCC.

## How the disassembly is produced

`tools/disasm.py` runs `h8300-hitachi-coff-objdump` over the ROM and then:

* splits the code into functions. Function starts are call targets, vector targets, and code
  after an unconditional `rts`/`jmp`/`bra` that is never branched to.
* turns every branch/call/jump target into a label (`func_XXXX`, `loc_XXXX`), with explicit
  `:8`/`:16`/`:24` sizes so gas picks the original encodings.
* replaces I/O register addresses with names from `include/registers.inc` (`@TCSRWD1:8`, `@SSTDR:16`, ...).
* labels rodata referenced from code (`D_XXXX`) and turns pointer tables in rodata into `.word label`.
* keeps the original address and bytes in a comment on every instruction.
* writes `ld_script.ld`, which links the objects back in ROM order.

Names in `symbols.txt` override the generated ones. **Warning:** `make disasm` regenerates `asm/`
and `ld_script.ld` from scratch. Use it while the naming is still being bootstrapped. Once people
edit the asm by hand, rename in the `.s` files directly instead.

## Decompiling

The original compiler (Renesas ch38 from HEW, 2009-era) isn't freely redistributable, so a
byte-matching C decompilation needs a copy of that toolchain. GCC won't produce the same code.
Until then, a practical workflow is:

1. Understand a function in `asm/code/`, give it (and its RAM variables) real names, and document it.
2. Write the equivalent C in `src/` as a *functional* decompilation. GCC 3.4 for H8
   (`apt install gcc-h8300-hms`, `-mh -mn`) can compile it into a non-matching ROM to test in an
   emulator ([PoWar](https://github.com/UnrealPowerz/powar), [pokestroller](https://github.com/jpcerrone/pokestroller)).
3. If ch38 becomes available, set up a matching C build and replace `asm/code/<func>.s` one at a
   time, as the main HGSS decomp does.

Good starting points:

* `Start` (reset handler, `0x02C4`): the init sequence and main loop.
* Functions that touch the `SS*` registers: the EEPROM/LCD/accelerometer SPI drivers.
* Functions that touch `SCR3`/`TDR3`/`RDR3`: the IR packet layer. The protocol is documented in
  the shelved reverse-pokewalker project (`doc/IR Protocol`), which also has an EEPROM map.

## References

* [Dmitry.GR: Pokewalker hacking](http://dmitry.gr/?r=05.Projects&proj=28.%20pokewalker): hardware, IR protocol, ROM dump method
* H8/38602R Group Hardware Manual (I/O register addresses and bit meanings)
* H8/300H Series Software Manual (instruction set)
* the shelved reverse-pokewalker project: EEPROM map, IR protocol notes
