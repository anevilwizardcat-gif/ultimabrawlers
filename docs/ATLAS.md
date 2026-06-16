# ultimabrawlers — ATLAS (subsystem firewall index)

One row per engine subsystem ever touched. **This is the cross-contamination firewall.**
Before working a subsystem, read its Architecture + DO-NOT-confuse-with fields. If today's task
makes me reach for a pattern listed under another subsystem's "DO-NOT-confuse-with", I'm in the
wrong architecture — stop and re-orient.

Status legend: `card` = full detail card exists · `stub` = row only, write card when next touched ·
`planned` = not yet built · `settled` = done, leave alone unless Raven reopens.

---

## Touched subsystems

### bench-ui-meters — Bench UI Protocol (custom author meters hide when benched/KO'd/round-over)
- **Architecture:** MUGEN/CNS state + helper + explod. Custom meters are explods drawn from dedicated
  gauge *display states*. Hide = RemoveExplod sweep + per-explod guard trigger + (sometimes) a Restore
  ChangeState. Bench detection = `root,stateno = [6565610, 6565611]`. THREE distinct meter families
  (A groove.cns / B cvs2_system.cns / C cvs2-EX) that look alike but live in different files.
- **Lives in:** each char's `.cns` `[Statedef -2]` (spawn) + family meter file (display states).
- **DO-NOT-confuse-with:** Lua/motif subsystems (stage-select, menu-text, variants) — those have NO
  explods, no bench states, no RemoveExplod. Also do not carry a fix between families A/B/C.
- **Card:** `cards/bench-ui-meters.md` · **Status:** card

### stand-system — HFTF / Warusaki3 stand mechanics (jotaro, dio, polnareff, avdul)
- **Architecture:** Warusaki3 stand engine. `var(8)` = stand mode (0 off/1 deployed/2 autonomous-special/
  3 crashed). Real tandem = the **12xxx state family** on the stand helper, NOT `var(8)=2`. Timestop via
  `var(0)` + helper 3210. Stand bar stacking baked into gauge explod position at spawn. Tag logic in
  `data/tag.zss` keyed on `map()` flags (note: redirected map() reads return 0 in this build).
- **Lives in:** `<char>_system.cns`, stand helper states (11010, 3653, 12xxx), `data/tag.zss`.
- **DO-NOT-confuse-with:** generic meter hide (stand bar stacking is position-bake, not the bench
  sweep/guard pattern). `var(8)=2` is NOT tandem. SF3 stun gauge (25000) is NOT the power gauge (50000).
- **Card:** `cards/stand-system.md` · **Status:** stub

### sf3-gauges — Street Fighter 3 power/stun gauges
- **Architecture:** SF3 mains. **Power gauge = state 50000. Stun gauge = state 25000 (a persistent
  DECOY — do not patch it thinking it's the power bar).** Helper/state 50000 carries the meter.
  Stun gauges disabled at spawner. Default engine power bar relocated in `fight.def` to match SF3 height.
- **Lives in:** SF3 char mains (state 50000 / 25000), `fight.def`.
- **DO-NOT-confuse-with:** the cvs groove/cvs2 meter families — different engine lineage entirely.
  State 25000 vs 50000 confusion is a logged repeat offense.
- **Card:** `cards/sf3-gauges.md` · **Status:** stub

### lifebar-layout — fight.def HUD positioning (power bar, counters, win icons)
- **Architecture:** `fight.def` motif coordinates. **Lifebar sprite axis is a fixed ~173px above the pos
  anchor regardless of scale — NOT proportional.** Coordinate arithmetic is unreliable here; measure from
  repo-root screenshots instead.
- **Lives in:** `fight.def`.
- **DO-NOT-confuse-with:** per-char meter spawn/hide logic (that's CNS, this is motif coords). Editing
  fight.def changes the *default engine* bar, not author custom meters.
- **Card:** `cards/lifebar-layout.md` · **Status:** stub

---

## Planned / untouched subsystems (architecture noted so I don't mis-model them later)

### menu-text-styling — Smash-Ultimate-style thicker pixel font on menu text (select screen etc.)
- **Architecture:** Ikemen GO motif + font assets + Lua. Motif `.def` keys control labels/visuals only;
  behavior lives in Lua (`external/script/start.lua`, `main.lua`). Scope = menu TEXT appearance ONLY
  (not lifebars, backgrounds, other HUD).
- **DO-NOT-confuse-with:** anything in bench-ui-meters / sf3-gauges / lifebar-layout. No explods, no
  state numbers, no `fight.def`. This is fonts + motif + Lua.
- **Status:** planned (await Raven's specific direction)

### char-variants — echo-fighter dropdown (e.g. CvS2 Ryu vs SF3 Ryu on select)
- **Architecture:** Ikemen GO select screen Lua + hooks. Prefer a hook-based mod in `external/mods/`
  (auto-loaded, surgical) over editing motif keys or core scripts. Trace the Lua that consumes a key
  before editing the key. Not every char gets a variant; feature may be scrapped for balance.
- **DO-NOT-confuse-with:** meter/HUD architecture. Selection availability/behavior is Lua, not motif labels.
- **Status:** planned (design vision, not started)

### stage-select — stage/map selection
- **Architecture:** Ikemen GO Lua select flow + `select.def` stage entries. (`select.def` line's 2nd value
  is the stage.) Behavior in Lua, not motif labels.
- **DO-NOT-confuse-with:** EVERYTHING in the meter/HUD families. This is the canonical example of a
  subsystem that shares NO logic with super meters. If I'm thinking "explods/states/RemoveExplod" here,
  I have crossed wires — stop.
- **Status:** planned (illustrative; not requested yet)
