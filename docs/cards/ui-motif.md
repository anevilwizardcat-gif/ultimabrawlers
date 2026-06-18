# ui-motif — Ikemen screenpack (menu / select / VS / logo / backgrounds)

**Lives in:** `data/ikemen1/system.def` (motif: fonts, layout, bg element defs, [Begin Action]s) +
`data/ikemen1/system.sff` (all UI sprites). Motif `Motif=` set in save/config.ini. localcoord 1280,720.

## Firewall (DO-NOT-confuse-with)
Pure **motif + sprites (+ Lua)**. NO explods, NO bench/KO states, NO CNS. If a task here makes me reach for
RemoveExplod / `root,stateno` / gauge display states (the bench-ui-meters pattern) I'm in the wrong subsystem.
Motif `.def` keys = labels/visuals/positions ONLY; availability/behavior logic is Lua
(`external/script/*.lua`). Prefer a hook mod in `external/mods/` over editing core scripts.

## Font scheme (settled)
- **font2 = Pixel.def** = THE UI font (menu items, names, stage, titles). This build renders BITMAP fonts only
  (TrueType wrappers ship but never render).
- Colors: **P1 = gold 255,210,40**, **P2 = cyan 90,225,255** (independent keys; not linked). Names/stage `.scale = 1.4`.
- Stage-name FLICKER cause (fixed P026): `stage.active2.font` (blink colour) was still font3 -> alternated with
  font2. All stage.* (font/active/active2/done) now font2.

## Sprite map (inside system.sff)
| element | sprite / anim | notes |
|---|---|---|
| menu bg | 100,0 (1280x960) | purple pixel |
| menu scroll | 100,2 / 100,3 (tile,vel) | star lattices. **100,1 = static "Black Bars" overlay, NOT a scroll layer** (P028 lesson) |
| select bg | 101,0 | purple, cyan->now varies |
| select scroll | 101,2 / 101,3 | star lattices |
| VS bg | 204,0 | purple pixel (P036) |
| VS scroll | 102,2 / 102,3 | star lattices (P036) |
| logo main | 0,0 -> **anim 50** | "ARCADE ALLSTARS" per-letter rigid bob wave |
| logo sub | 0,1 -> **anim 51** | floating rainbow "ULTIMA" (sin.y 15,264,32 keeps independent float) |
| logo shadows | 0,2 / 0,3 | COMMENTED OUT (glow baked into frames) |
| VS logo | **anim 200** (200,0..8) | custom yellow pixel "VS" (P036) |
| NEXT MATCH | **anim 202** (202,0) | our gold style (P036) |

## Animated logo (P031-P033)
Per-letter wave + rainbow CANNOT ride sin.y on a static sprite -> pre-rendered FRAME ANIM. [TitleBG Title Logo]
/[Logo 2] use `type=anim` + `actionno`; [Begin Action 50]/[51] cycle 18 frames each (grp 50/51). Speed knob =
trailing tick on each frame line (currently 4 = ~1.2s/cycle; P034). Motif already used type=anim+actionno
elsewhere (lines ~1207/1605/1710) - mirror that.

## Background art style (procedural PIL)
320x240 base scaled 4x NEAREST. Dithered purple gradient (Bayer 4x4), contained gold halftone burst, bold
diagonal accent lines, clean star outlines, sparse pixel symbols, scanlines. Scroll layers = seamless diagonal
STAR LATTICE (regular spacing N=round(W/spacing) exact cells, wrap copies x,x-W,x+W) so it visibly drifts (a
uniform random starfield reads as static - P028 lesson). Logo text = real bold font (BigShoulders) + chrome
gradient + double outline + glow, THEN pixelated (LANCZOS/down + hard alpha + NEAREST/up) - NOT a pixel font.

## SFF (SFFv2) rebuild methods — verified
- Header: nodes@1360, count@0x28, pals@0x2C(512)/0x30(53), ldata@0x34, tdata@0x3C(empty).
- Sprite node 28B: g,im,w,h, axis(h,h)@8, link@12, fmt@14, cd@15, dataOff@16, dataLen@20, palIdx@24, flags@26.
- PNG sprite ldata entry = `uint32(W*H*coldepthBytes)` (UNCOMPRESSED size, NOT png len) + PNG bytes.
- Offsets are RELATIVE to ldata start. fmt 12=PNG32, 10=PNG8, 4=LZ5, 1=linked(len0, keep verbatim).
- **REPLACE (same count):** rebuild ldata in node order (new png for targets, copy others), recompute sprite
  node offsets. **APPEND:** keep everything verbatim, add nodes+data at end, bump count + ldata_off (offsets
  stay valid since relative). 
- **PALETTE CAVEAT (P036 fix):** PNG8 embedded palette = BLACK PLACEHOLDER; real colors in SFFv2 palette node
  (idx0 = transparent magenta). A full ldata rebuild MUST also relocate palette data + fix palette node offsets
  (@+8 off, @+12 len), else indexed sprites break. P027/P028 dropped them; restored P036 from repo original.

## Current state
Menu/select/VS backgrounds = purple Persona-pixel (drifting star lattices). Fonts unified to Pixel (P1 gold /
P2 cyan) across menu/select/VS. Logo = animated (ARCADE ALLSTARS wave + floating rainbow ULTIMA, ~1.2s).
VS screen: yellow pixel "VS" + gold "NEXT MATCH" + new bg. 53 palettes restored (indexed sprites fixed).
Editable source PNGs in outputs `menu_sprites/`.
