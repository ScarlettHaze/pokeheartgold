#!/usr/bin/env python3
"""Generate a byte-matching, symbolic disassembly of the Pokewalker internal flash ROM.

Usage: tools/disasm.py [baserom.bin]

Reads baserom.bin (the 48 KiB H8/38606R internal flash), disassembles it with
h8300-hitachi-coff-objdump and writes:

  asm/header.s          vector table, build date string, default interrupt stubs
  asm/code/func_XXXX.s  one file per function (code section)
  asm/rodata.s          constant data (Renesas "C" section)
  asm/sectinit.s        section init tables, .data initializer, padding
  ld_script.ld          links everything back together in ROM order

Names from symbols.txt ("ADDRESS NAME" per line) replace the generated
func_XXXX / loc_XXXX / D_XXXX names. The output is regenerated from scratch
every run, so don't run this after you've started editing asm by hand.
"""

import os
import re
import subprocess
import sys

OBJDUMP = os.environ.get("OBJDUMP", "h8300-hitachi-coff-objdump")

ROM_SIZE = 0xC000
VECTORS_END = 0x50
HEADER_END = 0x78      # vectors + "Jun 26 2009" + version + default RTE stubs
CODE_END = 0xBAC6      # end of the P (program) section
RODATA_END = 0xBFBA    # end of the C (const) section
SECTINIT_TABLES = 0xBFBA

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)

BRANCH_RE = re.compile(r"\.[+-]\d+ \(0x([0-9a-f]+)\)")
ABS24_RE = re.compile(r"@0x([0-9a-f]+):24")
ABS16_RE = re.compile(r"@0x([0-9a-f]+):16")
ABS8_RE = re.compile(r"@0x([0-9a-f]+):8")
IMM16_RE = re.compile(r"^(mov\.w|cmp\.w|add\.w)\s+#0x([0-9a-f]+),(r\d|e\d)$")
LINE_RE = re.compile(r"^\s*([0-9a-f]+):\t((?:[0-9a-f]{2} )+)\s*(?:\t(.*))?$")

BIT_OPS = ("bld", "bild", "bst", "bist", "bset", "bclr", "bnot", "btst",
           "band", "biand", "bor", "bior", "bxor", "bixor")


def load_registers():
    regs = {}
    with open(os.path.join(ROOT, "include", "registers.inc")) as f:
        for line in f:
            m = re.match(r"\s*\.equ\s+(\w+),\s*0x([0-9a-f]+)", line)
            if m:
                regs[int(m.group(2), 16)] = m.group(1)
    return regs


def load_symbols():
    syms = {}
    path = os.path.join(ROOT, "symbols.txt")
    if os.path.exists(path):
        with open(path) as f:
            for line in f:
                line = line.split("#")[0].split()
                if len(line) >= 2:
                    syms[int(line[0], 16)] = line[1]
    return syms


def disassemble(rom_path, start, end):
    out = subprocess.run(
        [OBJDUMP, "-z", "-D", "-b", "binary", "-m", "h8300:h8300hn",
         f"--start-address={start}", f"--stop-address={end}", rom_path],
        check=True, capture_output=True, text=True).stdout
    rows = []
    for line in out.splitlines():
        m = LINE_RE.match(line)
        if not m:
            continue
        addr = int(m.group(1), 16)
        raw = bytes.fromhex(m.group(2).replace(" ", ""))
        text = (m.group(3) or "").split(";")[0].strip()
        # objdump wraps instructions longer than 4 bytes onto a continuation line
        if not text and rows and rows[-1][0] + len(rows[-1][1]) == addr:
            a, b, t = rows[-1]
            rows[-1] = (a, b + raw, t)
        else:
            rows.append((addr, raw, text))
    return rows


def mnemonic(text):
    return text.split()[0] if text else ""


def is_branch(text):
    op = mnemonic(text)
    return op.startswith("b") and not op.startswith(BIT_OPS) and BRANCH_RE.search(text)


def is_terminator(text):
    op = mnemonic(text)
    return op in ("rts", "rte", "jmp", "bra", "bra/s", "bt")


class Disassembler:
    def __init__(self, rom, rom_path):
        self.rom = rom
        self.regs = load_registers()
        self.user_syms = load_symbols()
        self.rows = disassemble(rom_path, HEADER_END, CODE_END)
        self.insn_addrs = {a for a, _, _ in self.rows}
        self.vectors = [int.from_bytes(rom[i:i + 2], "big") for i in range(0, VECTORS_END, 2)]
        self.find_functions()
        self.find_data_refs()

    # ---- analysis ----

    def find_functions(self):
        calls, branch_targets = set(), set()
        for a, _, t in self.rows:
            op = mnemonic(t)
            m = ABS24_RE.search(t)
            if op in ("jsr", "jmp") and m:
                (calls if op == "jsr" else branch_targets).add(int(m.group(1), 16))
            elif op == "bsr":
                calls.add(int(BRANCH_RE.search(t).group(1), 16))
            elif is_branch(t):
                branch_targets.add(int(BRANCH_RE.search(t).group(1), 16))
        self.branch_targets = branch_targets

        funcs = {HEADER_END}
        funcs |= {v for v in self.vectors if HEADER_END <= v < CODE_END}
        funcs |= calls
        # Code that follows an unconditional control transfer and is never branched
        # to locally is only reachable through a pointer: treat it as a new function.
        prev = None
        for a, _, t in self.rows:
            if prev is not None and is_terminator(prev) and a not in branch_targets:
                funcs.add(a)
            prev = t
        # Tail-jumped (jmp @aa:24) addresses that start right after a terminator
        # are separate functions as well - handled by the rule above.
        self.funcs = sorted(f for f in funcs if f in self.insn_addrs)
        self.func_set = set(self.funcs)

    def find_data_refs(self):
        refs = set()
        for a, _, t in self.rows:
            for m in ABS16_RE.finditer(t):
                v = int(m.group(1), 16)
                if CODE_END <= v < ROM_SIZE:
                    refs.add(v)
            m = IMM16_RE.match(t)
            if m and mnemonic(t) == "mov.w":
                v = int(m.group(2), 16)
                if CODE_END <= v < RODATA_END:
                    refs.add(v)
        self.data_refs = refs

        # Pointer tables in rodata: runs of >= 3 aligned words that all point at
        # function starts / branch targets in the code section.
        self.ptr_words = set()
        code_labels = self.func_set | self.branch_targets
        a = CODE_END
        while a < RODATA_END - 1:
            run = a
            while run < RODATA_END - 1 and int.from_bytes(self.rom[run:run + 2], "big") in code_labels:
                run += 2
            if run - a >= 6:
                for p in range(a, run, 2):
                    self.ptr_words.add(p)
                a = run
            else:
                a += 2
        self.ptr_targets = {int.from_bytes(self.rom[p:p + 2], "big") for p in self.ptr_words}

    # ---- naming ----

    def label(self, addr):
        if addr in self.user_syms:
            return self.user_syms[addr]
        if addr in self.func_set:
            return f"func_{addr:04x}"
        if addr < CODE_END:
            return f"loc_{addr:04x}"
        return f"D_{addr:04x}"

    def func_of(self, addr):
        # binary search for the function containing addr
        lo, hi = 0, len(self.funcs) - 1
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if self.funcs[mid] <= addr:
                lo = mid
            else:
                hi = mid - 1
        return self.funcs[lo]

    def symbolize(self, addr, raw, text, used):
        op = mnemonic(text)
        if is_branch(text):
            tgt = int(BRANCH_RE.search(text).group(1), 16)
            used.add(tgt)
            size = ":16" if len(raw) == 4 else ":8"
            return BRANCH_RE.sub(self.label(tgt) + size, text, count=1)
        if op in ("jsr", "jmp") and ABS24_RE.search(text):
            tgt = int(ABS24_RE.search(text).group(1), 16)
            used.add(tgt)
            return ABS24_RE.sub("@" + self.label(tgt) + ":24", text, count=1)

        def abs16(m):
            v = int(m.group(1), 16)
            if v in self.regs:
                return f"@{self.regs[v]}:16"
            if CODE_END <= v < ROM_SIZE:
                used.add(v)
                return f"@{self.label(v)}:16"
            return f"@0x{v:04x}:16"

        def abs8(m):
            v = 0xFF00 | int(m.group(1), 16)
            return f"@{self.regs.get(v, f'0x{v:04x}')}:8"

        text = ABS16_RE.sub(abs16, text)
        text = ABS8_RE.sub(abs8, text)
        m = IMM16_RE.match(text)
        if m and op == "mov.w":
            v = int(m.group(2), 16)
            if CODE_END <= v < RODATA_END or v in self.func_set:
                used.add(v)
                text = f"{m.group(1)}\t#{self.label(v)},{m.group(3)}"
        return text

    # ---- output ----

    def write(self):
        asm = os.path.join(ROOT, "asm")
        code_dir = os.path.join(asm, "code")
        os.makedirs(code_dir, exist_ok=True)
        for f in os.listdir(code_dir):
            if f.endswith(".s"):
                os.remove(os.path.join(code_dir, f))

        # Group rows per function and render instructions first, so we know
        # which labels are referenced from where.
        bodies = {}
        refs_from = {}
        by_func = {}
        for row in self.rows:
            by_func.setdefault(self.func_of(row[0]), []).append(row)
        rendered = {}
        for f, rows in by_func.items():
            used = set()
            lines = [(a, self.symbolize(a, raw, t, used), raw) for a, raw, t in rows]
            rendered[f] = lines
            refs_from[f] = used
        for v in self.vectors:
            refs_from.setdefault("header", set()).add(v)

        # A label needs .global when it's used outside the function defining it.
        needs_global = set(self.func_set) | self.ptr_targets
        for f, used in refs_from.items():
            for u in used:
                if u < CODE_END and (f == "header" or self.func_of(u) != f):
                    needs_global.add(u)
        label_addrs = self.branch_targets | self.func_set | self.ptr_targets
        for used in refs_from.values():
            label_addrs |= {u for u in used if u < CODE_END}

        objs = ["header"]
        for f in self.funcs:
            name = self.label(f)
            out = ["\t.h8300hn", '\t.include "registers.inc"', "\t.section .text", ""]
            for a, _, _ in rendered[f]:
                if a in label_addrs and a in needs_global:
                    out.append(f"\t.global {self.label(a)}")
            out.append("")
            for a, text, raw in rendered[f]:
                if a in label_addrs:
                    out.append(f"{self.label(a)}:")
                out.append(f"\t{text:<40}; {a:04x}: {raw.hex()}")
            with open(os.path.join(code_dir, f"{name}.s"), "w") as fh:
                fh.write("\n".join(out) + "\n")
            objs.append(f"code/{name}")
        objs += ["rodata", "sectinit"]

        self.write_header(asm)
        self.write_rodata(asm)
        self.write_sectinit(asm)
        self.write_ld(objs)
        print(f"{len(self.funcs)} functions, {len(self.rows)} instructions, "
              f"{len(self.data_refs)} data labels, {len(self.ptr_words)} code pointers in rodata")

    def write_header(self, asm):
        out = ["\t.h8300hn", "\t.section .text", "", "; Interrupt vector table (H8/300H normal mode: 16-bit entries)", "vectors:"]
        for i, v in enumerate(self.vectors):
            tgt = self.label(v) if v != 0xFFFF else "0xffff"
            if v != 0xFFFF and v >= HEADER_END:
                out.insert(2, f"\t.global {tgt}")
            out.append(f"\t.word {tgt:<24}; vector {i}")
        out.append("")
        date = self.rom[0x50:0x5C]
        assert date == b"Jun 26 2009\0", date
        out.append("build_date:")
        out.append('\t.asciz "Jun 26 2009"')
        out.append(f"\t.word 0x{int.from_bytes(self.rom[0x5C:0x5E], 'big'):04x}")
        out.append("")
        out.append("; Default handlers for unused interrupts")
        for a in range(0x5E, HEADER_END, 2):
            assert self.rom[a:a + 2] == b"\x56\x70"
            out.append(f"{self.label(a)}:")
            out.append("\trte")
        # The default handlers are referenced by other objects through the vector table only.
        out.insert(2, "\t.global vectors")
        with open(os.path.join(asm, "header.s"), "w") as fh:
            fh.write("\n".join(out) + "\n")

    def data_lines(self, start, end, labels):
        out = []
        a = start
        while a < end:
            if a in labels:
                out.append(f"\t.global {self.label(a)}")
                out.append(f"{self.label(a)}:")
            if a in self.ptr_words and a + 1 not in labels:
                tgt = int.from_bytes(self.rom[a:a + 2], "big")
                out.append(f"\t.word {self.label(tgt)}")
                a += 2
                continue
            stop = a + 1
            while stop < end and stop - a < 16 and stop not in labels and (stop not in self.ptr_words or stop + 1 in labels):
                stop += 1
            out.append("\t.byte " + ", ".join(f"0x{b:02x}" for b in self.rom[a:stop]))
            a = stop
        return out

    def write_rodata(self, asm):
        out = ["\t.h8300hn", "\t.section .text", "", "; Constant data (Renesas C section)"]
        out += self.data_lines(CODE_END, RODATA_END, self.data_refs | {CODE_END})
        with open(os.path.join(asm, "rodata.s"), "w") as fh:
            fh.write("\n".join(out) + "\n")

    def write_sectinit(self, asm):
        w = lambda a: int.from_bytes(self.rom[a:a + 2], "big")
        # Layout expected by the C runtime's section initializer (func_ba78):
        #   DTBL: { rom_start, rom_end, ram_start }   BTBL: { ram_start, ram_end }
        d_src, d_end, d_dst, b_start, b_end = (w(0xBFBA + 2 * i) for i in range(5))
        assert d_src == 0xBFC4 and 0xBFC4 <= d_end <= ROM_SIZE
        out = ["\t.h8300hn", "\t.section .text", "",
               "; Section initialization tables used by the startup code",
               f"\t.global {self.label(0xBFBA)}", f"{self.label(0xBFBA)}:  ; initialized data, copied ROM -> RAM",
               f"\t.word D_data_init, D_data_init_end, 0x{d_dst:04x}",
               f"\t.global {self.label(0xBFC0)}", f"{self.label(0xBFC0)}:  ; zero-initialized data",
               f"\t.word 0x{b_start:04x}, 0x{b_end:04x}", "",
               f"; Initial contents of the D section (RAM 0x{d_dst:04x})",
               "D_data_init:"]
        out += ["\t.byte " + ", ".join(f"0x{b:02x}" for b in self.rom[d_src:d_end])]
        out += ["D_data_init_end:", "",
                "; Unused flash, erased state",
                f"\t.fill 0x{ROM_SIZE - d_end:x}, 1, 0xff"]
        assert all(b == 0xFF for b in self.rom[d_end:ROM_SIZE])
        with open(os.path.join(asm, "sectinit.s"), "w") as fh:
            fh.write("\n".join(out) + "\n")

    def write_ld(self, objs):
        lines = ["/* Generated by tools/disasm.py - objects in ROM order */",
                 "OUTPUT_FORMAT(\"coff-h8300\")", "OUTPUT_ARCH(h8300hn)", "ENTRY(vectors)", "",
                 "SECTIONS", "{", "\t.text 0x0000 :", "\t{"]
        lines += [f"\t\tbuild/asm/{o}.o(.text)" for o in objs]
        lines += ["\t}", "}"]
        with open(os.path.join(ROOT, "ld_script.ld"), "w") as fh:
            fh.write("\n".join(lines) + "\n")


def main():
    rom_path = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, "baserom.bin")
    with open(rom_path, "rb") as f:
        rom = f.read()
    if len(rom) != ROM_SIZE:
        sys.exit(f"{rom_path}: expected {ROM_SIZE} bytes, got {len(rom)}")
    Disassembler(rom, rom_path).write()


if __name__ == "__main__":
    main()
