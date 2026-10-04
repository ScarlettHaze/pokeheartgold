"""New 100%-save codes (batch 2). Hook code lives in the sound-heap cave after the first pack's slots."""
from hg import *
NEW = {}
CAVE_END = 0x02112380          # 0x02112380+ is used by the test-only warp tool
# fixed hook slots (address, size) so codes never move or overlap whatever order they are built in
SLOTS = {
    'roar':   (0x02112180, 0x20),
    'bpstat': (0x021121A0, 0x10),
    'bugwin': (0x021121B0, 0x20),
    'kurt':   (0x021121D0, 0x10),
}


def cave(c, src, size, name):
    a, sz = SLOTS[name]
    assert sz == size and a + sz <= CAVE_END
    code = asm(src, a)
    assert len(code) <= size, len(code)
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

if __name__ == '__main__':
    for n, f in NEW.items(): print(n, '::', f().text())
