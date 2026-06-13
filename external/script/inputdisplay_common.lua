--[[============================================================================
  Input Display - per-frame renderer (Common.Lua side)
  Place anywhere readable (e.g. external/script/) and add its path to the
  [Common] Lua list in save/config.ini, e.g.:
      Lua = loop(), external/script/inputdisplay_common.lua

  Ikemen executes each [Common] Lua entry once PER FRAME during matches via
  DoString on the shared Lua state, so globals persist between frames: heavy
  setup runs once (guarded by INPUTDISP), the read+draw runs every frame.

  Uses only engine-global match functions (commandNew/commandGetState/fontNew/
  textImg*/fillRect/player/map) - it does NOT require() anything. Setup is
  pcall-guarded so a bad font path or missing sprite no-ops instead of crashing
  the match. Shows P1's inputs on the left, oldest on top / newest at the bottom;
  identical consecutive inputs collapse into one row with a frame count. The
  Training-menu toggle writes the on/off flag to P1's map '_iksys_inputDisplayP1'.
============================================================================--]]

-- ---- one-time setup (persists across frames; guarded so failure = no-op) ----
if INPUTDISP == nil then
	INPUTDISP = {ok = false}
	local d = INPUTDISP
	local ok, err = pcall(function()
		d.cl = commandNew()
		commandAdd(d.cl, 'U', '/U', 1, 1)
		commandAdd(d.cl, 'D', '/D', 1, 1)
		commandAdd(d.cl, 'B', '/B', 1, 1)
		commandAdd(d.cl, 'F', '/F', 1, 1)
		commandAdd(d.cl, 'a', '/a', 1, 1)
		commandAdd(d.cl, 'b', '/b', 1, 1)
		commandAdd(d.cl, 'c', '/c', 1, 1)
		commandAdd(d.cl, 'x', '/x', 1, 1)
		commandAdd(d.cl, 'y', '/y', 1, 1)
		commandAdd(d.cl, 'z', '/z', 1, 1)
		d.fnt = fontNew('ikemen1/fonts/Menu2Small.def')
		d.txt = textImgNew()
		textImgSetFont(d.txt, d.fnt)
		textImgSetScale(d.txt, 0.5, 0.5)
		d.hist = {}
		d.MAX  = 16
		d.btnOrder = {'a','b','c','x','y','z'}
	end)
	d.ok = ok
end

local d = INPUTDISP
if not d.ok then return end -- setup failed: do nothing, never crash

-- Feed P1's input every frame (even when hidden) so the buffer is current.
commandInput(d.cl, 1)

-- On/off flag from the training-menu toggle (written to P1's map).
player(1)
if (map('_iksys_inputDisplayP1') or 0) == 0 then
	return -- hidden
end

-- held directions -> numpad notation
local U = commandGetState(d.cl, 'U')
local D = commandGetState(d.cl, 'D')
local B = commandGetState(d.cl, 'B')
local F = commandGetState(d.cl, 'F')
local dir
if     U and F then dir = 9
elseif U and B then dir = 7
elseif U        then dir = 8
elseif D and F then dir = 3
elseif D and B then dir = 1
elseif D        then dir = 2
elseif F        then dir = 6
elseif B        then dir = 4
else                dir = 5 end

-- held buttons
local btns = ''
for _, k in ipairs(d.btnOrder) do
	if commandGetState(d.cl, k) then btns = btns .. k end
end

-- collapse repeats, else push a new row
local key = tostring(dir) .. btns
local n = #d.hist
if n > 0 and d.hist[n].key == key then
	if d.hist[n].frames < 99 then d.hist[n].frames = d.hist[n].frames + 1 end
else
	d.hist[#d.hist + 1] = {key = key, dir = dir, btns = btns, frames = 1}
	if #d.hist > d.MAX then table.remove(d.hist, 1) end
end

-- draw (320x240 base coords; left edge, newest at the bottom)
local x, baseY, rowH = 6, 40, 11
fillRect(x - 3, baseY - 3, 80, d.MAX * rowH + 4, 0, 0, 0, 140, 255)
for i = 1, #d.hist do
	local e = d.hist[i]
	local s = tostring(e.dir)
	if e.btns ~= '' then s = s .. ' ' .. e.btns:upper() end
	s = s .. '  ' .. e.frames
	textImgSetText(d.txt, s)
	textImgSetPos(d.txt, x, baseY + (i - 1) * rowH)
	textImgDraw(d.txt)
end
