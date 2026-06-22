# ultimabrawlers - CHANGELOG part 2 (P104+)
_Continues `CHANGELOG.md`. New entries go HERE from now on._

## P104 - round timer slowness: engine investigation (no code change; config/Deck fix)
- SYMPTOM: displayed clock counts ~2.5x too slow -> rounds ~2.5x too long. Raven's old "refresh rate" guess was essentially correct.
- MECHANISM (engine source system.go + lifebar.go):
  - Displayed time = ceil(sys.time / framespercount). LIVE fight.def [Time] framespercount = 60 (CORRECT, 1 count/60 ticks). NOT the cause.
  - sys.time-- runs in s.action() (L1051), gated only by intro/timerfreeze/super-pause/pause = ONCE PER COMPLETED MAIN-LOOP FRAME, and is NOT scaled by turbo/gameSpeed.
  - Loop (L2055+): s.action() each iteration; addFrameTime(s.turbo) advances tickCountF; update()->await(FPS=60) paces the loop (time.Sleep + frameSkip when behind; with VSync, SwapBuffers blocks on vblank).
  - turbo = gameSpeed*accel scales CHARACTER logic (tickFrame-gated) but NOT sys.time-- (per-frame). So GameSpeed is NOT the clock fix (it speeds fighters, not the clock).
- CONCLUSION: the clock loses exactly 1 count per FINISHED game frame -> clock-rate == achieved loop FPS. ~2.5x slow => the loop is running ~24fps. frameSkip is meant to keep logic at 60 by dropping renders; a slow clock means it is NOT compensating -> classic Steam-Deck VSync/compositor cap.
- FIX LEVERS (edit config.ini LINES only, do NOT replace the file = keybinds): VSync 1 -> 0 (stop SwapBuffers blocking on vblank so await's own 60fps pacing + frameSkip hold the loop at true 60); confirm Framerate = 60; set Deck display to 60Hz with no per-game FPS cap (Gamescope). Repo config = GameSpeed 0 / Framerate 60 / VSync 1 -> VSync is the suspect; live Deck config may differ.
- BAND-AID (NOT recommended; does not fix the slow-mo): lower fight.def framespercount so the clock counts faster.
- DIAGNOSTIC asked: is the WHOLE game choppy/slow or ONLY the clock? Per source it should be whole-game low-fps; a Deck FPS overlay reading ~24fps is the smoking gun.
- New card: cards/round-timer.md.

## P105 - char-select TWINKLING stars + old big stars removed (data/ikemen1/system.sff, system.def)
- Char select uses sprite GROUP 101 (not 100) -> P101/P103 (group 100 = Title) never touched it, so the old pixel stars persisted. [SelectBGdef]: sky 101,0; Clouds Top 101,2 (slow -0.1, back); Clouds Bottom 101,3 (fast -0.7, front).
- "Old ugly big one" = two big lavender 5-point star OUTLINES baked into select sky 101,0 (+ small lavender crosses). Removed surgically: per-row gradient-median fill of star pixels, keeping gold deco lines + halftone (gold excluded from removal). Gradient + deco intact; a couple of tiny gold sparkles remain (read as deco).
- NEW stars: 101,2 = detailed STATIC back starfield (dense/small/faint). 101,3 = detailed FRONT starfield, now TWINKLING via a 4-frame anim. Same look as P103 (clean glowing points + thin tapered diffraction rays + color hero stars w/ rings/halos).
- TWINKLE math: ~32% of front stars flagged twinkle, each a random phase; per-frame brightness mult = 0.30 + 0.80*(0.5 + 0.5*sin(phase + k*pi/2)) (range 0.30..1.10), non-twinkle = 1.0. 4 frames = one sine period -> smooth shimmer. Frames = 101,3 + NEW 101,30 / 101,31 / 101,32.
- SFFv2 surgery on the LIVE P103 sff: append-swap 101,0/101,2/101,3 + ADD 3 new sprites (clone the 101,3 node, set Number, point at appended PNG) -> NumberOfSprites 294 -> 297. Node table RELOCATED to EOF; header FirstSpriteHeaderOffset(@0x24) + NumberOfSprites(@0x28) updated; old table = dead space; lofs unchanged so existing offsets stay valid. VERIFIED: all 297 decode; the 23 non-PNG (fmt 1/4) nodes byte-identical to original; 6 targets PNG32 at correct dims.
- system.def: [SelectBG Background Clouds Bottom] type=normal -> anim, spriteno 101,3 -> actionno 250; added [Begin Action 250] (LoopStart; 101,3 / 30 / 31 / 32 @ 8 ticks each). Clouds Top (101,2) left type=normal (static back). actionno 250 was unused (190 is the P2 Team cursor -> avoided).
- TUNE: twinkle depth 0.30..1.10; 4 frames @ 8 ticks (~0.53s/cycle). Title screen (100,3) NOT twinkled (char-select only, per request); can mirror later if asked.


## P106 - combo counter: residual stage-zoom DRIFT fixed (action.zss)
- Counter explods are space:screen, postype:none, ontop:1 (NOT postype p1 - earlier notes were wrong; verified in live action.zss).
- Engine: ontop -> topSprites; system.go draws topSprites with scale = (cam.Scale/cam.BaseScale())*cam.BaseScale() = cam.Scale (BaseScale cancels). camerazoom (bytecode OC_camerazoom L1207) = sys.cam.Scale. So rendered SIZE = explodscale*cam.Scale; P100's scale/camerazoom cancels it -> size already constant (that is why MOST zoom was killed).
- RESIDUAL = POSITION: screen-space explods render at pos*cam.Scale from the TOP-LEFT origin (char.go epos = (pos+offset+off)*localscl, then the screen-space draw applies cam.Scale; the in-zss note 'pos(0,0)=top-left' confirms the origin). P100 never divided POS by zoom -> on a hard-zoom stage the counter drifts a smidge, proportional to its distance from the top-left corner * (cam.Scale-1). Universal, but only visible on a strong-zoom stage.
- FIX: let cz = camerazoom; divide every explod pos x AND y by $cz (mirrors the scale comp). On-screen pos = (base/cz)*cam.Scale = base -> fixed. cam.Scale never 0 -> safe. Digit gaps (-8/-16) and bob also /cz -> spacing stays constant.
- FIREWALL: this is the lifebar/EXPLOD path (action.zss + character SFF), NOT the motif. The /camerazoom trick is specific to screen-space explods rendered through the camera; do not carry it into motif system.def work.

## P107 - char-select stars: front layer scrapped, crisp PIXEL back layer, VARIED twinkle (system.sff, system.def)
- Per Raven: P105 stars too soft ('144p'), only some twinkled, and the FRONT (fast 101,3) big-star layer scrolled off-screen for good and read worse than the slow back layer.
- SCRAPPED the front layer: [SelectBG Background Clouds Bottom] (101,3) commented out in system.def; sprite 101,3 left in the sff but unreferenced.
- KEPT + upgraded the slow back layer (101,2): now type=anim actionno 250 (was static normal). It is the 'small slowly-moving' layer Raven prefers.
- CRISP PIXEL art (no AA): rendered on a coarse 853x261 grid (853*3 = 2559 exactly -> seamless horizontal tile), hard-edged dot/plus/spark shapes, limited palette, NEAREST upscale x3 to 2559x782. Replaces the gaussian float-AA look that read as blurry.
- VARIED twinkle: each star gets a type - static(26%) / blink(on-off) / grow(dot->plus->spark) / shimmer(bright<->dim) - with a random 4-frame phase, so they twinkle differently and most participate. 4 frames = 101,2 + reused 101,30/31/32 (overwritten, 2467x960 -> 2559x782). [Begin Action 250] cycles them @ 8 ticks.
- SFFv2: pure OVERWRITE of 4 existing sprites (append-swap: append [4-byte len][PNG], patch node offset/len/dims, fmt 12 / cd 32, flags bit0=0). NumberOfSprites stays 297. All 297 decode-verified; non-PNG untouched.
- Title screen (GROUP 100) untouched. FIREWALL: char-select = GROUP 101, title = GROUP 100 (separate sprites + separate [*BGdef] layers); a group-100 edit never touches char-select and vice-versa.


## P108 - combo HITS label showed a DIGIT at ultima combo (fightfx.air, action.zss)
- At 35+ the HITS label anim = 9300+phO, which COLLIDES with rainbow-digit anims (9200+digit*12+phase: digit8=9296-9307, digit9=9308-9319). fightfx.air had a DUPLICATE [Begin Action 9300..9311] (the real HITS sprites 9300,0-11) AFTER the digit defs; the digit def wins, so the HITS label borrowed digit 8/9 frames. Player vs cpu showed 9 vs 8 only because their combo count -> phO landed on a different digit.
- FIX: renumbered the HITS rainbow anim block 9300-9311 -> 9400-9411 (sprites 9300,0-11 unchanged); action.zss animHits = 9400 + phO. Ranges now disjoint: digits 9200-9319, HITS-low 9100, HITS-rainbow 9400-9411.

## P109 - main-menu (title) stars: crisp pixel + varied twinkle (system.sff, system.def)
- [TitleBGdef] mirrors char-select: sky 100,0, slow back 100,2, fast front 100,3. Applied the P107 treatment to GROUP 100.
- Stripped the big baked star outlines from title sky 100,0 (per-row gradient-median fill; gold deco kept).
- 100,2 = crisp pixel starfield (hard-edged, coarse 853x261 grid * NEAREST x3 = 2559x782 seamless) + VARIED twinkle (static/blink/grow/shimmer), type=anim actionno 251. 100,3 (front) SCRAPPED. [Begin Action 251] = 100,2/30/31/32 @ 8 ticks.
- SFFv2: swap 100,0 + 100,2 + ADD 100,30/31/32 (clone node, relocate node table to EOF, NumberOfSprites 297->300). All 300 decode-verified.

## P110 - combo counter residual zoom: ROOT CAUSE confirmed, NOT script-fixable (investigation, no ship)
- After P100 (scale/camerazoom) + P106 (pos/camerazoom) the counter is CORRECT AT REST but still grows+drifts during ACTIVE dynamic zoom on stages using the Zoom-controller-with-lag (e.g. Barricaded Station), snapping back to neutral.
- ENGINE (system.go ~2079-2108): when enableZoomtime>0, the sprite passes (incl topSprites = our ontop counter) are drawn s.draw(dx,dy,dscl) with dscl = LAGGED s.drawScale/BaseScale (drawScale smoothed toward zoomScale*scl via s.zoomlag, L2085) and dx includes LAGGED s.zoomPosXLag. So render scale/pos use drawScale (lagged), NOT cam.Scale.
- camerazoom (OC_camerazoom) = sys.cam.Scale (TARGET). drawScale / zoomScale / zoomlag / zoomPosXLag are NOT exposed as triggers -> the lagged render-zoom can't be read or cancelled from action.zss. At rest drawScale==cam.Scale (neutral, correct); the transient lag is the residual.
- CONCLUSION: not fixable from the counter script without an engine drawScale trigger. Options: accept the transient / edit the stage zoom (Raven declined) / engine patch. Did NOT ship a guessed smoothing (would match only one stage's zoomlag).
