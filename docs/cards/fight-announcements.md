# Card: fight-announcements (KO / DKO / Time Over / FIGHT / ROUND)
Files: data/fight.def [Round] section + data/fight.sff (SFFv2.0). localcoord 1280x720.

## How a KO banner works
- KO.bg3.anim is the ONLY visible KO graphic. KO.anim / KO.bg0/bg1/bg2 = 529 are DUMMY blank
  timing layers (do not put the graphic there).
- The [Begin Action] animates a SINGLE sprite; the engine does scale + blend + Interpolate.
  Proven KO motion (action 530, now mirrored in 600):
    slam sprite at 2.2,2.2 additive (AS0D256) -> 0.88 -> 1.06 -> 1.0 (Interpolate Scale/Blend),
    hold 38, then alternate sprite/-1 to flicker out.
- Double-KO graphic = DKO.bg0.anim (+bg1). Time-Over = TO.anim/bg1. FIGHT = fight.anim 520-523.
- slow.time/slow.speed in [Round] = the final-KO slow-mo (a SEPARATE system; it just stacks on
  top of whatever KO banner plays).

## Current state
- P156: PIXELATED (retro-arcade AA, PX=4 via LANCZOS-down/NEAREST-up) SF3-style CRIMSON "K.O." Sprite 6000,0 = thick glyphs, CRIMSON vivid gradient, ITALIC
  (0.22 shear), SF3 white outline (MaxFilter 9) + dark edge (13) + dark seating-halo, then pixelated
  (PX=4) so it reads as arcade pixel art and matches the win-banner font. glow/ring left smooth. Layers: bg3.anim=600 (fade-in slam + SHAKE + 2x sheen 6000,1/2/3 + linger + flicker
  ramped slow->fast, ~209t/3.5s); bg1.anim=601 red GLOW flash (6000,10); bg0.anim=602 red SHOCKWAVE
  ring (6000,11); bg2=529. Sheared sprites use axis 246,100.
- BANNER DURATION = KO.anim's blank length. KO.anim=604 (-1,0,0,0,215). Want it ending right as the
  win text shows -> nudge action 600's two linger holds (the 30 and 8) + match 604.
- Old action 530 + sprites 522,x + DKO 535/536 intact = fallback. Revert: KO.anim->529, KO.bg3->530,
  KO.bg1->529@430, KO.bg0->529@830, DKO.bg0->535, DKO.bg1->536.
- Engine: bg layers composite. AS0D256+Interpolate Blend = fade-in (flash = bg1 burst). Per-frame x,y
  = position offset (fake shake; no EnvShake). Italic = shear the rendered canvas (recompute axis from bbox).

## SFFv2 append recipe (avoids blank/invisible sprites)
- Sprite data = [uint32 = PNG byte length][PNG bytes]; node dataOffset is RELATIVE to ldataoff.
  (NOT w*h*4.)
- Node = 28 bytes: struct '<HHHHhhHBBIIHH' =
  group, idx, w, h, axisx, axisy, linked, fmt(12=PNG32), coldepth(32), dofs, dlen, palindex, flags.
- Node table lives at END of file, so append-only is safe: out = orig + newdata + existing-nodes
  + new-node; patch header sproff(0x24)=new table start, nspr(0x28)+1; new dofs = orig_len - ldataoff.
- ALWAYS round-trip: re-parse, decode the new PNG, confirm existing sprites still decode.


## SF3 finisher interaction (P157)
The 5 GM-author SF3 chars (ryu/ken/gouki/ibuki/alex) have a super-finish cinematic helper (main cns
[Statedef 10000], helper "sa-ko" id 10000). It draws its OWN "K.O." text = the lone sprpriority=15
front Explod (id 10000, trigger1=time=1, animated): anim 8920 (ryu/gouki/ibuki) or 11500 (ken/alex).
The other 3 explods (sprpriority=-7, additive) are the BG-swap backdrop. To let the GLOBAL fight.def
KO show instead, that one front explod is commented out per char (revert marker in the cns); backdrop
+ pause + shake + sounds left intact. chun-li (chun-li.cns) has no [Statedef 10000] -> unaffected.
