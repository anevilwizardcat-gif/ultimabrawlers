# lifebar-layout — fight.def HUD (lifebars, power bar, stun/guard, counters, win icons)

**Lives in:** `data/fight.def` (active) + `data/fight.sff` (sprites). Reference pack: `data/ilifebar/ilifebar.def`
(+ `lifebar.sff`) — an SFA-style custom lifebar Raven supplied, with Tag/Simul/Turns variants.

## Firewall (DO-NOT-confuse-with)
This is the **DEFAULT ENGINE** HUD (motif coords + sprites). It is NOT the author custom meters
(bench-ui-meters families A/B/C = CNS explods/helpers). Editing fight.def changes the engine bars only.
Also distinct from ui-motif (that's system.def menu/select/VS). No CNS, no explods, no bench states here.

## [Powerbar] architecture (Ikemen GO)
Per side (p1/p2):
- `pos` = anchor. `bg0.spr` = empty bar FRAME. (`bg1` optional 2nd bg layer.)
- `front.spr` = the FILL sprite, drawn CLIPPED across `range.x = startX,endX` proportional to power
  (0..max). Fill grows from startX toward endX.
- `front<N>.spr` (front500/1000/2000/3000...) = per-LEVEL variants, each with `palfx.mul/sinmul` or
  `palfx.add/sinadd` to make the fill PULSE/GLOW once that power threshold is reached. front3000 = MAX glow.
- `counter.font` + `counter.offset` = the level/stock NUMBER. `levelbars` = how levels segment the bar.
- `levelN.snd` = sound on reaching level N (up to 9). p2 mirrors via `.facing = -1`.
ilifebar values: bg0=5,0 / front=6,0 / front3000 palfx.add=-22,96,158 sinadd ...,15 / range.x=-139,-79 /
levelbars=1 / counter.font=6,0 (Old-Pow.fnt).

## CURRENT PROBLEM (why ours looks buggy)
`data/fight.def` [Powerbar] scales the bar sprites **2.35,1.4** (bg0/bg1/front). Non-integer scaling of pixel
art = blurred/stretched, visually inconsistent with the crisp SF3-era meters the rest of the cast uses. It also
reads as "stretched out." FIX = author the bar sprites at the FINAL on-screen size (or integer scale only) so
no stretching occurs; keep range.x matched to the new fill sprite width.

## Concepts delivered (P037) — `menu_sprites/powermeter_concepts.png`
- **A · SF3 EX-gauge:** segmented gold bar + stock pip number; level ticks; MAX = white-hot strobe + outline.
- **B · Stock Blocks:** 3 discrete beveled chunks that light one per level; MAX = all gold + white outline.
- **C · Ultimabrawlers Gold:** purple beveled frame + gold halftone empty + gold-chrome fill; matches menu/VS.
All crisp pixel, drawn at display size (no stretch). Each shown empty / level-2 / MAX.

## Implementation path (once a concept is picked)
1. Draw bg-frame + fill sprites at display size (per concept), MAX/level glow handled by palfx in def (cheap)
   OR baked. 2. Inject sprites into fight.sff (SFFv2 replace/append — see ui-motif card for the method).
   3. Rewrite [Powerbar]: bg0.spr/front.spr to new sprites, REMOVE the 2.35,1.4 scale (or integer), set
   range.x to the new fill width, set front<N> palfx for level glows + counter.font. 4. Verify in-engine,
   measure from a screenshot (axis offsets here are unreliable per arithmetic).

## Locked direction (P038)
POWER METER = A+C hybrid: purple-bevel frame + gold edge + gold halftone empty + gold-chrome segmented fill +
level ticks + GOLD stock pip (styled to match bar) on the OUTER side; P2 fully mirrored (pip right, fill R->L).
LIFEBAR HUD concept covers: health (yellow->orange + damage-lag + red low-health), center timer, inward active
portraits + small benched-partner mugs (tag), names, win pips, round callout, power meters at bottom corners.
Previews: menu_sprites/powermeter_AC_hybrid.png + lifebar_hud_concept.png.

## HUD element map (from ilifebar reference) — build checklist
[Lifebar]: bg0(frame)+mid(damage-lag)+front(fill clipped by range.x)+front51/front26(low-hp palfx)+red(flash).
  RECOVERABLE HP (tag regen-while-benched) = extra band between current HP and max, distinct color (teal in
  concepts). P2 fill + P2 SUPER fill anchor at the OUTER/pip side, not center (range.x direction).
[Powerbar]: bg0+front(range.x clip)+front3000(MAX glow)+counter(level#)+levelbars+levelN.snd (<=9 levels).
[Time] center counter. [Name] per side. [Face] active 9000,0 + [Tag Face] adds p3/p4 partner mugs @ scale .4.
[Combo] sliding counter. [Round] match.wins=2, round1-5 anims. [WinIcon] bg0 200,0 + pips 201,0 + counter.
TAG variants ([Tag Lifebar]/[Tag Face]/[Tag Name]) REQUIRED (2v2). ilifebar localcoord ~320x240; ours differs
(current fight.def powerbar pos 574,901 => bigger localcoord) - measure from screenshot, don't trust arithmetic.

## HUD variants (P040) - menu_sprites/lifebar_variant_A/B/C.png
A=Third Strike Classic (horizontal, outer portraits, center timer). B=Tag Block (unified per-player corner
unit, partner mug inset - cleanest). C=Angled Arcade (sheared bars, inset portraits, gem pips). All show
health+recoverable+timer+rounds+portrait+partner+name+super. Awaiting Raven's pick/hybrid.

## Build v1 (P041) — Variant C shipped for testing
fight.sff: 19 sprites restyled in place (lifebar 10/11/12/13.0-3/14, faces 50/51/70/71, win 100/101/102/120,
power 40/43). fight.def: [Powerbar] rewritten (scale 1,1 no stretch, decided meter, counter, P2 fill pip-side),
[WinIcon]->below HP bars, [Tag_2P Name] p3/p4 hidden. Lifebar already had xshear=3 (angled = Variant C). Power
bar was pos y=901 (off-screen) -> moved to bottom. KNOWN-NEEDS-TUNING: power/win/name exact coords (blind).
Tag face swap = native instant (incoming->big+name, outgoing->small+hidden); smooth SLIDE = Lua mod TODO.

## Status
SUPER METER BUILT (P039): sprites in menu_sprites/super_meter/ (bg0 frame, front fill + shimmer, MAX strobe) +
POWERBAR_def_reference.txt + super_meter_demo.gif. Authored at display size (no stretch). Fill/drain = engine
range.x clip (smooth); MAX = front<max>.anim strobe. NOT injected into fight.sff yet - inject + position when
integrating with the lifebar. Lifebar HUD concept presented (P038), sprites for it not yet built.
