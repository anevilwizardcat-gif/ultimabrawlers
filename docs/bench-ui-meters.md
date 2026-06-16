# CARD: bench-ui-meters

> **Purpose:** each character's *custom author-made* meter/bar must HIDE when that character is tagged
> out (benched), KO'd, or the round ends, and RESTORE when tagged back in — so benched meters don't
> overlap the active character's.

## Architecture & mental model
Custom meters are **explods** drawn from **dedicated gauge display states** in a meter file, spawned
from the char's `[Statedef -2]`. Hiding is done inside those display states. This is pure MUGEN/CNS
(states, helpers, explods) — it has **nothing** to do with Lua, motif `.def` keys, or `fight.def` coords.

**Bench tag state numbers (memorize):**
- `6565600` EnteringScreen · `6565610` LeavingScreen · `6565611` WaitingOutside · `6565620` JumpingIn
- **Benched ⇔ `root,stateno = [6565610, 6565611]`**

## Boundaries — DO NOT confuse with
- **Lua/motif subsystems** (menu-text, char-variants, stage-select): no explods, no bench states,
  no RemoveExplod. Different universe.
- **lifebar-layout (`fight.def`):** that moves the *default engine* bar via motif coords; this hides
  *author custom* meters via CNS. Different file, different mechanism.
- **sf3-gauges:** different engine lineage (state 50000/25000), not a cvs family.
- **Across families A/B/C below:** the EX-gauge fix is irrelevant to the groove-bar fix is irrelevant
  to the cvs2-system gauge fix. They live in different files. Confirm the family before applying anything.

## Canonical bench-hide pattern
Applied **only** inside dedicated meter/gauge display states (never gameplay states):

1. **Sweep** (top of the meter state):
   ```
   [State, Bench UI Sweep]
   type = RemoveExplod
   trigger1 = root,stateno = [6565610, 6565611]
   trigger2 = roundstate > 2
   trigger3 = !root,alive
   ignorehitpause = 1
   ```
2. **Guard** (prepended on each meter explod so it can't redraw while benched):
   ```
   triggerall = root,stateno != [6565610, 6565611] && root,alive && roundstate <= 2
   ```
3. **Restore** (entry-only `Time=0` explods that won't self-respawn — re-enter the state when gauge missing but active):
   ```
   [State, Bench UI Restore]
   type = ChangeState
   trigger1 = roundstate <= 2
   trigger1 = !(root,stateno = [6565610, 6565611])
   trigger1 = root,alive
   trigger1 = numexplod(<KEY_EXPLOD_ID>) = 0
   trigger1 = time > 0
   value = stateno
   ignorehitpause = 1
   ```
   Self-respawning explods (`trigger1 = !NumExplod(id)`) need the **guard only** — no Restore.

**CRITICAL APPLICATION RULE:** apply ONLY to dedicated gauge display states. NEVER to gameplay states.
Over-broad detection once hit **state 5201** (common getup/landing that incidentally draws a meter
explod) — a Restore ChangeState there could yank the char back into 5201 mid-match. Restrict to gauge
state-number ranges (e.g. `>=8000` EX, `6100–6170` groove) and eyeball any state before sweeping.
Guard-only just hides → safe. Restore can break active play → be careful what you Restore into.

---

## Family A — Groove-bar family (shared `groove.cns`)
- **Members:** cvsking, cvsnakoruru, cvsryu, cvsken, cvschunli, cvszangief, cvsguile, cvsgouki, cvskyo,
  cvsterry, cvssakura, cvshaohmaru. (All authored "Warusaki3".)
- **Files:** `<char>.cns` (main) + shared `cvs_common.cns` + **shared `groove.cns`** + `config.txt`.
- `groove.cns` is **byte-identical across all** (one fix → all). Verify md5 before trusting.
- **Meter pieces** from main `[Statedef -2]`: groove bar (id **6000**), GP counter (id **6500**),
  gauge (id **6100**). Display states in `groove.cns`: **6100/6110/6120/6130/6140/6150/6160/6170** + **6500**.
  **6160 = EX/MAX-mode** draw (was the last one missing a sweep).
- Main bar (6000) hides by following its off-screen character.
- **Second-pick spawn bug:** spawn lines read `trigger1 = !partner,authorname = "warusaki3"` (×3, for
  6000/6500/6100). Two W3 teammates → only first-pick spawns. **Fix:** comment that single `warusaki3`
  exclusion line in all three spawn blocks per char.

## Family B — CvS2-system family (`cvs2_system.cns`)
- **Members:** cvsmai, Cvs_Honda, Cvs_iori. (Blanka/Dhalsim also load a `cvs2_system.cns` but theirs is
  wired differently → Family C.) **These files are NOT all identical** — Mai & Honda share `fec23cfe…`;
  Blanka/Dhalsim/Iori each differ. md5/diff before assuming shared.
- **Honda (stripped):** `Cvs_honda.cns` (main, NO `[Statedef -2]`) + `Cvs2_system.cns` (holds meter +
  groove-select + winning `-2`). Mai (non-stripped): `Mai-N/S/H.cns` + `cvs2_system.cns`.
- **Groove select:** `var(30)` = groove/ISM (1–6). `var(30) = -1` in config = "in groove-select"
  (pre-select default), NOT "no groove." Honda HAS grooves.
- **Gauge helper:** id **21000** ("Gauge"), `stateno = 20000 + var(30)*1000` → states **21000–26000**.
- **Higher-ID-gets-no-meter bug:** gauge spawns `trigger1 = ID<partner,ID` (lower-ID only). **Fix:**
  comment that line (the one immediately above `id = 21000`) so each char spawns its own gauge; bench
  sweep hides the benched one.
- **Do NOT touch** nearby `fvar(1)` team-position VarSets or the `var(30)=1` "Turns Mode" VarSet
  (gated on `ID>partner,ID`) — those affect gameplay/groove. Open caveat: that block may force a
  higher-ID char's gauge to render as groove-1; confirm with Raven before changing gameplay vars.
- **Iori: settled in an earlier session (state 21000). Leave alone.**

## Family C — CvS2-EX family (custom EX gauge in char-specific system file)
- **Members:** cvs2_blanka, cvs2_dhalsim.
- **Files:** `data-cvs2_<c>.cns` + shared `cvs2_system.cns` + N/S/H groove files +
  **`system-cvs2_<c>.cns` — the author's custom EX gauge** + `option.cns`.
- **EX gauge:** states **8000, 8100–8160, 8526**; explods 8000/8010/8100/8500, HUD postype, `bindtime=-1`,
  `!NumExplod` respawn. Lives in the char-specific `system-cvs2_<c>.cns`, which the shared-file sweep
  never touches ("author bolted an EX gauge on Warusaki3's base"). **Fix:** apply the bench pattern to
  the 8000-series states in the char's own system file.
- Blanka/Dhalsim do **not** have the id-21000 one-gauge-per-team spawn — their issue was the EX gauge,
  not the gauge spawn.

---

## Current state (update on every patch)
- Family A second-pick spawn fix shipped to all 12 groove chars.
- Family A EX-meter hide: state 6160 sweep+guard added to shared `groove.cns` (one file covers all of A).
- Family C EX-gauge hide: bench pattern applied to `system-cvs2_blanka.cns` + `system-cvs2_dhalsim.cns`.
- Family B gauge-spawn fix: `ID<partner,ID` commented → ships as `Cvs_Honda/Cvs2_system.cns` +
  `cvsmai/cvs2_system.cns`.
- Default engine power bar leak: `noPowerBarDisplay` AssertSpecial added to the winning `[Statedef -2]`
  across groove roster + cvs2 family.

## Open / watch items
- Honda `var(30)=1` Turns-Mode caveat: verify higher-ID Honda's gauge shows the *correct* groove, not groove-1.
- If a second-pick main bar (id 6000) lingers when benched, extend the sweep to it.

## Changelog refs
Backfilled: P001–P006 (see CHANGELOG.md). Add new P-IDs here as they land.
