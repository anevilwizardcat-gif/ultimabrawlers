;-| Button Remapping |-----------------------------------------------------
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
command.time = 15
command.buffer.time = 1

[Command]
name = "cpu1"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "cpu2"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0

[Command]
name = "cpu3"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "cpu4"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "cpu5"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "cpu6"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "cpu7"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "cpu8"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0

[Command]
name = "cpu9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0

[Command]
name = "cpu10"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0

[Command]
name = "cpu11"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Devil Must Die"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "Million Dollars"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "Hyper Rising Dragon"
command = ~F, D, DF, y+z
time = 15

[Command]
name = "Volcano"
command = ~B, D, DB, y+z
time = 15

[Command]
name = "Beowulf Hyper Combo"
command = ~D, DB, B, b+c
time = 15

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

;-| Special Motions |------------------------------------------------------

[Command]
name = "Stinger"
command = ~D, DF, F, x
time = 15

[Command]
name = "Million Stab"
command = ~D, DF, F, y
time = 15

[Command]
name = "Crazy Dance"
command = ~D, DF, F, z
time = 15

[Command]
name = "High Time"
command = ~F, D, DF, z
time = 15

[Command]
name = "Rebellion Slam"
command = ~D, DF, F, z
time = 15

;--------------------------------------------

[Command]
name = "Normal Shot High"
command = ~D, DB, B, x
time = 15

[Command]
name = "Normal Shot Low"
command = ~D, DB, B, y
time = 15

[Command]
name = "Normal Shot Anti Air"
command = ~D, DB, B, z
time = 15

[Command]
name = "Normal Shot Air"
command = ~D, DB, B, z
time = 15

;--------------------------------------------

[Command]
name = "Straight"
command = ~D, DF, F, a
time = 15

[Command]
name = "Hyper Fist"
command = ~D, DF, F, b
time = 15

[Command]
name = "Beowulf Combo"
command = ~D, DF, F, c
time = 15

[Command]
name = "Rising Dragon"
command = ~F, D, DF, c
time = 15

[Command]
name = "Killer Bee"
command = ~D, DF, F, b
time = 15

[Command]
name = "The Hammer"
command = ~D, DF, F, c
time = 15

;--------------------------------------------

[Command]
name = "Cerberus Combo"
command = ~D, DB, B, a
time = 15

[Command]
name = "Windmill"
command = ~D, DB, B, b
time = 15

[Command]
name = "Satellite"
command = ~D, DB, B, c
time = 15

[Command]
name = "Crystal"
command = ~B, D, DB, a
time = 15

[Command]
name = "Million Carats"
command = ~B, D, DB, b
time = 15

;--------------------------------------------

[Command]
name = "Teleport"
command = ~B, D, F, x
time = 15

[Command]
name = "Teleport"
command = ~B, D, F, y
time = 15

[Command]
name = "Teleport"
command = ~B, D, F, z
time = 15

[Command]
name = "Teleport Mid"
command = ~F, D, B, x
time = 15

[Command]
name = "Teleport Mid"
command = ~F, D, B, y
time = 15

[Command]
name = "Teleport Mid"
command = ~F, D, B, z
time = 15

[Command]
name = "Teleport Air"
command = ~B, D, F, x
time = 15

[Command]
name = "Teleport Air"
command = ~B, D, F, y
time = 15

[Command]
name = "Teleport Air"
command = ~B, D, F, z
time = 15

;--------------------------------------------

[Command]
name = "Stand Forward Kick"
command = /$F, c
time = 5

;--------------------------------------------

[Command]
name = "Air Dash Forward"
command = ~F, F
time = 15

[Command]
name = "Air Dash Backward"
command = ~B, B
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Volcano]
type = ChangeState
value = 3400
triggerall = command = "Volcano"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(6)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1001 && movecontact
trigger18 = stateno = 1002 && movecontact
trigger19 = stateno = 1004 && movecontact
trigger20 = stateno = 1100 && movecontact
trigger21 = stateno = 1101 && movecontact
trigger22 = stateno = 1102 && movecontact
trigger23 = stateno = 1200 && movecontact
trigger24 = stateno = 1201 && movecontact
trigger25 = stateno = 1202 && movecontact
trigger26 = stateno = 1205 && movecontact
trigger27 = stateno = 1300 && movecontact
trigger28 = stateno = 1301 && movecontact
trigger29 = stateno = 1302 && movecontact
trigger30 = stateno = 1303 && movecontact
trigger31 = stateno = 1304 && movecontact

[State -1, Beowulf Hyper Combo]
type = ChangeState
value = 3300
triggerall = command = "Beowulf Hyper Combo"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(6)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1001 && movecontact
trigger18 = stateno = 1002 && movecontact
trigger19 = stateno = 1004 && movecontact
trigger20 = stateno = 1100 && movecontact
trigger21 = stateno = 1101 && movecontact
trigger22 = stateno = 1102 && movecontact
trigger23 = stateno = 1200 && movecontact
trigger24 = stateno = 1201 && movecontact
trigger25 = stateno = 1202 && movecontact
trigger26 = stateno = 1205 && movecontact
trigger27 = stateno = 1300 && movecontact
trigger28 = stateno = 1301 && movecontact
trigger29 = stateno = 1302 && movecontact
trigger30 = stateno = 1303 && movecontact
trigger31 = stateno = 1304 && movecontact

[State -1, Hyper Rising Dragon]
type = ChangeState
value = 3200
triggerall = command = "Hyper Rising Dragon"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(6)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1001 && movecontact
trigger18 = stateno = 1002 && movecontact
trigger19 = stateno = 1004 && movecontact
trigger20 = stateno = 1100 && movecontact
trigger21 = stateno = 1101 && movecontact
trigger22 = stateno = 1102 && movecontact
trigger23 = stateno = 1200 && movecontact
trigger24 = stateno = 1201 && movecontact
trigger25 = stateno = 1202 && movecontact
trigger26 = stateno = 1205 && movecontact
trigger27 = stateno = 1300 && movecontact
trigger28 = stateno = 1301 && movecontact
trigger29 = stateno = 1302 && movecontact
trigger30 = stateno = 1303 && movecontact
trigger31 = stateno = 1304 && movecontact

[State -1, Devil Must Die]
type = ChangeState
value = 3100
triggerall = command = "Devil Must Die"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(6)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1001 && movecontact
trigger18 = stateno = 1002 && movecontact
trigger19 = stateno = 1004 && movecontact
trigger20 = stateno = 1100 && movecontact
trigger21 = stateno = 1101 && movecontact
trigger22 = stateno = 1102 && movecontact
trigger23 = stateno = 1200 && movecontact
trigger24 = stateno = 1201 && movecontact
trigger25 = stateno = 1202 && movecontact
trigger26 = stateno = 1205 && movecontact
trigger27 = stateno = 1300 && movecontact
trigger28 = stateno = 1301 && movecontact
trigger29 = stateno = 1302 && movecontact
trigger30 = stateno = 1303 && movecontact
trigger31 = stateno = 1304 && movecontact

[State -1, Million Dollars]
type = ChangeState
value = 3000
triggerall = command = "Million Dollars"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(6)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1001 && movecontact
trigger18 = stateno = 1002 && movecontact
trigger19 = stateno = 1004 && movecontact
trigger20 = stateno = 1100 && movecontact
trigger21 = stateno = 1101 && movecontact
trigger22 = stateno = 1102 && movecontact
trigger23 = stateno = 1200 && movecontact
trigger24 = stateno = 1201 && movecontact
trigger25 = stateno = 1202 && movecontact
trigger26 = stateno = 1205 && movecontact
trigger27 = stateno = 1300 && movecontact
trigger28 = stateno = 1301 && movecontact
trigger29 = stateno = 1302 && movecontact
trigger30 = stateno = 1303 && movecontact
trigger31 = stateno = 1304 && movecontact

;---------------------------------------------------------------------------------------

[State -1, Air Dash Forward]
type = ChangeState
value = 110
triggerall = command = "Air Dash Forward"
triggerall = RoundState = 2 && StateType = A
triggerall = ctrl && pos y <= -30 || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1012,1016]

[State -1, Air Dash Backward]
type = ChangeState
value = 115
triggerall = command = "Air Dash Backward"
triggerall = RoundState = 2 && StateType = A
triggerall = ctrl && pos y <= -30 || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1012,1016]

;---------------------------------------------------------------------------------------

[State -1, Teleport Air]
type = ChangeState
value = 1402
triggerall = command = "Teleport Air"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger3= var(5)
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 650 && movecontact
trigger10 = stateno = 1103 && movecontact

[State -1, Teleport Mid]
type = ChangeState
value = 1401
triggerall = command = "Teleport Mid"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1102 && movecontact

[State -1, Teleport]
type = ChangeState
value = 1400
triggerall = command = "Teleport"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1101 && movecontact
trigger17 = stateno = 1100 && movecontact

;---------------------------------------------------------------------------------------

[State -1, Million Carats]
type = ChangeState
value = 1305
triggerall = command = "Million Carats"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1300 && movecontact
trigger17 = stateno = 1302 && movecontact
trigger18 = stateno = 1303 && movecontact
trigger19 = stateno = 1304 && movecontact

[State -1, Crystal]
type = ChangeState
value = 1304
triggerall = command = "Crystal"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1200 && movecontact

[State -1, Satellite]
type = ChangeState
value = 1303
triggerall = command = "Satellite"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1302 && movecontact

[State -1, Windmill]
type = ChangeState
value = 1302
triggerall = command = "Windmill"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1300 && movecontact

[State -1, Cerberus Combo]
type = ChangeState
value = 1300
triggerall = command = "Cerberus Combo"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact
trigger17 = stateno = 1200 && movecontact

;---------------------------------------------------------------------------------------

[State -1, Beowulf Combo]
type = ChangeState
value = 1205
triggerall = command = "Beowulf Combo"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1201 && movecontact

[State -1, Killer Bee]
type = ChangeState
value = 1204
triggerall = command = "Killer Bee"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger3= var(5)
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 650 && movecontact
trigger10 = stateno = 1202 && movecontact
trigger11 = stateno = 1002 && movecontact

[State -1, The Hammer]
type = ChangeState
value = 1203
triggerall = command = "The Hammer"
triggerall = RoundState=2&& statetype=A
trigger1  = ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger3  = var(5)
trigger4  = stateno = 600 && movecontact
trigger5  = stateno = 610 && movecontact
trigger6  = stateno = 620 && movecontact
trigger7  = stateno = 630 && movecontact
trigger8  = stateno = 640 && movecontact
trigger9  = stateno = 650 && movecontact
trigger10 = stateno = 1202 && movecontact
trigger11 = stateno = 1002 && movecontact

[State -1, Rising Dragon]
type = ChangeState
value = 1202
triggerall = command = "Rising Dragon"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1001 && movecontact
trigger17 = stateno = 1201 && movecontact
trigger18 = stateno = 1205 && movecontact
trigger19 = stateno = 1004 && movecontact

[State -1, Hyper Fist]
type = ChangeState
value = 1201
triggerall = command = "Hyper Fist"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1001 && movecontact
trigger17 = stateno = 1200 && movecontact

[State -1, Straight]
type = ChangeState
value = 1200
triggerall = command = "Straight"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact

;---------------------------------------------------------------------------------------

[State -1, Normal Shot Air]
type = ChangeState
value = 1103
triggerall = command = "Normal Shot Air"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger3= var(5)
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 650 && movecontact

[State -1, Normal Shot Anti Air]
type = ChangeState
value = 1102
triggerall = command = "Normal Shot Anti Air"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact

[State -1, Normal Shot Low]
type = ChangeState
value = 1101
triggerall = command = "Normal Shot Low"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact

[State -1, Normal Shot High]
type = ChangeState
value = 1100
triggerall = command = "Normal Shot High"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact

;---------------------------------------------------------------------------------------

[State -1, Crazy Dance]
type = ChangeState
value = 1004
triggerall = command = "Crazy Dance"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 1001 && movecontact

[State -1, Rebellion Slam]
type = ChangeState
value = 1003
triggerall = command = "Rebellion Slam"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger3= var(5)
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 650 && movecontact
trigger10 = stateno = 1002 && movecontact

[State -1, High Time]
type = ChangeState
value = 1002
triggerall = command = "High Time"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1001 && movecontact
trigger17 = stateno = 1004 && movecontact

[State -1, Million Stab]
type = ChangeState
value = 1001
triggerall = command = "Million Stab"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 1000 && movecontact

[State -1, Stinger]
type = ChangeState
value = 1000
triggerall = command = "Stinger"
triggerall = RoundState = 2 && StateType != A
trigger1  = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2  = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact
trigger9  = stateno = 260 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 430 && movecontact
trigger14 = stateno = 440 && movecontact
trigger15 = stateno = 450 && movecontact

[State -1, Stand Forward Kick]
type = ChangeState
value = 260
triggerall = command = "Stand Forward Kick"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3  = stateno = 200 && movecontact
trigger4  = stateno = 210 && movecontact
trigger5  = stateno = 220 && movecontact
trigger6  = stateno = 230 && movecontact
trigger7  = stateno = 240 && movecontact
trigger8  = stateno = 250 && movecontact

[State -1, Throw Forward]
type = ChangeState
value = 800
trigger1 = command = "holdfwd" && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw Backward]
type = ChangeState
value = 900
trigger1 = command = "holdback" && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2  = stateno = 200 && movecontact
trigger3  = stateno = 210 && movecontact
trigger4  = stateno = 220 && movecontact
trigger5  = stateno = 230 && movecontact
trigger6  = stateno = 240 && movecontact
trigger7  = stateno = 250 && movecontact
trigger8  = stateno = 260 && movecontact
trigger9  = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1, Run Forward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Backward]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Rolling]
type = ChangeState
value = 710
triggerall = command = "b+y"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1 Advancing Guard]
type = ChangeState
value = 550
triggerall = command = "pp"
trigger1 = stateno = [150,151]

[State -1 Advancing Guard Low]
type = ChangeState
value = 560
triggerall = command = "pp"
trigger1 = stateno = [152,153]

[State -1 Advancing Guard Air]
type = ChangeState
value = 570
triggerall = command = "pp"
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;--------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"  
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown" 
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1= ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 240 && movecontact

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2  = stateno = 200 && movecontact
trigger3  = stateno = 210 && movecontact
trigger4  = stateno = 220 && movecontact
trigger5  = stateno = 230 && movecontact
trigger6  = stateno = 240 && movecontact
trigger7  = stateno = 250 && movecontact
trigger8  = stateno = 260 && movecontact
trigger9  = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact
trigger5 = stateno = 430 && movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact
trigger5 = stateno = 440 && movecontact

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
var(59) = 1

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State -1, Standing Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<75) || ((stateno=[760,760]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=760
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<75) || ((stateno=[761,761]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=761
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<75) || (stateno=762 && random<333)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=762
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[760,762]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106])|| (stateno=[120,132])
trigger3= var(59)<=0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0

[State -1, Dash Forward]
type=changestate
value=100
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, Dash Backward]
type=changestate
value=105
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, Throw Forward]
type=changestate
value=800
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, Throw Backward]
type=changestate
value=900
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, Jump]
type=changestate
value=40
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = var(59)>=1 && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Rolling]
type = ChangeState
value = 710
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, Guard]
type=changestate
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= ifelse(statetype=A, (var(9)!=2 || stateno=5210), 1)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, Air Recover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random<200

[State -1, SLP]
type=changestate
value=200
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=220
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=230
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=240
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=250
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=260
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=400
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=410
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=420
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=430
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=440
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=450
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLP]
type=changestate
value=600
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

[State -1, SLP]
type=changestate
value=610
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

[State -1, SLP]
type=changestate
value=620
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

[State -1, SLP]
type=changestate
value=630
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

[State -1, SLP]
type=changestate
value=640
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

[State -1, SLP]
type=changestate
value=650
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

;---------------------------------------------------------------------------------------------------

[State -1]
type=changestate
value=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1001
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1002
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1004
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1003
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 220, 75)

;---------------------------------------------------------------------------------------------------

[State -1]
type=changestate
value=1100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1101
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1102
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1103
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 220, 75)

;---------------------------------------------------------------------------------------------------

[State -1]
type=changestate
value=1200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1201
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1202
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1205
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1203
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 220, 75)

[State -1]
type=changestate
value=1204
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 220, 75)

;---------------------------------------------------------------------------------------------------

[State -1]
type=changestate
value=1300
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1302
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1303
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1304
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1305
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

;---------------------------------------------------------------------------------------------------

[State -1]
type=changestate
value=1400
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1401
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1]
type=changestate
value=1402
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 220, 75)

;---------------------------------------------------------------------------------------------------

[State -1, SUPER1]
type=changestate
value=3000
triggerall= power>=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1, SUPER1]
type=changestate
value=3100
triggerall= power>=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1, SUPER1]
type=changestate
value=3200
triggerall= power>=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1, SUPER1]
type=changestate
value=3300
triggerall= power>=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150

[State -1, SUPER1]
type=changestate
value=3400
triggerall= power>=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,220])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=220&&random<150