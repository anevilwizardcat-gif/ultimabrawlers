
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "SA"
command = ~D, DF, F, D, DF, x
time = 25

[Command]
name = "SA"
command = ~D, DF, F, D, DF, y
time = 25

[Command]
name = "SA"
command = ~D, DF, F, D, DF, z
time = 25

[Command]
name = "SA"
command = ~D, DF, F, D, DF, ~x
time = 25

[Command]
name = "SA"
command = ~D, DF, F, D, DF, ~y
time = 25

[Command]
name = "SA"
command = ~D, DF, F, D, DF, ~z
time = 25

[Command]
name = "SA2"
command = ~D, DF, F, D, DF, a
time = 25

[Command]
name = "SA2"
command = ~D, DF, F, D, DF, b
time = 25

[Command]
name = "SA2"
command = ~D, DF, F, D, DF, c
time = 25

[Command]
name = "SA2"
command = ~D, DF, F, D, DF, ~a
time = 25

[Command]
name = "SA2"
command = ~D, DF, F, D, DF, ~b
time = 25

[Command]
name = "SA2"
command = ~D, DF, F, D, DF, ~c
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "気功拳EX"
command = ~B, D, F, x+y
time = 15

[Command]
name = "気功拳EX"
command = ~B, D, F, x+z
time = 15

[Command]
name = "気功拳EX"
command = ~B, D, F, y+z
time = 15

[Command]
name = "気功拳EX"
command = ~B, D, F, ~x+y
time = 15

[Command]
name = "気功拳EX"
command = ~B, D, F, ~x+z
time = 15

[Command]
name = "気功拳EX"
command = ~B, D, F, ~y+z
time = 15

[Command]
name = "百裂脚EX"
command = a+b;, a+b, a+b, a+b, a+b
time = 1;80

[Command]
name = "百裂脚EX"
command = a+c;, a+c, a+c, a+c, a+c
time = 1;80

[Command]
name = "百裂脚EX"
command = b+c;, b+c, b+c, b+c, b+c
time = 1;80

;[Command]
;name = "百裂脚EX"
;command = a+b, a+b, a+b, a+b, a+b
;time = 80

;[Command]
;name = "百裂脚EX"
;command = a+c, a+c, a+c, a+c, a+c
;time = 80

;[Command]
;name = "百裂脚EX"
;command = b+c, b+c, b+c, b+c, b+c
;time = 80

[Command]
name = "スピニングバードキックEX"
command = ~42$D, $U, a+b

[Command]
name = "スピニングバードキックEX"
command = ~42$D, $U, a+c

[Command]
name = "スピニングバードキックEX"
command = ~42$D, $U, b+c

[Command]
name = "スピニングバードキックEX"
command = ~42$D, $U, ~a+b

[Command]
name = "スピニングバードキックEX"
command = ~42$D, $U, ~a+c

[Command]
name = "スピニングバードキックEX"
command = ~42$D, $U, ~b+c

[Command]
name = "覇山蹴EX"
command = ~F, D, B, a+b
time = 15

[Command]
name = "覇山蹴EX"
command = ~F, D, B, a+c
time = 15

[Command]
name = "覇山蹴EX"
command = ~F, D, B, b+c
time = 15

[Command]
name = "覇山蹴EX"
command = ~F, D, B, ~a+b
time = 15

[Command]
name = "覇山蹴EX"
command = ~F, D, B, ~a+c
time = 15

[Command]
name = "覇山蹴EX"
command = ~F, D, B, ~b+c
time = 15

[Command]
name = "気功拳弱"
command = ~B, D, F, ~x
time = 15

[Command]
name = "気功拳中"
command = ~B, D, F, ~y
time = 15

[Command]
name = "気功拳強"
command = ~B, D, F, ~z
time = 15

[Command]
name = "気功拳弱"
command = ~B, D, F, x
time = 15

[Command]
name = "気功拳中"
command = ~B, D, F, y
time = 15

[Command]
name = "気功拳強"
command = ~B, D, F, z
time = 15

[Command]
name = "百裂脚弱"
command = a;, a, a, a, a
time = 1;80

[Command]
name = "百裂脚中"
command = b;, b, b, b, b
time = 1;80

[Command]
name = "百裂脚強"
command = c;, c, c, c, c
time = 1;80

;[Command]
;name = "百裂脚弱"
;command = a, a, a, a, a
;time = 80

;[Command]
;name = "百裂脚中"
;command = b, b, b, b, b
;time = 80

;[Command]
;name = "百裂脚強"
;command = c, c, c, c, c
;time = 80

[Command]
name = "スピニングバードキック弱"
command = ~42$D, $U, a

[Command]
name = "スピニングバードキック中"
command = ~42$D, $U, b

[Command]
name = "スピニングバードキック強"
command = ~42$D, $U, c

[Command]
name = "スピニングバードキック弱"
command = ~42$D, $U, ~a

[Command]
name = "スピニングバードキック中"
command = ~42$D, $U, ~b

[Command]
name = "スピニングバードキック強"
command = ~42$D, $U, ~c

[Command]
name = "覇山蹴弱"
command = ~F, D, B, a
time = 15

[Command]
name = "覇山蹴中"
command = ~F, D, B, b
time = 15

[Command]
name = "覇山蹴強"
command = ~F, D, B, c
time = 15

[Command]
name = "覇山蹴弱"
command = ~F, D, B, ~a
time = 15

[Command]
name = "覇山蹴中"
command = ~F, D, B, ~b
time = 15

[Command]
name = "覇山蹴強"
command = ~F, D, B, ~c
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "highjump"
command = D, $U
time = 8

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "スルー"
command = x+a

[Command]
name = "リープアタック"
command = y+b

[Command]
name = "PA"
command = z+c

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "3_c"
command = /DF,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Statedef -1]

;===========================================================================
;== CHUN-LI AI  (SF3 3rd Strike footsie / hit-confirm brain)              ==
;== v3.2.                                                                 ==
;== Architecture: states 90-95 are PARRY states; var(38) buffer is the    ==
;== parry-cancel only. All offense is direct ChangeState (human-style).   ==
;== Cancelable normals: 200/205 s.LP, 210 s.MP, 260/265, 400 c.LP,        ==
;==   420 c.HP, 430 c.LK, 440 c.MK. NOT: 220, 410, 230, 240-245, 250-275. ==
;== var(19) = cancel countdown (19f, set on contact, ticks during         ==
;==   hitpause) -> all combo cancels run ignorehitpause = 1 so they fire  ==
;==   inside the freeze: crisp, never-dropped confirms.                   ==
;== Guard heights: 130 stand blocks mids/overheads, 131 crouch blocks     ==
;==   lows -> mirror the attacker's stance (v3.1 crouched vs everything   ==
;==   and ate every mid).                                                 ==
;== Dash 100 is ctrl=0 the whole way -> dash-cancel guard added.          ==
;== Every controller: AILevel-gated + !ishelper.                          ==

; --- 0z. AI BRAIN : persistent memory helper (habit reads + cooldowns) -----
; Ibuki-style architecture: a hidden helper that thinks every frame, even
; through pauses. Tracks the opponent's habits (jump frequency) and Chun's
; own recent options (anti-repetition cooldowns). Body reads are always
; guarded by numhelper so a missing brain can never error.
[State -1, AI Brain Spawn]
type = helper
triggerall = !ishelper
triggerall = AILevel > 0
trigger1 = roundstate = 2
trigger1 = numhelper(39000) = 0
helpertype = normal
name = "AI Brain"
id = 39000
stateno = 39000
pos = 0, 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

; --- 0a. NO TAUNT --------------------------------------------------------
[State -1, AI No Taunt]
type = changestate
triggerall = !ishelper
value = 0
triggerall = AILevel > 0
trigger1 = stateno = 195 || stateno = 196

; --- 0b. JUMP VETO -------------------------------------------------------
[State -1, AI Jump Veto]
type = changestate
triggerall = !ishelper
value = ifelse(p2movetype = A, 0, 100)
triggerall = AILevel > 0
trigger1 = backedgebodydist > 35   ;<-- cornered jump-outs are allowed
trigger1 = stateno = 40
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2movetype != H
trigger1 = p2bodydist x < 150
trigger1 = random < 850

; --- 1. PARRY (deliberate) -----------------------------------------------
[State -1, AI Parry Arm High]
type = varset
triggerall = !ishelper
var(21) = 1
triggerall = AILevel > 0
triggerall = var(21) = 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || stateno = 130 || stateno = 131 || stateno = 5120
trigger1 = inguarddist
trigger1 = enemynear,movetype = A
trigger1 = enemynear,statetype != C
trigger1 = random < 650
trigger3 = life < 220
trigger3 = ctrl || stateno = 130 || stateno = 131 || stateno = 5120
trigger3 = inguarddist
trigger3 = enemynear,statetype != C
trigger3 = random < 850
trigger2 = ctrl || stateno = 130 || stateno = 131 || stateno = 5120
trigger2 = inguarddist
trigger2 = random < 550

[State -1, AI Parry Arm Low]
type = varset
triggerall = !ishelper
var(23) = 1
triggerall = AILevel > 0
triggerall = var(23) = 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || stateno = 130 || stateno = 131 || stateno = 5120
trigger1 = inguarddist
trigger1 = enemynear,movetype = A
trigger1 = enemynear,statetype = C
trigger1 = random < 650
trigger3 = life < 220
trigger3 = ctrl || stateno = 130 || stateno = 131 || stateno = 5120
trigger3 = inguarddist
trigger3 = enemynear,statetype = C
trigger3 = random < 850

; --- 2. PARRY PUNISH (the one true var(38) use) ---------------------------
; With meter: buffer the Super Art. Without: c.MK only if it will reach.
[State -1, AI Parry Punish]
type = varset
triggerall = !ishelper
var(38) = ifelse(p2bodydist x >= 70, ifelse(p2bodydist x < 55, 440, 0), ifelse(var(58) = 2 && power >= 880, 3000, ifelse(var(58) = 3 && power >= 1040, 3100, ifelse(var(58) = 4 && power >= 720, 3200, ifelse(p2bodydist x < 55, 440, 0)))))
triggerall = AILevel > 0
triggerall = var(38) = 0
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3
trigger1 = p2bodydist x < 95

; --- 2b. PARRY THROW : point-blank parries convert to instant grab ---------
; The var(38) buffer fires late enough for throws to beat it; at grab
; range, grab THEM the moment control returns instead.
[State -1, AI Parry Throw]
type = changestate
triggerall = !ishelper
value = 800
triggerall = AILevel > 0
triggerall = p2dist x > -4
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) >= 0
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist x < 17
trigger1 = random < 800

; --- 3. COMBO ENGINE : ignorehitpause cancels = confirms never drop --------
; 3a. SUPER CANCEL on confirmed hit from any cancelable normal
[State -1, AI Cancel Super]
type = changestate
triggerall = !ishelper
value = ifelse(var(58) = 2, 3000, ifelse(var(58) = 4, 3200, 3100))
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = (p2statetype != A) || (p2dist y > -50 && enemynear,vel y > 0)   ;<-- kick-height only
triggerall = stateno != 440 || p2bodydist x < 62   ;<-- no tip-range super whiffs
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = (var(58) = 2 && power >= 880) || (var(58) = 3 && power >= 1040) || (var(58) = 4 && power >= 720)
triggerall = statetype != A
trigger1 = movehit
trigger1 = var(19)
trigger1 = stateno = [200,440]
trigger1 = stateno != 220 && stateno != 410
trigger1 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger1 = (stateno != [250,275]) || (stateno = [260,265])
trigger1 = random < 980

; combo-rep bookkeeping (var(59) is unused by her own systems)
[State -1, AI Rep Count]
type = varadd
triggerall = !ishelper
var(59) = 1
ignorehitpause = 1
triggerall = AILevel > 0
trigger1 = stateno = 430 && time = 1

[State -1, AI Rep Reset]
type = varset
triggerall = !ishelper
var(59) = 0
triggerall = AILevel > 0
trigger1 = ctrl && movetype = I
trigger1 = var(59) != 0

; 3b. LINK c.MK : confirmed c.LK -> c.MK (the classic deep confirm)
[State -1, AI Link c.MK]
type = changestate
triggerall = !ishelper
value = 440
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
trigger1 = stateno = 430
trigger1 = movehit
trigger1 = p2bodydist x < 42
trigger1 = random < 820

; 3c. light chain: c.LP / far s.LP / c.LK on contact -> c.LK
[State -1, AI Chain c.LK]
type = changestate
triggerall = !ishelper
value = 430
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = var(59) < 2
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
trigger1 = stateno = 400 || stateno = 205 || stateno = 430
trigger1 = movecontact
trigger1 = p2bodydist x < 42
trigger1 = random < 880

; 3cc. EX LEGS CANCEL: mid-tier ender (400 power) when super isn't banked
[State -1, AI Cancel EX Legs]
type = changestate
triggerall = !ishelper
value = 1050
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = power >= 400 && power < 520
triggerall = !((var(58) = 2 && power >= 880) || (var(58) = 3 && power >= 1040) || (var(58) = 4 && power >= 720))
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = movehit
trigger1 = var(19)
trigger1 = stateno = [200,440]
trigger1 = stateno != 220 && stateno != 410
trigger1 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger1 = (stateno != [250,275]) || (stateno = [260,265])
trigger1 = p2bodydist x < 45
trigger1 = random < 750

; 3d. LEGS CANCEL on contact when no meter (safe chip on block too)
[State -1, AI Cancel Legs]
type = changestate
triggerall = !ishelper
value = 1020
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = movecontact
trigger1 = var(19)
trigger1 = stateno = [200,440]
trigger1 = stateno != 220 && stateno != 410
trigger1 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger1 = (stateno != [250,275]) || (stateno = [260,265])
trigger1 = p2bodydist x < 45
trigger1 = random < 800

; 3ec. EX SBK JUGGLE: launcher confirms into EX SBK at EX-tier meter
[State -1, AI AA Confirm EX SBK]
type = changestate
triggerall = !ishelper
value = 1250
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = power >= 400 && power < 620
triggerall = !((var(58) = 2 && power >= 880) || (var(58) = 3 && power >= 1040) || (var(58) = 4 && power >= 720))
triggerall = statetype != A
trigger1 = stateno = 260
trigger1 = movehit
trigger1 = p2statetype = A
trigger1 = p2dist y = [-60,-5]
trigger1 = enemynear,vel y > 0
trigger1 = random < 550

; 3ed. JUGGLE RELAUNCH: b.MP again while they're still up there
[State -1, AI Juggle Relaunch]
type = changestate
triggerall = !ishelper
value = 260
triggerall = AILevel > 0
triggerall = statetype != A
trigger1 = stateno = 260
trigger1 = movehit
trigger1 = time >= 10
trigger1 = p2statetype = A
trigger1 = p2dist x > -4
trigger1 = p2bodydist x < 40
trigger1 = p2dist y = [-80,-10]
trigger1 = random < 650

; 3ee. AA CONFIRM: c.HP launcher connects vs air -> SBK juggle
[State -1, AI AA Confirm SBK]
type = changestate
triggerall = !ishelper
value = 1220
ignorehitpause = 1
triggerall = AILevel > 0
trigger1 = stateno = 260
trigger1 = movehit
trigger1 = p2statetype = A
trigger1 = p2dist y = [-60,-5]
trigger1 = enemynear,vel y > 0
trigger1 = random < 780

; 3eg. TECH CHASE: air-recovery near her = free relaunch
[State -1, AI Tech Chase]
type = changestate
triggerall = !ishelper
value = 260
triggerall = AILevel > 0
triggerall = p2dist x > -4
triggerall = ctrl
triggerall = statetype != A
trigger1 = enemynear,stateno = [5200,5219]
trigger1 = p2dist y = [-85,-10]
trigger1 = p2bodydist x < 45
trigger1 = random < 650

; 3f. AIR CHAIN: any air normal on contact -> j.HK ender
[State -1, AI Air Chain]
type = changestate
triggerall = !ishelper
value = 650
ignorehitpause = 1
triggerall = AILevel > 0
triggerall = statetype = A
trigger1 = stateno = [600,645]
trigger1 = movecontact
trigger1 = p2statetype = A
trigger1 = random < 750

; 3g. JUMP-IN: falling near foe -> deep j.HK
[State -1, AI Jump-in j.HK]
type = changestate
triggerall = !ishelper
value = 650
triggerall = AILevel > 0
triggerall = statetype = A
triggerall = stateno = 50
trigger1 = vel y > 0
trigger1 = p2statetype != L
trigger1 = p2bodydist x < 42
trigger1 = p2dist y > -25
trigger1 = random < 880

; 3h. LAND-LINK: touch down off an air hit -> c.MK to keep the string
[State -1, AI Land Link]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
trigger1 = stateno = 52
trigger1 = prevstateno = [600,699]
trigger1 = p2movetype = H
trigger1 = p2bodydist x < 50
trigger1 = random < 900

; --- 4. PUNISH GAME ---------------------------------------------------------
; 4a. RAW SUPER PUNISH: foe stuck in recovery with meter banked -> spend it
[State -1, AI Punish Super]
type = changestate
triggerall = !ishelper
value = ifelse(var(58) = 2, 3000, ifelse(var(58) = 4, 3200, 3100))
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = (var(58) = 2 && power >= 880) || (var(58) = 3 && power >= 1040) || (var(58) = 4 && power >= 720)
triggerall = statetype != A
triggerall = ctrl || (stateno = [130,141]) || (stateno = [150,155])
trigger1 = enemynear,movetype = I
trigger1 = enemynear,ctrl = 0
trigger1 = enemynear,animtime <= -16   ;<-- recovery long enough to guarantee it
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist x = [55,75]
trigger1 = random < 250

; 4b. GUARD-EXIT THROW: foe recovering at point blank while/after she blocks
[State -1, AI Punish Throw]
type = changestate
triggerall = !ishelper
value = 800
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = statetype != A
triggerall = ctrl || (stateno = [130,141]) || (stateno = [150,155])
trigger1 = enemynear,movetype = I
trigger1 = enemynear,ctrl = 0
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist x < 17
trigger1 = random < 750

; 4c. RECOVERY PUNISH: foe in recovery in range -> c.MK (confirms cancel)
[State -1, AI Punish c.MK]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = statetype != A
triggerall = ctrl || (stateno = [130,141]) || (stateno = [150,155])
trigger1 = enemynear,movetype = I
trigger1 = enemynear,ctrl = 0
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist x < 70
trigger1 = random < 800

; 4cc. LANDING PUNISH: whiffed jump-in lands next to her -> c.MK confirm
[State -1, AI Landing Punish]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = p2dist x > -4
triggerall = ctrl
triggerall = statetype != A
trigger1 = enemynear,stateno = 52
trigger1 = p2bodydist x = [10,62]
trigger1 = random < 750

; 4d. WHIFF PUNISH: foe attacking but OUT of reach -> step on their limb
[State -1, AI Whiff Punish c.MK]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = !inguarddist
trigger1 = p2statetype != A
trigger1 = p2bodydist x = [44,75]
trigger1 = random < 700

; 4dd. CROUCH-SPAM COUNTER: stubby crouch attacks whiffing at range -> c.MK
; (short pokes barely trip inguarddist, so guard gets no warning; the answer
;  is outranging them: c.MK reaches 103, their stub doesn't)
[State -1, AI Counter Crouch Poke]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = p2dist x > -4
triggerall = ctrl
triggerall = statetype != A
trigger1 = enemynear,statetype = C
trigger1 = enemynear,movetype = A
trigger1 = !inguarddist
trigger1 = p2bodydist x = [25,60]
trigger1 = random < 520

; 4de. WHIFF PUNISH s.MP: faster button for close-range whiffs
[State -1, AI Whiff Punish s.MP]
type = changestate
triggerall = !ishelper
value = 210
triggerall = AILevel > 0
triggerall = enemynear,statetype != L   ;<-- the dead cannot be comboed
triggerall = p2dist x > -4
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = !inguarddist
trigger1 = p2statetype != A
trigger1 = p2bodydist x = [18,44]
trigger1 = random < 700

; --- 4z. TURN THEFT : pressure is not a sentence ---------------------------
; Ibuki-class AIs chain endlessly and cancel their own blockstun into
; attacks. The ONLY counterplay is stealing turns by force, using the same
; legal tech her file proves works (attacking out of guard-hit states).

; 4z1. ABARE: jab out of blockstun gaps. Her chains have 1-3 tick seams;
; c.LK is active in 4. Connects -> the chain engine converts the steal.
[State -1, AI Abare c.LK]
type = changestate
triggerall = !ishelper
value = 430
triggerall = AILevel > 0
triggerall = p2dist x > -4
trigger1 = stateno = [150,153]
trigger1 = p2bodydist x < 30
trigger1 = enemynear,statetype != A
trigger1 = random < 240

; 4z2. GUARD THROW: walk-up tick throws get thrown FIRST
; (Punish Throw needs their recovery; this covers the pre-throw walk-up)
[State -1, AI Guard Throw]
type = changestate
triggerall = !ishelper
value = 800
triggerall = AILevel > 0
triggerall = p2dist x > -4
trigger1 = stateno = [130,141]
trigger1 = enemynear,ctrl
trigger1 = enemynear,movetype != A
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist x < 17
trigger1 = random < 380

; 4z3. CORNERED REVERSAL: EX SBK out of guard when trapped on the wall
; (flies up-forward: damage + corner escape in one). Costed, so rare.
[State -1, AI Corner Reversal EX SBK]
type = changestate
triggerall = !ishelper
value = 1250
triggerall = AILevel > 0
triggerall = power >= 400
triggerall = backedgebodydist < 30
trigger1 = stateno = [130,141]
trigger1 = enemynear,movetype = A
trigger1 = p2bodydist x < 40
trigger1 = random < 130

; 4z4. PARRY ESCAPE: cornered parry -> dash THROUGH them (side steal)
; instead of punishing in place. Uses the parry's frame advantage to flip
; the stage position entirely.
[State -1, AI Parry Escape Dash]
type = changestate
triggerall = !ishelper
value = 100
triggerall = AILevel > 0
triggerall = backedgebodydist < 35
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) >= 0
trigger1 = p2statetype != A
trigger1 = random < 600

; 4z5. FRAME TRAP: her AI mashes out of OUR blockstrings (25%/frame) --
; so a blocked light deliberately re-presses into the mash = counter-hit
; into the full chain engine. Her habit becomes our combo starter.
[State -1, AI Frame Trap c.LK]
type = changestate
triggerall = !ishelper
value = 430
triggerall = AILevel > 0
triggerall = p2dist x > -4
triggerall = enemynear,statetype != L
trigger1 = stateno = 430 || stateno = 400 || stateno = 210
trigger1 = moveguarded
trigger1 = time >= 9
trigger1 = p2bodydist x < 30
trigger1 = random < 480

; --- 5. GUARD : mirror the attacker's stance --------------------------------
; Standing foes mostly hit mid (stand-block them); crouching foes hit low
; (crouch-block). Small random flip keeps her honest vs odd flags.
[State -1, AI Guard High]
type = changestate
triggerall = !ishelper
value = 130
triggerall = AILevel > 0
triggerall = life > 200 || random < 560   ;<-- chip kills: gamble on parry
triggerall = ctrl
triggerall = statetype != A
trigger1 = inguarddist
trigger1 = enemynear,statetype = S || enemynear,statetype = A
trigger1 = random < 960
trigger2 = inguarddist
trigger2 = enemynear,statetype = C
trigger2 = random < 120

[State -1, AI Guard Low]
type = changestate
triggerall = !ishelper
value = 131
triggerall = AILevel > 0
triggerall = life > 200 || random < 560   ;<-- chip kills: gamble on parry
triggerall = ctrl
triggerall = statetype != A
trigger1 = inguarddist
trigger1 = enemynear,statetype = C
trigger1 = random < 960
trigger2 = inguarddist
trigger2 = enemynear,statetype = S
trigger2 = random < 120

; 5b. DASH-CANCEL GUARD: dash 100 is ctrl=0 (helpless) -> bail into block
; the moment she's dashing into a live attack.
[State -1, AI Dash Guard]
type = changestate
triggerall = !ishelper
value = ifelse(enemynear,statetype = C, 131, 130)
triggerall = AILevel > 0
trigger1 = stateno = 100
trigger1 = inguarddist
trigger1 = random < 850

; 5c. TURN REACT: enemy crossed behind while she's in guard -> reset to idle
; (guard states never auto-turn; idle does, then guard re-engages correctly)
[State -1, AI Turn React]
type = changestate
triggerall = !ishelper
value = 0
triggerall = AILevel > 0
trigger1 = stateno = [130,141]
trigger1 = p2dist x < -8
trigger1 = random < 900

; 6cc. JUMP-AWAY SPACING: step outside the jump arc; the whiff feeds
[State -1, AI Jump Away Space]
type = changestate
triggerall = !ishelper
value = 105
triggerall = AILevel > 0
triggerall = ctrl
triggerall = statetype != A
triggerall = backedgebodydist > 60
trigger1 = p2statetype = A
trigger1 = enemynear,vel y < 0
trigger1 = p2bodydist x = [30,90]
trigger1 = random < 450

; 6c. JUMP-UNDER EVADE: step out from under the arc; landing punish feeds
[State -1, AI Jump Under Evade]
type = changestate
triggerall = !ishelper
value = ifelse(backedgebodydist < 40, 100, 105)
triggerall = AILevel > 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype = A
trigger1 = p2dist y < -60
trigger1 = p2bodydist x < 35
trigger1 = random < 250

; --- 6. ANTI-AIR -------------------------------------------------------------
; 6a. FAST AA: c.HP launcher vs quick jumps (cancelable -> air confirms)
[State -1, AI Anti-Air Launcher]
type = changestate
triggerall = !ishelper
value = 260
triggerall = AILevel > 0
triggerall = p2dist x > -12
triggerall = ctrl || (stateno = [130,141])
triggerall = statetype != A
trigger1 = (enemynear,movetype != A) || (p2dist y > -45)
trigger1 = p2statetype = A
trigger1 = p2bodydist x < 55
trigger1 = p2dist y = [-95,-25]
trigger1 = enemynear,vel y > -1
trigger1 = random < 930

; 6b. SBK only for deep, clearly descending jump-ins
[State -1, AI Anti-Air SBK]
type = changestate
triggerall = !ishelper
value = 1220
triggerall = AILevel > 0
triggerall = !numhelper(39000) || helper(39000),var(11) > 150
triggerall = ctrl || (stateno = [130,141])
triggerall = statetype != A
trigger1 = p2statetype = A
trigger1 = p2bodydist x < 60
trigger1 = p2dist y = [-80,-25]
trigger1 = enemynear,vel y > 0.5
trigger1 = random < 300
trigger2 = p2statetype = A
trigger2 = p2dist x < 8
trigger2 = p2dist y = [-55,-15]
trigger2 = random < 300

; 6bb. AIR THROW: beats short hops when she's airborne with them
[State -1, AI Air Throw]
type = changestate
triggerall = !ishelper
value = 850
triggerall = AILevel > 0
triggerall = statetype = A
triggerall = stateno = 50
trigger1 = p2statetype = A
trigger1 = p2bodydist x < 24
trigger1 = p2dist y = [-30,30]
trigger1 = random < 600

[State -1, AI Air-to-Air]
type = changestate
triggerall = !ishelper
value = 620
triggerall = AILevel > 0
triggerall = statetype = A
triggerall = stateno = 50
trigger1 = p2statetype = A
trigger1 = p2bodydist x < 55
trigger1 = random < 650

; --- 7. OKIZEME : own the knockdown -------------------------------------------
; 7a. close the gap while they're down
[State -1, AI Oki Approach]
type = changestate
triggerall = !ishelper
value = 100
triggerall = AILevel > 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype = L
trigger1 = p2bodydist x > 36
trigger1 = random < 260

; 7aa. OKI SPACING: don't stand on the body (wake-throw bait range)
[State -1, AI Oki Spacing]
type = changestate
triggerall = !ishelper
value = 105
triggerall = AILevel > 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype = L
trigger1 = p2bodydist x < 10
trigger1 = random < 200

; 7ab. OKI GUARD: sometimes respect the wake-up reversal instead of pressing
[State -1, AI Oki Guard]
type = changestate
triggerall = !ishelper
value = 130
triggerall = AILevel > 0
triggerall = ctrl || stateno = 100
triggerall = statetype != A
triggerall = p2bodydist x < 45
trigger1 = enemynear,stateno = 5120
trigger1 = enemynear,animtime >= -10
trigger1 = random < 300
trigger2 = enemynear,stateno = [5099,5199]
trigger2 = enemynear,animtime >= -10
trigger2 = random < 300

; 7b. MEATY c.MK timed to wake-up (5120 std getup; 5100-5119 variants)
[State -1, AI Meaty c.MK]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl || stateno = 100
triggerall = statetype != A
triggerall = p2bodydist x < 56
trigger1 = enemynear,stateno = 5120
trigger1 = enemynear,animtime = [-8,-5]
trigger1 = random < 520
trigger2 = enemynear,stateno = [5099,5199]
trigger2 = enemynear,animtime = [-8,-5]
trigger2 = random < 520
trigger3 = enemynear,prevstateno = [5099,5199]
trigger3 = enemynear,time < 5
trigger3 = random < 900

; 7bb. FAST MEATY c.LK: 4-tick startup, window measured to overlap wake frame
[State -1, AI Meaty c.LK]
type = changestate
triggerall = !ishelper
value = 430
triggerall = AILevel > 0
triggerall = p2dist x > -4
triggerall = ctrl || stateno = 100
triggerall = statetype != A
triggerall = p2bodydist x < 30
trigger1 = enemynear,stateno = 5120
trigger1 = enemynear,animtime = [-6,-3]
trigger1 = random < 420
trigger2 = enemynear,stateno = [5099,5199]
trigger2 = enemynear,animtime = [-6,-3]
trigger2 = random < 420
trigger3 = enemynear,prevstateno = [5099,5199]
trigger3 = enemynear,time < 4
trigger3 = random < 800

; 7c. wake-up THROW mixup
[State -1, AI Meaty Throw]
type = changestate
triggerall = !ishelper
value = 800
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl || stateno = 100
triggerall = statetype != A
triggerall = p2bodydist x < 16
trigger1 = enemynear,stateno = 5120
trigger1 = enemynear,animtime >= -2
trigger1 = random < 160
trigger2 = enemynear,stateno = [5099,5199]
trigger2 = enemynear,animtime >= -2
trigger2 = random < 160
trigger3 = enemynear,prevstateno = [5099,5199]
trigger3 = enemynear,time < 4
trigger3 = random < 380

; --- 8. NEUTRAL OFFENSE : decisive footsies -----------------------------------
[State -1, AI Poke c.LK]
type = changestate
triggerall = !ishelper
value = 430
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = enemynear,stateno != [40,41]
trigger1 = enemynear,vel y = 0
trigger1 = p2bodydist x < 32
trigger1 = random < 240 + (32 - p2bodydist x) * 10

[State -1, AI Poke s.MP]
type = changestate
triggerall = !ishelper
value = 210
triggerall = AILevel > 0
triggerall = (enemynear,power < 950) || (random < 450)   ;<-- respect their super
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = enemynear,stateno != [40,41]
trigger1 = enemynear,vel y = 0
trigger1 = p2movetype != A
trigger1 = p2bodydist x < 52
trigger1 = random < 240

[State -1, AI Poke c.MK]
type = changestate
triggerall = !ishelper
value = 440
triggerall = AILevel > 0
triggerall = !numhelper(39000) || helper(39000),var(1) < 220 || random < 500
triggerall = (enemynear,power < 950) || (random < 450)   ;<-- respect their super
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
triggerall = p2movetype != H || p2statetype = L
trigger1 = p2statetype != A
trigger1 = enemynear,stateno != [40,41]
trigger1 = enemynear,vel y = 0
trigger1 = p2movetype != A
trigger1 = p2bodydist x = [32,68]
trigger1 = random < 200

; sweep: PUNISH-ONLY tool (recovering foes) -> free okizeme
[State -1, AI Sweep]
type = changestate
triggerall = !ishelper
value = 450
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype != A
trigger1 = p2movetype = I
trigger1 = enemynear,ctrl = 0
trigger1 = p2bodydist x = [30,58]
trigger1 = random < 350

; --- 8b. HAZANSHU : overhead arc to crack crouch-guard turtles --------------
[State -1, AI Hazanshu]
type = changestate
triggerall = !ishelper
value = 1310
triggerall = AILevel > 0
triggerall = !numhelper(39000) || helper(39000),var(10) > 180   ;<-- no repeats
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = enemynear,statetype = C
trigger1 = p2movetype != A
trigger1 = p2statetype != L
trigger1 = enemynear,vel y = 0
trigger1 = p2bodydist x = [40,80]
trigger1 = random < 45

[State -1, AI Kikoken]
type = changestate
triggerall = !ishelper
value = 1100
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != A
trigger1 = p2bodydist x > 160
trigger1 = random < 35

; --- 9. THROW : the close-range answer ----------------------------------------
[State -1, AI Throw]
type = changestate
triggerall = !ishelper
value = 800
triggerall = AILevel > 0
triggerall = p2dist x > -4   ;<-- never swing at someone behind you
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2movetype != H
trigger1 = p2movetype != A
trigger1 = p2bodydist x < 17
trigger1 = random < 420

; --- 10. MOVEMENT ---------------------------------------------------------------
; --- 10b. BAIT STEP : back off at footsie range to draw a whiff ------------
; (the Whiff Punish layer converts what they stick out)
[State -1, AI Bait Step]
type = changestate
triggerall = !ishelper
value = 105
triggerall = AILevel > 0
triggerall = !numhelper(39000) || helper(39000),var(12) > 90
triggerall = backedgebodydist > 60   ;<-- never bait toward the wall
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2bodydist x = [36,95]
trigger1 = p2movetype != A
trigger1 = p2statetype != L
trigger1 = random < 50

[State -1, AI Approach Dash]
type = changestate
triggerall = !ishelper
value = 100
triggerall = AILevel > 0
triggerall = !numhelper(39000) || helper(39000),var(1) < 220 || random < 500   ;<-- jumpy foe: advance less
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2statetype != A
trigger1 = p2bodydist x > 110
trigger1 = p2movetype != A
trigger1 = random < 60

[State -1, AI Retreat Dash]
type = changestate
triggerall = !ishelper
value = 105
triggerall = AILevel > 0
triggerall = backedgebodydist > 60
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = random < 30

;== END CHUN-LI AI =========================================================
;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State 1500];百裂コマンド認識ヘルパーEX
type = helper
trigger1 = !ishelper
trigger1 = command = "百裂脚EX"
trigger1 = numhelper(1085) = 0
stateno = 1085
ID = 1085
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
keyctrl = 1

[State 1500];百裂コマンド認識ヘルパー
type = helper
trigger1 = !ishelper
trigger1 = command = "百裂脚弱" || command = "百裂脚中" || command = "百裂脚強"
trigger1 = numhelper(1080) = 0
stateno = 1080
ID = 1080
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
keyctrl = 1


[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 3000
triggerall = !ishelper
triggerall = command = "SA"
triggerall = var(58) = 2
triggerall = power >= 880
triggerall = statetype != A
triggerall = var(38) = 0
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 3100
triggerall = !ishelper
triggerall = command = "SA2"
triggerall = var(58) = 3
triggerall = power >= 1040
triggerall = statetype != A
triggerall = var(38) = 0
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 3200
triggerall = !ishelper
triggerall = command = "SA2"
triggerall = var(58) = 4
triggerall = power >= 720
triggerall = statetype != A
triggerall = var(38) = 0
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1150
triggerall = !ishelper
triggerall = command = "気功拳EX"
triggerall = power >= 400
triggerall = var(38) = 0
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1120
triggerall = !ishelper
triggerall = command = "気功拳強"
triggerall = var(38) = 0
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1110
triggerall = !ishelper
triggerall = command = "気功拳中"
triggerall = var(38) = 0
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1100
triggerall = !ishelper
triggerall = command = "気功拳弱"
triggerall = var(38) = 0
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1250
triggerall = !ishelper
triggerall = command = "スピニングバードキックEX"
triggerall = var(38) = 0
triggerall = power >= 400
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1220
triggerall = !ishelper
triggerall = command = "スピニングバードキック強"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1210
triggerall = !ishelper
triggerall = command = "スピニングバードキック中"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1200
triggerall = !ishelper
triggerall = command = "スピニングバードキック弱"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1350
triggerall = !ishelper
triggerall = command = "覇山蹴EX"
triggerall = power >= 400
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1320
triggerall = !ishelper
triggerall = command = "覇山蹴強"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1310
triggerall = !ishelper
triggerall = command = "覇山蹴中"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1300
triggerall = !ishelper
triggerall = command = "覇山蹴弱"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1050
triggerall = !ishelper
triggerall = numhelper(1085)
triggerall = helper(1085),var(0) >= 4
triggerall = command = "百裂脚EX"
triggerall = power >= 400
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1020
triggerall = !ishelper
triggerall = numhelper(1080)
triggerall = helper(1080),var(0) >= 4
triggerall = command = "百裂脚強"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1010
triggerall = !ishelper
triggerall = numhelper(1080)
triggerall = helper(1080),var(0) >= 4
triggerall = command = "百裂脚中"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 1000
triggerall = !ishelper
triggerall = numhelper(1080)
triggerall = helper(1080),var(0) >= 4
triggerall = command = "百裂脚弱"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 800
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = var(38) = 0
triggerall = statetype = S || statetype = C
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = command != "holdback" || (p2dist x < 0 && command = "holdback")
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 805
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = var(38) = 0
triggerall = statetype = S || statetype = C
triggerall = command = "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 700
triggerall = !ishelper
triggerall = command = "リープアタック"
triggerall = var(38) = 0
triggerall = statetype = S || statetype = C
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 195
triggerall = !ishelper
triggerall = command = "PA"
triggerall = var(38) = 0
triggerall = statetype = S || statetype = C
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3



;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 265
triggerall = !ishelper
triggerall = command = "back_z"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3


[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 260
triggerall = !ishelper
triggerall = command = "back_y"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 275
triggerall = !ishelper
triggerall = command = "3_c"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 257
triggerall = !ishelper
triggerall = command = "fwd_c"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 270
triggerall = !ishelper
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 220
triggerall = !ishelper
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 210
triggerall = !ishelper
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 200
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = (p2dist x>=0&&(p2bodydist x=[-var(11)*0.5,var(11)*0.5]))||(p2dist x<0&&(p2bodydist x=[-(var(11)*1),-var(11)*0.5]))
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 205
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x > var(11)*0.5 || p2bodydist x < -var(11)*0.5
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 250
triggerall = !ishelper
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(38) = 0
triggerall = (p2dist x>=0&&(p2bodydist x=[-var(11),var(11)]))||(p2dist x<0&&(p2bodydist x=[-(var(11)*2),-var(11)]))
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 255
triggerall = !ishelper
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(38) = 0
triggerall = p2bodydist x > var(11) || p2bodydist x < -var(11)
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 240
triggerall = !ishelper
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(38) = 0
triggerall = (p2dist x>=0&&(p2bodydist x=[-var(11),var(11)]))||(p2dist x<0&&(p2bodydist x=[-(var(11)*2),-var(11)]))
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1, Standing Medium Kick]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 245
triggerall = !ishelper
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(38) = 0
triggerall = p2bodydist x > var(11) || p2bodydist x < -var(11)
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 230
triggerall = !ishelper
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 420
triggerall = !ishelper
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 410
triggerall = !ishelper
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 400
triggerall = !ishelper
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 450
triggerall = !ishelper
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 440
triggerall = !ishelper
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = varset
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
var(38) = 430
triggerall = !ishelper
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

;---------------------------------------------------------------------------




[State 131, 1]
type = varset
triggerall = !ishelper
triggerall = !var(39)
trigger1 = var(37) >= 3000

var(39) = 20

[State 131, 1]
type = varset
triggerall = !ishelper
triggerall = !var(39)
trigger1 = var(37) < 3000

var(39) = 15

[State 131, 1]
type = varadd
triggerall = !ishelper
trigger1 = var(39) > 0
trigger1 = 1
var(39) = -1
persistent = 1

[State -1]
type = ChangeState
value = var(38)
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(38)=[195,3999]
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) = 3

[State -1]
type = varset
var(38) = 0
triggerall = !ishelper
trigger1 = var(38)=[195,3999]
trigger1 = stateno=[195,3999]
trigger2 = movetype = H
;trigger3 = var(39) = 0







[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 3000
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "SA"
triggerall = var(58) = 2
triggerall = power >= 880
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 5120&&AnimTime = 0) || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || (stateno = [40,41])
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

trigger6 = animelemtime(9) >= 1 && animelemtime(13) < 0 && movetype = A
trigger6 = stateno = [1100,1150]

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 3100
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "SA2"
triggerall = var(58) = 3
triggerall = power >= 1040
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 5120&&AnimTime = 0) || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || (stateno = [40,41])
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

trigger6 = animelemtime(9) >= 1 && animelemtime(13) < 0 && movetype = A
trigger6 = stateno = [1100,1150]

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 3200
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "SA2"
triggerall = var(58) = 4
triggerall = power >= 720
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 5120&&AnimTime = 0) || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || (stateno = [40,41])
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

trigger6 = animelemtime(9) >= 1 && animelemtime(13) < 0 && movetype = A
trigger6 = stateno = [1100,1150]

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1150
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "気功拳EX"
triggerall = power >= 400
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1120
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "気功拳強"
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1110
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "気功拳中"
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1100
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "気功拳弱"
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1250
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "スピニングバードキックEX"
triggerall = power >= 400
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1220
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "スピニングバードキック強"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1210
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "スピニングバードキック中"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1200
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "スピニングバードキック弱"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1350
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "覇山蹴EX"
triggerall = power >= 400
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1320
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "覇山蹴強"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1310
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "覇山蹴中"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1300
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "覇山蹴弱"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1050
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = numhelper(1085)
triggerall = helper(1085),var(0) >= 4
triggerall = command = "百裂脚EX"
triggerall = power >= 400
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1020
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = numhelper(1080)
triggerall = helper(1080),var(0) >= 4
triggerall = command = "百裂脚強"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1010
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = numhelper(1080)
triggerall = helper(1080),var(0) >= 4
triggerall = command = "百裂脚中"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 1000
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = numhelper(1080)
triggerall = helper(1080),var(0) >= 4
triggerall = command = "百裂脚弱"
trigger1 = statetype != A
trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = stateno = 12 || stateno = 40
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger4 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger5 = (movecontact||movereversed) && var(19)
trigger5 = stateno = [200,440]
trigger5 = stateno != 220 && stateno != 410
trigger5 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger5 = (stateno != [250,275])||(stateno = [260,265])

;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 100
triggerall = !ishelper
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 105
triggerall = !ishelper
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 850
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = statetype = A
triggerall = command != "holdback"
trigger1 = ctrl || (((stateno = [600,670])&&time <= 3)&&(prevstateno != [600,670])&&(!movecontact&&!movereversed))
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 855
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = statetype = A
triggerall = command = "holdback"
trigger1 = ctrl || (((stateno = [600,670])&&time <= 3)&&(prevstateno != [600,670])&&(!movecontact&&!movereversed))
trigger1 = Anim != 5040 && Anim != 5210

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 800
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = statetype = S || statetype = C
triggerall = stateno != 100
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = command != "holdback" || (p2dist x < 0 && command = "holdback")

trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 805
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = statetype = S || statetype = C
triggerall = stateno != 100
triggerall = command = "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"

trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
;リープアタック
[State -1, Leap Attack]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 700
triggerall = !ishelper
triggerall = command = "リープアタック"
triggerall = statetype = S || statetype = C
triggerall = stateno != 100
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holddown"

trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------

[State -1, PA]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = ifelse(numhelper(197),196,195)
triggerall = !ishelper
triggerall = command = "PA"
triggerall = statetype = S || statetype = C
triggerall = stateno != 100
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holddown"

trigger1 = ctrl || (((stateno = [200,270])&&time <= 3)&&(prevstateno != [200,270])&&(!movecontact&&!movereversed))
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

trigger4 = (movecontact||movereversed) && movetype = A
trigger4 = stateno = [200,440]
trigger4 = stateno != 220 && stateno != 410
trigger4 = stateno != 230 && (stateno != [240,242]) && stateno != 245
trigger4 = (stateno != [250,275])||(stateno = [260,265])

;===========================================================================
;---------------------------------------------------------------------------
[State 200, 3];連打キャンセル用
type = varset
triggerall = !ishelper
trigger1 = stateno != [200,599]
trigger2 = time < 2
trigger2 = stateno = [200,599]
trigger3 = ctrl = 1
trigger3 = stateno = [200,599]
ignorehitpause = 1
var(10) = 0

[State 240, 3];近距離認識範囲
type = varset
triggerall = !ishelper
trigger1 = 1
var(11) = ceil(36*const(Size.xscale))

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, Forward Strong Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 265
triggerall = !ishelper
triggerall = command = "back_z"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Forward Strong Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 260
triggerall = !ishelper
triggerall = command = "back_y"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Forward Strong Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 275
triggerall = !ishelper
triggerall = command = "3_c"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Forward Strong Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 257
triggerall = !ishelper
triggerall = command = "fwd_c"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Forward Strong Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 270
triggerall = !ishelper
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 220
triggerall = !ishelper
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 210
triggerall = !ishelper
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 200
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = (p2dist x>=0&&(p2bodydist x=[-var(11)*0.5,var(11)*0.5]))||(p2dist x<0&&(p2bodydist x=[-(var(11)*1),-var(11)*0.5]))
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Stand Light Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 205
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x > var(11)*0.5 || p2bodydist x < -var(11)*0.5
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0
trigger4 = (movecontact||movereversed)
trigger4 = stateno = 205

;trigger5 = animelemtime(4) >= 0
;trigger5 = stateno = 205 || anim = 400
;trigger6 = anim = 401
;trigger6 = animelemtime(5) >= 0

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 250
triggerall = !ishelper
triggerall = command = "c"
triggerall = command != "holddown"
;triggerall = p2bodydist x = [-30,30]
triggerall = (p2dist x>=0&&(p2bodydist x=[-var(11),var(11)]))||(p2dist x<0&&(p2bodydist x=[-(var(11)*2),-var(11)]))
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Standing Strong Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 255
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist x > var(11) || p2bodydist x < -var(11)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger3 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 240
triggerall = !ishelper
triggerall = command = "b"
triggerall = command != "holddown"
;triggerall = p2bodydist x = [-30,30]
triggerall = (p2dist x>=0&&(p2bodydist x=[-var(11),var(11)]))||(p2dist x<0&&(p2bodydist x=[-(var(11)*2),-var(11)]))
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Standing Medium Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 245
triggerall = !ishelper
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x > var(11) || p2bodydist x < -var(11)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 230
triggerall = !ishelper
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0
trigger4 = (movecontact||movereversed)
trigger4 = stateno = 205
trigger5 = (movecontact||movereversed)
trigger5 = stateno = 400 || stateno = 430
;trigger6 = stateno = 205 || stateno = 400
;trigger6 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 420
triggerall = !ishelper
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 410
triggerall = !ishelper
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 400
triggerall = !ishelper
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0
trigger4 = (movecontact||movereversed)
trigger4 = stateno = 205
trigger5 = (movecontact||movereversed)
trigger5 = stateno = 400 || stateno = 430
;trigger6 = stateno = 205 || anim = 400
;trigger6 = animelemtime(4) >= 0
;trigger7 = anim = 401
;trigger7 = animelemtime(5) >= 0

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 450
triggerall = !ishelper
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 440
triggerall = !ishelper
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 430
triggerall = !ishelper
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0
trigger4 = (movecontact||movereversed)
trigger4 = stateno = 400 || stateno = 205
trigger5 = (movecontact||movereversed)
trigger5 = stateno = 430
trigger6 = (anim = 430 && animelemtime(6) >= 0)||(anim = 431 && animelemtime(7) >= 0)
trigger6 = stateno = 430
trigger6 = !(movecontact||movereversed)


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 60
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = vel x < 0  && vel y < 0
trigger1 = BackEdgeBodyDist <= 1
trigger1 = statetype = A
trigger1 = ctrl || (stateno = [600,660])&&movetype!=H
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 65
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "holdback"
triggerall = vel x > 0 && vel y < 0
trigger1 = FrontEdgeBodyDist <= 1
trigger1 = statetype = A
trigger1 = ctrl || (stateno = [600,660])&&movetype!=H
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 41
triggerall = !ishelper
triggerall = !ishelper
triggerall = command = "highjump"
triggerall = statetype != A
trigger1 = stateno = 250 && (movecontact||movereversed) && var(19)
trigger2 = stateno = 3100 && movehit && movetype = A; && !var(6)
trigger2 = numtarget(3110) && anim = 3100
trigger2 = p2movetype = H || numtarget
;---------------------------------------------------------------------------

[State -1, Jump Strong Punch]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 620
triggerall = !ishelper
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = vel x > 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 625
triggerall = !ishelper
triggerall = command = "z"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 620
triggerall = !ishelper
triggerall = command = "z"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 615
triggerall = !ishelper
triggerall = command = "y"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 610
triggerall = !ishelper
triggerall = command = "y"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 605
triggerall = !ishelper
triggerall = command = "x"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 600
triggerall = !ishelper
triggerall = command = "x"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 655
triggerall = !ishelper
triggerall = command = "c"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 650
triggerall = !ishelper
triggerall = command = "c"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 660
triggerall = !ishelper
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 645
triggerall = !ishelper
triggerall = command = "b"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 640
triggerall = !ishelper
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 635
triggerall = !ishelper
triggerall = command = "a"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
triggerall = AILevel = 0   ;<-- AI brain has sole control; humans unaffected
value = 630
triggerall = !ishelper
triggerall = command = "a"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

;===========================================================================
; AI BRAIN (helper 39000) -- persistent memory for the Chun-Li AI.
; Own vars (read by the body as helper(39000),var(N)):
;   var(1)  = opponent jump-habit gauge (rises while they're airborne,
;             decays in ground play; > 220 means "this one likes to jump")
;   var(10) = ticks since Chun last used Hazanshu      (cooldown)
;   var(11) = ticks since Chun last used SBK           (cooldown)
;   var(12) = ticks since Chun last used the bait step (cooldown)
;===========================================================================
[Statedef 39000]
type = U
movetype = U
physics = N
anim = 0
velset = 0,0

[State 39000, invisible]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 39000, untouchable]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 39000, follow root]
type = bindtoroot
trigger1 = 1
time = -1
facing = 1
ignorehitpause = 1

; --- jump habit gauge ---
[State 39000, jump habit up]
type = varadd
trigger1 = enemynear,statetype = A
var(1) = 3
ignorehitpause = 1

[State 39000, jump habit decay]
type = varadd
trigger1 = enemynear,statetype != A
trigger1 = var(1) > 0
var(1) = -1
ignorehitpause = 1

[State 39000, jump habit cap]
type = varset
trigger1 = var(1) > 600
var(1) = 600
ignorehitpause = 1

; --- option cooldown timers (watch the root's states) ---
[State 39000, hazanshu used]
type = varset
trigger1 = root,stateno = [1300,1350]
var(10) = 0
ignorehitpause = 1

[State 39000, hazanshu cool]
type = varadd
trigger1 = !(root,stateno = [1300,1350])
trigger1 = var(10) < 30000
var(10) = 1
ignorehitpause = 1

[State 39000, sbk used]
type = varset
trigger1 = root,stateno = [1200,1250]
var(11) = 0
ignorehitpause = 1

[State 39000, sbk cool]
type = varadd
trigger1 = !(root,stateno = [1200,1250])
trigger1 = var(11) < 30000
var(11) = 1
ignorehitpause = 1

[State 39000, bait used]
type = varset
trigger1 = root,stateno = 105
var(12) = 0
ignorehitpause = 1

[State 39000, bait cool]
type = varadd
trigger1 = root,stateno != 105
trigger1 = var(12) < 30000
var(12) = 1
ignorehitpause = 1

[State 39000, die with round]
type = destroyself
trigger1 = roundstate != 2
