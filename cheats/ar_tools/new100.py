"""New 100%-save codes (batch 2). Hook code lives in the sound-heap cave after the first pack's slots."""
from hg import *
NEW = {}
# Free sound-heap RAM (checked unused in clean savestates up to 0x02112A64).
# 0x02112380-0x02112400 is left for the test-only warp tool; 0x02112400-0x02112480 holds
# the earlier pack's "Your Moves Never Miss" and "Exp. Share for the Whole Party".
REGIONS = [(0x02112180, 0x02112380), (0x02112480, 0x02112A00)]
# Slots are handed out in this order; only ever append, so existing codes never move.
SLOT_ORDER = [
    ('roar', 0x20), ('bpstat', 0x10), ('bugwin', 0x20), ('kurt', 0x10),
    ('sweet_task', 0x20), ('sweet_gen', 0x30),
    ('pp', 0x20), ('nofaint', 0x40), ('halfdmg', 0x30),
    ('nostatdrop', 0x20), ('boostx2', 0x20),
    ('noflinch', 0x14), ('noconfuse', 0x1C),
    ('wildmoves', 0x60), ('wildmoves2', 0x60), ('wildmoves3', 0x60),
    ('fly', 0x18), ('martlist', 0x68), ('sid', 0x0C),
    ('swarmA', 0x14), ('swarmB', 0x10), ('swarmroll', 0x20), ('bugrare', 0x40),
]
SLOTS = {}
SWARM_FLAG = 0x0211237C        # scratch byte in the gap after the first region's slots (never written by codes)
_ri, _a = 0, REGIONS[0][0]
for _n, _sz in SLOT_ORDER:
    if _a + _sz > REGIONS[_ri][1]:
        _ri += 1; _a = REGIONS[_ri][0]
    SLOTS[_n] = (_a, _sz); _a += _sz


def cave(c, src, size, name):
    a, sz = SLOTS[name]
    assert sz == size
    code = asm(src, a)
    assert len(code) <= size, (name, len(code))
    c.ecode(a, code)
    return a


def roamer_stay():
    c = Cheat()
    # 1) roamers get no "roaming" AI flag (AI_29), so they fight instead of fleeing
    assert R().u16(0x0221BEC6, 10) == 0x0540
    c.patch(10, 0x0221BEC6, asm('movs r0, #0', 0x0221BEC6), check_words=[0x0221BEC4])
    # 2) in wild battles, Roar/Whirlwind used by the wild side fails (yours still works)
    a = cave(c, '''
        ldr r2, [r1, #0x64]
        lsrs r2, r2, #1
        bcs fail
        ldr r2, lit
        bx r2
    fail:
        movs r0, #0
        bx lr
        .align 2
    lit: .word 0x0225277D
    ''', 0x20, 'roar')
    c.patch(12, 0x022416EA, asm('bl %d' % a, 0x022416EA), check_words=[0x022416E8, 0x022416EC])
    return c
NEW['Roaming Legendaries Do Not Flee'] = roamer_stay

def safari_waited():
    c = Cheat()
    assert R().u16(0x020976AA) == 0x5C08
    c.patch(None, 0x020976AA, asm('movs r0, #0xff', 0x020976AA), check_words=[0x020976A8])
    return c
NEW['Safari Zone Objects Count as Fully Waited'] = safari_waited

def bp_x2():
    c = Cheat()
    # FrontierData_BattlePointAction case 5 (add): add 2x, still capped at 9999
    a = 0x0202D424
    new = asm('''
        ldrh r2, [r0]
        lsls r1, r1, #1
        adds r2, r2, r1
        ldr r1, [pc, #0x20]
        cmp r2, r1
        ble st
        adds r2, r1, #0
    st: strh r2, [r0]
        b 0x0202D446
    ''', a)
    assert len(new) == 18 and R().u32(0x0202D44C) == 0x270F
    c.patch(None, a, new)
    # GameStats_Add: "Battle Points received" (stat 0x45) also counts 2x so the record matches
    h = cave(c, '''
        adds r7, r2, #0
        cmp r4, #0x45
        bne out
        lsls r7, r7, #1
    out:
        adds r0, r4, #0
        bx lr
    ''', 0x10, 'bpstat')
    assert R().u32(0x0202D14A) == 0x1C171C20
    c.patch(None, 0x0202D14A, asm('bl %d' % h, 0x0202D14A))
    return c
NEW['Battle Points x2'] = bp_x2

def ap_x2():
    c = Cheat()
    # PokeathlonSave_AddAthletePoints: add 2x, still capped at 99,999
    a = 0x02031A38
    new = asm('''
        ldr r2, [pc, #0x10]
        ldr r3, [r0, r2]
        lsls r1, r1, #1
        adds r1, r3, r1
        ldr r3, [pc, #0xc]
        cmp r1, r3
        ble st
        adds r1, r3, #0
    st: str r1, [r0, r2]
        bx lr
    ''', a)
    assert len(new) == 20 and R().u32(0x02031A4C) == 0xB74 and R().u32(0x02031A50) == 99999
    c.patch(None, a, new)
    return c
NEW['Athlete Points x2'] = ap_x2

def rock_smash():
    c = Cheat()
    # wild encounter roll always passes where the area has Rock Smash Pokemon
    assert R().u16(0x022470FE, 2) == 0xDB02
    c.patch(2, 0x022470FE, asm('b 0x02247106', 0x022470FE), check_words=[0x022470FC])
    # otherwise the item roll always passes
    assert R().u16(0x02204D86, 1) == 0xDA07
    c.patch(1, 0x02204D86, NOP, check_words=[0x02204D84])
    return c
NEW['Rock Smash Always Finds Something'] = rock_smash

def always_obey():
    c = Cheat()
    # TryDisobedience returns 0 (obeys) straight away
    assert R().u32(0x0224AED0, 12) == 0xB08CB5F8
    c.patch(12, 0x0224AED0, asm('movs r0, #0; bx lr', 0x0224AED0), check_words=[0x0224AED0])
    return c
NEW['Traded Pokemon Always Obey'] = always_obey

def bug_contest_win():
    c = Cheat()
    # BugContest_Judge: player's score +400 when a Pokemon was caught (rivals top out at 340)
    h = cave(c, '''
        push {lr}
        bl 0x02259E60
        cmp r0, #0
        beq out
        movs r1, #200
        lsls r1, r1, #1
        adds r0, r0, r1
    out:
        pop {pc}
    ''', 0x20, 'bugwin')
    c.patch(24, 0x02259952, asm('bl %d' % h, 0x02259952), check_words=[0x02259950, 0x02259954])
    return c
NEW['Bug-Catching Contest Always 1st Place'] = bug_contest_win

def kurt_x5():
    c = Cheat()
    # ScrCmd_735 (Kurt's Apricorn count): count x5, so he hands back 5 balls per Apricorn
    h = cave(c, '''
        push {lr}
        bl 0x02031BD0
        lsls r1, r0, #2
        adds r0, r0, r1
        pop {pc}
    ''', 0x10, 'kurt')
    c.patch(1, 0x02201C90, asm('bl %d' % h, 0x02201C90), check_words=[0x02201C90])
    return c
NEW['Kurt Makes 5 Balls per Apricorn'] = kurt_x5

def sweet_scent():
    c = Cheat()
    LAND, SURF = 0x02248014, 0x02248020
    # Honey/Sweet Scent task: off an encounter tile, still OK if the map has grass or water encounters
    t = cave(c, '''
        push {r4, lr}
        adds r4, r0, #0
        bl 0x02247F9C
        cmp r0, #0
        bne done
        adds r0, r4, #0
        bl %d
        cmp r0, #0
        bne done
        adds r0, r4, #0
        bl %d
    done:
        pop {r4, pc}
    ''' % (LAND, SURF), 0x20, 'sweet_task')
    c.patch(1, 0x021FC3E0, asm('bl %d' % t, 0x021FC3E0), check_words=[0x021FC3E0])
    # encounter builder: same fallback, using the map's grass table (or water table)
    g = cave(c, '''
        push {r4, r5, lr}
        adds r4, r0, #0
        adds r5, r2, #0
        bl 0x0224762C
        cmp r0, #0
        bne done
        adds r0, r4, #0
        bl %d
        movs r1, #0
        strb r1, [r5]
        cmp r0, #0
        bne done
        adds r0, r4, #0
        bl %d
        movs r1, #1
        strb r1, [r5]
    done:
        pop {r4, r5, pc}
    ''' % (LAND, SURF), 0x30, 'sweet_gen')
    c.patch(2, 0x0224719E, asm('bl %d' % g, 0x0224719E), check_words=[0x0224719C, 0x022471A0])
    return c
NEW['Sweet Scent and Honey Always Work'] = sweet_scent

def hoenn_sound():
    c = Cheat()
    assert R().u16(0x02246B0C, 2) == 0xD10F
    c.patch(2, 0x02246B0C, NOP, check_words=[0x02246B0C])
    return c
NEW['Hoenn Sound Always On'] = hoenn_sound


def sinnoh_sound():
    c = Cheat()
    assert R().u16(0x02246B0C, 2) == 0xD10F
    c.patch(2, 0x02246B0C, asm('b 0x02246B36', 0x02246B0C), check_words=[0x02246B0C])
    return c
NEW['Sinnoh Sound Always On'] = sinnoh_sound

def unown_uncaught():
    c = Cheat()
    # EncounterGen_ChooseUnownForm: always take the "uncaught forms" branch the Unown radio uses
    assert R().u16(0x02248510, 2) == 0xD010 and R().u16(0x02248522, 2) == 0xDA07
    c.patch(2, 0x02248510, NOP, check_words=[0x02248510])
    c.patch(2, 0x02248522, NOP, check_words=[0x02248520])
    return c
NEW['Unown Is Always a Form You Have Not Caught'] = unown_uncaught

def safari_balls():
    c = Cheat()
    assert R().u16(0x0224AD86, 12) == 0x1E41
    c.patch(12, 0x0224AD86, asm('adds r1, r0, #0', 0x0224AD86), check_words=[0x0224AD84])
    return c
NEW['Unlimited Safari Balls'] = safari_balls


def sport_balls():
    c = Cheat()
    assert R().u16(0x0224AEB2, 12) == 0x1E41
    c.patch(12, 0x0224AEB2, asm('adds r1, r0, #0', 0x0224AEB2), check_words=[0x0224AEB0])
    return c
NEW['Unlimited Sport Balls'] = sport_balls

def infinite_pp():
    c = Cheat()
    # ov12_0224B1FC PP deduction: your side (battlers 0/2) keeps its PP, opponents lose PP normally
    h = cave(c, '''
        ldr r2, [r5, #0x64]
        lsrs r2, r2, #1
        bcc keep
        cmp r0, r4
        ble zero
        subs r0, r0, r4
    keep:
        bx lr
    zero:
        movs r0, #0
        bx lr
    ''', 0x20, 'pp')
    assert R().u32(0x0224B308, 12) == 0xDD0142A0 and R().u32(0x0224B30C, 12) == 0xE0001B00
    c.patch(12, 0x0224B308, asm('bl %d' % h, 0x0224B308) + asm('b 0x0224B312; nop', 0x0224B30C),
            check_words=[0x0224B308, 0x0224B30C])
    return c
NEW['Infinite PP'] = infinite_pp

def no_faint():
    c = Cheat()
    # wraps BattleSystem_GetBattlerIDBySide in BtlCmd_UpdateHealthbar/-Value: damage to your side stops at 1 HP
    h = cave(c, '''
        push {r4, r5, lr}
        adds r4, r1, #0
        bl 0x0224768C
        lsrs r1, r0, #1
        bcs out
        movs r1, #0xc0
        muls r1, r0, r1
        adds r1, r4, r1
        ldr r2, lhp
        ldr r1, [r1, r2]
        cmp r1, #0
        ble out
        ldr r2, lcalc
        ldr r3, [r4, r2]
        adds r5, r1, r3
        cmp r5, #0
        bgt out
        movs r3, #1
        subs r3, r3, r1
        str r3, [r4, r2]
    out:
        pop {r4, r5, pc}
        .align 2
    lhp: .word 0x2D8C
    lcalc: .word 0x215C
    ''', 0x40, 'nofaint')
    for a in (0x0223E17A, 0x0223E21A):
        c.patch(12, a, asm('bl %d' % h, a), check_words=[a - 2, a + 2])
    return c
NEW["Your Pokemon Can't Faint (HP Stops at 1)"] = no_faint

def half_damage():
    c = Cheat()
    flag = R().u32(0x0224C9BC, 12)          # ctx->moveStatusFlag offset; ctx->damage is 0x28 before it
    # BattleControllerPlayer_HpCalc entry: a hit from the enemy side on your side does half damage
    h = cave(c, '''
        adds r4, r1, #0
        ldr r2, lflag
        subs r2, #0x28
        ldr r3, [r4, #0x64]
        lsrs r3, r3, #1
        bcc done
        ldr r3, [r4, #0x6c]
        lsrs r3, r3, #1
        bcs done
        ldr r3, [r4, r2]
        asrs r3, r3, #1
        str r3, [r4, r2]
    done:
        ldr r2, lflag
        bx lr
        .align 2
    lflag: .word %d
    ''' % flag, 0x30, 'halfdmg')
    assert R().u32(0x0224C694, 12) == 0x1C0C4AC9
    c.patch(12, 0x0224C694, asm('bl %d' % h, 0x0224C694), check_words=[0x0224C694])
    return c
NEW['You Take Half Damage'] = half_damage

def no_stat_drops():
    c = Cheat()
    # BtlCmd_ChangeStatStage, Mist check: a stat drop on your side caused by the enemy side acts as if Mist is up
    h = cave(c, '''
        ldr r0, [r0, r1]
        lsls r0, r0, #0x11
        ldr r2, [r5, #0x64]
        lsrs r2, r2, #1
        bcc out
        adds r2, r5, #0
        adds r2, #0x94
        ldr r2, [r2]
        lsrs r2, r2, #1
        bcs out
        movs r0, #1
        lsls r0, r0, #29
    out:
        bx lr
    ''', 0x20, 'nostatdrop')
    assert R().u32(0x0223EF70, 12) == 0x58400089
    c.patch(12, 0x0223EF72, asm('bl %d' % h, 0x0223EF72), check_words=[0x0223EF70, 0x0223EF74])
    return c
NEW["Opponents Can't Lower Your Stats"] = no_stat_drops

def boosts_x2():
    c = Cheat()
    # BtlCmd_ChangeStatStage: a stat rise on your side is doubled (+1 -> +2, +2 -> +4; still capped at +6)
    h = cave(c, '''
        cmp r7, #0
        ble dec
        adds r2, r5, #0
        adds r2, #0x94
        ldr r2, [r2]
        lsrs r2, r2, #1
        bcs inc
        lsls r7, r7, #1
    inc:
        mov r2, lr
        adds r2, #2
        mov lr, r2
    dec:
        bx lr
    ''', 0x20, 'boostx2')
    assert R().u32(0x0223EE08, 12) == 0xDC002F00
    c.patch(12, 0x0223EE08, asm('bl %d' % h, 0x0223EE08), check_words=[0x0223EE08])
    return c
NEW['Your Stat Boosts Are Doubled'] = boosts_x2

def no_confuse_flinch():
    c = Cheat()
    # ov12_0224B528 move checks: your side ignores flinch, and confusion is cleared before it can act
    f = cave(c, '''
        push {r3}
        ldr r3, [r4, #0x64]
        lsrs r3, r3, #1
        bcs k
        movs r3, #8
        bics r1, r3
    k:
        pop {r3}
        movs r0, #8
        tst r0, r1
        bx lr
    ''', 0x14, 'noflinch')
    assert R().u32(0x0224B790, 12) == 0x42082008
    c.patch(12, 0x0224B790, asm('bl %d' % f, 0x0224B790), check_words=[0x0224B790])
    g = cave(c, '''
        push {r3}
        ldr r3, [r4, #0x64]
        lsrs r3, r3, #1
        bcs k
        movs r3, #7
        bics r1, r3
        str r1, [r2, r0]
    k:
        pop {r3}
        movs r0, #7
        tst r0, r1
        bx lr
    ''', 0x1C, 'noconfuse')
    assert R().u32(0x0224B93C, 12) == 0x20075811 and R().u32(0x0224B940, 12) == 0xD1004208
    c.patch(12, 0x0224B93E, asm('bl %d' % g, 0x0224B93E), check_words=[0x0224B93C, 0x0224B940])
    return c
NEW["Your Pokemon Can't Be Confused or Flinch"] = no_confuse_flinch

WILD_MOVE_HOOK = '''
    push {r0, r2, r3, r4, r5, lr}
    ldrh r1, [r6, #0x22]
    ldr r5, [sp, #0x24]
    movs r2, #0
    movs r4, #0
loop:
    lsls r3, r4, #1
    adds r3, r6, r3
    ldrh r3, [r3, #0xc]
    lsls r3, r3, #4
    adds r3, r5, r3
    ldr r0, lmdata
    adds r3, r3, r0
%s
ban:
    movs r0, #1
    lsls r0, r4
    orrs r2, r0
next:
    adds r4, r4, #1
    cmp r4, #4
    blt loop
    mvns r0, r1
    bics r0, r2
    lsls r0, r0, #28
    beq skip
    orrs r1, r2
skip:
    pop {r0, r2, r3, r4, r5}
    tst r0, r1
    pop {pc}
    .align 2
lmdata: .word 0x3DE
'''
NO_BOOM = '''
    ldrh r0, [r3]
    cmp r0, #7
    beq ban
    b next
'''
NO_SELF_STATUS = '''
    ldrb r0, [r3, #2]
    cmp r0, #2
    bne next
    ldrh r0, [r3, #8]
    lsls r0, r0, #27
    bpl next
'''
BOTH = '''
    ldrh r0, [r3]
    cmp r0, #7
    beq ban
    ldrb r0, [r3, #2]
    cmp r0, #2
    bne next
    ldrh r0, [r3, #8]
    lsls r0, r0, #27
    bpl next
'''


def _wild_moves(extra, slot):
    c = Cheat()
    # ov12_0225E404 (wild Pokemon's random move pick): banned moves count as unusable,
    # unless that would leave the wild Pokemon nothing to use
    h = cave(c, WILD_MOVE_HOOK % extra, 0x60, slot)
    assert R().u32(0x0225E454, 12) == 0x8C71F935 and R().u32(0x0225E458, 12) == 0xD1024208
    c.patch(12, 0x0225E456, asm('bl %d' % h, 0x0225E456), check_words=[0x0225E454, 0x0225E458])
    return c


def wild_no_explode():
    return _wild_moves(NO_BOOM, 'wildmoves')
NEW['Wild Pokemon Never Use Self-Destruct or Explosion'] = wild_no_explode


def wild_no_self_moves():
    return _wild_moves(NO_SELF_STATUS, 'wildmoves2')
NEW['Wild Pokemon Never Use Self-Targeting Moves'] = wild_no_self_moves


def wild_no_both():
    return _wild_moves(BOTH, 'wildmoves3')
NEW['Wild Pokemon Never Use Explosion or Self-Targeting Moves'] = wild_no_both

def no_field_poison():
    c = Cheat()
    assert R().u32(0x021E794C, 1) == 0x1C05B538
    c.patch(1, 0x021E794C, asm('movs r0, #0; bx lr', 0x021E794C), check_words=[0x021E794C])
    return c
NEW['No Poison Damage While Walking'] = no_field_poison

def fly_indoors():
    c = Cheat()
    # FieldMove_CheckFly: also allowed wherever the map allows phone calls (buildings and caves),
    # which keeps it blocked in the Elite Four rooms, Hall of Fame, Battle Tower elevator and Union/Wi-Fi rooms
    h = cave(c, '''
        push {r4, lr}
        adds r4, r0, #0
        bl 0x0203B454
        cmp r0, #0
        bne d
        adds r0, r4, #0
        bl 0x0203B48C
    d:
        pop {r4, pc}
    ''', 0x18, 'fly')
    assert R().u32(0x02068034) == 0xFA0EF7D3
    c.patch(None, 0x02068034, asm('bl %d' % h, 0x02068034))
    return c
NEW['Fly From Inside Buildings and Caves'] = fly_indoors

def daycare_no_exp():
    c = Cheat()
    # Save_Daycare_MoveMonToParty: skip the "add steps as Exp + learn level-up moves" block
    assert R().u16(0x0206C012) == 0xD013
    c.patch(None, 0x0206C012, asm('b 0x0206C03C', 0x0206C012))
    # GetDaycareUpdatedLevel (shown level and the fee): no steps added
    assert R().u16(0x0206C0C8) == 0x1940
    c.patch(None, 0x0206C0C8, asm('adds r0, r0, #0', 0x0206C0C8))
    return c
NEW['Day Care Pokemon Do Not Gain Exp'] = daycare_no_exp

def masuda_always():
    c = Cheat()
    # SetBreedEggStats: the Masuda-method shiny re-roll always applies (as if a parent were from another language)
    assert R().u16(0x0206C9D8) == 0xD013
    c.patch(None, 0x0206C9D8, NOP)
    return c
NEW['Shiny Eggs More Often (Masuda Method Always On)'] = masuda_always

MART_ITEMS = ['ULTRA_BALL', 'GREAT_BALL', 'POKE_BALL', 'NET_BALL', 'DIVE_BALL', 'NEST_BALL', 'REPEAT_BALL', 'TIMER_BALL',
              'LUXURY_BALL', 'PREMIER_BALL', 'DUSK_BALL', 'HEAL_BALL', 'QUICK_BALL', 'FAST_BALL', 'LEVEL_BALL', 'LURE_BALL',
              'HEAVY_BALL', 'LOVE_BALL', 'FRIEND_BALL', 'MOON_BALL',
              'FIRE_STONE', 'WATER_STONE', 'THUNDERSTONE', 'LEAF_STONE', 'MOON_STONE', 'SUN_STONE', 'SHINY_STONE',
              'DUSK_STONE', 'DAWN_STONE', 'OVAL_STONE', 'KINGS_ROCK', 'METAL_COAT', 'DRAGON_SCALE', 'UPGRADE', 'PROTECTOR',
              'ELECTIRIZER', 'MAGMARIZER', 'DUBIOUS_DISC', 'REAPER_CLOTH', 'RAZOR_CLAW', 'RAZOR_FANG', 'DEEPSEATOOTH',
              'DEEPSEASCALE', 'ESCAPE_ROPE', 'POKE_DOLL', 'REPEL', 'SUPER_REPEL', 'MAX_REPEL']


def mart_everything():
    import re
    t = open('/home/user/pokeheartgold/include/constants/items.h').read()
    ids = dict((n, int(v, 0)) for n, v in re.findall(r'#define ITEM_(\w+)\s+(\S+)', t) if re.match(r'^(0x)?[0-9a-fA-F]+$', v))
    data = b''.join(struct.pack('<H', ids[n]) for n in MART_ITEMS) + struct.pack('<H', 0xFFFF)
    c = Cheat()
    a, sz = SLOTS['martlist']
    assert len(data) <= sz
    c.ecode(a, data)
    # specialty-mart pointer table: Goldenrod Dept. Store 2F (#4) and Celadon Dept. Store 2F (#19) ball counters
    for idx, old in ((4, 0x020FBC1A), (19, 0x020FBC4E)):
        p = 0x0210FA3C + 4 * idx
        assert R().u32(p) == old
        c.raw(p & 0x0FFFFFFF, a)
    return c
NEW['Dept. Store Sells Every Ball and Evolution Item'] = mart_everything

def friendship_view():
    c = Cheat()
    # summary data loader (sub_0208981C): while SELECT is held, the Attack number is filled with friendship
    assert R().u16(0x020899E4) == 0x21A5
    c.raw(0x520899C4, R().u32(0x020899C4))
    c.raw(0x94000130, 0xFFFB0000)
    c.raw(0x120899E4, 0x2109)
    c.raw(0xD0000000, 0)
    c.raw(0x94000130, 0xFFFB0004)          # SELECT not held -> normal Attack
    c.raw(0x120899E4, 0x21A5)
    return c
NEW['Show Friendship on the Summary Screen'] = friendship_view

def sid_on_card():
    c = Cheat()
    # Trainer Card builder (sub_02068FC8): while SELECT is held when the card opens, "ID No." shows the Secret ID
    h = cave(c, '''
        push {lr}
        bl 0x02028F84
        lsrs r0, r0, #16
        pop {pc}
    ''', 0x0C, 'sid')
    orig = R().u32(0x0206901C)
    assert orig == 0xFFB4F7BF
    c.raw(0x94000130, 0xFFFB0000)
    c.patch(None, 0x0206901C, asm('bl %d' % h, 0x0206901C))
    c.raw(0xD0000000, 0)
    c.raw(0x94000130, 0xFFFB0004)
    c.raw(0x0206901C, orig)
    return c
NEW['Show Secret ID on the Trainer Card'] = sid_on_card

def swarm_more():
    c = Cheat()
    # EncSlots_Update_LandSwarm: clear a flag on entry, set it when the swarm species is put in slots 0/1
    a = cave(c, '''
        push {r1, r2}
        ldr r1, lf
        movs r2, #0
        strb r2, [r1]
        pop {r1, r2}
        adds r5, r0, #0
        ldr r0, [r5, #0xc]
        bx lr
        .align 2
    lf: .word %d
    ''' % SWARM_FLAG, 0x14, 'swarmA')
    b = cave(c, '''
        str r0, [r6]
        ldr r0, lf
        movs r1, #1
        strb r1, [r0]
        ldrh r0, [r4]
        bx lr
        .align 2
    lf: .word %d
    ''' % SWARM_FLAG, 0x10, 'swarmB')
    # land slot roll: while a swarm is up here, re-roll (up to 3 more times) until it lands on slot 0/1
    r = cave(c, '''
        push {r4, lr}
        movs r4, #4
    again:
        bl %d
        ldr r1, lf
        ldrb r1, [r1]
        cmp r1, #0
        beq done
        cmp r0, #2
        blo done
        subs r4, #1
        bne again
    done:
        pop {r4, pc}
        .align 2
    lf: .word %d
    ''' % (sym('EncounterSlot_WildMonSlotRoll_Land')[0] & ~1, SWARM_FLAG), 0x20, 'swarmroll')
    assert R().u32(0x02246B58, 2) == 0x1C05B5F8 and R().u32(0x02246B5C, 2) == 0x1C0C68E8
    c.patch(2, 0x02246B5A, asm('bl %d' % a, 0x02246B5A), check_words=[0x02246B58, 0x02246B5C])
    assert R().u32(0x02246B94, 2) == 0x88206030
    c.patch(2, 0x02246B94, asm('bl %d' % b, 0x02246B94), check_words=[0x02246B94])
    c.patch(2, 0x02247BCC, asm('bl %d' % r, 0x02247BCC), check_words=[0x02247BCC])
    return c
NEW['Swarm Pokemon Appear More Often'] = swarm_more


def bug_rare_more():
    c = Cheat()
    # The contest overlay (24) shares its RAM with overlays 19-26 and is loaded in the same frame the
    # encounter is rolled, so it can't be patched in time. Hook the resident caller instead
    # (FieldSystem_GenerateBugContestEncounter_Internal, overlay 2): call BugContest_GetEncounterSlot,
    # and while the slot isn't one of the four rarest (table rate < 20, i.e. roll %% 100 < 20), free it and
    # roll again, up to 3 more times. Each roll is the game's own, so the Pokemon is generated normally.
    get, free = sym('BugContest_GetEncounterSlot')[0] & ~1, sym('Heap_Free')[0] & ~1
    h = cave(c, '''
        push {r4, r5, r6, r7, lr}
        adds r5, r0, #0
        adds r6, r1, #0
        movs r7, #3
    again:
        adds r0, r5, #0
        adds r1, r6, #0
        bl %d
        adds r4, r0, #0
        cmp r7, #0
        beq done
        ldr r0, [r4]
        adds r1, r5, #0
        adds r1, #0x20
        movs r2, #10
    find:
        ldrh r3, [r1]
        cmp r3, r0
        beq found
        adds r1, #8
        subs r2, #1
        bne find
        b done
    found:
        ldrb r3, [r1, #4]
        cmp r3, #20
        blo done
        adds r0, r4, #0
        bl %d
        subs r7, #1
        b again
    done:
        adds r0, r4, #0
        pop {r4, r5, r6, r7, pc}
    ''' % (get, free), 0x40, 'bugrare')
    site = 0x02247EE6
    assert R().u32(0x02247EE4, 2) == 0xF0112104 and R().u32(0x02247EE8, 2) == 0x1C04FE33
    assert asm('bl %d' % get, site) == bytes([0x11, 0xF0, 0x33, 0xFE])
    c.patch(2, site, asm('bl %d' % h, site), check_words=[0x02247EE4, 0x02247EE8])
    return c
NEW['Rare Bug-Catching Contest Pokemon Appear More Often'] = bug_rare_more

def skip_hatch_anim():
    c = Cheat()
    # Task_HatchEggInParty: don't launch the hatching-animation app; the egg still hatches normally
    assert R().u32(0x02091120) == 0xF7BF1C22 and R().u32(0x02091124) == 0x6820FA7F
    c.patch(None, 0x02091122, NOP + NOP)
    return c
NEW['Skip the Egg-Hatching Animation'] = skip_hatch_anim

if __name__ == '__main__':
    for n, f in NEW.items(): print(n, '::', f().text())
