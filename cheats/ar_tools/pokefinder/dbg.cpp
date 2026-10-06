#include <cstdio>
#include <Core/Enum/Encounter.hpp>
#include <Core/Enum/Game.hpp>
#include <Core/Enum/Lead.hpp>
#include <Core/Enum/Method.hpp>
#include <Core/Gen4/EncounterArea4.hpp>
#include <Core/Gen4/Encounters4.hpp>
#include <Core/Gen4/Profile4.hpp>
#include <Core/Gen4/States/WildState4.hpp>
#include <Core/Parents/Filters/StateFilter.hpp>
#define private public
#include <Core/Gen4/Searchers/WildSearcher4.hpp>
#undef private
int main()
{
    std::array<bool, 26> und; und.fill(true); std::array<bool, 4> puz; puz.fill(true);
    Profile4 profile("", Game::HeartGold, 58737, 1898, true, und, puz);
    EncounterSettings4 settings = {};
    auto areas = Encounters4::getEncounters(Encounter::BugCatchingContest, settings, &profile);
    std::array<u8, 6> ivs = { 26, 31, 25, 20, 16, 15 };
    std::array<bool, 25> natures; natures.fill(true); std::array<bool, 16> powers; powers.fill(true);
    StackVector<bool, 13> slots; slots.fill(true);
    for (auto &area : areas)
    {
        std::printf("area loc %d:", area.getLocation());
        for (int k = 0; k < 10; k++) std::printf(" %d", area.getPokemon(k).getSpecie());
        std::printf("\n");
        WildStateFilter filter(255, 255, 255, 1, 100, 0, 255, 0, 255, false, ivs, ivs, natures, powers, slots);
        WildSearcher4 s(0, 0, 0, 0, Method::MethodK, Lead::None, false, false, false, 50, area, profile, filter);
        for (auto &st : s.searchMethodK(ivs[0], ivs[1], ivs[2], ivs[3], ivs[4], ivs[5]))
            std::printf("   pid %08X species %d level %d slot %d\n", st.getPID(), st.getSpecie(), st.getLevel(), st.getEncounterSlot());
    }
}
