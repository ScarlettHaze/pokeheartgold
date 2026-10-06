// PokeFinder legality probe: for each caught Pokemon, run PokeFinder's own HGSS Method K wild searcher (reverse from IVs)
// and report every state whose PID, species and level match. stdin lines:
//   name pid hp atk def spa spd spe species level location encounter(0=grass,1=contest)
#include <cstdio>
#include <iostream>
#include <sstream>
#include <string>
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
    std::array<bool, 26> und; und.fill(true);
    std::array<bool, 4> puz; puz.fill(true);
    Profile4 profile("", Game::HeartGold, 58737, 1898, true, und, puz);
    std::string line;
    while (std::getline(std::cin, line))
    {
        std::istringstream in(line);
        std::string name; unsigned pid; int iv[6], species, level, location, enc;
        in >> name >> std::hex >> pid >> std::dec >> iv[0] >> iv[1] >> iv[2] >> iv[3] >> iv[4] >> iv[5] >> species >> level >> location >> enc;
        Encounter encounter = enc == 1 ? Encounter::BugCatchingContest : Encounter::Grass;
        std::array<u8, 6> ivs = { (u8)iv[0], (u8)iv[1], (u8)iv[2], (u8)iv[3], (u8)iv[4], (u8)iv[5] };
        std::array<bool, 25> natures; natures.fill(true);
        std::array<bool, 16> powers; powers.fill(true);
        StackVector<bool, 13> slots; slots.fill(true);
        int found = 0;
        std::string detail;
        for (int time = 0; time < 3; time++)
            for (int radio = 0; radio < 3; radio++)
                for (int swarm = 0; swarm < 2; swarm++)
                {
                    EncounterSettings4 settings = {};
                    settings.time = time; settings.swarm = swarm; settings.hgss.radio = radio;
                    auto areas = Encounters4::getEncounters(encounter, settings, &profile);
                    for (const auto &area : areas)
                    {
                        if (enc == 0 && area.getLocation() != location) continue;
                        WildStateFilter filter(255, 255, 255, 1, 100, 0, 255, 0, 255, false, ivs, ivs, natures, powers, slots);
                        WildSearcher4 searcher(0, 0, 0, 0, Method::MethodK, Lead::None, false, false, false, 50, area, profile, filter);
                        auto states = searcher.searchMethodK(ivs[0], ivs[1], ivs[2], ivs[3], ivs[4], ivs[5]);
                        for (const auto &s : states)
                        {
                            if (s.getPID() == pid && s.getSpecie() == species && s.getLevel() == level)
                            {
                                found++;
                                char buf[200];
                                std::snprintf(buf, sizeof buf, " [loc %d time %d radio %d swarm %d: slot %d seed %08X]", area.getLocation(), time, radio, swarm,
                                              s.getEncounterSlot(), s.getSeed());
                                if (detail.size() < 400) detail += buf;
                            }
                        }
                    }
                }
        std::cout << name << (found ? "  PokeFinder: VALID wild encounter" : "  PokeFinder: NO matching encounter") << detail << std::endl;
    }
}
