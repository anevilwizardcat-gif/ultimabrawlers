-- Arcade Allstars Ultima - modern character-select controls.
-- Stock Ikemen maps a/b/c/x/y/z each to a different palette, so EVERY face button confirms
-- the character (the "classic arcade colors" scheme). This overrides that so ONLY A confirms,
-- freeing B / C / X / Y / Z (Y is now the variant-swap on slot/echo cells; B is reserved for a
-- future cancel). main.f_btnPalNo is the engine's grid button->palette mapper; external/mods load
-- AFTER core (main.lua ~3703) so this override reliably wins. Reversible: delete this file.
-- Palettes are still reachable: Start+A = palette 7, and the palette menu (paletteselect = 3)
-- cycles palettes with the d-pad after you confirm.
function main.f_btnPalNo(p)
	local s = 0
	if commandGetState(p, '/s') then s = 6 end
	if commandGetState(p, 'a') then return 1 + s end -- ONLY A confirms (pal 1, or 7 with Start held)
	return 0
end
