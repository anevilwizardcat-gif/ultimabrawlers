-- Ultima Brawlers - Variant marker.
-- Draws the gold triangle + italic purple "V" in the bottom-right corner of every character cell
-- that holds a Variant slot (a select.def `slot = { }` cell with more than one def). It marks which
-- fighters have variants at a glance.
--
-- The sprite lives in a small companion file so system.sff is NEVER touched:
--     place  variant_icon.sff  in  data/ikemen1/  (next to system.sff)
-- Reversible: delete this file (and the .sff). Fully guarded - if anything is unavailable it simply
-- draws nothing, never breaking the select screen.
--
-- Tunable: SIZE_FRAC (marker size as a fraction of a cell) and NUDGE_X / NUDGE_Y (corner offset).

local SFF_PATH  = "data/ikemen1/variant_icon.sff"
local SPR_W     = 72       -- companion sprite is 72x72
local SIZE_FRAC = 0.46     -- marker ~46% of a cell
local NUDGE_X   = 0
local NUDGE_Y   = 0

local anim, ready
do
	local ok = pcall(function()
		local sff = sffNew(SFF_PATH)
		anim = animNew(sff, "0,0, 0,0, -1")
	end)
	ready = ok and anim ~= nil
end

hook.add("start.f_selectScreen", "ultima_variant_marker", function()
	if not ready or main.t_selGrid == nil then
		return
	end
	pcall(function()
		local si = motif.select_info
		local cols, rows = si.columns, si.rows
		local cw, ch = si.cell.size[1], si.cell.size[2]
		local sx, sy = si.cell.spacing[1], si.cell.spacing[2]
		local px, py = si.pos[1], si.pos[2]
		local mk = math.floor(cw * SIZE_FRAC + 0.5)
		local sc = mk / SPR_W
		animSetScale(anim, sc, sc)
		for row = 0, rows - 1 do
			for col = 0, cols - 1 do
				local g = main.t_selGrid[row * cols + col + 1]
				if g ~= nil and g.chars ~= nil and #g.chars > 1 then
					local cx = px + col * (cw + sx)
					local cy = py + row * (ch + sy)
					main.f_animPosDraw(anim, cx + cw - mk + NUDGE_X, cy + ch - mk + NUDGE_Y)
				end
			end
		end
	end)
end)
