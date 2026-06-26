# Card: ikemen-latest-architecture — WHAT FILE DOES WHAT (verified vs THIS build)

> Sourced from the LIVE build (ikemen nightly ~2026.04, repo external/script/*.lua + docs/Ikemen-GO-nightly/src/*.go),
> NOT old forum posts or old master. Earlier attempts failed partly because I used stale `global.lua`-era source.
> This is the definitive map. Match the mechanism to the job before writing anything.

## The per-frame fight execution chain (how ANYTHING draws/updates during a match)
1. `save/config.ini` `[Common] Lua = loop()`  -- comment in-file: "Pure Lua code executed on each frame during match".
   The engine runs every `[Common] Lua*` value via DoString EVERY FRAME (system.go renderFrame/update path).
   Keys are `Lua`, `Lua2`, ... (regex `Lua[0-9]*`). So you can add your OWN per-frame call here: `Lua2 = mything()`.
2. `loop()` is defined in `external/script/debug.lua` (~line 229):
   ```lua
   function loop()
       hook.run("loop")
       hook.run("loop#" .. gameMode())
   end
   ```
   So `hook.add("loop", name, fn)` DOES get called every match frame. (The old `global.lua` is GONE; loop() moved to debug.lua.)
3. Lua draws (`fillRect`, `textImgNew/Draw`, `animDraw`) are QUEUED into `luaDrawLayerOps` and FLUSHED in
   `renderFrame()` AFTER `s.draw()` (stage+chars+lifebar) and before `drawTop()`. => Lua draws render ON TOP of the
   fight. There are 3 lua draw layers. `hook.add` signature is `(list, name, func)`.

So a per-frame in-fight HUD overlay = a loaded module that does `hook.add("loop", ...)` and draws. (Confirmed correct
mechanism. If draws still don't show, the problem is LOADING or config `Lua=loop()` missing, not the mechanism.)

## How MODULES load (external/mods)
- `external/script/main.lua` (~line 3702) walks `external/mods` with `getDirectoryFiles` (filepath.Walk = RECURSIVE,
  returns full paths incl. subfolders), keeps `*.lua`, `print('Loading module: '..path)`, then `require(dotted.path)`.
- So BOTH a bare `external/mods/x.lua` AND a folder `external/mods/x/x.lua` are picked up and required.
- **Proven/documented install shape is a FOLDER** (ScoreAttack README: "copy the entire `scoreattack` directory into
  external/mods/"). Use `external/mods/<name>/<name>.lua` to match the known-good pattern.
- Loading is logged to STDOUT as `Loading module: external/mods/<name>/<name>.lua`. On Windows, run the .exe from a
  terminal (cmd/powershell) or check the engine log to SEE it. This is the definitive "did my mod load?" check.
- `[Common] Modules =` in config is for modules OUTSIDE external/mods; in-folder mods need no config entry.

## What a Lua MODULE is normally for (ScoreAttack = the reference)
Modules run at STARTUP and register into global tables/hooks. ScoreAttack (a GAME MODE) only does:
- `main.t_itemname.<mode> = function() ... setGameMode('<mode>'); return start.f_selectMode end`  (menu entry behavior)
- `start.t_makeRoster.<mode>`, `start.t_aiRampData.<mode>`  (mode roster/AI behavior)
- config flags: `main.charparam.*`, `main.motif.*`, `main.fightscreen.*` (e.g. `main.fightscreen.p1score = true` shows
  the BUILT-IN score element -- it does NOT custom-draw).
It needs a `system.def [Title Info] menu.itemname.<mode> = "..."` entry to appear in the menu. **Game modes need a
system.def menu line; a passive HUD overlay does NOT.**

## FILE -> PURPOSE (answer-for-sure table)
| To change... | Edit... | Why |
|---|---|---|
| In-fight HUD that the engine draws (lifebars, COMBO COUNTER, timer, win icons, combo MESSAGE popups) | `data/fight.def` (+fight.sff/fight.def actions, action.zss triggers) | Go-engine-drawn lifebar layout. The combo counter here is a single static-color number; it CANNOT animate per-count (verified P072). |
| A NEW animated/custom HUD overlay during fights | a module `external/mods/<n>/<n>.lua` doing `hook.add("loop", ...)` + draw; ensure `config.ini [Common] Lua = loop()` | Only per-frame Lua path. Draws flush on top of the fight. |
| Per-frame in-fight LOGIC w/o Lua | a `.zss` added to `config.ini [Common] States` | ZSS runs per-frame in-fight (combo popup lives in action.zss). Draws via lifebarAction (banner messages) / explods only -- not free dynamic text. |
| A new GAME MODE | module in `external/mods/` (main.t_itemname etc.) + `system.def [Title Info] menu.itemname.<mode>` | Menu + mode tables. |
| Menus / select / VS / title screens | `system.def` (screenpack motif) | Motif `.def` keys = labels/visuals; logic in start.lua/menu.lua. |
| Character / stage roster | `select.def` | Roster lists. NOT HUD, NOT modes. |
| Global per-frame state scripts | `config.ini [Common] States = ....zss` | functions.zss, action.zss, etc. |

**select.def / system.def do NOT register a passive HUD mod.** A HUD overlay needs: (1) the module loaded from
external/mods, and (2) `config.ini [Common] Lua = loop()` so the `loop` hook fires. A system.def menu line is ONLY
for game modes that appear in the main menu.

## Cross-subsystem traps recorded (do NOT repeat)
- combo MESSAGE popup (fight.sff sprites + lifebarAction) != combo COUNTER (fight.def live number) != custom Lua HUD
  (loop hook + fillRect/textImg). Three different systems; logic does not transfer between them.
- "loop runs" (proved by lag) != "my draws render" -- different facts; verify draw flush separately.
- old `global.lua`/master source != this build. `loop()` is in debug.lua now. Always read THIS build's scripts.

## P077 ADDENDUM — verified draw API + the commonLuaInsert trap (read this)
- **`commonLuaInsert` DOES NOT EXIST** in this engine (grep of src/script.go: absent). `external/mods/inputdisplay.lua`
  ends with `if type(commonLuaInsert)=='function' then commonLuaInsert('inputDisplayDraw()') end` — that condition is
  FALSE, so inputdisplay NEVER registers its per-frame draw. THAT is why "input display only shows the menu toggle
  but never draws." Any mod relying on commonLuaInsert silently does nothing per-frame.
- **Correct per-frame registration = `hook.add("loop", name, fn)`.** Proven chain: config `[Common] Lua = loop()`
  (save/config.ini line 24) -> `loop()` in `external/script/debug.lua` -> `hook.run("loop")` every match frame.
  (Our P073 lag confirmed a "loop" callback truly executes.) No config edit needed; it rides the existing loop().
  Fallback if ever needed: add `Lua2 = yourGlobalFn()` under `[Common]` (the engine runs every `Lua[0-9]*` value).
- **Draw text WITHOUT fontNew.** `fontNew` was the prior failure point (load could fail/return an empty font ->
  nothing visible). The engine-blessed way (used by ScoreAttack AND inputdisplay) is to REUSE an existing text
  sprite the motif already created: `motif.select_info.title.TextSpriteData`. Then per draw:
  `textImgSetText(ts,s); textImgSetScale(ts,sx,sy); textImgSetColor(ts,r,g,b); textImgSetPos(ts,x,y); textImgDraw(ts)`.
  Reuse one ts object across all digits/lines per frame. `fillRect(x,y,w,h, r,g,b, src,dst)` needs no sprite
  (src 255 = opaque, 160 = ~semi; verified from inputdisplay).
- **inputdisplay also shows the menu-toggle pattern**: define `menu.t_valuename.<x>`, `menu.t_itemname['<x>']`,
  `menu.t_vardisplay['<x>']`, and `main.f_appendItemname(motif.pause_menu.training_pause_menu.menu, '', '<x>', 'Label')`.
  Use this to add a training-pause on/off toggle for a HUD mod.
- **Coords:** small top-left values (x=8,y~40, scale ~0.6) are proven on-screen (inputdisplay). The counter sits near
  the default combo counter (~team1 220, team2 1060, y~300). Same coord space as the motif draws.

## P078 — MOD LOADING: the 3 verified ways + DON'T touch the config Lua line
main.lua (~3702-3717) builds ONE module list from THREE sources, then `require`s each (so the loaded file's
top-level runs once; that's where it should `hook.add(...)`):
1. **Auto-load:** every `*.lua` under `external/mods/` (getDirectoryFiles = recursive filepath.Walk). Bare files
   AND folders both load. inputdisplay.lua (bare) loads this way -> auto-load WORKS in this build.
2. **`config.ini [Common] Modules = path1, path2`** (key regex `Modules[0-9]*`). Explicit list of extra module
   files to require. Good for modules OUTSIDE external/mods.
3. **`system.def [Files] module = path`** (motif.files.module; their ikemen1/system.def has this line, empty).
   The motif can name one module to load.
All three just `require` the path -> run its top-level. They do NOT each grant a per-frame callback; per-frame
still comes from `hook.add("loop", ...)` (fired by debug.lua loop(), run by the DEFAULT `[Common] Lua = loop()`).

**DO NOT edit `[Common] Lua = loop()` to add your call (e.g. `Lua = loop(); mything()` or `Lua2 = mything()`).
Raven confirmed this CRASHES.** Reason: those values are run via raw `DoString`; if the call errors at all the
engine does `RaiseError` = fatal. `hook.add("loop")` callbacks are isolated from that path, so use hook.add and
keep your callback pcall-wrapped. A mod needs NO config edit: drop it in external/mods, it auto-loads, and
hook.add("loop") rides the existing default loop().

**So: ub_combo_counter.lua just goes in external/mods/ (bare, like inputdisplay). No config.ini change. If
auto-load ever doesn't pick it up, the supported alternatives are `[Common] Modules =` or system.def
`[Files] module =` -- NOT the Lua line.**

## P079 — FULLY VERIFIED per-frame draw chain (the end-to-end proof)
Traced in docs/Ikemen-GO-nightly/src/system.go for THIS build. The match runs entirely inside `runMatch()`:
- `runMatch()` (system.go 3707) loops `for !s.endMatch` (3793) and each iteration calls:
    * `s.action()` (3820)  -> inside action() (2594) is the Common.Lua loop (2786):
      `for key in SortedKeys(sys.cfg.Common.Lua) { for v { sys.luaLState.DoString(v) } }` -> runs `loop()`
      (the default `[Common] Lua = loop()`), and `loop()` (external/script/debug.lua:229) does
      `hook.run("loop")` + `hook.run("loop#"..gameMode())`. => OUR `hook.add("loop", ...)` callback fires here.
    * `s.renderFrame()` (3895) -> renderFrame (845): `s.draw()` (scene+lifebar) THEN `s.luaFlushDrawQueue()` (854)
      THEN `s.drawTop()`. => queued Lua draws (fillRect/textImg) render ON TOP of the fight.
So: callback runs in action(), its draws queue, the same-iteration renderFrame() flushes them on top. CONFIRMED
that `hook.add("loop")` + Lua drawing works during a match. If a loop-mod shows nothing, it is NOT loading (or
its callback errors before drawing) -- it is NOT a mechanism problem.
- **Crash note:** the Common.Lua values run via raw DoString; an error there is FATAL (RaiseError). So a `hook.add`
  callback MUST be pcall-wrapped (ours is) or a runtime error inside it would crash the whole match.
- **Load-proof trick:** mirror inputdisplay's training-pause-menu toggle (menu.t_valuename/t_itemname/t_vardisplay
  + main.f_appendItemname(motif.pause_menu.training_pause_menu.menu,...)). If the toggle appears, the mod's
  top-level RAN = it loaded. Separates "didn't load" from "loaded but didn't draw".
- inputdisplay.lua can be fixed the same way: replace its dead `commonLuaInsert('inputDisplayDraw()')` with
  `hook.add("loop","inputdisplay",function() pcall(inputDisplayDraw) end)`.
