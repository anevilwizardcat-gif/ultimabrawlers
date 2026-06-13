-- ultimabrawlers: remove Simul and Turns from the character-select team menu.
-- Keeps Single and Tag selectable. Works across every game mode.
--
-- HOW IT WORKS:
--   start.lua builds the team-mode list (t_teamMenu[side]) at select-screen
--   setup, then fires hook "start.selectScreen.teamMenu" passing that list by
--   reference. We register on that hook and strip the simul/turns entries before
--   the menu is drawn, so they never appear and can't be chosen.
--
-- WHY THIS AND NOT THE MOTIF LABELS:
--   The motif teammenu.itemname keys only set the *labels*. The list of modes
--   actually offered is assembled in Lua and gated by main.teamMenu[side][name],
--   which the engine repopulates per game mode. Filtering the final list here is
--   the one point that runs every time, in every mode.
--
-- SURGICAL & REVERSIBLE: delete this file to restore all four team modes.
-- Install: place in  external/mods/  (auto-loaded at startup).

hook.add("start.selectScreen.teamMenu", "ultimabrawlers_no_simul_turns", function(side, t_teamMenu, params, itemname_order)
	if type(t_teamMenu) ~= "table" then
		return
	end
	for i = #t_teamMenu, 1, -1 do
		local entry = t_teamMenu[i]
		if entry ~= nil and (entry.itemname == "simul" or entry.itemname == "turns") then
			table.remove(t_teamMenu, i)
		end
	end
end)
