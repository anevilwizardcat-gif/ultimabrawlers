-- Arcade Allstars Ultima - select-screen control tweaks (team menu).
-- Auto-loads after core (main.lua ~3703). Reversible: delete this file.
-- NOTE: palette B=cancel is done in system.def (palmenu keys), NOT here - overriding the engine's
-- already-parsed motif .key values from a mod breaks input. Keys must be edited at their source.

-- [1] TEAM-MODE MENU: B = back out to the previous menu (Esc path).
-- t_cmd is a LIST of command buffers ({start.f_menuCmd(side)}), so check each with commandGetState
-- (the same call f_btnPalNo uses for face buttons). getInput/raw strings do NOT work here.
hook.add("start.f_teamMenu.input", "ultima_teammenu_back", function(side, t, t_cmd)
	for _, c in ipairs(t_cmd) do
		if commandGetState(c, 'b') then
			sndPlay(motif.Snd, motif.select_info.cancel.snd[1], motif.select_info.cancel.snd[2])
			start.escFlag = true
			return true
		end
	end
	return false
end)

-- [2] TAG on top: move the 'tag' item to slot 1 of the team menu so it's the default highlight.
-- Reorders the menu table in place (passed by reference); touches no input/keys.
hook.add("start.selectScreen.teamMenu", "ultima_tag_first", function(side, t, params, itemname_order)
	for i, v in ipairs(t) do
		if v.itemname == 'tag' then
			table.remove(t, i)
			table.insert(t, 1, v)
			break
		end
	end
end)
