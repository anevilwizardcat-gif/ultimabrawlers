--[[============================================================================
  Input Display  (training-menu toggle + on-screen P1 input reader)
  Location:  external/mods/inputdisplay.lua    (auto-loaded at startup)

  INSTALL IS NOW ONE STEP: just drop this file in external/mods/.
  Leave save/config.ini line 24 as the default  ( Lua = loop() ) - if you added
  inputDisplayDraw() there earlier, REMOVE it, because this mod registers itself
  via commonLuaInsert (sys.commonLua is set once at startup and persists, verified
  in the engine source), so a manual config edit would just make it run twice.

  Output is ON SCREEN, left side (Lua print() goes to invisible stdout on a
  double-clicked .exe, and there is no Lua hook to the Ctrl+D console - confirmed
  in the engine - so screen drawing is the only visible channel). Text is drawn
  through an existing motif TextSpriteData that already owns a working font (the
  engine's own text path); a fillRect backdrop is drawn too as a visibility aid.
============================================================================--]]

------------------------------------------------------------------------------
-- PART 1 - training pause menu toggle (sets a shared global; same Lua state)
------------------------------------------------------------------------------
if menu ~= nil and type(menu.t_valuename) == 'table' and type(menu.t_itemname) == 'table' then
	menu.t_valuename.inputdisplay = {
		{itemname = 'disabled', displayname = 'Disabled'},
		{itemname = 'enabled',  displayname = 'Enabled'},
	}
	menu.inputdisplay = menu.inputdisplay or 1
	INPUTDISPLAY_ON = INPUTDISPLAY_ON or false
	menu.t_itemname['inputdisplay'] = function(t, item, cursorPosY, moveTxt, sec)
		if menu.f_valueChanged(t.items[item], sec) then
			INPUTDISPLAY_ON = (menu.inputdisplay == 2) -- shared global, read by renderer
		end
		return true
	end
	menu.t_vardisplay = menu.t_vardisplay or {}
	menu.t_vardisplay['inputdisplay'] = function()
		return menu.t_valuename.inputdisplay[menu.inputdisplay or 1].displayname
	end
	local tmenu = motif and motif.pause_menu and motif.pause_menu.training_pause_menu
		and motif.pause_menu.training_pause_menu.menu
	if tmenu ~= nil and main ~= nil and type(main.f_appendItemname) == 'function' then
		main.f_appendItemname(tmenu, '', 'inputdisplay', 'Input Display')
	end
end

------------------------------------------------------------------------------
-- PART 2 - per-frame on-screen reader (global, called via commonLua)
------------------------------------------------------------------------------
local USE_ARROWS = true -- set false if arrows show as boxes (uses 1-9)

function inputDisplayDraw()
	if INPUTDISP == nil then
		INPUTDISP = {ok = false}
		local d = INPUTDISP
		local ok = pcall(function()
			d.cl = commandNew()
			commandAdd(d.cl,'U','/U',1,1); commandAdd(d.cl,'D','/D',1,1)
			commandAdd(d.cl,'B','/B',1,1); commandAdd(d.cl,'F','/F',1,1)
			commandAdd(d.cl,'a','/a',1,1); commandAdd(d.cl,'b','/b',1,1)
			commandAdd(d.cl,'c','/c',1,1); commandAdd(d.cl,'x','/x',1,1)
			commandAdd(d.cl,'y','/y',1,1); commandAdd(d.cl,'z','/z',1,1)
			d.btn = {{'a','A'},{'b','B'},{'c','C'},{'x','X'},{'y','Y'},{'z','Z'}}
			local ch = string.char
			d.arrow = {
				[7]=ch(0xE2,0x86,0x96),[8]=ch(0xE2,0x86,0x91),[9]=ch(0xE2,0x86,0x97),
				[4]=ch(0xE2,0x86,0x90),                       [6]=ch(0xE2,0x86,0x92),
				[1]=ch(0xE2,0x86,0x99),[2]=ch(0xE2,0x86,0x93),[3]=ch(0xE2,0x86,0x98)}
			d.numpad = {[1]='1',[2]='2',[3]='3',[4]='4',[6]='6',[7]='7',[8]='8',[9]='9'}
			d.hist = {}
			d.MAX = 12
			d.ts = motif and motif.select_info and motif.select_info.title
				and motif.select_info.title.TextSpriteData or nil
		end)
		d.ok = ok
	end

	local d = INPUTDISP
	if not d.ok then return end

	commandInput(d.cl, 1)

	if not INPUTDISPLAY_ON then return end

	local U=commandGetState(d.cl,'U'); local Dn=commandGetState(d.cl,'D')
	local B=commandGetState(d.cl,'B'); local F=commandGetState(d.cl,'F')
	local dir
	if     U and F then dir=9 elseif U and B then dir=7 elseif U then dir=8
	elseif Dn and F then dir=3 elseif Dn and B then dir=1 elseif Dn then dir=2
	elseif F then dir=6 elseif B then dir=4 else dir=5 end

	local btns=''
	for _,kk in ipairs(d.btn) do if commandGetState(d.cl,kk[1]) then btns=btns..kk[2] end end

	local key=tostring(dir)..btns
	local n=#d.hist
	if n>0 and d.hist[n].key==key then
		if d.hist[n].f<99 then d.hist[n].f=d.hist[n].f+1 end
	elseif not (dir==5 and btns=='') then
		d.hist[#d.hist+1]={key=key,dir=dir,btns=btns,f=1}
		if #d.hist>d.MAX then table.remove(d.hist,1) end
	end

	local x, baseY, rowH = 8, 46, 14
	fillRect(x-4, baseY-6, 92, d.MAX*rowH+8, 0,0,0, 160, 0)   -- backdrop
	fillRect(x-4, baseY-14, 92, 6, 0,220,255, 255, 0)         -- cyan "running" strip

	if d.ts ~= nil then
		local dmap = USE_ARROWS and d.arrow or d.numpad
		for i=1,#d.hist do
			local e=d.hist[i]
			local s=''
			if e.dir~=5 then s=dmap[e.dir] or '' end
			if e.btns~='' then if s~='' then s=s..' ' end s=s..e.btns end
			s=s..'  '..e.f
			textImgSetText(d.ts, s)
			textImgSetScale(d.ts, 0.55, 0.55)
			textImgSetColor(d.ts, 255,255,255)
			textImgSetPos(d.ts, x, baseY+(i-1)*rowH)
			textImgDraw(d.ts)
		end
	end
end

------------------------------------------------------------------------------
-- PART 3 - self-register so it runs every match frame WITHOUT a config edit.
-- sys.commonLua is set once at startup (engine main.go) then only changed by
-- commonLuaInsert, so appending here persists for the whole session.
------------------------------------------------------------------------------
if type(commonLuaInsert) == 'function' then
	commonLuaInsert('inputDisplayDraw()')
end
