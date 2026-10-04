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
open('new_hg_eu_cheats_100pct.xml', 'w').write(out)
names = re.findall(r'<cheat>\s*<name>([^<]*)</name>', out)
print(len(names)); print('\n'.join(names))
