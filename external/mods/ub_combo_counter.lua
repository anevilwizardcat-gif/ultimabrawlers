--[[============================================================================
  ultimabrawlers :: CUSTOM ANIMATED COMBO COUNTER   (P079 - ground-up rebuild)
  Location: external/mods/ub_combo_counter.lua    (bare file, auto-loaded)

  Built to be STRUCTURALLY IDENTICAL to external/mods/inputdisplay.lua, which is
  CONFIRMED to load in this build (its training-menu toggle appears). The two
  things inputdisplay got wrong are fixed here:
    * registration: hook.add("loop", ...) (VERIFIED: runMatch -> s.action() ->
      [Common] Lua=loop() -> debug.lua loop() -> hook.run("loop") every match
      frame; renderFrame() flushes Lua draws ON TOP). NOT commonLuaInsert, which
      does NOT exist in this engine (that's why inputdisplay never drew).
    * text: reuse motif.select_info.title.TextSpriteData (the engine's own working
      text path, as ScoreAttack + inputdisplay do). NO fontNew.
  The hook callback is pcall-wrapped so an error can never crash the match.

  PROOF (so we can SEE it loaded + drew, this entire day having shown nothing):
    1. A "Combo Counter" toggle appears in the TRAINING pause menu  -> mod LOADED.
    2. A cyan strip + "UBC C1:x C2:y" at top-left during any match    -> draw WORKS.
  Then the animated counter (gold->red, rainbow+bob at 35+) shows under the default
  counter for comparison. Set UBCOMBO_PROOF=false later to hide the strip/readout.
============================================================================--]]

UBCOMBO_PROOF = (UBCOMBO_PROOF ~= false)   -- show the diagnostic strip+readout (on until confirmed)
if UBCOMBO_ON == nil then UBCOMBO_ON = true end  -- the animated counter on by default

------------------------------------------------------------------------------
-- PART 1 : training pause-menu toggle (mirrors inputdisplay.lua exactly = proven to load)
------------------------------------------------------------------------------
if menu ~= nil and type(menu.t_valuename) == 'table' and type(menu.t_itemname) == 'table' then
	menu.t_valuename.ubcombo = {
		{itemname = 'disabled', displayname = 'Disabled'},
		{itemname = 'enabled',  displayname = 'Enabled'},
	}
	menu.ubcombo = menu.ubcombo or 2          -- default Enabled
	menu.t_itemname['ubcombo'] = function(t, item, cursorPosY, moveTxt, sec)
		if menu.f_valueChanged(t.items[item], sec) then
			UBCOMBO_ON = (menu.ubcombo == 2)
		end
		return true
	end
	menu.t_vardisplay = menu.t_vardisplay or {}
	menu.t_vardisplay['ubcombo'] = function()
		return menu.t_valuename.ubcombo[menu.ubcombo or 1].displayname
	end
	local tmenu = motif and motif.pause_menu and motif.pause_menu.training_pause_menu
		and motif.pause_menu.training_pause_menu.menu
	if tmenu ~= nil and main ~= nil and type(main.f_appendItemname) == 'function' then
		main.f_appendItemname(tmenu, '', 'ubcombo', 'Combo Counter')
	end
end

------------------------------------------------------------------------------
-- PART 2 : per-frame on-screen draw (global; called by the loop hook)
------------------------------------------------------------------------------
-- tunables (motif/1280x720 coord space; same space inputdisplay draws in)
local T1X, T2X, CY = 220, 1060, 300   -- counter anchors near the default combo counter
local DIGADV = 34                     -- px between digit centers
local GOLD, RED = {255,215,0}, {255,0,0}

local function clamp(v,lo,hi) if v<lo then return lo elseif v>hi then return hi else return v end end
local function lerp(a,b,t) return math.floor(a+(b-a)*t+0.5) end
local function hsv(h,s,v)
	h=h%360; local c=v*s; local x=c*(1-math.abs((h/60)%2-1)); local m=v-c
	local r,g,b=0,0,0
	if     h< 60 then r,g,b=c,x,0 elseif h<120 then r,g,b=x,c,0
	elseif h<180 then r,g,b=0,c,x elseif h<240 then r,g,b=0,x,c
	elseif h<300 then r,g,b=x,0,c else r,g,b=c,0,x end
	return math.floor((r+m)*255+0.5), math.floor((g+m)*255+0.5), math.floor((b+m)*255+0.5)
end

local function f_drawNumber(team, combo)
	local d = UBCOMBO
	local s = tostring(combo); local n = #s
	if n == 0 or d.ts == nil then return end
	local cx = (team == 1) and T1X or T2X
	local startx = cx - (n-1)*DIGADV/2
	fillRect(cx - n*DIGADV/2 - 8, CY-26, n*DIGADV+16, 54, 0,0,0, 130, 0)   -- backdrop
	local rainbow = (combo >= 35)
	local sp = rainbow and (3 + 10*clamp((combo-35)/64,0,1)) or 0
	local p1 = clamp((combo-1)/33,0,1)
	local gr,gg,gb = lerp(GOLD[1],RED[1],p1), lerp(GOLD[2],RED[2],p1), lerp(GOLD[3],RED[3],p1)
	for j=0,n-1 do
		local r,g,b,yoff
		if rainbow then
			r,g,b = hsv(d.phase[team] + j*42, 1, 1)
			yoff = 8*math.sin(d.t*0.3 + j*0.95)
		else
			r,g,b,yoff = gr,gg,gb,0
		end
		textImgSetText(d.ts, s:sub(j+1,j+1))
		textImgSetScale(d.ts, 1.0, 1.0)
		textImgSetColor(d.ts, r,g,b)
		textImgSetPos(d.ts, startx + j*DIGADV, CY + yoff)
		textImgDraw(d.ts)
	end
	d.phase[team] = rainbow and ((d.phase[team]+sp)%360) or 0
end

function ubComboDraw()
	if UBCOMBO == nil then
		UBCOMBO = {t=0, phase={0,0}, last={0,0}, hold={0,0}, ts=nil}
		UBCOMBO.ts = motif and motif.select_info and motif.select_info.title
		             and motif.select_info.title.TextSpriteData or nil
	end
	local d = UBCOMBO
	d.t = d.t + 1

	-- read live per-team combo (verified: player(t)+combocount())
	local c1, c2 = 0, 0
	if player(1) then c1 = combocount() or 0 end
	if player(2) then c2 = combocount() or 0 end

	-- DIAGNOSTIC (needs no text sprite -> proves the hook runs + draws render)
	if UBCOMBO_PROOF then
		fillRect(8, 22, 320, 14, 0,220,255, 255, 0)          -- cyan strip, top-left
		if d.ts ~= nil then
			textImgSetText(d.ts, 'UBC  C1:'..c1..'  C2:'..c2)
			textImgSetScale(d.ts, 0.6, 0.6)
			textImgSetColor(d.ts, 255,255,255)
			textImgSetPos(d.ts, 10, 40)
			textImgDraw(d.ts)
		end
	end

	if not UBCOMBO_ON then return end

	-- the animated counter, under the default, per team
	for team = 1, 2 do
		local c = (team == 1) and c1 or c2
		if c > 0 then d.last[team]=c; d.hold[team]=36
		elseif d.hold[team] > 0 then d.hold[team]=d.hold[team]-1 end
		if d.hold[team] > 0 and d.last[team] > 0 then
			f_drawNumber(team, d.last[team])
		end
	end
end

------------------------------------------------------------------------------
-- PART 3 : register per-frame (VERIFIED firing path). pcall = can't crash match.
------------------------------------------------------------------------------
hook.add("loop", "ub_combo_counter", function() pcall(ubComboDraw) end)
