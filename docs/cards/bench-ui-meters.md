# CARD: bench-ui-meters

> **Purpose:** each character's *custom author-made* meter/bar must HIDE when that character is tagged
> out (benched), KO'd, or the round ends, and RESTORE when tagged back in — so benched meters don't
> overlap the active character's. (Raven calls this the "meter / gauge / bar / power meter"; all the
> same thing — see CORE Terminology.)

## Architecture & mental model
Custom meters are **explods** drawn from **dedicated gauge display states** in a meter file, spawned
from the char's `[Statedef -2]` (or a system helper). Hiding is done inside those display states. This
is pure MUGEN/CNS (states, helpers, explods) — nothing to do with Lua, motif `.def` keys, or `fight.def`.

**Bench tag state numbers (memorize):**
- `6565600` EnteringScreen · `6565610` LeavingScreen · `6565611` WaitingOutside · `6565620` JumpingIn
- **Benched <=> `root,stateno = [6565610, 6565611]`**

## Boundaries — DO NOT confuse with
- **Lua/motif subsystems** (menu-text, char-variants, stage-select): no explods, no bench states.
- **lifebar-layout (`fight.def`):** moves the *default engine* bar via motif coords; this hides
  *author custom* meters via CNS. Different file, different mechanism.
- **sf3-gauges:** state 50000 power / 25000 stun decoy — different lineage, not a cvs family.
- **Across families A/B/C:** different files, different spawn/hide logic. Confirm family first.

## Canonical bench-hide pattern (apply ONLY to dedicated gauge display states, never gameplay states)
1. **Sweep** (top of state): `RemoveExplod` when `root,stateno=[6565610,6565611]` OR `roundstate>2` OR `!root,alive`.
2. **Guard** (prepended on each meter explod): `triggerall = root,stateno != [6565610,6565611] && root,alive && roundstate <= 2`.
3. **Restore** (entry-only `Time=0` explods): `ChangeState value=stateno` when active+alive+`numexplod(KEY)=0`+`time>0`.
   Self-respawning explods (`!NumExplod(id)`) need the **guard only**.
CRITICAL: never sweep/restore a gameplay state (e.g. 5201). Restrict to gauge state-number ranges.

---

## Family A — Groove-bar family (shared `groove.cns`, author Warusaki3)
- Members: cvsking, cvsnakoruru, cvsryu, cvsken, cvschunli, cvszangief, cvsguile, cvsgouki, cvskyo,
  cvsterry, cvssakura, cvshaohmaru. `groove.cns` byte-identical across all (one fix -> all; md5 first).
- Pieces from main `[Statedef -2]`: groove bar id 6000, GP counter 6500, gauge 6100. Display states
  6100/6110/6120/6130/6140/6150/6160/6170 + 6500. 6160 = EX/MAX draw (last to get a sweep).
- Second-pick spawn bug: comment the single `!partner,authorname="warusaki3"` exclusion in all three
  spawn blocks (6000/6500/6100) per char.

## Family B — CvS2-system family (`cvs2_system.cns`, author Warusaki3-base)
- Members: cvsmai, Cvs_Honda, Cvs_iori. Files NOT all identical (Mai/Honda share fec23cfe…; Iori differs). md5/diff first.
- `var(30)` = groove/ISM (1-6); `var(30) = -1` = "in groove-select" (NOT "no groove").
- Gauge helper id 21000, `stateno = 20000 + var(30)*1000` -> states 21000-26000.
- Higher-ID-gets-no-meter bug: comment `trigger1 = ID<partner,ID` immediately above `id = 21000`.
- Do NOT touch `fvar(1)` team-pos VarSets or the `var(30)=1` Turns-Mode VarSet (gameplay).
- **Iori: settled (state 21000). Leave alone.**

> **RESOLVED (P011): Family C (Gal129 cvs2_blanka/cvs2_dhalsim) has NO usable custom meter.** A fresh install shows a plain ENGINE power meter; the author's 'custom EX/guard/CVS2 gauge' description does not render in practice. All 8200-gauge work (P008-P010) was reverted. The real fix was to DISABLE the `noPowerBarDisplay` assert in each char's N- `[Statedef -2]` so the default engine bar shows; the engine tag-swaps it natively. Do NOT reopen the 8200 gauge for these two — it is a phantom.

## Family C — CvS2-EX family (custom EX gauge in char-specific `system-cvs2_<c>.cns`, **author Gal129/rei**)
- Members: **cvs2_blanka, cvs2_dhalsim** (both author "Gal129"). Roster folders: `cvs2_blanka`, `cvs2_dhalsim`.
- Files (.def): `cns=data-cvs2_<c>.cns`, `st=cvs2_system.cns` (shared), `st2..st4=N/S/H`,
  **`st5=system-cvs2_<c>.cns`** = the operative EX-meter file, `st6=option.cns`.
- **st5 overrides st:** statedefs 8000/8098/8099/8100… exist in BOTH cvs2_system.cns and system-cvs2_<c>.cns;
  the later-loaded st5 copy WINS. Always edit the **st5** copy (`system-cvs2_<c>.cns`), never the cvs2_system one.
- **CORRECTED MODEL (P008).** Two different things, easy to confuse:
  - **Intro indicator** = states **8000 + 8100-8160** (st5). BOTH DestroySelf at `roundstate>1` -> gone the
    instant the fight starts. This is the groove/ISM selector display, NOT the in-match meter. P004's bench
    sweep and P007's arbitration removal both landed here — harmless but they never controlled the fight meter.
  - **In-match power meter** = the **8200 family** (8200/8210/8220/8230/8240/8250/8260/8265) in
    **cvs2_system.cns** (NOT overridden by st5; st5 has no 8200). ~23 power-gauge explods, postype=Back,
    pos ~139,223, anim 8201 scale 1,5, removetime=-1. Spawned as helper id **8200** from `[Statedef -2]`
    (line ~5329) and persists/respawns via `!NumHelper(8200)`.
- **Why "no meter at all" in tag (P008):** the 8200 spawn carried the same `!(partner has a meter)` gate as the
  intro spawns, so with a meter-partner (e.g. +Guile) the gauge never spawned. AND 8200 had **zero teardown**
  (no RemoveExplod/DestroySelf/roundstate), so it had no bench hide. **Fix:** un-gate the 8200 spawn (+ add a
  `stateno != [6565610,6565611]` not-benched gate), and add a bench Sweep+DestroySelf to the top of all 8
  82xx states. Tag-out -> helper sweeps its explods + DestroySelf; -2 won't respawn while benched; tag-in ->
  -2 respawns -> meter repaints. Applied to blanka + dhalsim.
- **`fvar(39)` = system-type flag** (data-cvs2_<c>.cns comment: 1 = CvS2 meter, 2 = SF3). Used all over for
  enemy/partner system detection — mostly GAMEPLAY (damage scaling, var(8) detection). Do NOT touch those.
- **Pre-round groove SELECTOR = states 8098/8099** (transient, self-destructs at roundstate=2). Their ID
  arbitration only fires vs rei/gal129 partners. Left untouched (not the in-match meter).
- **Inverted-visibility bug (P007):** the in-match meter states had leftover MUGEN-simul arbitration —
  in each state's RemoveExplod AND DestroySelf, a pair `triggerN = numpartner` + `triggerN =
  (partner,authorname="warusaki3"&&partner,fvar(39)=1)||(root,ID-partner,ID>0 &&(partner rei/gal129)&&
  partner,fvar(39)=1)`. That suppresses one teammate's bar when both have meters (correct for MUGEN simul,
  WRONG for tag). It was the only pick-order-dependent thing in the meter path. **Fix:** comment BOTH lines
  of each such pair (16 pairs / 32 lines per char) in states 8000+8100-8160. Bench Sweep/Guard then solely
  control visibility. Applied to blanka + dhalsim.
- Blanka/Dhalsim do NOT use the id-21000 (Family B) gauge spawn.

---

## Current state (update on every patch)
- A: second-pick spawn fix (12 chars); EX-meter 6160 sweep in groove.cns. [P001-P003]
- B: gauge-spawn fix (Honda/Mai, `ID<partner,ID` commented). [P005]  Iori settled.
- C: **in-match meter is the 8200 family in cvs2_system.cns (corrected P008).** 8200 spawn un-gated + not-benched
  gate + bench Sweep/DestroySelf added (blanka/dhalsim) [P008] — awaiting test. P004/P007 touched the 8000/8100
  intro indicator only (benign, left in place).
- Default engine power bar leak: `noPowerBarDisplay` AssertSpecial across groove + cvs2 family. [P001]

## Open / watch items
- **TRAP (P010): the gauge groove var(59) is GARBAGE in tag — do NOT trust it; CLAMP it.** The 8200 helper
  enters `8200 + var(59)*10`. In tag, [State -3] copies `var(59) = partner,var(20)`, but a groove char's
  var(20) is a REUSED scratch var holding a groove-point DISPLAY COORDINATE during the match (config `var(20)=5`;
  states 6713/6723 set it to `root,var(47)*5`, `(root,var(47)-9)*3+45`, up to 999) — NOT a 0-6 groove. So
  var(59) becomes 5/45/999 and the gauge enters a non-existent state -> no bar. Spawn MUST clamp:
  `8200 + ifelse(var(59)=[0,6], var(59), 0)*10 + (var(59)=6)*5`. Power display is groove-independent, so the
  bar shows/fills regardless; clamp just defaults the STYLE to groove 0 when var(59) is junk. (P009's
  `var(59)!=-1` guard was insufficient — junk values aren't -1 — and is disabled.)
- **(superseded) TRAP P009: `var(59) = -1` -> gauge state 8190, which DOES NOT EXIST.** `var(59)` (groove) defaults to -1
  at frame 0 (from scratch var(1)) and only becomes valid when copied from the partner at roundstate=2. Any
  8200 spawn MUST be guarded `var(59) != -1` or it enters a dead state and blocks its own id. State formula:
  `8200 + var(59)*10 + (var(59)=6)*5` (valid: 8200/8210/8220/8230/8240/8250/8260/8265).
- Cosmetic follow-up: in tag, Blanka/Dhalsim copy the PARTNER's groove (var(59)=partner,var(20)), so the gauge
  is styled like the partner's groove, not their own. Fine for "meter shows" goal; revisit if own-groove wanted.
- P008/P009 test: confirm Blanka & Dhalsim 8200 meter shows-when-active (any pick order/partner) / hides on
  tag-out + round start/end + victory / restores on tag-in. If a sub-element lingers, check which explod id.
- Family B (cvs_honda, cvsmai) also report "no meter at all" — SAME bug CLASS (partner-gated meter spawn) but
  DIFFERENT family: gauge is id-21000, different file/author. Needs its own read; folder per select.def is
  `cvs_honda` but raw 404s on the .def — confirm exact path before patching. Mai also redraws the PARTNER's
  groove meter on tag (likely a helper-ID collision) — a distinct bug from the spawn gate.
- Honda `var(30)=1` Turns-Mode caveat: verify higher-ID Honda shows correct groove, not groove-1.
- Two same-family-C chars teamed (Blanka+Dhalsim): the 8098/8099 SELECTOR ID arbitration is still present
  (transient) — verify the pre-round ISM selector doesn't double-draw; chase only if Raven reports it.

## Changelog refs
P001-P006 (backfilled), P007 (Family C intro-indicator arbitration removal), P008 (Family C in-match 8200 meter: spawn un-gate + bench hide), P009 (8200 var(59)!=-1 guard — superseded), **P010** (8200 stateno groove-clamp — THE no-visible-meter fix; partner var(20) is a coord not a groove).
