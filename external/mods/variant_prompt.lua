-- Ultima Brawlers - variant slot prompt.
-- When a selecting cursor is on a Variant slot (select.def `slot = { }` cell with >1 def) this shows,
-- on two centered lines in the menu font (font2 Pixel, gold):
--     Current Variant: <name>
--     Press [Y] to swap
-- with a real Y button glyph (sprite grp2 of variant_icon.sff) sitting in the gap on line 2.
--
-- WHY TWO LINES + A FLAT BUTTON COORD: line 2's text is FIXED (only the name on line 1 varies), so the
-- gap is always in the same place and the glyph can be drawn at a fixed, tunable screen coordinate -
-- the same kind of reliable reference the cell markers use. (Deriving it from text width failed because
-- the bitmap font's width units don't map 1:1 to motif coordinates, so the sprite flew off-screen.)
--
-- Reuses the 'record' text element (correct coord space) for both lines, restoring it off a variant slot.
-- Reversible: delete this file. TUNABLES: LINE1_Y / LINE2_Y, BTN_X / BTN_Y, Y_SIZE, text strings.
-- NOTE: name shown is each variant def's own .def `name` (set "SF3 Ryu" etc. to distinguish a pair).

local L1   = "Current Variant: %s"
local L2_GAP  = "Press   to swap"        -- with glyph: spaces hold the button's spot
local L2_TEXT = "Press [Y] to swap"      -- fallback if the glyph can't load

local SFF_PATHS = {
	"data/ikemen1/variant_icon.sff",
	"external/mods/variant_icon.sff",
	"variant_icon.sff",
}
local PIXEL_FONT = "ikemen1/fonts/Pixel.def"
local MENU2_FONT = "ikemen1/fonts/Menu2.def"
local TEXT_COLOR = {255, 210, 40}
local TEXT_SCALE = 0.95

-- == layout tunables (motif coords; nudge these while watching the screen) ==
local LINE1_Y = 650     -- y of "Current Variant: <name>"
local LINE2_Y = 676     -- y of "Press [Y] to swap"
local BTN_CX  = 624     -- Y button CENTER x (sits in line 2's gap)
local BTN_CY  = 670     -- Y button CENTER y
local Y_SPR_W = 44
local Y_SIZE  = 30
local LAYER   = 2       -- draw layer: match record text (system.def record.layerno=2) so the glyph
                       -- renders OVER the translucent letterbox bars instead of under them

local pixelFnt, menu2Fnt, yAnim, ready
do
	local ok = pcall(function()
		pixelFnt = fontNew(PIXEL_FONT)
		menu2Fnt = fontNew(MENU2_FONT)
		for _, p in ipairs(SFF_PATHS) do
			local ok2 = pcall(function()
				local sff = sffNew(p)
				yAnim = animNew(sff, "2,0, 0,0, -1")
			end)
			if ok2 and yAnim ~= nil then break end
			yAnim = nil
		end
	end)
	ready = ok and pixelFnt ~= nil
end

-- does sprite (2,0) actually exist in the loaded sff? (query the sff directly, not the current frame)
local yGlyph = false
if yAnim ~= nil then
	pcall(function() yGlyph = (animGetSpriteInfo(yAnim, 2, 0) ~= nil) end)
end

local yInited = false

local function f_currentVariant()
	if main.t_selGrid == nil then return nil end
	for side = 1, 2 do
		local p = start.p[side]
		if p ~= nil and p.teamEnd and not p.selEnd then
			for _, v in ipairs(p.t_selCmd or {}) do
				local c = start.c[v.player]
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
						return ""
					end
				end
			end
		end
	end
	return nil
end

hook.add("start.f_selectScreen", "ultima_variant_prompt", function()
	local rinfo = motif.select_info.record
	local rec = rinfo and rinfo.TextSpriteData
	if rec == nil then return end
	local name = f_currentVariant()
	if name ~= nil and ready then
		pcall(function()
			if yAnim ~= nil and yGlyph and not yInited then
				animSetLocalcoord(yAnim, motif.info.localcoord[1], motif.info.localcoord[2])
				yInited = true
			end
			local cx = (rinfo.offset and rinfo.offset[1]) or 640

			textImgSetFont(rec, pixelFnt)
			textImgSetColor(rec, TEXT_COLOR[1], TEXT_COLOR[2], TEXT_COLOR[3])
			textImgSetScale(rec, TEXT_SCALE, TEXT_SCALE)

			-- line 1: variant name
			textImgSetPos(rec, cx, LINE1_Y)
			textImgSetText(rec, string.format(L1, name))
			textImgDraw(rec)

			-- line 2: swap hint (gap for glyph, or [Y] fallback)
			textImgSetPos(rec, cx, LINE2_Y)
			textImgSetText(rec, yGlyph and L2_GAP or L2_TEXT)
			textImgDraw(rec)

			-- the glyph, at a fixed tunable coordinate
			if yGlyph then
				local sc = Y_SIZE / Y_SPR_W
				animSetScale(yAnim, sc, sc)
				animSetLayerno(yAnim, LAYER)   -- draw above the letterbox bars (same layer as the text)
				main.f_animPosDraw(yAnim, BTN_CX - Y_SIZE / 2, BTN_CY - Y_SIZE / 2)
			end
		end)
	else
		-- off a variant slot: restore the record's normal font/color/scale/pos/text
		pcall(function()
			if menu2Fnt ~= nil then textImgSetFont(rec, menu2Fnt) end
			textImgSetColor(rec, 255, 255, 255)
			local os = (rinfo.scale and rinfo.scale[1]) or 0.6
			textImgSetScale(rec, os, os)
			local ox = (rinfo.offset and rinfo.offset[1]) or 640
			local oy = (rinfo.offset and rinfo.offset[2]) or 672
			textImgSetPos(rec, ox, oy)
		end)
		textImgSetText(rec, start.f_getRecordText())
	end
end)
