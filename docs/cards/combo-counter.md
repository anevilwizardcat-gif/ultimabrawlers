# Card: combo-counter (the live HIT-COUNT number + "HITS!" label)

> **This is NOT the ULTIMA COMBO popup.** Different subsystem, different engine code, different rules.
> The popup (anim 4120, sprites 412,*) is a **baked sprite animation** I can paint freely.
> The combo counter is **live engine-drawn text** of the current hit count. See lifebar-layout.md for the popup.

## Where it lives
- **Config:** `data/fight.def` `[Combo]` section — `team1.*` / `team2.*` keys.
- **Trigger/threshold for the popup messages:** `data/action.zss` (`IkSys_ComboCount()` -> `lifebarAction`).
- **Engine code (authoritative):** `src/lifebar.go` -> `type LifeBarCombo`, `readLifeBarCombo`, `(*LifeBarCombo).draw`.
  Repo's bundled engine snapshot (`docs/Ikemen-GO-nightly/src/`) is PARTIAL and does **not** include lifebar.go;
  read it from the canonical engine repo `ikemen-engine/Ikemen-GO` (master) instead.

## ENGINE ARCHITECTURE — verified by reading src/lifebar.go (do not re-derive from guesswork)
`LifeBarCombo` holds the counter as a **single `LbText`**, not a tier map:
```
type LifeBarCombo struct { ... counter LbText; text LbText; bg AnimLayout; top AnimLayout; ... }
readLifeBarCombo: co.counter = readLbText("counter.", ...); co.text = readLbText("text.", ...)
                  co.bg = ReadAnimLayout("bg0.", ...); co.top = ReadAnimLayout("top.", ...)
```
- **There is NO `counterNN` / `textNN` tier loop for `[Combo]`.** (The `[Time]` counter *does* have one —
  `counter map[int32]*LbText` + a `counter[0-9]+\.` regex. Combo does **not**. This is the exact cross-subsystem
  trap: tier logic that's real for Time is INERT for Combo.)
- **`LbText` color is one static tint.** `readLbText` only does `txt.palfx.setColor(font[3],font[4],font[5])`.
  `Layout`/`ReadLayout` carries **no palfx** (only offset/facing/layerno/scale/angle/window). Nothing reads
  `counter.palfx.mul` / `counter.palfx.sinmul` for the counter text. Those keys are **never parsed**.
- **`palfx.mul`/`add`/`sinmul` ARE read — but only for `AnimLayout`** (`bg0.`, `top.`) via `ReadAnimPalfx`.
  So palette FX work on the flame/overlay anims, NOT on the number text.
- **The only thing the engine animates on the counter is the shake:** `counter.shake/time/mult` ->
  a per-hit scale/position pulse (`z` factor in draw). No color motion of any kind.

### What this means (the ceiling)
| Want | Native-possible on the counter? |
|---|---|
| One static color for the number | YES — `counter.font = 6,0,0,R,G,B` (slots 3-5). Currently no RGB given -> white. |
| Bigger/smaller number or HITS text | YES — `counter.scale`, `text.scale`, `text.offset`. |
| Shake on hit | YES — `counter.shake/time/mult`. |
| Gold->red **gradient by hit count** | **NO** — single static color; no per-count tiers. |
| RGB/rainbow **color wave** over time | **NO** — no palfx oscillation is read for text. |
| Per-digit bob / per-digit hue | **NO** — engine draws the count as one font string; no per-glyph control. |
| Speed scaling by combo count | **NO** — nothing on the counter is count-driven except the displayed digits. |

**INERT keys currently in fight.def `[Combo]` (P070 leftovers, harmless but misleading):**
`team*.counter10..counter100.*` and `team*.text10..text100.*`. The engine ignores every one of them.
Left in place (removing = churn, no behavior change) but annotated in-file. Do NOT trust them to do anything.

## How to actually get count-driven animated coloring  (BUILT as a Lua mod, P073)
The native counter can't do it. The working route turned out NOT to be action.zss (lifebarAction only draws
sliding banner messages, not a dynamic multi-digit number) but a **Lua HUD mod** drawn each match frame.
Full mechanism is documented in `cards/lua-hud-mods.md`. Summary:
- `hook.add("loop", ...)` runs every match frame (global.lua loop()).
- `player(t); combocount()` gives the live per-team combo (co[teamside].combo, incremented in char.go).
- per-digit `textImgDraw` with a **TTF** font gives true-color tint => smooth gold->red AND rainbow.
- 1280x720 coords line up 1:1 with the default counter, so ours sits right under it.
Prototype shipped P073: `external/mods/ub_combo_counter.lua` (+ `font/ub_combo.def`, `font/ub_combo/ub_combo.ttf`).
Draws BELOW the default (compare mode, HIDE_DEFAULT=false). gold->red over 1-34, red at 34, rainbow wave + bob
at 35+, wave speed scales 35->99. All behavior validated by simulating loop() in lupa before shipping. P074 HOTFIX: fixed a font-load failure that retried fontNew every frame (~15fps + no counter); now one-shot load + Open_Sans fallback + fail-safe disable.
**Still native-impossible to do on the engine counter itself — the mod is the answer.**

## Current state (P072)
- **Flame behind counter (P070 `bg0.anim=4131`): DISABLED** — commented out for team1+team2. (It was still
  wired live, which is likely why Raven still saw it. Re-enable by uncommenting.) Action def 4131 left intact.
- **HITS text: enlarged** `text.scale 0.55 -> 0.62`, `text.offset 0,42 -> 0,45` (both teams) — slightly larger,
  extra clearance so it never touches the number.
- **ULTIMA COMBO popup threshold: 25 -> 35** (action.zss). 20-34 hits now show AMAZING (MsgCombo20).
- **Counter color/animation feature: NOT delivered** — blocked by engine architecture above; awaiting Raven's
  decision (accept single static color, greenlight custom-counter prototype, or redirect the effect to the popup).

## Files this card governs
`data/fight.def [Combo]`, `data/action.zss` (combo tier block). Counter font = font 6; HITS label font = font 5.

## ENGINE TRUTH (P080) - read the ACTUAL draw code; stop assuming
Verified by reading LifeBarCombo struct + step + draw in lifebar.go (full functions, not the reader alone):
- The counter NUMBER draws via `co.counter.lay.DrawText(..., co.counter.palfx, co.counter.frgba)`.
  `counter.palfx`/`frgba` are set ONCE at load (palfx from counter.font[3,4,5]) and are NEVER modified in step()
  or draw() based on combo count or time. => the number is a SINGLE STATIC COLOR. The ONLY per-frame change is a
  shake-SCALE on hit: `z = 1 + shaketime*counter_mult*sin(...)`. No color/hue animation of the number is possible.
- No `counterNN` tiers exist for [Combo] (only [Time] has them). The P070 counter10..counter100 keys are INERT.
- `bg`/`top` are AnimLayouts drawn behind/over the counter; THEY animate (anim + palfx, incl. sinadd/sinmul) but
  are (a) count-INDEPENDENT and (b) separate sprites, NOT the number's color.
- **Lua mods CANNOT draw in-match HUD in this build** (EMPIRICAL: inputdisplay.lua AND ub_combo_counter.lua both
  LOAD - their training-menu toggles appear - but NEITHER ever draws on screen. The source-traced hook.add("loop")
  + fillRect/textImg path does not render in the running binary. Do NOT attempt Lua in-fight drawing again.)
=> A count-driven animated NUMBER (gold->red->rainbow+bob) is NOT achievable via fight.def OR Lua.

### Achievable options for an "animated combo counter" (ranked by effort)
A. SIMPLE / confident (fight.def only): set the counter to one chosen color via `counter.font = 6,0,0,R,G,B`,
   and optionally add an animated rainbow `top` AnimLayout sprite OVER the counter (palfx sinadd/anim) for a
   shimmer. Real and ships immediately, but the shimmer is COUNT-INDEPENDENT (same whenever the counter shows).
B. Lean on the popup: the ULTIMA COMBO popup ALREADY does gold/rainbow+bob at combo>=35 (P064/P071). Could tier
   its colors by combo, or have it show the count. Uses the proven fight.sff+action.zss path.
C. AMBITIOUS / the ONLY way to a count-driven animated NUMBER: a COMMON ZSS state (config.ini [Common] States)
   that reads the combo (IkSys_ComboCount) and spawns SCREEN-LOCKED explods rendering the count's digits with
   animated palfx (color) + pos (bob). This is the SAME explod/sprite architecture the super meters use, which
   DOES render in-match. Real engineering (compose dynamic digits from explods, gate to one spawner, screen-lock
   via postype) - verify the combo trigger + explod HUD-lock + digit-sprite source BEFORE building. Not a quick edit.

## EXPLOD-BASED COUNTER (P081) - the architecture that actually renders in-match
After Lua draws were proven dead, the right path = EXPLODS (the same sprite system super meters + all char FX
use, which DEMONSTRABLY render during a match). Verified against THIS build (docs/Ikemen-GO-nightly/src + data):
- **action.zss is the spawner.** It's `[StateDef -4]` (global, every frame), gated `if !isHelper && teamSide!=0
  && roundState>=2`, and the combo code is under `if playerNo = teamSide` (runs ONCE per team = no dup spawns).
  It already reads the live combo: `let ret = call IkSys_ComboCount(); if $ret { ... }`. $ret = this team's combo.
  => spawn/manage counter explods right there, with the count already in $ret. (Same file as the popup wiring.)
- **Explods CAN use SHARED sprites** via the fightfx prefix: `anim: F<n>` (compiler getDataPrefix handles 'f' ->
  sys.ffx). `data/fightfx.sff` + `data/fightfx.air` EXIST; highest anim used = 130, so 9000+ is free. => bake
  0-9 digit sprites into fightfx.sff and define anims (e.g. 9000-9009) in fightfx.air; every char can spawn them.
- **Explod struct** (char.go) has everything needed: postype (PT_Left/Right/Front/Back/None - screen-lock),
  palfx/palfxdef (color, incl. tinting WHITE digits to any RGB via mul), pos/velocity (bob), scale, sprpriority,
  ontop, removetime, ownpal, animelem start (per-digit wave phase). postype ZSS words: front/back/left/right/none.
- **Explod ZSS syntax** (semicolon params, like lifebarAction): 
  `explod{ anim: F9000; id: 8090; postype: left; pos: x,y; scale: sx,sy; ownpal: 1; sprpriority: 100; ontop: 1;
   removetime: N; pausemovetime: 999999; supermovetime: 999999; }`. (The explod compiler METHOD wasn't locatable
   in compiler.go - it's dispatched as c.explod but defined elsewhere - so params above are the standard set;
   P081 proof validates them in-engine before the full build.)
- **Animation WITHOUT persistent-explod management**: re-spawn the digits every frame (combo>0) with short
  removetime (1-2) and compute palfx color + y-offset FROM THE GLOBAL FRAME TIME -> the fresh explods each frame
  carry the next color/position -> rainbow + bob animate, and the number stays dynamic. White digit sprites +
  per-frame palfx mul = gold->red (count-based) or rainbow (time-based, time-indexed color list to avoid needing
  trig in ZSS). Per-digit phase via j*offset in the color index / y-offset.
- **P081 = PROOF step** (shipped): action.zss spawns a big spark (anim F0) above the comboing char when combo>0
  (postype p1, scale 3, ontop, removetime 2, re-spawn each frame). If it shows -> explod path works in-build ->
  build the digit counter. If it doesn't -> the explod ZSS syntax/positioning needs adjusting (cheap to fix) and
  we learned that BEFORE baking sprites + writing the full composer.
- Digit extraction in ZSS: ones = $ret % 10; tens = ($ret / 10) % 10; hundreds = $ret / 100 (integer math).

## P082 - CHANNEL DIAGNOSTIC + fight.def section map (the thing I never verified)
After 2 days of invisible results, the unverified assumption: that my edits to data/ files (fight.def, action.zss,
fight.sff) actually REACH the running build. The ONLY change ever confirmed visible was a Lua menu toggle in
external/mods/ (a different deploy path). So before any more counter work, TEST the data/ channel.
- fight.def has SEPARATE counter.scale lines in DIFFERENT sections (verified):
    [Powerbar] p1/p2.counter.scale   (power bar's counter)
    [Time]     counter.scale          (timer)
    [Combo]    team1/team2.counter.scale  <-- THE COMBO COUNTER (this is the right one to edit)
    [WinIcon]  p1/p2.counter.scale    (win icons)
  => The combo counter is [Combo] team1/team2.counter. Editing any other section's counter does NOTHING to the
     combo display. (Possible past-confusion source - always confirm the [Combo] section specifically.)
- P082 TEST shipped: set [Combo] team1/team2.counter.scale = 2.4 (was ~0.85) = unmissably HUGE. Pure fight.def,
  no sprites/Lua/explods. Also reverted the P081 explod block from action.zss (it may have been invalid ZSS
  silently breaking action.zss compile).
- INTERPRETATION when Raven combos:
    * counter is HUGE  -> data/fight.def edits DO reach the build. Channel works. Then the animated-counter
      problem is purely the MECHANISM (number is engine-static-color; needs explods/overlay), and the P081 explod
      not showing was a ZSS-syntax/compile issue (fixable) - NOT a channel issue.
    * counter NOT huge (but the "X HITS" counter still appears normal-size) -> my fight.def is NOT the one the
      build renders -> deployment/sync path problem (THE 2-day root cause). Fix WHERE data/ files must go.
    * no combo counter at all -> the [Combo] section / lifebar isn't active for this match type -> investigate
      which lifebar layout the build uses.

## P083 - BREAKTHROUGH (data/ channel CONFIRMED) + explod ZSS params verified
*** CONFIRMED: editing data/fight.def DOES reach Raven's build *** (P082 huge [Combo] counter showed up).
So the 2-day "nothing" was NEVER a deploy problem on data/ files - it was the MECHANISM. Specifically:
- Lua mods (external/mods/) load but CANNOT draw in-match (dead).
- fight.def [Combo] counter NUMBER is engine-drawn STATIC color (can't animate the number directly).
- => animated NUMBER must come from EXPLODS (action.zss, same data/ channel that's now CONFIRMED to deploy).
- action.zss applies too (same data/ folder); the P081 explod likely broke action.zss COMPILE because it used
  `ontop` (struct comments it "Legacy compatibility" - the ZSS parser may reject it), silently killing the popup
  + the explod while fight.def kept working. LESSON: use ONLY struct-confirmed explod params.

### Explod ZSS params (VERIFIED from char.go Explod struct + compiler.go helpers)
Safe param set: `anim` (F<n> = fightfx via getDataPrefix 'f' prefix; verified), `id`, `pos: x,y`, `postype`
(front/back/left/right/none/p1/p2 - paramPostype), `space: screen|stage` (**screen = HUD-locked**, the thing
P081 lacked), `scale: x,y`, `sprpriority`, `layerno`, `ownpal`, `removetime`, `bindtime`, `vel`, `accel`,
`facing`, `palfx.*` (add/mul/sinadd for color). AVOID `ontop` (legacy, may break compile - use sprpriority high).
ZSS syntax = `explod{ param: value; param: value, value; }` (semicolons, like lifebarAction).
- Digit sprites go in data/fightfx.sff + anims in fightfx.air (anim 9000+ free), referenced `anim: F9000` etc.
- HUD position: `space: screen` + `postype: left/right` + pos in screen coords (tune to sit under the counter).
- Animation w/o persistent management: re-spawn each frame (combo>0) with short removetime + compute palfx
  color + y-offset from global time -> rainbow + bob animate, number stays dynamic. White digits + palfx.mul tint.

### P083 TEST shipped (action.zss)
Minimal explod (anim F0 spark, postype p1, pos 0,-100, scale 6, removetime 2, ownpal 1, sprpriority 100) - NO
ontop. Fires on the comboing char when combo>0. If sparks appear -> explods work from action.zss -> next: bake
0-9 digits into fightfx + spawn them screen-locked under the counter with per-frame palfx (the real counter).
If NO sparks -> action.zss isn't compiling/applying (investigate, since fight.def does apply).

## P084 - THE COMBO SOURCE (explains the flicker + watch-mode caveats)
Raven's test: P083 spark appeared ONLY when he was PLAYING (training/arcade), never in watch mode (CPU v CPU),
and was a 1-frame FLICKER. Root cause = wrong combo source.
- `IkSys_ComboCount()` (functions.zss [Function]) is NOT a live count. It watches the `comboCount` trigger and
  returns the PEAK value on the SINGLE frame the combo ENDS (`comboCount < curr && curr >= 2` -> flag gameTime).
  That's by design for the ULTIMA popup (fire once at combo end). Used for a persistent counter it gives a
  1-frame flicker at combo end -> exactly what Raven saw.
- The LIVE source is the built-in trigger **`comboCount`** itself. Per char.go `func (c *Char) comboCount()` it
  returns `sys.lifebar.co[c.teamside].combo` = the SAME live per-team value the DEFAULT counter draws, which is
  incremented in char.go for ALL hits (human AND CPU). So `comboCount` persists through the combo and works in
  watch mode. (`comboCount` is valid ZSS - functions.zss uses it directly.)
- FIX (P084): drive the counter explod off `if comboCount > 0 { explod{...} }` (re-spawned each frame =
  persists), SEPARATE from the popup which keeps using IkSys_ComboCount() (end-of-combo). Keep these two combo
  reads distinct: live `comboCount` for the counter, `IkSys_ComboCount()` for the one-shot popup.
- LESSON for future-me: "combo count" has TWO meanings in this build - the live per-frame trigger `comboCount`
  (for anything persistent / per-frame, CPU-inclusive) vs the IkSys_ComboCount() end-of-combo one-shot (for
  popups). Map the need to the right one. This is the same loose-terminology trap as the meter families.

## P085 - REAL DIGIT COUNTER built (explods + baked fightfx digits)
Foundation confirmed (P084: sparks render, persist, CPU-inclusive via live `comboCount`). Built the actual number:
- **fightfx.sff is SFFv1** (PCX, individual palettes) - NOT SFFv2 like the lifebar's fight.sff. Wrote a v1 packer:
  digits baked as 8-bit PCX (idx0 = transparent, idx1 = white), appended at group 9000 img 0-9, palflag 0 (own
  palette), center axis. The last existing sprite's `next` already pointed to EOF (where we append) so the chain
  continues naturally; bump nimages+10, ngroups+1. Verified: PCX roundtrips via PIL, 114 sprites, group 9000 = 0-9.
- **fightfx.air**: added anims 9000-9009, each `9000,<d>, 0,0, -1` (static digit forever). Explod refs them `F<n>`.
- **action.zss** (StateDef -4, playerNo=teamSide): `if comboCount > 1 { ones=comboCount%10; <10 explod cases>;
  if comboCount>=10 { tens=(comboCount/10)%10; <10 explod cases> } }`. Explod anim must be a LITERAL (F9000..F9009)
  so digit selection is an if/else ladder (10 cases per place); POSITION can be an expression. ids 8101 (ones)/
  8102 (tens), postype p1, scale 2, removetime 2 (re-spawn each frame = persists), ownpal 1, sprpriority 100.
  Gate `> 1` (1-hit taps aren't combos). Up to 99 (ones+tens); add hundreds the same way if ever needed.
- This renders the NUMBER above the comboing char (postype p1 = proven visible), white, for CPU + human.

### Still TODO (in order)
1. HUD POSITION: move from postype p1 (on char) to under the DEFAULT counter. Use `space: screen` + postype
   left/right + pos; the screen-coord<->lifebar-coord mapping needs tuning in-engine (default counter is
   fight.def [Combo] team1.pos=130,224 / team2.pos=1150,224 in lifebar localcoord 1280x720). scale/spacing
   (currently scale 2, DW 34) also tune.
2. COLOR: gold->red over hits 1-34, then rainbow at 35+. Either explod palfx.mul per-frame (compute color from
   comboCount / gametime; verify explod palfx ZSS syntax) tinting the WHITE digits, OR bake colored/rainbow digit
   sets and switch anim by tier.
3. BOB at 35+: vary explod pos.y per frame (from gametime).
4. DEFERRED (Raven, not priority): both P1 and P2 showing a counter simultaneously (separate ids per team already;
   verify positions don't collide); timestop (jotaro/dio/shadowdio) freeze-then-ring-up effect.

## P086 - COLOR added (gold->red + rainbow) via per-frame explod palfx
Verified from bytecode.go: the explod controller EMBEDS the palFX params (explod param enum starts at
`iota + palFX_last + afterImage_last + 1`), so explods accept `palfx.add/mul/color/hue/sinadd/sinmul/...`. Since
we RE-SPAWN the digits every frame, recomputing the palfx each frame = animation, no persistent-explod mgmt.
- Color (white digits tinted via `palfx.mul: R,G,B`, 0-256 where 256=full):
  - hits 1-34: gold->red gradient = `mul: 256, 215*(34-comboCount)/33, 0` (green 215->0).
  - hits 35+: 6-color rainbow cycle. `ph = (gameTime / (4 + (99-min(99,combo))/12)) % 6` (speed scales up toward
    99), then R/G/B = `256 * ((ph=..)||(ph=..)||(ph=..))`. ph0 red,1 yellow,2 green,3 cyan,4 blue,5 magenta.
- Stored color in map() vars (set in if/else, reassignable, per-char so team1/team2 independent), used in all digit
  explods. `facing: 1` added to reduce sprite mirroring.
- ZSS features used are all confirmed present in functions.zss: map() / := / if-else / || / % / min / gameTime.
- Engine refs: palFX_* constants bytecode.go ~5900; explod_* params 6083-6132; postype words p1/p2/front/back/
  left/right/none; explod `space` (screen/stage); PT_None+screen sets offset[0]=-(gameWidth/localscl/2).

### Remaining (next, in order)
1. DETACH to HUD under the default counter (space:screen + postype + pos) - ALSO fixes the flip (postype p1 is
   char-relative/mirrors) AND the tag-team issue (counter currently tied to P1/P2's body; benched = off-screen).
   Needs in-engine coordinate tuning. Default counter at fight.def [Combo] team1.pos=130,224 / team2.pos=1150,224.
2. BOB at 35+ (pos.y oscillation; postype p1 made this trivial but defer with the detach).
3. Per-digit rainbow WAVE (currently whole-number; add per-digit hue/phase offset for a traveling wave).
4. "HITS" labels per side. 5. Verify both P1+P2 counters show simultaneously once detached. 6. timestop ring-up.

## P088 - DETACHED to HUD (screen-anchored) + smaller. Engine coords figured out.
- Was `postype: p1` (char-relative) -> slid off-stage on tag-out, flipped with facing. Now `space: screen; postype:
  none` = fixed HUD position, independent of the character (tag-out/flip fixed; benched P1 still spawns it since it
  still runs StateDef -4, and comboCount is the team's count so a tagged-in char continues the combo).
- COORD MATH (verified char.go setPos ~1762, explod e.localscl = c.localscl = 1 for 240-height chars):
  space:screen + PT_None -> origin at left edge, offset[0] = -gameWidth/localscl/2. Net: pos.x = fraction*gameWidth,
  pos.y measured from screen CENTER (offset[1] unset). `gameWidth` is a ZSS trigger (OC_gamewidth) - aspect-robust.
  So: team1 bx = gameWidth/10 (~10% from left), team2 bx = gameWidth*9/10. by = -46 (~31% from top). scale 0.5
  (was 2 = "massive"). DW 11. ALL of bx fractions / by / scale / DW are TUNABLE - first estimate, refine in-engine.
- Explods are visual-only (no hitbox/state) -> AI cannot perceive or interact. No special handling needed.
- DEFERRED (next): RGB is currently a STROBE (all digits one cycling color). Want a per-digit WAVE like the ULTIMA
  popup (offset each digit's hue/phase) + a vertical BOUNCE, both SPEEDING UP as combo rises (max ~99). Plus the
  timestop freeze-then-ring-up (Raven said defer). 
