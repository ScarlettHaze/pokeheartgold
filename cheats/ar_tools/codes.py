from hg import *
FOLDERS = []

def folder(name, allowed_one=False):
    f = {'name': name, 'one': allowed_one, 'cheats': []}
    FOLDERS.append(f)
    return f

OBJ = {}

def cheat(f, name, note, c):
    OBJ[name] = c
    f['cheats'].append((name, note, c.text() if isinstance(c, Cheat) else c))

def bl_to(new, ov, addr):
    return new

# ---------------- Item & Shop codes ----------------
F = folder('Item and Shop Codes')

c = Cheat(); c.patch(None, 0x020825B4, NOP + NOP)
cheat(F, 'Infinite TMs', 'TMs are not used up when a Pokemon learns the move, so each TM can be used again (like Gen 5 onward). HMs already work this way.', c)

c = Cheat()
for a in (0x02064FCA, 0x02065360, 0x0207C34C, 0x02081A2E, 0x0208280C):
    c.patch(None, a, MOV_R0_1_NOP)
c.patch(8, 0x0221DBEC, MOV_R0_1_NOP)
c.patch(8, 0x022233A4, MOV_R0_1_NOP)
c.patch(12, 0x0224ABF0, MOV_R0_1_NOP)
cheat(F, 'Items Never Run Out When Used', 'Using an item no longer removes it from the Bag: Potions, status heals, Revives, Ethers/Elixirs, PP Ups, vitamins, Rare Candies, evolution stones, Sacred Ash, Escape Rope, Honey, and Poke Balls and healing items used in battle. Giving, selling, tossing, planting Berries and story items work as normal. TMs are covered by the Infinite TMs code.', c)

c = Cheat(); c.patch(3, 0x02258120, asm('movs r0,#1; bx lr', 0x02258120))
cheat(F, 'Everything in Shops Costs 1', 'Every item in Poke Marts, Department Store counters, the Herb Shop, Pokeathlon Dome shops and other shop menus costs 1 (Poke Dollar or Athlete Point). You can buy up to 99 at a time. Vending machines and Game Corner prizes are not affected.', c)

c = Cheat(); c.patch(3, 0x02257DF8, asm('bx lr', 0x02257DF8))
cheat(F, 'Shopping Does Not Cost Money', 'Buying from shop menus no longer takes money (or Athlete Points) away. You still need enough money to afford what you pick. Do not combine with Everything in Shops Costs 1 (it is not needed).', c)

c = Cheat(); c.patch(15, 0x021FCBA0, asm('adds r1, r0, #0', 0x021FCBA0))
cheat(F, 'Items Sell for Full Price', 'Items sell for their full shop price instead of half. Items with no price still cannot be sold.', c)

c = Cheat(); c.patch(2, 0x0224BAF6, NOP, check_words=[0x0224BAF4])
cheat(F, 'Infinite Repel', 'Once you use a Repel, Super Repel or Max Repel it never wears off. Repel only stops wild Pokemon that are a lower level than your first Pokemon. Turn the code off to let it count down again.', c)

c = Cheat(); c.patch(12, 0x0225E1A4, asm('movs r2,#5', 0x0225E1A4))
cheat(F, 'Safari Zone Pokemon Never Flee', 'Wild Pokemon in the Safari Zone never run away; they stay "watching carefully" until you catch them, run, or use up your Safari Balls.', c)

# ---------------- Battle codes ----------------
import battle1, battle2, battle3, battle4, battle5, battle6
F = folder('Battle Codes (New 2)')
cheat(F, "Opponent's Moves Always Miss", "Every move an opponent aims at your side misses, including moves that normally never miss (Swift, Aerial Ace, Vital Throw). Moves the opponent uses on itself, weather and entry hazards still work. Do not combine with your Your Moves Never Miss code (they patch the same spot); use the combined code instead.", battle1.opp_miss_cheat())
cheat(F, 'Your Moves Never Miss and Opponent Always Misses', "Combines Your Moves Never Miss and Opponent's Moves Always Miss in one code: your side's moves skip the accuracy check, and every move an opponent aims at your side misses. Use this instead of enabling both (they cannot be on together).", battle1.both_cheat())
cheat(F, 'Your Pokemon Cannot Be Given Status Conditions', "Your side is treated as if Safeguard is always up: opponents' moves cannot put your Pokemon to sleep, poison, burn, freeze, paralyse or confuse them, and Yawn and Toxic Spikes fail. Abilities such as Static, Flame Body, Poison Point and Effect Spore can still pass on a status, and Flame Orb and Toxic Orb will not activate. Your own Safeguard move will fail because it is already active. A \"no longer protected\" message can show about every 8 turns; the protection comes back by itself.", battle3.safeguard_cheat())
cheat(F, "Your Moves' Added Effects Always Happen", "Every added effect on your side's moves always triggers: burn from Flamethrower, paralysis from Thunderbolt, flinch from Headbutt, stat drops from Psychic, Ancient Power's all-stat boost and so on. Opponents roll as normal.", battle4.effect_cheat())
cheat(F, 'Your Multi-Hit Moves Always Hit 5 Times', 'Fury Attack, Bullet Seed, Rock Blast, Icicle Spear, Pin Missile and other 2-5 hit moves always hit 5 times when your side uses them (as if your Pokemon had Skill Link). Opponents roll as normal.', battle5.multihit_cheat())
cheat(F, 'Level Cap (Nuzlocke)', "Your Pokemon gain no Exp. (and no EVs) once they reach the level of the next Gym Leader's strongest Pokemon, based on how many badges you have: 0 badges = 13, 1 = 17, 2 = 19, 3 = 25, 4 = 31, 5 = 35, 6 = 35, 7 = 41, 8 = 50, 9 = 53, 10 = 54, 11 = 54, 12 = 55, 13 = 56, 14 = 59, 15 = 60, 16 = 88. Rare Candies still work.", battle6.levelcap_cheat())

F = folder('Damage Multiplier Codes', allowed_one=True)
for s, n in ((1, 'x2'), (2, 'x4'), (3, 'x8')):
    cheat(F, 'Your Damage %s' % n, 'Attacks from your side do %s damage to the opponent. Damage taken and confusion self-hits are not changed. Enable only one.' % n, battle2.dmg_cheat(s))

F = folder('Prize Money Codes', allowed_one=True)
for k, n in ((1, 'x2'), (2, 'x4'), (3, 'x8')):
    c = Cheat(); c.patch(12, 0x0223FC38, asm('lsls r0, r4, #%d' % k, 0x0223FC38))
    cheat(F, 'Prize Money %s' % n, 'Money won from Trainer battles is multiplied by %s (on top of Amulet Coin and Happy Hour). Your money still cannot go above 999,999. Enable only one.' % n[1:], c)

F = folder('Blackout Codes')
c = Cheat(); c.patch(12, 0x0223C24C, asm('movs r0, #0; bx lr', 0x0223C24C))
cheat(F, 'No Money Lost When You Black Out', 'Losing a battle no longer costs you any money.', c)

# ---------------- Pokemon & breeding ----------------
import poke1, poke2, breed1
F = folder('Pokemon and Breeding Codes')
cheat(F, 'Friendship Rises Very Fast', 'Anything that raises friendship (levelling up, vitamins, walking, battle items, TMs, Gym and Elite Four battles) now raises it by 80 instead of 1-5, so a Pokemon reaches max friendship after a few level-ups or a short walk. Things that lower friendship are unchanged.', poke1.friendship_cheat())
cheat(F, 'Friendship Evolutions at Any Friendship', 'Pokemon that evolve by friendship (Golbat, Chansey, Pichu, Cleffa, Igglybuff, Togepi, Azurill, Budew, Chingling, Buneary, Munchlax, Riolu, Eevee) evolve on their next level-up whatever their friendship. Time-of-day rules still apply (Espeon/Riolu/Budew by day, Umbreon/Chingling by night). Everstone still blocks evolution.', poke1.friend_evo_cheat())
cheat(F, 'Eggs Inherit 5 IVs (Destiny Knot Style)', 'Day Care Eggs inherit 5 IVs from the parents instead of 3, like holding a Destiny Knot in Gen 6+. No item is needed. Power items still choose one of the 5 stats.', breed1.iv5_cheat())
cheat(F, 'Breed Any Two Pokemon', 'Any male and female pair can breed whatever their Egg Groups, and Pokemon in the Undiscovered group (legendaries, baby Pokemon) can breed too: a female with any male, or a genderless one with Ditto. The Egg is the mother\'s (or non-Ditto parent\'s) lowest evolution. Two Pokemon of the same gender, or two genderless ones, still cannot breed. Two Ditto still cannot breed.', poke1.any_breed_cheat())
cheat(F, 'Free Battle Frontier Move Tutors', 'The three move tutors at the Battle Frontier teach moves for 0 BP. The menu may still show the normal price, but no BP is taken.', poke1.tutor_cheat())
cheat(F, 'Free Move Relearner (No Heart Scale)', 'The Move Relearner in Blackthorn City teaches moves without needing or taking a Heart Scale.', poke1.relearner_cheat())
cheat(F, 'Lead Pokemon Abilities Always Activate', 'Field effects of your first Pokemon\'s ability always work instead of 50% (or 67%) of the time: Synchronize (wild Pokemon have its nature), Cute Charm (wild Pokemon are the opposite gender), Static (Electric types) and Magnet Pull (Steel types) when the area has them, and Pressure/Hustle/Vital Spirit (wild Pokemon are the highest level possible). The lead can be fainted.', poke2.ability_cheat())
F2 = folder('Pickup Codes', allowed_one=True)
cheat(F2, 'Pickup Always Finds an Item', 'After every battle, each Pokemon with Pickup that is not holding an item picks one up (normally 10%). The item is chosen as normal for its level. Enable only one Pickup code.', poke2.pickup_cheat(False))
cheat(F2, 'Pickup Always Finds a Rare Item', 'After every battle, each Pokemon with Pickup that is not holding an item picks up one of the rare Pickup items for its level (such as Nugget, King\'s Rock, Leftovers, Full Restore or a TM). Enable only one Pickup code.', poke2.pickup_cheat(True))

# ---------------- Field codes ----------------
import field1, field2
F = folder('Field Codes (New)')
cheat(F, 'PC and Heal Anywhere', '(Hold L and press X): Opens the Pokemon Center PC (Pokemon storage, item storage, Hall of Fame) wherever you are. (Hold R and press X): The screen fades, the healing jingle plays and your whole party is fully healed. Pressing X on its own still opens the menu. While this code is on, PCs skip their screen on/off flash (needed so the PC can be used away from a real one). Works wherever X normally opens the menu (not inside Battle Frontier facilities or the Union Room).', field1.pc_heal_cheat())
cheat(F, 'Trainers Always Ready for a Rematch', 'Every Trainer registered in your Pokegear is always ready for a rematch: talk to them at their usual spot and they battle you again with their strongest unlocked team, as many times as you like. Gym Leaders whose rematch is unlocked wait at their rematch location at any time. Phone calls from Trainers asking to battle are replaced by "I\'m waiting" calls.', field2.rematch_cheat())
cheat(F, 'All Unown Forms in the Ruins of Alph', 'Wild Unown in the Ruins of Alph chambers can be any of the 28 forms (A-Z, ! and ?), even if you have not solved every puzzle. You still need to have solved at least one puzzle for Unown to appear. The Unown radio signal still favours forms you have not caught.', field2.unown_cheat())
cheat(F, 'Free Game Corner Prizes', 'Prizes at the Goldenrod and Celadon Game Corner prize counters cost no coins. While the code is on, the game thinks you have 49,920 coins when it checks your balance, so the coin seller may say your Coin Case is full.', field2.coins_cheat())

# ---------------- XML output ----------------
from xml.sax.saxutils import escape

def to_xml():
    out = []
    for f in FOLDERS:
        out.append('\t\t<folder>')
        out.append('\t\t\t<name>%s</name>' % escape(f['name']))
        if f['one']:
            out.append('\t\t\t<allowedon>1</allowedon>')
        for name, note, code in f['cheats']:
            out.append('\t\t\t<cheat>')
            out.append('\t\t\t\t<name>%s</name>' % escape(name))
            out.append('\t\t\t\t<note>%s</note>' % escape(note))
            out.append('\t\t\t\t<codes>%s</codes>' % code)
            out.append('\t\t\t</cheat>')
        out.append('\t\t</folder>')
    return '\n'.join(out) + '\n'

if __name__ == '__main__':
    x = to_xml()
    open('new_hg_eu_cheats_4.xml', 'w').write(x)
    print(sum(len(f['cheats']) for f in FOLDERS), 'cheats')
    print({k: hex(v) for k, v in ITCM_ALLOC.items()})
