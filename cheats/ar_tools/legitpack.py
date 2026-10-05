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
    'Rock Smash Always Finds Something': 'Smashing a rock always gives a wild Pokemon where the area has Rock Smash Pokemon. Where it has none, you always get an item instead, but only in areas whose rocks can hold items at all (for example Violet City and Pewter City). Elsewhere rocks stay empty.',
    'Traded Pokemon Always Obey': 'Traded Pokemon obey you whatever their level and however many badges you have. Has no effect in link or Battle Frontier battles, where the game never checks obedience.',
    'Bug-Catching Contest Always 1st Place': 'If you catch a Pokemon in the Bug-Catching Contest you always win 1st place and its prize (Sun Stone, or another evolution stone once you have the National Dex). The judge still announces the other contestants normally.',
    'Kurt Makes 5 Balls per Apricorn': 'Kurt hands back 5 Poke Balls for every Apricorn you give him, so you can collect every Apricorn ball type quickly. Make sure you have bag space.',
    'Sweet Scent and Honey Always Work': "Sweet Scent and Honey start a wild battle even when you aren't standing in grass or water, using the area's grass Pokemon (or its water Pokemon if it has no grass). They still fail where there are no wild Pokemon at all.",
    'Hoenn Sound Always On': 'Wild Pokemon act as if the Pokegear radio is playing Hoenn Sound, so its Pokemon appear without tuning in. Only use it after you have the National Dex (the radio show needs it). Enable only one of Hoenn/Sinnoh Sound.',
    'Sinnoh Sound Always On': 'Wild Pokemon act as if the Pokegear radio is playing Sinnoh Sound, so its Pokemon appear without tuning in. Only use it after you have the National Dex (the radio show needs it). Enable only one of Hoenn/Sinnoh Sound.',
    'Unown Is Always a Form You Have Not Caught': "Wild Unown are always a form you haven't caught yet (from the puzzles you have solved), the same way the Unown radio signal works half the time. Once you have them all, forms are random again.",
    'Unlimited Safari Balls': "Throwing a Safari Ball doesn't use one up, so you never run out in the Safari Zone. The counter stays at 30.",
    'Unlimited Sport Balls': "Throwing a Sport Ball in the Bug-Catching Contest doesn't use one up. The counter stays at 20.",
    'Infinite PP': "Your Pokemon's moves never lose PP in battle (Pressure included). Opponents use PP as normal. Do not combine with the database's PP Never Decreases code.",
    "Your Pokemon Can't Faint (HP Stops at 1)": "Any damage to your Pokemon (attacks, poison, weather, recoil and so on) stops at 1 HP, so your Pokemon can't faint in battle. A Pokemon that is already fainted stays fainted.",
    'You Take Half Damage': 'Attacks from the other side do half damage to your Pokemon (at least 1). Works with the Your Damage codes.',
    "Opponents Can't Lower Your Stats": 'Moves and abilities from the other side (Growl, Intimidate and so on) can\'t lower your Pokemon\'s stats; the game shows "protected by Mist!". Your own stat drops (like Superpower) still happen.',
    'Your Stat Boosts Are Doubled': "When your Pokemon's stats rise, they rise twice as much (+1 becomes +2, +2 becomes +4), still capped at +6.",
    "Your Pokemon Can't Be Confused or Flinch": 'Your Pokemon never flinch, and confusion wears off before it can make them hurt themselves, so they never lose a turn to either.',
    'Wild Pokemon Never Use Self-Destruct or Explosion': "Wild Pokemon never pick Self-Destruct or Explosion (unless it's the only move they can use), so Geodude, Voltorb and friends are easy to catch. Enable only one of the three Wild Pokemon Never Use codes.",
    'Wild Pokemon Never Use Self-Targeting Moves': 'Wild Pokemon never pick status moves that target themselves: stat raises (Swords Dance, Harden...), healing (Recover, Rest...), Protect, Substitute and Teleport (no more Abra escaping). Enable only one of the three Wild Pokemon Never Use codes.',
    'Wild Pokemon Never Use Explosion or Self-Targeting Moves': 'Both of the above together: no Self-Destruct, Explosion, stat raises, healing, Protect, Substitute or Teleport from wild Pokemon. Enable only one of the three Wild Pokemon Never Use codes.',
    'No Poison Damage While Walking': "Poisoned Pokemon don't lose HP while you walk. They stay poisoned until healed.",
    'Fly From Inside Buildings and Caves': "Fly works inside buildings and caves (anywhere you could make a phone call). It still can't be used in the Elite Four rooms, Hall of Fame, Battle Tower elevator, Union Room or Wi-Fi rooms.",
    'Day Care Pokemon Do Not Gain Exp': "Pokemon left at the Day Care don't gain Exp. or learn moves, and the Day Care man only charges the base fee. Eggs are still found as normal.",
    'Shiny Eggs More Often (Masuda Method Always On)': 'Every Day Care egg gets the Masuda method re-rolls, as if one parent were from a different-language game (about 5 times the normal shiny chance). This is exactly what international breeding does, so the eggs look normal.',
    'Dept. Store Sells Every Ball and Evolution Item': 'The Poke Ball counters on Goldenrod and Celadon Dept. Store 2F sell every ball you can use in HeartGold (Apricorn balls included) and every evolution stone and evolution item, at their normal prices, plus Escape Rope, Poke Doll and Repels.',
    'Show Friendship on the Summary Screen': "Hold SELECT while switching Pokemon on the summary's skills page: the Attack number shows that Pokemon's friendship (0-255). Release SELECT and switch again to see Attack. Do not combine with the database's EV/IV Checker.",
    'Show Secret ID on the Trainer Card': 'Hold SELECT while opening your Trainer Card: ID No. shows your Secret ID instead (useful for planning shiny breeding). Open it normally to see your Trainer ID.',
    'Swarm Pokemon Appear More Often': 'While a swarm is on your route, the grass Pokemon picked is re-rolled (up to 3 more times) until it is the swarm Pokemon: about 87% instead of 40%. The Pokemon itself is generated normally.',
    'Rare Bug-Catching Contest Pokemon Appear More Often': "In the Bug-Catching Contest the Pokemon picked is re-rolled (up to 3 more times) until it's one of the four rarest on that day's list (for example Venonat, Paras, Scyther and Pinsir): about 59% instead of 20%. The Pokemon itself is generated normally.",
    'Skip the Egg-Hatching Animation': 'Eggs hatch straight away after the "Oh?" message, without the hatching scene. You won\'t be asked for a nickname (use the Name Rater later).',
}
import re as _re
items = []
for n, f in new100.NEW.items():
    items.append('\t\t\t<cheat>\n\t\t\t\t<name>%s</name>\n\t\t\t\t<note>%s</note>\n\t\t\t\t<codes>%s</codes>\n\t\t\t</cheat>\n' % (n, NEW_NOTES[n], f().text()))
out += '\t\t<folder>\n\t\t\t<name>100%% Save Helpers</name>\n' + ''.join(items) + '\t\t</folder>\n'
open('new_hg_eu_cheats_100pct.xml', 'w').write(out)
names = re.findall(r'<cheat>\s*<name>([^<]*)</name>', out)
print(len(names)); print('\n'.join(names))
