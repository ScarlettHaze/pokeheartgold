"""Build the 100%-save pack: only codes whose results the game itself keeps legal
and that leave nothing in the save a legality checker can tell apart."""
import re
src = open('new_hg_eu_cheats_4.xml').read()
EXCLUDE = {
    'Level Cap (Nuzlocke)',                    # restricts play, does not help completion
    'Breed Any Two Pokemon',                   # can make eggs no real game can (e.g. legendaries)
    'Lead Pokemon Abilities Always Activate',  # wild PID/RNG frame would not match the lead check
}
NOTES = {
    'All Unown Forms in the Ruins of Alph':
        'Wild Unown in the Ruins of Alph chambers can be any of the 28 forms (A-Z, ! and ?). '
        'For a save with no traces, solve all four puzzles first and use this only for ! and ?: '
        'the Pokedex records which forms you have seen, so seeing letters from unsolved puzzles would not match. '
        '! and ? normally appear during the Sinjoh Ruins (Arceus) event, so have done that event too. '
        'The caught Unown themselves are normal Ruins of Alph Unown.',
}
def fix(m):
    block = m.group(0)
    name = re.search(r'<name>([^<]*)</name>', block).group(1).replace('&amp;', '&')
    if name in EXCLUDE:
        return ''
    if name in NOTES:
        block = re.sub(r'<note>[^<]*</note>', '<note>%s</note>' % NOTES[name], block)
    return block
out = re.sub(r'\t*<cheat>.*?</cheat>\n', fix, src, flags=re.S)
out = re.sub(r'\t*<folder>\s*<name>[^<]*</name>\s*</folder>\n', '', out)
import new100
NEW_NOTES = {
    'Roaming Legendaries Do Not Flee': 'Raikou, Entei, Latias and Latios fight like normal wild Pokemon instead of running away on the first turn, and Roar/Whirlwind used by any wild Pokemon fails (yours still work). Catch them with any ball as normal.',
    'Safari Zone Objects Count as Fully Waited': 'Objects you place in Safari Zone areas work as if they had been there for the maximum number of days, so the rare Safari Pokemon they attract can appear straight away. Nothing is written to your save; the real day counters keep counting normally.',
    'Battle Points x2': 'Every Battle Point award from the Battle Frontier is doubled (still capped at 9,999). The hidden "Battle Points received" record is doubled to match, so the save stays consistent.',
    'Athlete Points x2': 'Athlete Points earned from Pokeathlon courses and NPCs are doubled (still capped at 99,999). The game itself doubles AP on some days, so doubled amounts are normal.',
    'Rock Smash Always Finds Something': 'Smashing a rock always gives a wild Pokemon where the area has Rock Smash Pokemon, and always gives an item everywhere else.',
    'Traded Pokemon Always Obey': 'Traded Pokemon obey you whatever their level and however many badges you have. Has no effect in link or Battle Frontier battles, where the game never checks obedience.',
    'Bug-Catching Contest Always 1st Place': 'If you catch a Pokemon in the Bug-Catching Contest you always win 1st place and its prize (Sun Stone, or another evolution stone once you have the National Dex). The judge still announces the other contestants normally.',
    'Kurt Makes 5 Balls per Apricorn': 'Kurt hands back 5 Poke Balls for every Apricorn you give him, so you can collect every Apricorn ball type quickly. Make sure you have bag space.',
}
import re as _re
items = []
for n, f in new100.NEW.items():
    items.append('\t\t\t<cheat>\n\t\t\t\t<name>%s</name>\n\t\t\t\t<note>%s</note>\n\t\t\t\t<codes>%s</codes>\n\t\t\t</cheat>\n' % (n, NEW_NOTES[n], f().text()))
out += '\t\t<folder>\n\t\t\t<name>100%% Save Helpers</name>\n' + ''.join(items) + '\t\t</folder>\n'
open('new_hg_eu_cheats_100pct.xml', 'w').write(out)
names = re.findall(r'<cheat>\s*<name>([^<]*)</name>', out)
print(len(names)); print('\n'.join(names))
