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
  (A groove.cns / B cvs2_system.cns id-21000 / C cvs2-EX) that look alike but live in different files.
  NOTE (P011): Family C (blanka/dhalsim) has NO usable custom meter — uses the DEFAULT engine power bar (the noPowerBarDisplay assert in N- was disabled). The 8200 gauge is a phantom; do not reopen it.
- **Lives in:** each char's `.cns` `[Statedef -2]` (spawn) + family meter file (display states).
- **DO-NOT-confuse-with:** Lua/motif subsystems (stage-select, menu-text, variants) — those have NO
  explods, no bench states, no RemoveExplod. Also do not carry a fix between families A/B/C.
- **Card:** `cards/bench-ui-meters.md` · **Status:** active (P008)

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
  fight.def changes the *default engine* bar, not author custom meters. Also holds the **combo-message popups**
  (anim 4120 ULTIMA COMBO + 407-411 siblings): fight.sff frames + fight.def [Begin Action] + action.zss
  lifebarAction. Popup 4120 ≠ counter-bg flame 4131 (different draw sites) — don't cross-wire.
- **Card:** `cards/lifebar-layout.md` · **Status:** active — ULTIMA COMBO popup restored to RGB vertical-bob
  (P071); power-bar/HUD redesign still in progress.

### combo-counter — the live HIT-COUNT number + "HITS!" label (fight.def [Combo])
- **Architecture:** engine-drawn live text via `LifeBarCombo` (src/lifebar.go). The counter is a **single
  static-color `LbText`** (color = `counter.font` RGB slots only) + optional shake. **NOT the ULTIMA popup.**
- **CRITICAL — verified vs source:** `[Combo]` has **NO `counterNN`/`textNN` tier loop** (only `[Time]` does),
  and `LbText`/`Layout` **never read `palfx.mul`/`sinmul`** (those work only for AnimLayout `bg0`/`top`). So the
  counter **cannot** do gold→red-by-count, color oscillation, rainbow, or per-digit bob natively. All
  `counter10..100` / `text10..100` keys in fight.def are **INERT** (P070 leftovers). Count-driven animated
  coloring needs a **custom counter** (baked digit sprites driven by action.zss) — NOT YET BUILT, don't claim it.
- **Lives in:** `fight.def [Combo]`, `data/action.zss` (combo tier / popup threshold).
- **DO-NOT-confuse-with:** the ULTIMA COMBO **popup** (baked sprites 412,*, anim 4120 — that one CAN do
  anything because it's hand-painted). Tier logic from `[Time]` does NOT transfer here.
- **Card:** cards/combo-counter.md * **Status:** active - CUSTOM EXPLOD counter (action.zss). P092 detached under each default counter (measured TOP-LEFT origin). P093 count-up bounce. P094 = digits restyled to the default look (Jersey10 italic + outline, gold via palfx), purple HITS label, and a per-digit RGB WAVE + bob (replaced the strobe). P098/99 flowing RGB wave (baked phase frames) + eased 35+ onset. P100 zoom-immune (scale/camerazoom), pause-trail fixed (super/pausemovetime 999999 + removetime 1), DEFAULT counter retired (fight.def counter.font/text.font=-1), custom moved into its slot. P102 default hidden via off-screen pos + ours raised to by=gameheight/5. ZOOM IMMUNITY: explods are space:screen/postype:none, rendered through the camera at size*cam.Scale AND pos*cam.Scale (top-left origin); camerazoom=cam.Scale; divide BOTH scale (P100) and pos (P106) by camerazoom. Drift only shows on hard-zoom stages.

### round-timer - the round clock count rate (engine, not data)
- **What:** displayed clock = ceil(sys.time/framespercount); framespercount LIVE=60 (correct). sys.time-- fires ONCE PER COMPLETED MAIN-LOOP FRAME (system.go L1051), NOT scaled by turbo/GameSpeed.
- **DO-NOT-confuse-with:** GameSpeed/turbo (those scale FIGHTERS via tickFrame, not the clock) and framespercount (correct). The clock is paced by how fast the loop finishes frames (render/VSync/refresh).
- **Card:** `cards/round-timer.md` * **Status:** P104 investigation - clock-rate == achieved loop fps; ~2.5x slow => ~24fps loop (Steam-Deck VSync/compositor cap). Fix = config.ini VSync 1->0, Framerate 60, Deck 60Hz/no FPS cap. Awaiting Raven's FPS-overlay confirm.

### lua-hud-mods — custom animated HUD over the fight via an auto-loaded Lua module
- **Architecture:** a `.lua` in `external/mods/` (auto-loaded) registers `hook.add("loop", ...)`, which runs
  every match frame (global.lua `loop()`), and draws HUD-locked with `textImg*` (+ a TTF for true-color tint).
  Reads live per-team combo via `player(t); combocount()`. This is the ONLY way to do count-driven animated
  HUD — the native lifebar can't. **NOT** the same as fight.sff/lifebarAction popups or fight.def [Combo] keys
  or CNS/explods; do not cross-apply those here.
- **Lives in:** `external/mods/*.lua`, font wrappers in `font/`. Verified vs ikemen source (lifebar/char/script/
  font/common.go, global/main.lua).
- **Gotchas:** raw .ttf won't load (needs a `[Def]` Type=truetype wrapper, mirror `font/Open_Sans.def`); bitmap
  fonts only multiply-tint (use TTF for rainbows); coords are motif-localcoord (here 1280×720 = matches lifebar).
- **Card:** `cards/lua-hud-mods.md` · **Status:** active — combo-counter prototype (P073); P074 killed a per-frame font-retry lag bug; P075 = coordinate-system finding (Lua draws use MOTIF localcoord via luaSpriteScale, separate from lifebar transform; loop draws are already topmost) + best-effort font loader + a DEBUG status overlay to pinpoint why the counter is invisible. Lessons: never retry an expensive load per-frame; instrument HUD draws instead of guessing. P076: nothing renders at all incl. a font-less rect -> shipped an unconditional magenta test bar + load print to decide draw-path-works vs wrong-mechanism vs not-loaded. The loop RUNNING (P073 lag) never proved draws RENDER. P077 BREAKTHROUGH: studied inputdisplay.lua + scoreattack -> commonLuaInsert is a FAKE api (why inputdisplay never drew); correct path = hook.add("loop") (fired by debug.lua loop() via config Lua=loop()) + draw via reused motif.select_info.title.TextSpriteData + fillRect (NOT fontNew). New card: ikemen-latest-architecture.md (definitive file->purpose map). P078: 3 verified mod-load ways (external/mods auto-load, [Common] Modules, system.def [Files] module); NEVER edit [Common] Lua=loop() (raw DoString -> fatal crash); hook.add("loop") rides the existing loop(), no config edit needed. P079: VERIFIED full chain runMatch->action->loop->hook->renderFrame flush (mechanism is 100% sound -> blank = not loading); rebuilt mod identical to inputdisplay (proven to load) + a training-menu toggle as load-proof.



### ui-motif — Ikemen screenpack (menu/select/VS/logo/backgrounds)
- **Architecture:** motif `system.def` (fonts/layout/bg elements/[Begin Action]) + `system.sff` (sprites).
  font2=Pixel is THE UI font; P1 gold / P2 cyan. Animated logo via type=anim+actionno (50/51 wave+rainbow).
  Backgrounds = procedural purple-pixel; scroll layers = seamless star lattices. SFF rebuild = replace
  (recompute offsets) or append (offsets relative); **PNG8 needs the SFFv2 palette node, not embedded**.
- **Lives in:** `data/ikemen1/system.def` + `data/ikemen1/system.sff`.
- **DO-NOT-confuse-with:** bench-ui-meters / stand / gauge CNS work (this has NO explods, no bench states,
  no CNS - motif+sprites+Lua only). A full ldata rebuild that ignores palette data breaks indexed sprites.
- **Card:** `cards/ui-motif.md` · **Status:** active (P025-P036). Supersedes the planned `menu-text-styling` row.


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

### menu-background - motif title/menu backdrop (data/ikemen1/system.sff, SFFv2)
- The sliding menu 'stars' = scrolling BG layers spriteno 100,2 (slow) + 100,3 (fast). Static sky = 100,0 (baked gold deco + outlines + static stars).
- **Card:** cards/menu-background.md * **Status:** active - TITLE (group 100): P103 detailed parallax starfield. CHAR-SELECT (group 101): P107 = SCRAPPED the front big-star layer (101,3 commented out); kept the SLOW back layer (101,2) and made it CRISP PIXEL (no AA, coarse-grid x NEAREST) with VARIED twinkle (static/blink/grow/shimmer) via type=anim actionno 250, frames 101,2/30/31/32. P105 stripped the big star outlines in select sky 101,0. Title=group100, select=group101 (don't cross-edit).

### fight-announcements - KO/DKO/TimeOver/FIGHT/ROUND banners (data/fight.def [Round] + data/fight.sff, SFFv2)
- Visible KO graphic = KO.bg3.anim (was 530, now 600 = gold pixel K.O. sprite 6000,0). bg0-2/anim=529 = dummy timing layers.
  Motion lives in the [Begin Action]: single sprite, engine scale+blend+Interpolate (slam 2.2 AS0D256 -> 1.0, hold, flicker).
- DKO graphic = DKO.bg0.anim (now 600). TO = TO.anim 540/541. slow.time=60 = final-KO slow-mo (separate system, stacks on top).
- SFFv2 sprite encoding: [uint32 png_len][PNG], dofs rel to ldataoff, 28-byte node; append-only at file end is safe + reversible.
- **Card:** cards/fight-announcements.md  **Status:** active - P157: global KO unchanged (P156 pixel crimson); SF3 finisher's own KO-text overlay (sprpriority=15 explod in [Statedef 10000], anim 8920/11500) disabled on ryu/ken/gouki/ibuki/alex so the global KO shows over their backdrop; chun-li has no such system.
