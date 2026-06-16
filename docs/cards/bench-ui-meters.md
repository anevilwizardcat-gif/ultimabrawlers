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

## Family C — CvS2-EX family (custom EX gauge in char-specific `system-cvs2_<c>.cns`, **author Gal129/rei**)
- Members: **cvs2_blanka, cvs2_dhalsim** (both author "Gal129"). Roster folders: `cvs2_blanka`, `cvs2_dhalsim`.
- Files (.def): `cns=data-cvs2_<c>.cns`, `st=cvs2_system.cns` (shared), `st2..st4=N/S/H`,
  **`st5=system-cvs2_<c>.cns`** = the operative EX-meter file, `st6=option.cns`.
- **st5 overrides st:** statedefs 8000/8098/8099/8100… exist in BOTH cvs2_system.cns and system-cvs2_<c>.cns;
  the later-loaded st5 copy WINS. Always edit the **st5** copy (`system-cvs2_<c>.cns`), never the cvs2_system one.
- **The visible meter** = a "painter" helper cycling states **8000** (intro/ISM-confirm, dies at roundstate=2)
  and **8100-8160** (persistent in-match digits/bar). Explods: 8000/8010/8100/8540/8541/8542/8565, HUD/back
  postype, bindtime=-1, removetime=-1, `!NumExplod` repaint. Bench Sweep+Guard live on these states (P004).
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
- C: bench hide on EX states (blanka/dhalsim) [P004]; **simul-arbitration removed (blanka/dhalsim) [P007] — awaiting test.**
- Default engine power bar leak: `noPowerBarDisplay` AssertSpecial across groove + cvs2 family. [P001]

## Open / watch items
- P007 test: confirm Blanka & Dhalsim meter shows-when-active / hides-when-benched in BOTH pick orders.
  If "benched but visible" persists, suspect a bench-guard gap on a specific explod id (not the arbitration).
- Honda `var(30)=1` Turns-Mode caveat: verify higher-ID Honda shows correct groove, not groove-1.
- Two same-family-C chars teamed (Blanka+Dhalsim): the 8098/8099 SELECTOR ID arbitration is still present
  (transient) — verify the pre-round ISM selector doesn't double-draw; chase only if Raven reports it.

## Changelog refs
P001-P006 (backfilled), **P007** (Family C simul-arbitration removal).
