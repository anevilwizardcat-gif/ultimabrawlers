# Card: menu-background (motif system.def / system.sff)

Motif = `data/ikemen1/` (per save/config.ini Motif key). Sprites in `data/ikemen1/system.sff` = **SFFv2, PNG32**.

## BG layers (per [*BGdef] in system.def)
- `100,0` SKY - static (no velocity). Baked: dark-plum gradient + gold art-deco diagonal lines + gold halftone corner + large star OUTLINES + static diamond stars. Recurs on Title/Select/Versus/Victory/Option.
- `100,1` black bars overlay (trans=add1).
- `100,2` 'Clouds Top' - SCROLLS slow (velocity -0.1,0), tile=1,0, 2559x782. == background star layer.
- `100,3` 'Clouds Bottom' - SCROLLS fast (velocity -0.7,0), tile=1,0, 2467x960. == foreground star layer.
- `101,0` SELECT sky (char-select). Had baked big lavender star OUTLINES + small crosses (P105 stripped them, kept gold deco). 1280x960.
- `101,2` SELECT 'Clouds Top' - slow -0.1, back, 2559x782 (P105 detailed static starfield).
- `101,3` SELECT 'Clouds Bottom' - fast -0.7, front, 2467x960 (P105: type=anim actionno 250, TWINKLES). Frames 101,3 / 101,30 / 101,31 / 101,32.
- NOTE: Title screen uses GROUP 100; char-select uses GROUP 101. Different groups -> a group-100 edit does NOT touch char select (and vice versa).

## SFFv2 format (CONFIRMED vs engine image.go)
- Header: sig[12]; ver bytes @0x0C (Ver0=2); @0x24 FirstSpriteHeaderOffset u32; @0x28 NumberOfSprites; @0x2C FirstPaletteHeaderOffset; @0x30 NumberOfPalettes; @0x34 lofs (ldata); @0x3C tofs (tdata). This file: 294 sprites, tdata empty (all data in ldata).
- Sprite node = 28 bytes: Group i16, Number i16, W u16, H u16, Xaxis i16, Yaxis i16, link u16, format u8 (@+14), coldepth u8 (@+15), dataOffset u32 (@+16), dataLen u32 (@+20), palidx u16 (@+24), flags u16 (@+26; bit0: 0=offset rel lofs, 1=rel tofs).
- PNG sprites (fmt 10/11/12): stored as [4-byte prefix][PNG]. readV2 does Seek(off+4) then png.Decode -> **the 4-byte prefix is IGNORED for PNG**. To add/replace: append [4 bytes][PNG] at EOF, patch node offset(+16)/len(+20), keep fmt=12/cd=32. Don't touch other nodes (offsets stay valid). ALWAYS round-trip-decode all sprites after.

## Current state (P107)
- TITLE (group 100): 100,2 / 100,3 = detailed parallax starfield (P103, soft/AA), static scroll. Untouched since.
- CHAR-SELECT (group 101): FRONT layer (101,3) SCRAPPED (P107) - commented out in system.def (it ran off-screen + read worse). The SLOW back layer (101,2) is kept and is now the look: type=anim actionno 250, CRISP PIXEL stars (hard-edged, no AA) with VARIED twinkle (static/blink/grow/shimmer). Frames = 101,2 + 101,30/31/32. Select sky 101,0 had its big lavender star outlines stripped (P105).
- CRISP-PIXEL method: render on a coarse grid sized so coarseW * scale == spriteW exactly (seamless tile), hard dot/plus/spark cells, limited palette, NEAREST upscale. Avoids the blurry gaussian-AA look.
- SFFv2 OVERWRITE (no count change) = append [4-byte len][PNG] at EOF, patch node offset(+16)/len(+20)/W(+4)/H(+6), fmt 12 / cd 32, flags bit0=0. SFFv2 ADD (P105) = also clone a node + relocate the node table to EOF + bump NumberOfSprites@0x28 + FirstSpriteHeaderOffset@0x24.
- FIREWALL: title=group100, select=group101. Separate. A group-100 edit never reaches char-select.