# Pokewalker internal flash ROM (H8/38606R) - matching build

PREFIX  ?= h8300-hitachi-coff-
AS      := $(PREFIX)as
LD      := $(PREFIX)ld
OBJCOPY := $(PREFIX)objcopy

BUILD   := build
ROM     := $(BUILD)/pokewalker.bin
ELF     := $(BUILD)/pokewalker.coff

ASFLAGS := -I include
ASM_SRCS := $(wildcard asm/*.s asm/code/*.s)
OBJS     := $(ASM_SRCS:%.s=$(BUILD)/%.o)

.PHONY: all compare clean disasm

all: compare

compare: $(ROM)
	@sha1sum -c pokewalker.sha1

$(ROM): $(ELF)
	$(OBJCOPY) -O binary -j .text $< $@

$(ELF): $(OBJS) ld_script.ld
	$(LD) -T ld_script.ld -Map $(BUILD)/pokewalker.map -o $@

$(BUILD)/%.o: %.s include/registers.inc
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

# Regenerate asm/ from baserom.bin (overwrites asm/ and ld_script.ld!)
disasm:
	python3 tools/disasm.py baserom.bin

clean:
	rm -rf $(BUILD)
