
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
;== Added by request. ALL logic gated on AILevel > 0 -> zero effect on    ==
;== human play. Execution uses her own var(38) buffer, so cancels/combos  ==
;== run through her real engine. To DISABLE: delete this whole banner block.==
;==                                                                        ==
;== TUNING: each behaviour ends in 'random < N' (N out of 1000) = its      ==
;== per-frame chance to fire. Raise N = more aggressive/reactive, lower =  ==
;== calmer. Reactions (anti-air / confirm) are high so they're reliable.   ==
;== For best results, select her SUPER ART 2 (Houyokusen) in the select    ==
;== screen -- the confirm routes are built around it.                      ==
;===========================================================================

; --- 0. JUMP VETO : cancel reckless neutral jumps that feed anti-airs ------
; Engine CPU mashes 'up' in neutral; vs a grounded foe that just fed her to
; fast anti-airs. Intercept the prejump (40): abort-to-stand if the foe is
; attacking (so the guard logic engages) else turn it into a grounded dash.
; Jumps vs airborne / hitstun / knocked-down foes are kept (air-to-air, oki).
[State -1, AI Jump Veto]
type = changestate
value = ifelse(p2movetype = A, 0, 100)
triggerall = AILevel > 0
trigger1 = stateno = 40
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2movetype != H
trigger1 = p2bodydist x < 150
trigger1 = random < 900


; --- 1. ANTI-AIR (super) : metered punish vs jump-ins -----------------------
[State -1, AI AA Super]
type = varset
var(38) = ifelse(var(58)=3,3100,ifelse(var(58)=4,3200,3000))
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
triggerall = var(58) = [2,4]
triggerall = power >= ifelse(var(58)=3,1040,ifelse(var(58)=4,720,880))
trigger1 = enemynear,statetype = A
trigger1 = enemynear,vel y > -1
trigger1 = p2bodydist x < 55
trigger1 = random < 450

; --- 2. ANTI-AIR (Spinning Bird Kick) : default reliable AA -----------------
[State -1, AI AA SBK]
type = varset
var(38) = 1210
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = enemynear,statetype = A
trigger1 = enemynear,vel y > -2
trigger1 = p2bodydist x < 48
trigger1 = random < 650

; --- 2b. GUARD (high) : stand-block jump-ins / overheads -------------------
[State -1, AI Guard High]
type = changestate
value = 130
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = inguarddist
trigger1 = enemynear,statetype = A
trigger1 = random < 850

; --- 2c. GUARD (low) : crouch-block grounded pressure ----------------------
; Holds until the threat leaves range (see AILevel gates in chun-li.cns).
; Crouch-guard covers lows + mids; overheads/jump-ins beat it on purpose.
[State -1, AI Guard Low]
type = changestate
value = 131
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = inguarddist
trigger1 = enemynear,statetype != A
trigger1 = random < 850


; --- 3. HIT-CONFIRM into Super (metered) : cancel any poke that landed -----
[State -1, AI Confirm Super]
type = varset
var(38) = ifelse(var(58)=3,3100,ifelse(var(58)=4,3200,3000))
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
triggerall = var(58) = [2,4]
triggerall = power >= ifelse(var(58)=3,1040,ifelse(var(58)=4,720,880))
trigger1 = p2movetype = H
trigger1 = p2bodydist x < 45
trigger1 = random < 700

; --- 4. HIT-CONFIRM into Lightning Legs (meterless) ------------------------
[State -1, AI Confirm Legs]
type = varset
var(38) = 1010
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2movetype = H
trigger1 = p2bodydist x < 42
trigger1 = random < 850

; --- 4b. PUNISH : whiff/recovery punish, confirms into legs/super ----------
; Anti-turtle piece: foe stuck in recovery (can't act, not attacking, not
; down) and in range -> c.MK, which the confirm routes above cancel into
; Lightning Legs / Super. Blocking flows into offense instead of a shell.
[State -1, AI Punish Recovery]
type = varset
var(38) = 440
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = enemynear,ctrl = 0
trigger1 = enemynear,movetype = I
trigger1 = enemynear,statetype != L
trigger1 = enemynear,statetype != A
trigger1 = p2bodydist x < 78
trigger1 = random < 600


; --- 5. REVERSAL : occasional super to interrupt pressure (read) -----------
[State -1, AI Reversal Super]
type = varset
var(38) = ifelse(var(58)=3,3100,ifelse(var(58)=4,3200,3000))
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
triggerall = var(58) = [2,4]
triggerall = power >= ifelse(var(58)=3,1040,ifelse(var(58)=4,720,880))
trigger1 = p2movetype = A
trigger1 = p2bodydist x < 50
trigger1 = random < 80

; --- 6. POKE : crouching MK, her signature footsie button ------------------
[State -1, AI Poke c.MK]
type = varset
var(38) = 440
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2bodydist x = [22, 68]
trigger1 = random < 260

; --- 7. POKE : standing HK as a longer-range check -------------------------
[State -1, AI Poke s.HK]
type = varset
var(38) = 250
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2bodydist x = [55, 95]
trigger1 = random < 130

; --- 8. CLOSE POKE : crouching LK to start pressure ------------------------
[State -1, AI Poke c.LK]
type = varset
var(38) = 430
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2bodydist x < 22
trigger1 = random < 220

; --- 8b. ANTI-THROW : contest grabs at point-blank -------------------------
; She has NO throw-tech state, so she can't tech. Partial mitigation only:
; at point-blank vs an idle actionable foe she sometimes jabs (c.LP) to beat
; a throw startup. Lower the random if she mashes into counter-hits.
[State -1, AI Anti-throw Jab]
type = varset
var(38) = 400
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = enemynear,ctrl
trigger1 = enemynear,movetype = I
trigger1 = enemynear,statetype = S
trigger1 = p2bodydist x < 24
trigger1 = random < 230


; --- 9. THROW : point-blank tick throw -------------------------------------
[State -1, AI Throw]
type = varset
var(38) = 800
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2bodydist x < 14
trigger1 = random < 150

; --- 10. OVERHEAD MIXUP : Hazanshu to crack a turtling blocker -------------
[State -1, AI Hazanshu]
type = varset
var(38) = 1310
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2movetype != A
trigger1 = p2bodydist x = [28, 75]
trigger1 = random < 70

; --- 11. ZONING : Kikoken at range to build meter & control space ---------
[State -1, AI Kikoken]
type = varset
var(38) = 1110
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,93]
trigger1 = p2statetype != A
trigger1 = p2bodydist x > 95
trigger1 = random < 180

; --- 12. APPROACH : forward dash to close into footsie range --------------
[State -1, AI Approach]
type = changestate
value = 100
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,91]
trigger1 = p2bodydist x = [80, 150]
trigger1 = p2statetype != A
trigger1 = random < 140

; --- 13. RETREAT : back dash to reset spacing when crowded ----------------
[State -1, AI Retreat]
type = changestate
value = 105
triggerall = AILevel > 0
triggerall = var(38) = 0
triggerall = stateno = [90,91]
trigger1 = p2bodydist x < 18
trigger1 = p2movetype != A
trigger1 = random < 70
;===========================================================================
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
var(38) = 1220
triggerall = !ishelper
triggerall = command = "スピニングバードキック強"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
var(38) = 1210
triggerall = !ishelper
triggerall = command = "スピニングバードキック中"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
var(38) = 1200
triggerall = !ishelper
triggerall = command = "スピニングバードキック弱"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
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
var(38) = 1320
triggerall = !ishelper
triggerall = command = "覇山蹴強"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
var(38) = 1310
triggerall = !ishelper
triggerall = command = "覇山蹴中"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
var(38) = 1300
triggerall = !ishelper
triggerall = command = "覇山蹴弱"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
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
var(38) = 275
triggerall = !ishelper
triggerall = command = "3_c"
triggerall = var(38) = 0
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [90,93]
trigger1 = AnimElemTime(4) < 3

[State -1]
type = varset
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
value = 105
triggerall = !ishelper
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 850
triggerall = !ishelper
triggerall = command = "スルー"
triggerall = statetype = A
triggerall = command != "holdback"
trigger1 = ctrl || (((stateno = [600,670])&&time <= 3)&&(prevstateno != [600,670])&&(!movecontact&&!movereversed))
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
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
value = 275
triggerall = !ishelper
triggerall = command = "3_c"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 52 && prevstateno = [600,699]) && time >= 0;time >= 3
trigger3 = (stateno = 52 && prevstateno != [600,699]) && time >= 0

[State -1, Forward Strong Kick]
type = ChangeState
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
value = 625
triggerall = !ishelper
triggerall = command = "z"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
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
value = 615
triggerall = !ishelper
triggerall = command = "y"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
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
value = 605
triggerall = !ishelper
triggerall = command = "x"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
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
value = 655
triggerall = !ishelper
triggerall = command = "c"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
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
value = 660
triggerall = !ishelper
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
value = 645
triggerall = !ishelper
triggerall = command = "b"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
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
value = 635
triggerall = !ishelper
triggerall = command = "a"
triggerall = vel x != 0 || stateno = 661
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210

[State -1]
type = ChangeState
value = 630
triggerall = !ishelper
triggerall = command = "a"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Anim != 5040 && Anim != 5210
