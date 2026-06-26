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

## P111 - round/FIGHT/win announcements: ANALYSIS (no ship)
- Subsystem = data/fight.def [Round] + data/fight.sff (SFFv2 PNG32), distinct from motif + combo-counter. Mapped anims->sprites, decoded all 45 announcement sprites (groups 500-551).
- ROUND 1/2/3 = TEXT today (font 9, anims commented); FIGHT/KO/TO/DKO = sprites (510/511/520, 525-533, 540); WIN banner = sprite 530 + underline 551 + winner NAME text (this is the "YOU WIN/LOSE" Raven means, NOT the motif [Win Screen] victory w/ per-char quotes).
- New card: cards/round-announcements.md. Built a gold/purple style mock (ROUND ONE / FIGHT! / YOU WIN!). Remake pending style OK.

## P112 - announcement remake: FIGHT geometry confirmed + PIXEL style options (no ship)
- FIGHT! = 2x2 chunk grid (510 red/511 white), split (462,156), axes 0=(470,155)/1=(0,155)/2=(470,-1)/3=(0,-1); remake = render full word, slice, reuse axes. PERFECT!! (527,4f)=perfect-KO flash.
- Style corrected to PIXEL ART (Raven rejected AA bold): 1-bit pixel font + NEAREST upscale + discrete gold bands + pixel purple outline. Fetched PressStart2P/Jersey10/Silkscreen; built letterform comparison. Awaiting font pick.

## P112b - font picked: JERSEY10. Full-set preview rendered (gold/purple pixel; FIGHT! red variant).
- Texts to build: ROUND ONE/TWO/THREE, FINAL ROUND, FIGHT! (4-chunk red 510 + white 511), K.O., DOUBLE K.O., TIME OVER, DRAW, PERFECT!! (4f flash 527), YOU WIN!, YOU LOSE!.
- Renderer: Jersey10 1-bit -> NEAREST upscale -> 5 gold bands + pixel purple outline (in 120,72,180 / out 48,26,70) + shadow 24,12,38 + top highlight. Build pending Raven OK.

## P113 - announcement remake SHIPPED (data/fight.def, data/fight.sff) [Jersey10 gold/purple pixel]
- fight.sff 158->169 sprites (all decode; no linked sprites). OVERWROTE: FIGHT 510(deep purple)/511(bright) 4-chunk (exact dims/axes, sliced full word at 462,156); PERFECT 527,0-3 (4-frame flash). ADDED: round words 560,0-3 (ROUND ONE/TWO/THREE/FINAL ROUND), YOU WIN! shimmer 530,10-15, YOU LOSE... desat 530,20. Node table relocated; link field of originals left untouched.
- Outline FIX: replaced np.roll (which WRAPPED -> stray lines over Y/U + box around periods) with non-wrapping shift + padding; drop shadow = simple mask offset (not dilated) so dots arent boxed.
- fight.def: round1/2/3.anim=560/561/562 + round.final.anim=563 (was text "R %i") + [Begin Action 560-563] + round2/3.offset. WIN anims 580/581 rewritten = slide-in then LoopStart shimmer 530,10-15.
- YOU LOSE...: sprite built (530,20) but NOT wired - this fight.def [Round] has NO loser hook (winner-only p*.win). Needs a hook/clarification before wiring.
- PENDING next: K.O./DOUBLE K.O./TIME OVER/DRAW (multi-chunk/variant groups 520-526) in same style.

## P114 - announcements polish (data/fight.def, data/fight.sff)
- FIGHT! outline -> textured GOLD (3px gold-banded gradient via dil(m,3), matches our gold fills) instead of flat gold. Purple outlines on all words SATURATED: in (120,72,180)->(150,55,220), out ->(64,28,100) (vibrance bump toward combo HITS purple; fightfx.sff is SFFv1 so HITS not auto-sampled - tune later if needed).
- Re-injected via pure OVERWRITE (169 sprites, all decode, no relocation): FIGHT 510/511, PERFECT 527, WIN 530,10-15, LOSE 530,20, ROUND 560.
- ANIMATIONS: WIN 580/581 = slide-in + 3x shimmer cycle + slide-out + blank (no LoopStart so it can exit; fits win.displaytime=180). LOSE wired to ai.lose.anim=582 (the OLD loss-prompt hook, found at fight.def ~3172) -> 530,20 slide-in/hold/slide-out (ai.lose.displaytime=170). Names bar 586 (sprite 551 underline, shared by p*.win.bg0 + win2 tag) = slide-in/hold/slide-out.
- KEY: loss prompt hook = [Round] ai.lose.anim / ai.lose2.anim (NOT a p*.lose key). win2/ai.win2 = tag-mode (names "%s and %s").
- PENDING: K.O./DOUBLE K.O./TIME OVER/DRAW.

## P115 - CRASH FIX: FightScreenWinIcon.clear nil at fight start (data/fight.def, data/fight.sff)
- CAUSE 1 (the crash): my P114 regex rewrite of [Begin Action 582] ATE the first frame of the ADJACENT [Begin Action 583] (old YOU-LOSE slide), leaving it starting with a bare "Interpolate Offset" (no preceding frame) = malformed AIR. Engine fails parsing the lifebar anim table -> whole lifebar nil -> FightScreenWinIcon nil -> clear() nil-deref at fight launch (also fires from menu demo/attract mode). FIX: gave 583 a valid first frame (now uses our 530,20 lose). LESSON: never regex-replace an [Begin Action] block with a lookahead that can run into a neighbor; replace exact known text or bound to the blank line.
- CAUSE 2 (silent): P114 fight.sff write was BUGGED - patched the node COPIES list but wrote the original bytearray d whose embedded node table was never re-appended, so P114 styling never applied + left orphan PNG data past the node table. FIX: rebuilt fight.sff CLEAN from the known-good base (/tmp/fight.sff = repo data/fight.sff) re-applying all P113+P114 sprite work; file now ENDS with the relocated node table (no orphan). LESSON: after patching nodes, the node table must be re-written (append the nodes list), and verify file ends_with_table.
- Result: 169 sprites all decode; 583 valid; styling (textured gold FIGHT outline + saturated purple) now live.

## P116 - REAL crash fix: my P114 regex ate the [WinIcon] section (data/fight.def)
- TRUE CAUSE of FightScreenWinIcon.clear nil (fightscreen.go:2169): clear() is just {wi.wins=nil}, so wi (fs.winIcons[0]/[1]) was NIL = the [WinIcon] section was never parsed. fightscreen.go readFightScreenWinIcon (case "winicon", ~5164) reads [WinIcon] from FIGHT.DEF using fight.sff + the anim table -> confirmed this IS the fight.def/fight.sff subsystem, NOT motif.
- My P114 [Begin Action 586] regex replacement used .*? up to the NEXT [Begin Action] (4120), which CONSUMED the entire [WinIcon] section (repo lines 3667-3968, ~300 lines, sits between anim 586 and 4120). Section gone -> fs.winIcons nil -> crash at EVERY fight start (incl menu attract-mode demo). P115 583-fix was a real-but-secondary bug; the WinIcon loss was the crash.
- FIX: restored [WinIcon] verbatim from the repo base (p1/p2.pos, bg0.spr 120, win-type icons 100-111, counter font, useiconupto=4); all its sprites confirmed present in the rebuilt fight.sff.
- HARD LESSON (future me): NEVER regex-replace a .def [Begin Action]/section block with an open-ended .*? up to the next block - it silently eats any config SECTION ([WinIcon], etc.) in between. Replace EXACT known text only, and ALWAYS re-grep every major section (parity vs repo) after editing fight.def.

## P117 - announcements: finer FIGHT/ROUND (Jersey15) + K.O. red unified (data/fight.def, data/fight.sff)
- Raven: FIGHT/ROUND pixels too MASSIVE/blocky (theyre displayed large, so Jersey10s coarse 10px grid = huge blocks). FIX: re-rendered FIGHT + ROUND with JERSEY 15 (same letterform family, higher-res grid -> finer pixels at the same display size). WIN/PERFECT/KO stay Jersey10 (looked fine, displayed smaller). Overwrote 510,0-3/511,0-3 (FIGHT slices, kept dims+axes) + 560,0-3 (ROUND, center axis). If still too blocky, go Jersey20/25.
- K.O.: unified "K.O.!" RED impact fill + DARK-RED outline (in 150,28,32 / out 74,12,16), Jersey10. Overwrote sprite 522,0 (full word, center axis). fight.def: KO.bg3.offset 430,400->640,400 (center the word), KO.bg2.anim 531->529 (disable the old separate "O." piece 522,1). The Begin Action 530 scale-in/fade is preserved -> the whole word scales/fades in. 520/521 (red/black K./O. variants) and 522,1 now unused.
- SFF OVERWRITE METHOD (correct): patch the node table IN PLACE in bytearray d (struct.pack_into into d[first+idx*28..]) + append PNG data + write d. NOT the P114 bug (patched copies, lost). 169 sprites all decode.
- fight.def edits = EXACT-LINE regex on the specific KO.bg3.offset / KO.bg2.anim lines (value was "430, 400" w/ space). NEVER open-ended .*? block regex (that ate [WinIcon] in P114).

## P118 - REVERT gunked fonts + powerbar to working repo state (keep shimmer)
- Raven's live fight.def = P115+P116. Both broke things; reverted to repo (the working baseline), keeping ONLY the good visual fix (YOU WIN shimmer, anims 580/581).
- (1) GUNKED TEXT (names + score + "CPU-%s" above bar): P115 set them to font 6,7 (Arcade.def = the NUMBER/combo font, no proper letter glyphs) -> names/CPU text rendered garbled. Reverted all 42 to font 8,0 (Pixel.def, full charset, silver) = repo working version. LESSON: Arcade.def (font6) is numeric/combo only; player NAMES + any "CPU-" text need a full-charset font (Pixel.def font8). A gold-text aesthetic would need a gold FULL-charset font, not Arcade.
- (2) POWERBAR reset to glitched spot: P116 moved p1/p2.pos y 901->675. Raven's tuned working position is y=901 ("sits at screen bottom on 4:3"). Reverted both to 901. (P116's resolution-independence reason is now handled by P117 hiding the render-resolution option instead.)
- KEPT: YOU WIN shimmer (530,10-15 cycle in anims 580/581) - verified intact (54 frame refs). Final fixed fight.def == repo EXCEPT the shimmer (confirmed via diff: zero non-shimmer diffs).
- system.def + system.sff: NOT touched - the 3 reported issues are all fight.def; the menu visual fixes (stars, team arrow/icons, P2 purple) are wanted and intact.

## P119 - echo-fighter / character variant slots (docs/cards/echo-fighters.md) [DESIGN/NATIVE]
- Investigated select-screen variant system. RESULT: it's a NATIVE Ikemen GO feature - select.def `slot = { }` block. ZERO Lua, ZERO engine risk, data-only.
- Mechanism (verified in source): main.lua ~1336-1351 parses `slot = {`...`}` -> main.t_selGrid[cell]={chars={...},slot=1}; start.lua f_slotSelected ~1432-1470 cycles slot on next/previous/select cmds (MUGEN CMD syntax, skips hidden>=2); f_selGrid(cell) renders the CURRENT variant's own icon/portrait/sprites automatically. Single-char slot = normal cell (non-breaking).
- Syntax: replace the roster line with
    slot = {
    cvsryu, SuzakuCastleWW.def, previous = y, next = x
    SF3Ryu, SuzakuCastleWW.def, previous = y, next = x
    }
  `slot = {` opens (own line), char lines = normal syntax + next/previous/select cmds, `}` closes (own line).
- CONSTRAINT: roster currently has only ONE Ryu (`cvsryu`, line 220); no SF3 Ryu def exists yet, so could not wire a real pair. Did NOT ship a modified select.def (would clobber Raven's live roster - repo lags). Shipped the card + exact paste-in snippet instead. To activate: add the SF3 Ryu folder, paste the slot block over the cvsryu line in the LIVE select.def, set the variant folder name + cycle buttons.
- P119 UPDATE: fully verified the mechanism in source. Ordering preserved (slot=1 cell, main.lua 1141-1148, csCell++ only on `}` ~1348). Cycle cmds auto-register via commandAdd (1147); grouping = chars sharing the SAME next/previous value cycle together. Per-variant icon/portrait automatic (f_selGrid). Still blocked on a 2nd Ryu def name + live select.def to wire without clobber.

## P119b - echo-fighter Ryu pair WIRED + shipped [data/select.def]
- Pulled latest repo select.def (Raven pushed; now current). Found real variant pairs: cvsryu<->sf3_ryu, cvsken<->sf3_ken, cvschunli<->sf3_chun-li, cvsgouki<->sf3_gouki.
- Wired the RYU pair only (surgical/testable): replaced the `cvsryu, SuzakuCastleWW.def` line with a slot block holding cvsryu + sf3_ryu (each keeps its own stage), identical `previous = /s+y, next = /s+x` on both lines (grouping rule). Commented out the standalone `sf3_ryu, mvc2-training.def` line (stripped at parse -> no duplicate cell).
- Cycle = HOLD START + X (next) / START + Y (previous). Chose start-combos because every plain attack button (a-z) CONFIRMS the char on the select screen (palette select), so a single button would select instead of cycle. Confirm with any normal button picks whichever variant is shown.
- Integrity: char-lines 68->68 (no char lost), cells 68->67 (one merge). Slot sits at cvsryu's grid position; everything else stays in file order; the SF3 cluster after the old sf3_ryu line shifts up one cell to fill the gap (expected - SF3 Ryu now lives in the merged slot). Ordering preserved.
- NOT done: ken/chunli/gouki pairs (same one-block edit each) - left untouched so Raven can test the Ryu cycle + new layout on ONE pair first. CAVEAT to test in-game: that START-hold doesn't collide with this build's start/team-menu behavior; cycle keys are trivially rebindable in the block if so.

## P120 - modern select controls: A=confirm, Y=swap (frees B/C/X/Y/Z) [external/mods/modern_select.lua + data/select.def]
- ROOT of "ABXY = colors": main.f_btnPalNo maps a/b/c/x/y/z -> palettes 1-6, so every face button confirms the char with that palette. That's why Y had to be a Start-combo.
- SHIPPED (safe + reversible):
  1. external/mods/modern_select.lua - overrides main.f_btnPalNo so ONLY 'a' confirms (pal 1, or 7 with Start). Frees B/C/X/Y/Z. Mods load AFTER core (main.lua ~3703) so the override reliably wins; delete the file to revert. Palettes still reachable via Start+A and the palette menu (paletteselect=3, d-pad).
  2. data/select.def - Ryu slot swap changed from `/s+y,/s+x` to `next = y`. With 2 variants, one Y press toggles cvsryu<->sf3_ryu. Y is safe now: f_btnPalNo no longer selects on Y, and done.key is the STAGE-select phase (start.lua 2691), not active during char pick.
- NOT shipped (need a tested pass - won't blind-ship into the select state machine / render loop):
  - B = deselect a mis-pick: this build's cancel (start.lua 2617) ONLY full-exits; there is NO per-char step-back. Adding it = surgery in f_selectMenu's state machine (t_selected/t_selTemp/t_cursor/selectState rollback). Real but must be tested.
  - On-screen ECHO indicator + "press Y to swap" prompt: new UI element - detect highlighted cell is a multi-char slot (#main.t_selGrid[cell].chars > 1) and render a motif sprite/text in the select loop. Needs a render hook + motif assets + testing.
- VERIFY in-game: A confirms; B/C/X/Y do nothing on the grid except Y swaps on the Ryu cell; palette menu still works.

## P121 - team-mode menu B=back [external/mods/teammenu_back.lua]
- Stock team-mode menu (Single/Simul/Turns/Tag) had no back button -> had to press Esc. Added a mod hooking start.f_teamMenu.input (start.lua ~2802): on B it sets start.escFlag (the same exit path Esc uses) + plays cancel snd + returns handled (skips default item logic that frame). Fires ONLY on the team menu, so char-select deselect (which already works after P120) is untouched. Auto-loads (main.lua ~3703); reversible by deleting the file.
- NOT done yet (honest scope):
  - Cross-team full undo (B during P2 picks unwinding back through P1's first choice): deeper - the select back-chain stops at the team boundary; needs f_selectMenu state work + testing. Deferred.
  - Team-menu PANEL / portrait restyle (jazzy persona/smash HUD): the 'slanted panels' = teammenu title/items drawn with font 2 (Pixel) + projection=perspective, yangle=52.5 (system.def ~600-628); teammenu.bg.spr is commented out. A real restyle = new sprite-based AA 'pixel' text + panel art in system.sff + recolor to Raven's palette. Needs his color/reference direction + asset work; can't guess the theme blind.

## P122 - select controls: tag-first + B cancels palette + (kept) B=back at team menu [external/mods/teammenu_back.lua]
- Consolidated into teammenu_back.lua (OVERWRITE the P121 file). Two hooks:
  (1) start.f_teamMenu.input: B = back out of team menu (Esc path) - kept from P121.
  (2) start.selectScreen.teamMenu (runs at select setup, per side, AFTER motif load):
     - TAG FIRST: moves the 'tag' item to slot 1 of the team menu so it's the default highlight (Raven would rather mis-pick Tag than Single). Reorders t_teamMenu in place (passed by ref).
     - PALETTE B=CANCEL: stock palmenu.done.key (system.def 722) = 'a,b,c,x,y,z' INCLUDES b, so pressing B during color-pick CONFIRMED the palette and advanced to the next pick (Raven's bug, esp. 2nd pick / P2). Override per side: done.key -> 'a, c, x, y, z' (b removed), cancel.key -> 'b, m' (b added). Now B during palette cancels back to the grid to re-pick the character - consistent for P1/P2 and 1st/2nd picks. palmenu.cancel sets selectState=0 (start.lua ~3203) = back to grid, char not committed.
- NOT done (need start.lua core surgery, no clean hook, must be tested):
  - B at char-select FIRST pick (0 chars selected) -> return to the TEAM MENU to re-pick the mode. The cancel handler (start.lua ~2617) sets escFlag (full exit) with no hook; making it reset teamEnd=false when teamEnd && 0 selected needs a careful core edit. Deferred.
  - Cross-team full undo (B on P2's 2nd pick unwinding back to P1's first) - Raven says only needed for watch/training, optional. Same back-chain area. Deferred.

## P123 - FIX P122 regression (broke color select + B) [external/mods/teammenu_back.lua + data/ikemen1/system.def]
- WHAT BROKE: P122 set motif .key values to raw strings from the mod (pm.done.key='a, c, x, y, z'). The engine PRE-PARSES .key at motif load, so a raw string is unusable -> palette confirm (A) and cancel both dead = "choosing a color does not work / stuck". Also B-back used getInput(t_cmd,'b'); t_cmd is a LIST of command buffers ({f_menuCmd(side)}) and getInput needs parsed keys, so it never fired.
- FIX:
  1. teammenu_back.lua: removed the palmenu key override entirely (restores working color select). B-back now iterates t_cmd and uses commandGetState(c,'b') - the same call f_btnPalNo uses for buttons. Tag-first reorder kept (touches no keys).
  2. data/ikemen1/system.def: palette B=cancel done at the SOURCE (re-parsed correctly): p1/p2.palmenu.done.key 'a,b,c,x,y,z'->'a,c,x,y,z' (B removed); cancel.key 'm'->'b, m' (B added). Now B during color-pick cancels back to the grid; A still confirms.
- system.def is repo-based (Raven's pushed copy). If newer unpushed live changes exist, apply the 4 palmenu line edits by hand instead of overwriting.
- LESSON: never assign raw strings to motif .key in a mod - they're parsed objects. Edit keys in system.def, or check buttons with commandGetState (not getInput) on each buffer in a t_cmd list.
- STILL OWED: on-screen echo-slot indicator + 'press Y to swap' prompt. Render hook exists (start.f_selectScreen ~2726). Deferred AGAIN only because I won't stack an untested render add onto a regression-fix turn; it's the dedicated next task.

## P124 - P2 active cursor recolored to purple [data/ikemen1/system.def + system.sff]
- system.def: shipped P123 again (palmenu B=cancel) - no new def change this turn beyond P123.
- system.sff (SFFv2, fmt12 PNG32; data block = [uint32 w*h*4][PNG], PNG at dofs+4 rel to ldataoff@0x34):
  - FINDING: the P2 team-menu icons (190/191/192) are ALREADY purple in the pushed repo (P115 took). The element that's off is the P2 ACTIVE CURSOR (anim 170 -> sprites 170,0-7, and 171,0 done-cursor): it was RED (avg 170,29,26), NOT cyan. If Raven saw cyan, his live build differed from the pushed repo; either way it's now purple.
  - Recolored 170,0-7 in place red->purple (new R*0.55, B=max(B,R) -> avg 93,29,170 violet), preserving AA/shading. Overwrote within each sprite's slot, updated node dlen, round-trip decode verified (all P2 sprites OK, filesize unchanged).
  - 171,0 (confirm-cursor frame) NOT recolored: recolored PNG is 14 bytes over its slot; would need append+repoint (risky) - left red for now. Minor (shown only on P2 confirm).
- STILL OWED (core select-state, no clean hook, untested = deferred deliberately after the P122 regression):
  - B on 2nd pick -> undo char 1 (step back to re-pick). Needs cancel handler (start.lua ~2616) to remove last t_selected + reset selEnd/selectState instead of escFlag.
  - B at first pick -> back to TEAM MENU (teamEnd=false) instead of exit.
  - These two are the same back-chain; both need cancel.key bound to b + a careful handler rewrite, tested.
  - On-screen echo prompt (render hook start.f_selectScreen ~2726).

## P125 - select back-chain (B = step back) + echo-slot prompt [external/script/start.lua + data/ikemen1/system.def + external/mods/echo_prompt.lua]
- BACK-CHAIN (start.lua cancel handler ~2616, rewritten; full file parses clean via luaparser):
  Esc still always exits. B (cancel.key, when NOT in the palette menu) now: (1) if this side has
  committed picks -> remove the last t_selected; because member = #t_selected + k (loop ~2569), the
  player auto-steps back to re-pick it; (2) else if teamEnd -> set teamEnd=false (gate ~2563 re-shows
  the team menu); (3) else -> exit. `break` after a step so co-op can't over-remove. selEnd reset +
  v.selectState=0 so the grid re-activates. Verified gates: not teamEnd->team menu, teamEnd&!selEnd->char select.
- system.def: added `cancel.key = b` under [Select Info] (was undefined -> engine default; now B is the back key). Also carries P123 palmenu keys.
- ECHO PROMPT (external/mods/echo_prompt.lua): hooks start.f_selectScreen (~2726). When any cursor is on a
  multi-char slot (#main.t_selGrid[cell+1].chars > 1) it shows "PRESS Y TO SWAP STYLE" via the unused
  'record' text element (bottom-centre, font3, offset 640,672). No "echo fighter" wording. Text/pos/font tunable.
- TEST: B mid-2nd-pick undoes char1; B at first pick returns to team menu; B with nothing exits; Esc still exits.
  The prompt appears only on the Ryu (slot) cell. If start.lua live differs from repo, reapply the ~2616 block.
- NOTE: shipped full start.lua (repo==live; I hadn't edited it before, so clobber-safe).

## P126 - FIX P125 back-chain crashes (state-table desync) [external/script/start.lua]
- Two crashes Raven hit with P125, same root cause: the step-back removed t_selected but left the
  partner state tables out of sync, so the engine later indexed a nil entry.
  - CRASH A (start.lua:3142 f_palMenu, "index nil with 'ref'"): t_selTemp is indexed by `member`.
    Removing t_selected shifted member but not t_selTemp -> picking teammate 2's colour read a nil
    hover entry (st.ref).
  - CRASH B (start.lua:3305 f_selectMenu, "index nil with 'selX'"): returning to the team menu only
    set teamEnd=false. Re-confirming the mode then APPENDED a second t_selCmd entry (the team-confirm
    inserts, never clears) -> duplicate controller commands -> bad member/player math -> nil cursor.
- FIX (cancel handler ~2616, re-parses clean - 3948 lines):
  - STEP-BACK: after `table.remove(t_selected)`, trim t_selTemp back to (#t_selected + #t_selCmd) so the
    hover index stays valid; also reset inPalMenu=false. (`while #t_selTemp > target do table.remove end`.)
  - TEAM-MENU RETURN: clear the whole per-side select set - t_selected, t_selTemp, t_cursor, t_selCmd
    all = {} + teamEnd=false + selEnd=false + inPalMenu=false. Re-confirming now rebuilds t_selCmd fresh.
- STALE PORTRAIT: not a separate fix. The engine already restores the cursor per member (t_cursor saved
  on commit ~3529, restored ~3306). Once t_selTemp is aligned, stepping back to a member snaps the cursor
  to that char and shows it. The "undone char still shown" was a symptom of the desynced/crashing state.
- TEST: repeatedly go in/out of char-select (was Crash A); back in/out then pick P1 teammate 2 (was Crash B);
  full B sequence: 2nd pick -> undo char1, first pick -> team menu, empty -> exit, Esc -> exit.
- system.def (cancel.key=b) and echo_prompt.lua UNCHANGED from P125 - no need to re-place them.

## P127 - P2 back-out stale draw + investigating cross-side colour [external/script/start.lua]
- FIX (confirmed mechanism): big portraits draw from live t_selTemp each frame (~2507) but cell art uses
  a CACHED staticDrawList rebuilt only when start.needUpdateDrawList=true (~2513). The back-chain cleared
  the side's tables but never raised that flag; P1 hid it because re-picking re-flags a redraw, but P2
  returns to the team menu and stops running the select loop -> stale slot stayed painted. Added
  start.needUpdateDrawList=true to BOTH back branches (step-back + team-menu return).
- OPEN (mode-dependent, NOT guessed): "P1 pick -> colour select on both sides". The only code that makes
  one side's pick drive the other is f_selectMenu ~3531: `if side==1 and main.cpuSide[2] and start.reset`
  copies P1 cursor -> P2 and sets p2.teamEnd=false (the P1-selects-P2-for-CPU path). It fires ONLY when P2
  is CPU. If Raven is hand-backing-out P2 then P2 is human (cpuSide[2] false) and this path is NOT the
  cause -> need to know exact match setup before touching it. Did not edit this branch.

## P128 - gate B back-chain to LOCAL PLAY (fixes Watch mode) [external/script/start.lua + external/mods/teammenu_back.lua]
- ROOT (Raven confirmed): the bug repro is CPU Watch mode = BOTH sides CPU. The B back-chain ran per side
  with no human check, so it fired on CPU-driven cursors -> stale P2 cursor + B on P2 team-mode wrongly
  exiting to the CPU Match menu. The back-chain is a local-play convenience only.
- GATE = `not main.cpuSide[side]` (true only for a human-controlled side; both sides are cpuSide in Watch):
  - start.lua: added to the B (cancel.key) condition in the select cancel handler (~2620). Esc stays
    OUTSIDE the gate -> still exits in every mode.
  - teammenu_back.lua: hook [1] (B = team-menu back) now `if main.cpuSide[side] then return false end` first.
- Coverage: Watch (both CPU) -> back-chain off, stock behaviour. Local 1P vs CPU -> on for P1, off for the
  CPU side. Local 2P -> on for both. Online -> human sides unchanged from before, so online is left alone.
- Tag-first reorder hook [2] left as-is (display only, harmless in Watch).
- TEST: Watch mode - B at either team menu / mid-select should NOT do the step-back/exit weirdness; Esc
  still exits. Local play - B back-chain unchanged from P126/P127.

## P129 - REVERT P128 gate (was wrong) + correct Watch fix: shared-controller defer [external/script/start.lua + external/mods/teammenu_back.lua]
- P128 WAS WRONG: it gated the back-chain on `not main.cpuSide[side]`. main.cpuSide means "AI during the
  MATCH", not during selection. In Watch the HUMAN drives the cursors (picks both teams), so P128 disabled
  the back-out in exactly the mode being used. Reverted both gates (start.lua B-condition + teammenu_back hook).
- ACTUAL ROOT: in Watch, start.f_menuCmd(2) returns 1 (start.lua ~1887) -> P2's menu input is controller 1,
  the SAME as P1. t_selCmd[side].cmd is built from f_menuCmd(side) (~3032), so BOTH sides' command buffer is
  controller 1. One B press is therefore seen by both sides' back-chain -> "affects both sides"; likewise P1
  input bleeding to P2. Separate-controller 2P does NOT do this (f_menuCmd(2)=2).
- FIX (start.lua, cancel handler ~2618): before handling B, compute deferB - if a higher-index side shares
  this controller (f_menuCmd equal) AND is still actively selecting ((not teamEnd) or not selEnd), defer; B
  is only consumed by the side currently in focus. So in Watch B steps back the side you're on (P2 first,
  then falls through to P1). Normal 2P/local unaffected (commands differ -> deferB stays false).
- teammenu_back.lua restored to the pre-P128 version (no cpuSide gate).
- STILL TO VERIFY (could not test here): if "P1 pick -> colour select on BOTH sides" persists, that is the
  engine running side 2's selection in PARALLEL under the shared controller (separate from the back-chain),
  and would need input-focus gating in f_selectMenu - flagged, not yet touched.

## P130 - FIX P129 regression: P1 couldn't back out after picking a mode [external/script/start.lua]
- P129's deferB was too broad. In Watch side 2 starts with selEnd=false (it gets selected later) even
  though its turn hasn't begun and its t_selCmd is still EMPTY (P2's team menu is skipped at reset, and
  the t_selCmd append lives inside f_teamMenu which isn't called until the cross-select flips p2.teamEnd
  after P1 finishes). deferB read selEnd[2]=false as "active" -> side 1 always deferred -> P1 could never
  back out.
- FIX: a shared-controller higher side only counts as "in focus" once it has actually STARTED: either it's
  at its own team menu (not teamEnd) OR it's in char-select with a non-empty t_selCmd
  (not selEnd and #t_selCmd>0). The empty-list waiting state no longer blocks the lower side.
- Net: P1 backs out normally again; once P2's turn actually begins in Watch, B then routes to P2 first.

## P131 - cross-side undo: P2 first-pick B steps back into P1's last char (shared controller) [external/script/start.lua]
- Bug: in Watch (one human picks both teams) B on P2's FIRST pick exited to the mode menu instead of
  handing focus back to P1 to re-pick P1's last character. Cause: with 0 P2 picks it fell into the
  team-return branch (-> P2 team menu -> teammenu_back exits).
- FIX: new branch in the cancel handler, gated on side==2 AND f_menuCmd(2)==f_menuCmd(1) (shared
  controller = Watch; local 2P has different controllers so this never fires) AND P1 has committed picks.
  It (a) returns P2 to its pre-start dormant state (clear its tables, teamEnd=true), (b) removes P1's last
  committed char + trims t_selTemp so P1 re-picks it (selEnd[1]=false, selectState reset), (c) sets
  start.reset=true so the engine's P1->P2 handoff re-fires when P1 finishes again. needUpdateDrawList=true.
- After this, deferB sees P2 dormant (empty t_selCmd) so B routes to P1 -> further B presses walk back
  through P1 naturally, then P1 team menu, then exit.
- GUARDRAIL: only the shared-controller P2-first-pick case is touched; the smooth paths (P1 back-out,
  P2 step-back from 2nd pick, local 2P) are unchanged. NEEDS TEST: confirm P2-first-pick B now lands on
  P1's 2nd char (re-pickable), the chain continues, and Watch P2 still resumes after re-finishing P1.

## P132 - REVERT P131 (flicker) + corrected Watch model from repo main.lua [external/script/start.lua]
- P131 cross-undo caused B on P2's first pick to flicker the char and not back out. Reverted; start.lua is
  back to the P130 state (smooth; P2 first-pick B goes to P2 team menu / exit rather than crossing to P1).
- CORRECTED MODEL (from repo external/script/main.lua, watch block ~2282): Watch sets cpuSide[1]=true and
  selectMenu[2]=true; teamMenu[1] AND teamMenu[2] all modes enabled. P2 selection is the engine's
  "P1 selects for the other team" handoff (f_selectMenu ~3578, gated on start.reset + cpuSide[2]), which
  fires on character COMMIT, not per frame. P131 reset P2 to dormant + set start.reset and fought that
  commit-time handoff -> snap-back/flicker.
- TODO (cross-undo, do it WITH the handoff): need to confirm at runtime whether Watch shows P2 its OWN team
  menu after P1, or jumps straight into P2 char-select via the handoff. That determines the correct reversal.

## P133 - echo/alt-style slot indicator, made to actually render [external/mods/echo_prompt.lua]
- Goal: on-screen cue when a cursor hovers a multi-fighter slot (select.def `slot = { }`, e.g. CvS Ryu +
  SF3 Ryu) telling the player to press Y to swap style.
- Why the P125 pass didn't show: it borrowed the 'record' text element, but the engine is NOT idle on
  that element - it writes f_getRecordText() into record every frame (start.lua ~2493) and draws it
  (~2771). The mod's text got overwritten.
- FIX: verified detection is correct (start.c[player].cell is 0-indexed; engine itself uses
  f_selGrid(cell+1) at ~2606; a slot cell has #t_selGrid[cell+1].chars > 1, built in main.lua ~1141-1143).
  The render hook "start.f_selectScreen" fires LAST (~2778, after the record draw), so the mod now:
  on-slot -> reset+set+draw the prompt (lands on top of the empty record draw); off-slot -> restore
  record to start.f_getRecordText() so the prompt never lingers. Self-contained, reversible (delete file).
- Position/font follow record in system.def (font3, 640,672, scale 0.6); PROMPT text is a top-of-file
  tunable. Visual is intentionally plain for now - can restyle once Raven gives a look.

## P134 - "Variants" (renamed from echo): wire SF3 + Dante, name the current variant [data/select.def + external/mods/variant_prompt.lua]
- TERMINOLOGY: feature renamed echo fighters -> Variants.
- select.def: wired SF3 cast into slot{} blocks with their CvS counterparts, same as Ryu -
  cvsken+sf3_ken, cvschunli+sf3_chun-li, cvsgouki+sf3_gouki (gouki = akuma), cvsalex+sf3_alex; and
  Dante(DMC3)+Dante_KOF. Each member carries next = y. Standalone SF3/KOF lines commented out (merged).
  sf3_ibuki left standalone (no CvS counterpart). 6 slot blocks total, brace-balanced.
- variant_prompt.lua (REPLACES echo_prompt.lua - delete the old file): bottom prompt now reads
  "Current Variant: <name>   (Press Y to swap)" using the hovered slot's CURRENT def name
  (start.f_getCharData(start.f_selGrid(cell+1).char_ref).name). Same safe record-element draw as before.
  Name source = each variant def's own .def `name`; to read "SF3 Ryu" set that as the name in that def.
- PENDING (need sprite assets, staged so system.sff is verified separately, not rushed here):
  (1) yellow corner triangle + "V" on every variant cell's icon; (2) the Y rendered as a yellow button
  icon in the prompt. Both require sprites (engine draw is sprite-only: animNew + f_animPosDraw; no rect/
  triangle primitive). Cell positions available via start.t_grid[row][col].x/.y.

## P135 - Variant marker sprite (gold triangle + italic purple V) on variant icons [data/ikemen1/variant_icon.sff + external/mods/variant_marker.lua]
- Art: 72x72 PNG32, gold corner triangle with an anti-aliased italic purple "V", sized ~46% of a cell so
  it reads without covering the face (approved against Raven's reference screenshot).
- Delivery: NOT injected into system.sff (its sprite-node table sits at the end of a 7MB file with an
  unusual layout - injection risked the whole icon set). Instead a tiny companion SFFv2 (variant_icon.sff)
  built to match system.sff's exact format (sig, ver 0,1,0,2, fmt12/cd32 PNG32, [uint32 w*h*4][PNG] data,
  16-byte pal node). Round-trip verified: extracted sprite is byte-identical to the marker PNG; header
  lengths consistent. Goes in data/ikemen1/ next to system.sff.
- variant_marker.lua: loads the companion via sffNew (pcall-guarded), and on the start.f_selectScreen
  hook draws the marker at each variant cell's bottom-right corner. Cell pos = motif.select_info.pos +
  index*(cell.size+cell.spacing); marker scaled to SIZE_FRAC*cell. Variant cell = t_selGrid[idx+1].chars>1.
  FULLY guarded: if sffNew/animSetScale/etc. are unavailable it draws nothing, never breaking select.
  Tunables at top: SIZE_FRAC, NUDGE_X/Y.
- INSTALL: variant_icon.sff -> data/ikemen1/ ; variant_marker.lua -> external/mods/.

## P136 - variant marker not rendering: multi-path load + raw scale [external/mods/variant_marker.lua]
- Diagnosis: companion variant_icon.sff is VALID (re-confirmed against engine loadSff logic: header v2,
  28-byte node, flags&1==0 ldata, [uint32 w*h*4][PNG] at data+4 - PNG decodes to 72x72). Variant TEXT
  prompt works for Raven, so the hook + draw context are fine - the failure is specifically the sprite
  pipeline, most likely sffNew not finding the file at the given path, or animSetScale dividing by
  sys.luaSpriteScale and shrinking it.
- FIXES: (1) try multiple sff paths (data/ikemen1, external/mods, game root) until one loads;
  (2) animSetScale(...,false) -> raw scale, no luaSpriteScale division.
- system.sff injection ruled OUT: repo system.sff is STALE (P2 cursor still red, not P124 purple) and its
  data/node layout is interleaved (sprite data runs to EOF, node table embedded) -> unsafe to inject and
  would revert live changes. Companion file is the correct approach.

## P137 - variant marker root cause: missing animSetLocalcoord [external/mods/variant_marker.lua]
- Confirmed from live repo (now == live): variant_icon.sff IS present at data/ikemen1/ and is byte-identical
  to the shipped file (md5 ed60fc14), parses to a valid 72x72 PNG. variant_marker.lua + variant_prompt.lua
  present, echo_prompt.lua gone. So load path + file are fine.
- ROOT CAUSE: the marker anim was never given animSetLocalcoord, so its positions were interpreted in a
  default (small) coordinate space and drawn OFF-SCREEN. The cell portraits (main.lua ~1109) call
  animSetLocalcoord(a, motif.info.localcoord[1], motif.info.localcoord[2]) before drawing; the text prompt
  works because text elements already carry motif-coord positioning.
- FIX: call animSetLocalcoord(anim, motif.info.localcoord[1..2]) once before drawing (exact call the cells
  use). Position/scale now in motif space; marker lands at each variant cell's bottom-right corner.
- system.sff injection stays ruled out: even with repo==live, animNew(nil,...) does NOT resolve to a real
  system.sff sprite in this build (scripts only use it for blank group -1 cells), and the sff layout is
  interleaved. Companion sff + sffNew + animSetLocalcoord is the correct path.

## P138 - Variant marker visual pass: white triangle, purple V, icon border, corner nudge [variant_icon.sff + external/mods/variant_marker.lua]
- Art recolored: corner triangle GOLD -> WHITE, keeps purple italic "V". Added a second sprite: purple
  rounded-square BORDER (subtle top-lighter gradient) that frames the whole variant icon.
- companion variant_icon.sff rebuilt with 2 PNG32 sprites: grp0 = marker (72x72), grp1 = border (200x200).
  Round-trip verified both decode. 7112 bytes.
- variant_marker.lua: loads both anims, animSetLocalcoord on both, draws border (behind) + corner marker
  (on top) per variant cell. New tunables: BORDER_FRAC (border size vs cell), NUDGE_X/Y (set to 2,2 to
  nestle into the corner per Raven - "down + right a teeny bit").
- INSTALL: replace external/mods/variant_marker.lua AND data/ikemen1/variant_icon.sff.

## P139 - Variant polish: border upsize, prompt restyle (menu font + Y glyph) [variant_icon.sff + both mods]
- BORDER: variant_marker.lua BORDER_FRAC 1.0 -> 1.15. Visual icon runs larger than the logical cell
  (same reason the triangle needed its nudge); border now scales to frame the icon. Still corner/center
  positioned with NUDGE; tunable.
- PROMPT (variant_prompt.lua) restyled to the MENU font/style: was borrowing record's font3; now retargets
  the record element to font2 (ikemen1/fonts/Pixel.def) + gold 255,210,40 (matches menu.item / p1.name),
  restoring font3 + white + engine text when off a variant slot. Uses fontNew + textImgSetFont/Color.
- Y BUTTON GLYPH: word "Y" replaced with a sprite. Added grp2 to variant_icon.sff (64x64 gold circle,
  dark rim, dark bold "Y"). Drawn via the same animSetLocalcoord + f_animPosDraw path as the marker,
  centered in a reserved GAP in the string using fontGetTextWidth for inline placement. Tunables: Y_SIZE,
  Y_DX/Y_DY. companion sff now 3 sprites (marker72 / border200 / ybtn64), round-trip verified.
- INSTALL: replace data/ikemen1/variant_icon.sff + external/mods/variant_marker.lua + variant_prompt.lua.

## ROSTER NOTE - missing SF must-have
- Asked which SF3/CvS2 must-have is missing. Roster has full SF2/CvS cast (Ryu/Ken/Chun/Honda/Zangief/
  Blanka/Guile/Cammy/Dhalsim/Sakura/Vega/Akuma) + Alex/Ibuki (3). Glaring gap: SAGAT (CvS2). SF3 picks:
  Dudley or Makoto.

## P140 - prompt text too small + Y glyph missing [variant_prompt.lua + variant_icon.sff]
- Found sys.luaSpriteScale = 1 (engine default, never set by scripts) -> textImgSetScale/Pos pass through
  directly. So the prompt CAN be resized: record was locked at scale 0.6 (too small for the Pixel font).
  Fix: textImgSetScale(rec, TEXT_SCALE, TEXT_SCALE) on-slot (default 0.95), restored to record's own scale
  off-slot. Y-glyph placement now uses TEXT_SCALE (not 0.6) for width math; Y_SIZE bumped 18 -> 26.
- Y GLYPH not appearing: the running variant_icon.sff was the 2-sprite build (marker+border) - border
  (grp1) drew, Y (grp2) couldn't load. Repo copy is even older (1 sprite, stale). RE-SHIP the 3-sprite
  variant_icon.sff (groups 0/1/2, 12228 bytes) - this is the required file. Y anim = animNew(sff,"2,0,...").
- INSTALL (must replace BOTH): data/ikemen1/variant_icon.sff (3-sprite, 12228 bytes) + variant_prompt.lua.

## P141 - Y glyph: SF3 pixel-art restyle + missing-sprite text fallback [variant_icon.sff + variant_prompt.lua]
- Y button art redone: was a smooth flat circle; now an SF3/CPS3-style beveled arcade button - stepped
  diagonal gold shading (pixel-art banding), dark outline, top-left highlight + bottom-right shadow arcs,
  bold dark "Y". 44x44 (was 64x64). companion variant_icon.sff rebuilt (grp0 marker72 / grp1 border200 /
  grp2 ybtn44, 10899 bytes), verified.
- ROBUSTNESS: variant_prompt.lua now verifies the Y sprite actually loaded via animGetSpriteInfo(yAnim)
  (returns nil if grp2 absent). If present -> draw the glyph in the GAP. If absent (e.g. old 2-sprite sff
  still installed) -> the prompt spells out "Press [Y] to swap" in text instead of silently dropping it.
  Y_SPR_W 64 -> 44.
- INSTALL: replace data/ikemen1/variant_icon.sff (3-sprite, 10899 bytes) + external/mods/variant_prompt.lua.
  The Y glyph REQUIRES this 3-sprite sff; without it you'll see the "[Y]" text fallback (confirms the sff
  wasn't updated).

## P142 - Y glyph detection bug fix + sff-install diagnosis [variant_prompt.lua]
- Confirmed logically: marker (grp0) + border (grp1) render via the IDENTICAL load/draw path, so grp2 not
  rendering means the variant_icon.sff actually loaded from data/ikemen1/ is still the 2-sprite build.
- BUG FIX: P141 used animGetSpriteInfo(yAnim) (1-arg) which reads the anim's CURRENT-FRAME sprite - not
  resolved yet at load time, so it could report "missing" even on a valid 3-sprite sff and force the text
  fallback. Changed to animGetSpriteInfo(yAnim, 2, 0) which queries the sff directly for sprite (2,0).
- Net behavior now: 3-sprite sff installed -> gold Y button draws. 2-sprite sff still installed -> prompt
  shows literal "[Y]" text. So the on-screen result now unambiguously reports whether the sff was updated.
- INSTALL: variant_prompt.lua + data/ikemen1/variant_icon.sff (MUST be the 10899-byte 3-sprite file).

## P143 - Y glyph was drawing OFF-SCREEN: switch to fixed coordinate + 2-line layout [variant_prompt.lua]
- Screenshot evidence: prompt showed "Press <blank> to swap" (the GAP, not the [Y] fallback) -> the sff IS
  the 3-sprite build and the glyph loaded; the sprite was just being drawn off-screen. Root cause: its
  position was derived from fontGetTextWidth, but the bitmap font's width units don't map 1:1 to motif
  coords (the way cell positions do), so bx landed off-screen. (Marker/border work because they use fixed
  motif cell coords - a real reference, exactly as Raven noted.)
- FIX: prompt is now TWO centered lines - L1 "Current Variant: <name>" (varies), L2 "Press [Y] to swap"
  (FIXED text -> gap always in the same spot). The glyph is drawn at a flat, tunable coordinate
  (BTN_X/BTN_Y), no width math. Marker/border draw path (animSetLocalcoord + f_animPosDraw at motif coords)
  is proven, so a sane absolute coord renders on-screen. Defaults ~ line2 gap; tune BTN_X/BTN_Y to center.
- sff UNCHANGED (already correct). Only variant_prompt.lua changes. Tunables: LINE1_Y/LINE2_Y, BTN_X/BTN_Y,
  Y_SIZE, text strings. [Y] text fallback retained if the glyph ever fails to load.

## P144 - Y glyph polish: tighter gap, brighter gold, bigger [variant_icon.sff + variant_prompt.lua]
- Y button rendering confirmed working (P143 fixed coord). Tweaks per Raven:
  * BRIGHTER GOLD: regenerated grp2 with a brighter/more luminous gold palette + a bright inner rim so it
    pops against the bg (sprite colors are baked - can't brighten at runtime since color is a multiply).
    sff rebuilt (10995 bytes, 3 sprites verified).
  * TIGHTER GAP: L2_GAP 8 spaces -> 3 ("Press   to swap"). Note: line-2 gap CENTER is invariant to space
    count (= 640 + (w_press - w_toswap)/2), so shrinking the gap pulls text toward the button without
    moving the button. No BTN coord change needed.
  * BIGGER: Y_SIZE 24 -> 30. Refactored button placement to CENTER coords (BTN_CX/BTN_CY = 624/684) so
    size changes stay centered.
- INSTALL: replace data/ikemen1/variant_icon.sff (brighter, 10995 bytes) + variant_prompt.lua.
  Tunables: BTN_CX/BTN_CY (center), Y_SIZE, L2_GAP spaces, LINE1_Y/LINE2_Y.

## P145 - Y glyph: vivid-gold repaint + raised onto text line [variant_icon.sff + variant_prompt.lua]
- Y looked dull/dark at 30px (dark outline + shaded gradient dominate when small; engine renders true color
  - marker white / border purple are correct in-game, so not engine tinting). Repainted grp2 with a VIVID
  bright-gold palette (bright throughout, minimal dark), a thinner warm gold-brown outline (was near-black),
  and a bright rim. Verified bright at actual 30px size. sff rebuilt (10784 bytes).
- Raised the glyph onto the text line: BTN_CY 684 -> 670.
- INSTALL: data/ikemen1/variant_icon.sff (10784 bytes) + variant_prompt.lua. Tunables unchanged
  (BTN_CX/BTN_CY, Y_SIZE, L2_GAP).

## P146 - Y glyph dimmed by letterbox bars: draw on text's layer [variant_prompt.lua]
- Raven: Y isn't actually too dark - it's drawn UNDER the translucent black top/bottom letterbox bars.
  The prompt TEXT renders above them because the record element is layer 2 (system.def record.layerno=2);
  the Y anim was on the default low layer, so the bar dimmed it.
- FIX: animSetLayerno(yAnim, LAYER) each frame before draw, LAYER=2 (match the record text). Now the glyph
  renders over the bars like the text. .lua-only change; sff unchanged (vivid gold from P145 stays).
- Tunable: LAYER (raise if a bar still covers it). BTN_CX/BTN_CY, Y_SIZE, L2_GAP unchanged.

## P147 - Variant char names: "Name (Source)" labels [12 char defs]
- Renamed name + displayname in [Info] for all 6 variant pairs so each is distinguishable on the
  select screen, in the variant prompt, and on lifebars/win text:
    cvsryu "Ryu (CvS)" / sf3_ryu "Ryu (SF3)"
    cvsken "Ken (CvS)" / sf3_ken "Ken (SF3)"
    cvschunli "Chun-Li (CvS)" / sf3_chun-li "Chun-Li (SF3)"   (cvs base was "Chun Li", standardized to "Chun-Li")
    cvsgouki "Gouki (CvS)" / sf3_gouki "Gouki (SF3)"
    cvsalex "Alex (CvS)" / sf3_alex "Alex (SF3)"
    Dante "Dante (DMC)" / Dante_KOF "Dante (KOF)"   (DMC/KOF labels are my guess - adjust if wrong)
- Byte-preserving edits (latin-1), only the two quoted values changed per file; comments/Shift-JIS bytes intact.
  Verified: exactly 2 changed lines per def, [Info] intact, line counts unchanged.

## P152 - Gold pixel "K.O." announcement sprite, game-wide [data/fight.sff + data/fight.def]
- Raven: replace the global KO announcement graphic with a gold pixel-arcade "K.O."; keep the old
  one as fallback; "use your notes so I don't get blank/invisible results."
- WHAT THE KO ANNOUNCEMENT IS (fight.def [Round], localcoord 1280x720):
    KO.bg3.anim = 530 is the ONLY visible KO graphic; KO.anim/bg0/bg1/bg2 = 529 are DUMMY/blank
    timing layers. [Begin Action 530] does the whole motion on a SINGLE sprite (522,0): slam at
    scale 2.2 additive-blend (AS0D256) -> 0.88 -> 1.06 -> 1.0, hold 38, then flicker out. Engine
    does the scale+blend+Interpolate -> you only need ONE clean sprite. DKO graphic = bg0 535/bg1 536.
- NEW SPRITE: hand-drawn pixel-art gold "K.O." (PIL) 348x144 (matches 522,0's 354x174), axis center
  (174,72): blocky K/O/period glyphs, gold vertical bevel gradient, dark outline (MaxFilter), top
  highlight band, soft glow. Packed as sprite 6000,0.
- WIRING: added [Begin Action 600] = exact copy of 530's slam/flash/flicker but sprite 6000,0.
  KO.bg3.anim 530->600; DKO.bg0.anim 535->600 (double-KO shows gold KO too); DKO.bg1.anim 536->529
  (blank old DKO 2nd graphic so one clean gold KO draws).
- FALLBACK PRESERVED: action 530 + sprites 522,x + DKO 535/536 all left intact in-file.
  Revert = KO.bg3.anim->530, DKO.bg0->535, DKO.bg1->536.
- SFFv2 APPEND RECIPE (hard-won; avoids blank sprites):
  * Sprite data = [uint32 = PNG byte length][PNG bytes]; dataOffset(node+16) RELATIVE to ldataoff.
    (NOT w*h*4 - my first wrong guess gave a malformed sprite.)
  * Node = 28 bytes '<HHHHhhHBBIIHH' = group,idx,w,h,axisx,axisy,linked,fmt(12=PNG32),coldepth(32),
    dofs,dlen,palindex,flags. (First try was 26 bytes - missing palindex - caught by assert.)
  * Node table is at END of file -> APPEND-ONLY is safe (no existing byte touched):
    out = orig + newdata + copy-of-existing-nodes + new-node; header sproff=new table start (0x24),
    nspr+1 (0x28); new dofs = orig_len - ldataoff. ALWAYS round-trip verify decode + existing intact.
- Verified: nspr 169->170; 6000,0 decodes 348x144 RGBA non-empty; 522,0 & 530,0 intact; action 600
  present; KO/DKO repointed; action 530 intact.
- TUNABLE: bigger KO = regen sprite or scale the action; more flash = extra additive 6000,0 impact
  frame; sheen = a 2nd sprite (6000,1) alternated in the action.

## P153 - KO announcement: bolder font + glow + shake + sheen + shockwave [data/fight.sff + data/fight.def]
- Raven (after P152 in game): font too thin/skinny/spaced-out vs demo; no impact shake; glow not
  visible above the game; wants sheen + shockwave.
- Uses the engine's KO bg-LAYER compositing (KO.bg0-3 each = own anim+offset; higher bg# = more
  front; a single [Begin Action] CANNOT stack sprites - that's what the bg slots are for).
  Repurposed the spare dummy layers (bg0/bg1 were 529 @830/@430):
    KO.bg3.anim=600  K.O. (bolder sprite 6000,0): fade-in slam 2.2->0.88->1.06->1.0 + 6-frame
                     position SHAKE + SHEEN sweep (6000,1/2/3) + flicker out.
    KO.bg1.anim=601  impact GLOW flash (6000,10 radial gold blob, additive A, scale 1.6->3.5, fade) @640,400
    KO.bg0.anim=602  SHOCKWAVE ring (6000,11, additive, Interpolate Scale 0.3->2.8, fade)           @640,400
    bg2=529 dummy left as-is. DKO.bg0.anim=600 (gold KO+sheen+shake for double-KO too).
- NEW SPRITES (PIL) group 6000: 0=main, 1/2/3=sheen (shine L/C/R), 10=glow blob, 11=ring. Font
  redesigned BOLDER (3px stems) + TIGHTER (gap 1). Baked a semi-transparent DARK SEATING-HALO behind
  the letters so the KO pops over bright stages (demo popped due to its dark panel; in-game there's
  none) + brighter baked gold glow. 462x210 axis center.
- Engine facts: AS0D256 + 'Interpolate Blend' = fade-in invisible->opaque (the slam "appear", NOT a
  bright flash; the flash now = bg1 additive burst). Per-frame x,y in an action element = position
  offset -> jitter for a fake impact shake (announcements can't EnvShake).
- Verified: nspr 169->175, all 6 sprites decode non-empty, 522,0/530,0 intact; actions 600/601/602
  present; KO.bg0/1/3 + DKO repointed; bg0/bg1 offsets centered 640,400; action 530 + old sprites intact.
- Fallback: KO.bg3->530, KO.bg1->529@430, KO.bg0->529@830, DKO.bg0->535, DKO.bg1->536.
- TUNABLE: shake amplitude (the 7,-5/-8,5... offsets); glow size/brightness (6000,10 scale+alpha);
  shockwave speed (602 scale/time); sheen speed (sheen frame times); KO size (regen sprite or scale action).

## P154 - KO polish: thicker font, vivid gradient, brighter sheen, longer linger, ramped flicker [fight.sff+fight.def]
- Raven: linger ~1.5s longer before flicker; flicker START SLOW -> SPEED UP with MORE total flickers;
  sheen more visible; more vibrant gradient + thicker font (match the demo).
- SPRITES (group 6000) regen: THICKER glyphs (4px stem K / 3px-wall O, tight gap 1). VIVID gradient =
  demo stops (cream 255,247,214 -> gold 255,212,60 -> orange 246,160,20 -> amber 212,126,16).
  BRIGHTER+WIDER sheen band (near-white, width CELL*4.2). 460x196 axis center. glow/ring unchanged.
- ACTION 600 retimed: slam+shake -> SHEEN sweep #1 (6000,1/2/3) -> linger -> SHEEN sweep #2 -> longer
  linger (~1.5s extra) -> FLICKER ramped slow->fast (on/off 12/10,10/8,8/6,6/5,5/4,4/3,3/3,3/2,2/2,2/1,
  1/1,1/1; ~13 cycles accelerating). Total ~258t (~4.3s).
- DURATION FIX: KO.anim = the "dummy that lets bg layers play out" -> its blank length = how long the
  banner stays. New [Begin Action 604] = -1,0,0,0,270 (was 529=141t); KO.anim 529->604. Banner ends
  ~258t < over.time 300; win text is bottom-screen so no clash with center KO.
- Layers unchanged from P153 (bg3=600, bg1=601 glow, bg0=602 shockwave, DKO.bg0=600).
- Verified: nspr 175, all 6 decode, 522,0/530,0 intact; actions 600/601/602/604 present; KO.anim/bg0/
  bg1/bg3 + DKO repointed; 530 intact.
- Fallback: KO.anim->529, KO.bg3->530, KO.bg1->529@430, KO.bg0->529@830, DKO.bg0->535, DKO.bg1->536.
- TUNABLE: linger = the two "6000,0 ...40/48" holds; flicker ramp = on/off pairs; banner cut early ->
  raise 604's blank length (+ check for a win-sequence limiter).

## P155 - KO: SF3 italic + white outline, crimson, trimmed linger [fight.sff+fight.def]
- Raven: SF3 slanted/italic + outline vibe; recolor RED/crimson; lingers a tad too long - want the
  final flicker finishing right as "YOU WIN!" appears.
- SPRITES (6000,0/1/2/3) regen: CRIMSON vivid gradient (255,150,135 -> 238,46,52 -> 196,22,34 ->
  150,12,28). SF3 OUTLINE = thick WHITE outline (MaxFilter 9) + thin dark edge (MaxFilter 13) + dark
  seating-halo. ITALIC via 0.22 horizontal shear on the FINAL canvas (slants outline+fill+halo
  together; AA on slanted edges = arcade look). 508x200, sheared-bbox axis (246,100). glow(6000,10) +
  ring(6000,11) retinted red. Sheen kept (near-white, sweeps twice).
- LINGER trimmed: action 600 holds 40->30 and 48->8 (~-50t) so the ramped flicker ends ~50t sooner
  (~209t / 3.5s, was 4.3s). KO.anim dummy 604 = 215t (was 270).
- Layers unchanged (bg3=600, bg1=601 glow, bg0=602 shockwave, DKO.bg0=600).
- Verified: nspr 175, all 6 decode (axis 246,100), 522,0 intact; repoints + actions present; 530 intact.
- Fallback: KO.anim->529, KO.bg3->530, KO.bg1->529@430, KO.bg0->529@830, DKO.bg0->535, DKO.bg1->536.
- TUNABLE: flicker ends before/after YOU WIN -> nudge the two "6000,0 ...30/8" linger holds (+ match
  604). Slant = SHEAR (0.22). Outline thickness = MaxFilter 9/13. Recolor = the STOPS gradient.

## P156 - KO text pixelated (retro-arcade AA) [fight.sff only; fight.def unchanged from P155]
- Raven: aesthetically perfect but the KO text is too "HD" - missing the anti-aliased pixel look of a
  retro arcade game, so it clashes with the pixel-font win banners (YOU WIN / CLOSE ONE / etc.). Look
  + animate the same, just pixel-fy.
- FIX: pixelate the 4 crimson KO frames (6000,0/1/2/3) by downscale (LANCZOS) /4 then NEAREST upscale
  x4 back to 508x200 -> chunky 4px pixel blocks with ANTI-ALIASED color steps on edges/gradient/slant
  (the arcade look). Same size/axis (246,100) -> fight.def needs NO change. glow(6000,10)+ring(6000,11)
  left SMOOTH (they're additive FX and get scaled by the action; pixelating them would chunk
  scale-dependently).
- Verified: nspr 175, all 6 decode, 6000,0 still 508x200 axis 246,100, 522,0 intact.
- TUNABLE: pixel chunkiness = PX (currently 4; 3=finer, 5+=chunkier). To match the game's other text
  exactly, set PX to that font's pixel size.

## P157 - Disable SF3 finisher's own K.O.-text overlay so the global KO shows [5 SF3 char cns]
- Raven: on SF3 chars whose super-finisher draws its OWN "K.O." sprite, disable just that sprite so
  our new global fight.def K.O. shows instead - WITHOUT breaking the rest (backdrop swap, pause,
  shake, sounds).
- SYSTEM (per char, main cns [Statedef 10000] = helper "sa-ko" cinematic): 4 Explods. KO TEXT = the
  lone sprpriority=15 FRONT explod (id 10000, trigger1=time=1, animated): anim 8920 on ryu/gouki/
  ibuki, anim 11500 on ken/alex. Other 3 = sprpriority=-7 additive BACKDROP/BG swap (8900/8910/9960
  or 10000/10500/11000). Helper anim 9999 = blank. Verified via .air (8920 = centered animated front
  overlay; the -7 ones use additive blend = bg).
- EDIT: commented ONLY the sprpriority=15 explod block in [Statedef 10000] for sf3_ryu, sf3_ken,
  sf3_gouki, sf3_ibuki, sf3_alex (revert marker added above each). Untouched: backdrop explods, Pause
  40, EnvShake, PlaySnd, parentVarSet fvar(6) winner-flash, AssertSpecial noFG/nomusic, RemoveExplod
  (id 10000 still removes the remaining bg explods). Verified each: live explods 4 -> 3; backdrops intact.
- sf3_chun-li (cns=chun-li.cns, different author) has NO [Statedef 10000] -> no finisher KO sprite,
  no change.
- Reversible: uncomment the marked block. Global KO = fight.def announcement; fires on these super-
  finishes too, so it now shows over the SF3 backdrop.
