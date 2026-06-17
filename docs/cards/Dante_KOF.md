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
