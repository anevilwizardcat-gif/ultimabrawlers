# Card: Wolverine  (character CNS)

**Folder:** `chars/Wolverine/`  **def:** `Wolverine.def`  **system:** Warusaki3 + ADD004-patched common1.cns.
Files: cns/st=`CNS/Wolverine.cns`, st1=`CNS/config.txt`, stcommon=`CNS/common1.cns`. (Subfolders CNS/ CMND/
SPRITES/ ANIMATIONS/ SOUNDS/ — case-sensitive on raw.)

## BUG (P021, FIXED) — throw/jump clone, no AI
Console: `Jump Dust (1614) in state 8100: changed to invalid state 8100 (from state 0)` (1614 = runtime index,
not a gameplay id). On jump/throw the engine's internal ADD004 "Jump Dust" helper is run in the char's
state 8100 (jump-dust display state; companion to 8200 land-dust). **statedef 8100 was MISSING** (char had
8200/8500/8510 but not 8100) -> helper fell to state 0 -> no-AI clone. Note: "8100" appears in his files ONLY
as `anim = 8100` (run-dust explods); the state spawn is engine-internal (ADD004 common), not in his CNS.

## FIX SHIPPED
Appended `[Statedef 8100]` to Wolverine.cns, mirroring his own 8200 land-dust: type A / movetype I / physics N,
`anim = 8100` (existing 7-frame additive puff), sprpriority 4, DestroySelf on AnimTime=0. Kills clone AND
restores proper jump dust. Reversible.

## MINOR (open, harmless) — missing sounds
`sound 5000,11` (state 5110 thrown) and `sound 40,0` (state 40 jump) don't exist in Wolverine.snd -> silent,
no gameplay effect. Not fixed (needs the sound assets or a remap); flagged only.

## PATTERN NOTE (cross-char)
Same CLASS as Dante_KOF P019 (effect/system helper -> undefined state -> state-0 clone) but DIFFERENT cause:
Dante's whole ADD004 system state (90900) was absent (stubbed inert); Wolverine was missing ONE effect state
(8100) which had a clear template (8200) + existing anim, so it was restored functionally, not stubbed.
