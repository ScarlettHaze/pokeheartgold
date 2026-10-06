PokeFinder legality probe (HGSS Method K wild searcher, PokeFinder Core a40feb2)

    git clone https://github.com/Admiral-Fish/PokeFinder.git ../pf && (cd ../pf && git submodule update --init --depth 1)
    pip install "cmake>=3.31" zstandard        # PokeFinder needs CMake 3.31+, and Python 3.14's compression.zstd (pyshim/ stands in)
    mkdir build && cd build && CC=gcc-14 CXX=g++-14 cmake .. -DCMAKE_BUILD_TYPE=Release
    PYTHONPATH=$PWD/../pyshim make pfcheck
    python3 ../../pfinput.py ../../pk/*.pk4 | ./pfcheck

pfcheck calls WildSearcher4::searchMethodK directly (no initial-seed/delay filter, since in-game seeds are hours
of advances past the boot seed) and reports every state whose PID, species and level match the caught Pokemon.
Note: PokeFinder's searcher does not model the Bug-Catching Contest's "at least one 31 IV" regeneration
(up to 4 attempts), so it can only match contest Pokemon generated on the first attempt - vanilla ones included.
