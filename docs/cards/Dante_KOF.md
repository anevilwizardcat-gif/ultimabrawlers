# Card: Dante_KOF  (character CNS — NOT motif/menu work)

**Folder:** `chars/Dante_KOF/`  **def:** `Dante_KOF.def`  **author:** "Wou"  **variant:** DMC4-appearance Dante.
**Subsystem:** character state code (CNS). Keep separate from the ikemen1 motif/font work done same session.

## Loaded files (from def [Files])
cns=Dante.cns · st=Dante.cns · st1=Dante - N.cns · st2=Dante - S.cns · st3=Dante - H.cns ·
st4=**misc.cns** · st5=common.cns · stcommon=**common1.cns**

## BUG (P019, OPEN) — round-start clone, no AI
Console @frame0: `WARNING: Dante's helper (59) in state 90900: changed to invalid state 90900 (from state 0)`.
- "Dante's helper (59)": 59 = runtime entity index; the **gameplay ID is 90900**.
- Spawned in `Dante.cns [Statedef -2]` (~L368): `type=Helper; ID=90900; Stateno=90900`, arbitration `ID < Partner,ID || !NumPartner` (only one of the tag pair spawns it).
- This helper IS Wou's core system: sets `var(22)` (style/mode), `var(36)`; drives blocking/JD; spawns sub-helpers 99997/99998 (at stateno 99997); referenced all over [Statedef -2] and common.cns.


## RESOLVED DIAGNOSIS (verified)
- `Misc.cns` IS pushed — it's `Misc.cns` (capital M); my lowercase raw probe 404'd (raw is case-sensitive).
  `common1.cns` genuinely absent (engine built-in common used; harmless).
- statedef 90900 verified: **referenced ~20x (Dante.cns 12, common.cns 8), defined 0x** across ALL six
  loaded files incl. Misc.cns. Misc.cns = effects/intros (statedefs incl. 1600000/1600001), NOT the system.
- No unreferenced system file (System.cns/ADD004.cns/etc.) in the folder. The ADD004 style/JD/bar system
  Wou's Dante expects was never carried into this variant. Other repo Dantes = different authors (ruled out).

## FIX SHIPPED (P019)
Appended an inert stub `[Statedef 90900]` to Dante.cns: type S / movetype I / physics N / ctrl 0, asserts
Invisible+NoShadow every tick, NotHitBy SCA, VelSet 0, NO DestroySelf, sets NO vars. Helper now lands in a
valid invisible/inert state -> clone gone. var(22) stays 0 (already was) -> zero gameplay change otherwise.
Reversible (delete block). MUST be removed if the real ADD004 system file is later restored (dup statedef).

## STILL OPEN / NOTES
- Full ADD004 system (JD/blocking/parry, style switch via var(22), custom bar) remains non-functional
  because its states (90900/90901/90902/99996/99997/99998/195500) are absent. To truly restore: add Wou's
  original system .cns (must define those) + reference it in def; then delete the stub.
- LATENT cross-platform bug: def `st4 = misc.cns` (lowercase) vs actual `Misc.cns`. Loads on Raven's Windows
  build (case-insensitive); WILL fail to load on Steam Deck/Linux (case-sensitive) -> clone/other breakage
  there. One-line fix available: change def to `st4 = Misc.cns`. (Not yet applied - offered.)

## P020 (FIXED) — trigger6 gaps in Dante - S.cns
States 1405 (L2522) & 1420 (L2858): PlaySnd controllers had triggers [1,2,3,4,5,7,8] (missing 6) -> engine
ignored trigger7/8, so the last swing sounds never played. Fixed: renumbered trigger7->6, trigger8->7 in both
(now consecutive). Scanned all his files - only these 2 blocks had gaps.

## P020b (OPEN) — explod anim 4472 missing
[Statedef -2] L972 creates a persistent on-top Explod ID 4472 `anim = 4472` (gated var(10/11/12)=1), but
anim 4472 is NOT in Dante.air (nothing in 4400-4500) -> "explod called invalid action 4472", effect invisible.
Missing effect asset; not guessed. Options: gate the explod to silence the warning, or supply the correct
anim/asset. Awaiting Raven's call.

## P022 (FIXED) — guard spark/sound spam in attacks (state 3100 etc.)
HitDefs used guard.sparkno=42 + guardsound=6,2 (ADD004 fightfx). ultimabrawlers' data/fightfx.air has NO
action 42 (only ...40,60,61.. ) and data/common.snd group 6 has only index 0. On a BLOCKED multi-hit these
spam "system explod called invalid action F42" + "sound F 6,2 doesn't exist". FIX (proper, not mute):
guard.sparkno 42->40 (std guard spark, exists) and guardsound 6,2->6,0 (std guard snd, exists), swept across
Dante - N/S/H.cns + Misc.cns (21 sparkno + 17 guardsound). 
## P022b (OPEN, related) — hit sparkno = 6 also invalid
fightfx.air also lacks action 6, so the HIT spark (sparkno=6, used widely) will warn "invalid action F6" on
HIT (not block) too. Not changed - choosing the replacement spark (0/1/2 = light/med/heavy, or S-prefixed
own anim) is a visual call. Awaiting Raven's pick.

## P023 (EXECUTED - default-fx route) — systemic fightfx mismatch (root of "every attack warns")
NOT separate bugs. Wou's Dante is built on ADD004's CUSTOM fightfx (effects F700/F7000/F28001/F15605/... and
hit sparks sparkno 4/5/6/8, guard 41/42). ultimabrawlers uses the standard minimal data/fightfx.air
(actions [0,1,2,3,10,11,12,40,60-62,70-72,100-102,120,130]) + common.snd groups [5,6,7,20]. So almost every
effect he references is absent -> one warning per move. SCOPE (verified, explod-controllers only): 83 explods
with missing anims (Dante.cns 4, N 11, S 9, H 49, common 3, Misc 7) + invalid HitDef sparks guard.sparkno 41
(47x)/42(21x done P022), sparkno 5(25x)/4(1)/6(12)/8(2). 
TWO PATHS:
 (A) MUTE ALL: gate the 83 explods (triggerall=0; they're invisible already so no on-screen loss) + remap all
     hit sparks (4/5/6/8 -> a valid std like 2) and guard 41->40. Clean console, plays fine, but locks in a
     plain look (no custom sparks/slashes/auras). Reversible.
 (B) INSTALL ADD004 fightfx: proper fix, restores his intended effects. GLOBAL file shared by all chars -> risk
     of clashing with/altering other chars' F-effects; needs ADD004 fightfx.sff/air assets. Bigger job.
AWAITING Raven's choice. (Explods are purely visual -> gating is 100% gameplay-safe either way.)

## P023 RESOLUTION (Raven chose: ADD004-or-default; ADD004 fightfx not installable here)
Could not install ADD004 fightfx (third-party assets unavailable + it's a GLOBAL file risking all other chars).
Did the agreed fallback: DAMAGE HITS now use default fightfx sparks (hit sparkno 4/5/6/8 -> 2 [40x];
guard.sparkno 41/42 -> 40 [48x this pass, +21 in P022]) so every hit/block shows a proper impact spark +
sound. DECORATIVE explods with absent ADD004 anims GATED with triggerall=0 (83 total: Dante.cns 4, N 11,
S 9, H 49, Misc 7, common 3) - they were invisible already, so no on-screen loss, just no console spam.
Explods are purely visual so gating is gameplay-safe. Reversible (remove the triggerall=0 lines + restore
sparkno values) if ADD004 fightfx is ever installed. Verified: 0 invalid explods left firing, 0 invalid sparks.
Folds in/closes P020b (4472 explod, now gated) and P022b (sparkno 6, now ->2).

