# Python 3.14 compression.zstd shim (only compress(data, level) is used by PokeFinder's resource scripts)
import zstandard
def compress(data, level=3):
    return zstandard.ZstdCompressor(level=level).compress(data)
