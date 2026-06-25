-- Ultima Brawlers - variant slot prompt (formerly the "echo" prompt; renamed to Variants).
-- When a player's cursor is on a variant slot (a select.def `slot = { }` cell that holds more than
-- one def, e.g. CvS Ryu + SF3 Ryu), show the CURRENT variant's name and that Y swaps it:
--     Current Variant: <name>   (Press Y to swap)
--
-- Draws via the "start.f_selectScreen" hook, which fires as the select screen's LAST render step,
-- so the text lands on top of the engine's own draws. It reuses the 'record' text element
-- (system.def [Select Info]: font 3, offset 640,672, scale 0.6), which is free during play because
-- record.<gamemode>.text is unset; off-slot it restores record's normal text so nothing lingers.
-- Reversible: delete this file. Tunables: LABEL / SWAP strings below; record.* in system.def.
-- NOTE: the name shown is each variant def's own display name (its .def `name`). If a variant
-- should read e.g. "SF3 Ryu", set that as the name inside that character's .def.

local LABEL = "Current Variant: "
local SWAP  = "   (Press Y to swap)"

-- returns the current variant's display name if a selecting cursor is on a variant slot, else nil
local function f_currentVariant()
	if main.t_selGrid == nil then
		return nil
	end
	for side = 1, 2 do
		local p = start.p[side]
		if p ~= nil and p.teamEnd and not p.selEnd then
			for _, v in ipairs(p.t_selCmd or {}) do
				local c = start.c[v.player]
				-- start.c[player].cell is 0-indexed; t_selGrid is 1-indexed (hence + 1)
				if c ~= nil and c.cell ~= nil then
					local g = main.t_selGrid[c.cell + 1]
					if g ~= nil and g.chars ~= nil and #g.chars > 1 then
						local cd = start.f_selGrid(c.cell + 1)
						if cd ~= nil and cd.char_ref ~= nil then
							local data = start.f_getCharData(cd.char_ref)
							if data ~= nil and data.name ~= nil then
								return tostring(data.name)
							end
						end
						return "" -- on a variant slot, name not resolvable
					end
				end
			end
		end
	end
	return nil
end

hook.add("start.f_selectScreen", "ultima_variant_prompt", function()
	local rec = motif.select_info.record and motif.select_info.record.TextSpriteData
	if rec == nil then
		return
	end
	local name = f_currentVariant()
	if name ~= nil then
		textImgReset(rec)
		textImgSetText(rec, LABEL .. name .. SWAP)
		textImgDraw(rec)
	else
		-- restore the engine's normal record text so the prompt does not stick around
		textImgSetText(rec, start.f_getRecordText())
	end
end)
