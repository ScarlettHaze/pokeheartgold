#include "map_section.h"

#include "global.h"

#include "constants/map_sections.h"

static const u16 sMapsecTypeStart[MAPSECTYPE_MAX] = {
    MAPSEC_MYSTERY_ZONE,
    METLOC_DAY_CARE_COUPLE,
    METLOC_LOVELY_PLACE,
};

int sub_02017FAC(int mapsec) {
    int i;
    for (i = 0; i < MAPSECTYPE_MAX - 1; i++) {
        if ((u32)mapsec < sMapsecTypeStart[i + 1]) {
            return i;
        }
    }
    return i;
}

int sub_02017FCC(int mapsec) {
    return mapsec - sMapsecTypeStart[sub_02017FAC(mapsec)];
}

int sub_02017FE4(MapsecType type, int offset) {
    GF_ASSERT(type < MAPSECTYPE_MAX);
    return offset + sMapsecTypeStart[type];
}

BOOL LocationIsDiamondPearlCompatible(mapsec_t mapsec) {
    if ((mapsec >= MAPSEC_TWINLEAF_TOWN && mapsec <= MAPSEC_BATTLE_PARK)
        || (mapsec >= METLOC_DAY_CARE_COUPLE && mapsec <= METLOC_RILEY)
        || (mapsec >= METLOC_LOVELY_PLACE && mapsec <= METLOC_CONCERT_EVENT)) {
        return TRUE;
    }
    return FALSE;
}
