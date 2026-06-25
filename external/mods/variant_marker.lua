-- Ultima Brawlers - Variant marker.
-- For every character cell holding a Variant slot (select.def `slot = { }` with >1 def) this draws:
--   * a purple border framing the icon, and
--   * a white corner triangle with a purple "V" tucked into the bottom-right.
--
-- Sprites live in a small companion file so system.sff is NEVER touched. Put variant_icon.sff in
-- data/ikemen1/ (also found in external/mods/ or the game root). Reversible: delete this file + the .sff.
-- Fully guarded - if anything is unavailable it draws nothing.
--
-- Tunables:
--   SIZE_FRAC    corner-marker size vs a cell
--   BORDER_FRAC  border size vs a cell (>1 = border sits further out)
--   NUDGE_X/Y    diagonal offset to nestle into the icon corner (down-right = positive)

local PATHS = {
	"data/ikemen1/variant_icon.sff",
	"external/mods/variant_icon.sff",
	"variant_icon.sff",
}
local MARK_W     = 72      -- marker sprite native size
local BORD_W     = 200     -- border sprite native size
local SIZE_FRAC  = 0.46
local BORDER_FRAC = 1.15  -- bumped: visual icon runs larger than the logical cell
local NUDGE_X    = 2
local NUDGE_Y    = 2

local markAnim, bordAnim, ready
for _, p in ipairs(PATHS) do
	local ok = pcall(function()
		local sff = sffNew(p)
		markAnim = animNew(sff, "0,0, 0,0, -1")
		bordAnim = animNew(sff, "1,0, 0,0, -1")
	end)
	if ok and markAnim ~= nil and bordAnim ~= nil then
		ready = true
		break
	end
	markAnim, bordAnim = nil, nil
end

local initDone = false

hook.add("start.f_selectScreen", "ultima_variant_marker", function()
	if not ready or main.t_selGrid == nil then
		return
	end
	pcall(function()
		if not initDone then
			animSetLocalcoord(markAnim, motif.info.localcoord[1], motif.info.localcoord[2])
			animSetLocalcoord(bordAnim, motif.info.localcoord[1], motif.info.localcoord[2])
			initDone = true
		end
		local si = motif.select_info
		local cols, rows = si.columns, si.rows
		local cw, ch = si.cell.size[1], si.cell.size[2]
		local sx, sy = si.cell.spacing[1], si.cell.spacing[2]
		local px, py = si.pos[1], si.pos[2]
		local mk = math.floor(cw * SIZE_FRAC + 0.5)
		local bw, bh = cw * BORDER_FRAC, ch * BORDER_FRAC
		local boffX, boffY = (bw - cw) / 2, (bh - ch) / 2
		animSetScale(markAnim, mk / MARK_W, mk / MARK_W)
		animSetScale(bordAnim, bw / BORD_W, bh / BORD_W)
		for row = 0, rows - 1 do
			for col = 0, cols - 1 do
				local g = main.t_selGrid[row * cols + col + 1]
				if g ~= nil and g.chars ~= nil and #g.chars > 1 then
					local cx = px + col * (cw + sx)
					local cy = py + row * (ch + sy)
					-- border first (behind), then corner marker on top
					main.f_animPosDraw(bordAnim, cx - boffX + NUDGE_X, cy - boffY + NUDGE_Y)
					main.f_animPosDraw(markAnim, cx + cw - mk + NUDGE_X, cy + ch - mk + NUDGE_Y)
				end
			end
		end
	end)
end)
