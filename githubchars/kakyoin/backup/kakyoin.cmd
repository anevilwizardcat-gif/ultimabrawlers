;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 5

;-| Super Motions |--------------------------------------------------------

[command]
name = "oshioki"
command = x, x, F, a, z
time = 60 ;35

[command]
name = "oshioki"
command = x, x, F, y, z
time = 60 ;35

[command]
name = "finish"
command = ~F, D, DF, ~x+y
time = 25

[command]
name = "finish"
command = ~F, D, DF, ~y+z
time = 25

[command]
name = "finish"
command = ~F, D, DF, ~x+z
time = 25

[command]
name = "finish"
command = F, D, DF, x+y
time = 25

[command]
name = "finish"
command = F, D, DF, y+z
time = 25

[command]
name = "finish"
command = F, D, DF, x+z
time = 25

[command]
name = "constrict"
command = ~F, D, DF, ~a+b
time = 25

[command]
name = "constrict"
command = ~F, D, DF, ~b+c
time = 25

[command]
name = "constrict"
command = ~F, D, DF, ~a+c
time = 25

[command]
name = "constrict"
command = F, D, DF, a+b
time = 25

[command]
name = "constrict"
command = F, D, DF, b+c
time = 25

[command]
name = "constrict"
command = F, D, DF, a+c
time = 25

[command]
name = "20emerald"
command = ~D, DF, F, ~x+y

[command]
name = "20emerald"
command = ~D, DF, F, ~y+z

[command]
name = "20emerald"
command = ~D, DF, F, ~x+z

[command]
name = "20emerald"
command = D, DF, F, x+y

[command]
name = "20emerald"
command = D, DF, F, y+z

[command]
name = "20emerald"
command = D, DF, F, x+z

[command]
name = "new20emerald"
command = ~D, DF, F, ~a~b

[command]
name = "new20emerald"
command = ~D, DF, F, ~b~c

[command]
name = "new20emerald"
command = ~D, DF, F, ~a~c

[command]
name = "new20emerald"
command = D, DF, F, a+b

[command]
name = "new20emerald"
command = D, DF, F, b+c

[command]
name = "new20emerald"
command = D, DF, F, a+c

[command]
name = "india_1"
command = ~D, DB, B, ~x+y

[command]
name = "india_2"
command = ~D, DB, B, ~y+z

[command]
name = "india_3"
command = ~D, DB, B, ~x+z

[command]
name = "india_4"
command = ~D, DB, B, ~x+y+z

[command]
name = "india_1"
command = D, DB, B, x+y

[command]
name = "india_2"
command = D, DB, B, y+z

[command]
name = "india_3"
command = D, DB, B, x+z

[command]
name = "india_4"
command = D, DB, B, x+y+z

;-| Special Motions |------------------------------------------------------

[command]
name = "qcb_x"
command = ~D, DB, B, ~x

[command]
name = "qcb_y"
command = ~D, DB, B, ~y

[command]
name = "qcb_z"
command = ~D, DB, B, ~z

[command]
name = "qcb_a"
command = ~D, DB, B, ~a

[command]
name = "qcb_b"
command = ~D, DB, B, ~b

[command]
name = "qcb_c"
command = ~D, DB, B, ~c

[command]
name = "qcb_x"
command = D, DB, B, x

[command]
name = "qcb_y"
command = D, DB, B, y

[command]
name = "qcb_z"
command = D, DB, B, z

[command]
name = "qcb_a"
command = D, DB, B, a

[command]
name = "qcb_b"
command = D, DB, B, b

[command]
name = "qcb_c"
command = D, DB, B, c

[command]
name = "emerald"
command  = ~D, DF, F, ~x

[command]
name = "emerald"
command  = ~D, DF, F, ~y

[command]
name = "emerald"
command  = ~D, DF, F, ~z

[command]
name = "emerald"
command  = D, DF, F, x

[command]
name = "emerald"
command  = D, DF, F, y

[command]
name = "emerald"
command  = D, DF, F, z

[command]
name = "tairap_x"
command = ~B, F, D, B, x
time = 50

[command]
name = "tairap_y"
command = ~B, F, D, B, y
time = 50

[command]
name = "tairap_z"
command = ~B, F, D, B, z
time = 50

[command]
name = "tairap_a"
command = ~B, F, D, B, a
time = 50

[command]
name = "tairap_b"
command = ~B, F, D, B, b
time = 50

[command]
name = "tairap_c"
command = ~B, F, D, B, c
time = 50

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = y+z
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = x+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "zc"
command = z+c
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 2;1

[Command]
name = "ditch"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1
[Command]
name = "fwd_b"
command = /F,b
time = 1
[Command]
name = "fwd_c"
command = /F,c
time = 1
[Command]
name = "fwd_x"
command = /F,x
time = 1
[Command]
name = "fwd_y"
command = /F,y
time = 1
[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1
[Command]
name = "back_b"
command = /B,b
time = 1
[Command]
name = "back_c"
command = /B,c
time = 1
[Command]
name = "back_x"
command = /B,x
time = 1
[Command]
name = "back_y"
command = /B,y
time = 1
[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /D,a
time = 1
[Command]
name = "down_b"
command = /D,b
time = 1
[Command]
name = "down_c"
command = /D,c
time = 1
[Command]
name = "down_x"
command = /D,x
time = 1
[Command]
name = "down_y"
command = /D,y
time = 1
[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1
[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1
[Command]
name = "fwd_yz"
command = /F, y+z
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1
[Command]
name = "back_yz"
command = /B, y+z
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1
[Command]
name = "back_bc"
command = /B, b+c
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

;-| Hold Button |-----------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

; COMMON STAND STATES

[state haha]
type = attackmulset
trigger1 = 1
value = ifelse(var(6) = 1 || var(6) = 3, 1, .74)
ignorehitpause = 1

[state haha]
type = removeexplod
trigger1 = ishelper(225) = 1
trigger1 = numexplod(22514) = 1 && root, stateno = 220
id = 22514

[State that gives the inverted effect]
type = PalFX
trigger1 = ishelper(225)
trigger2 = ishelper(225)
add = (root, var(5)),ceil((root, var(5)) * 1.5),(root, var(5))
time = 2
ignorehitpause = 1

[state haha]
type = parentvarset
trigger1 = ishelper(3310) || ishelper(3110) || ishelper(1110)
;trigger1 = numhelper(2120) >= 1
var(22) = var(12);(helper(2120), var(12))
ignorehitpause = 1

[state haha]
type = parentvarset
trigger1 = ishelper(3310) || ishelper(3110) || ishelper(1110)
;trigger1 = numhelper(2120) >= 1
var(23) = var(11) ;(helper(2120), var(11))
ignorehitpause = 1

[state haha]
type = playsnd
trigger1 = ishelper(3310) || ishelper(3110) || ishelper(1110)
trigger1 = var(12) = 1
value = s0 + (10 * (RoundState >= 3 && root, WinKO)),var(18) ;5 + (15 * (random >= 500))
ignorehitpause = 1
channel = 3

[state haha]
type = null;playsnd
trigger1 = ishelper(3310) || ishelper(3110) || ishelper(1110)
trigger1 = var(12) = 1
value = s0 + (10 * (RoundState >= 3 && root, WinKO)),var(18) ;5 + (15 * (random >= 500))
ignorehitpause = 1
channel = 3

[state haha]
type = playsnd
trigger1 = ishelper(3310) || ishelper(3110) || ishelper(1110)
trigger1 = var(11) = 1
value = s0, 21
ignorehitpause = 1
channel = 3


;[state haha]
;type = playsnd
;trigger1 = !ishelper
;trigger1 = var(22) = 1
;value = s0 + (10 * (RoundState = 3 && WinKO)),var(18) ;5 + (15 * (random >= 500))
;ignorehitpause = 1
;channel = 3

;[state haha]
;type = playsnd
;trigger1 = !ishelper
;trigger1 = var(23) = 1
;value = s0, 21
;ignorehitpause = 1
;channel = 3

[state haha]
type = varset
trigger1 = numhelper(3110) = 0
var(22) = 0
ignorehitpause = 1

[state haha]
type = varset
trigger1 = numhelper(3110) = 0
var(23) = 0
ignorehitpause = 1

[State heh]
type = parentvarset
triggerall = ishelper(3110) || ishelper(3310)
trigger1 = numhelper(3120) >= 1
trigger1 = helper(3120), movehit
var(18) = var(18) ;(helper(2120), var(18))
ignorehitpause = 1

;---------------------------------------------------------------------------
; Commands
[state aha]
type = changestate
triggerall = ishelper = 0
triggerall = command = "oshioki" ;|| command = "zc"
triggerall = roundstate = 2
triggerall = statetype != A && power >= 1000
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = 52
value = 3000

[state aha]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A && power >= 1000
triggerall = command = "finish" && statetype != A
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = 52
value = 3300

[state aha]
type = null;changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A && power >= 3000
triggerall = command = "constrict" && statetype != A
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = 52
value = 3500

[state aha]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A && power >= 1000
triggerall = command = "20emerald" && statetype != A
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = 52
value = 3100

[state aha]
type = null;changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A && power >= 1000
triggerall = command = "new20emerald" && statetype != A
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = 52
value = 3400

[state aha]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A && power >= 1000
triggerall = command = "india_1" || command = "india_2" || command = "india_3" || command = "india_4"
triggerall = statetype != A
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = 52
value = 3200 + ifelse(command = "yz", 1, ifelse(command = "xz", 2, ifelse(command = "xyz", 3, 0)))

[state Tairap Snake]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A
triggerall = command = "tairap_x" || command = "tairap_y" || command = "tairap_z"
;triggerall = command = "qcb_a" || command = "qcb_b" || command = "qcb_c"
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = [400,450]
trigger5 = stateno = 52
value = 1200 + ifelse(command = "y", 1, ifelse(command = "z", 2, 0))

[state Mystic Trap]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = numhelper(1000) = 0
;triggerall = statetype != A
triggerall = command = "qcb_x"
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = [400,450]
trigger5 = stateno = 52
value = 1000

[state Mystic Trap]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = numhelper(1001) = 0
;triggerall = statetype != A
triggerall = command = "qcb_y"
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = [400,450]
trigger5 = stateno = 52
value = 1001

[state Mystic Trap]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = numhelper(1002) = 0
;triggerall = statetype != A
triggerall = command = "qcb_z"
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = [400,450]
trigger5 = stateno = 52
value = 1002

[state Emerald Splash]
type = changestate
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = statetype != A
triggerall = command = "emerald"
triggerall = var(25) = 0 ; No Stand detected
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger3 = stateno = [300,350]
trigger4 = stateno = [400,450]
trigger5 = stateno = 52
value = 1100

;---------------------------------------------------------------------------
;RunF
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = command = "FF"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = command = "BB"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------

[State -1, Ditch]
type = ChangeState
value = 260
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "ditch"
triggerall = sysvar(3) = 0
trigger1 = statetype != a && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = [105,107]
trigger4 = stateno = 220

;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100,102]
trigger3 = stateno = 200 && animelemno(0) >= 3
trigger4 = stateno = 52

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(8) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 300 && movecontact
trigger5 = stateno = 330 && movecontact
trigger6 = stateno = [100,102]
trigger7 = stateno = 52

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = ifelse(var(25) = 0, 220, 210)
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210 && var(25) = 0
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 300
trigger6 = movecontact
trigger7 = stateno = 310
trigger7 = numhelper(315) >= 1
trigger7 = helper(315), movecontact
trigger8 = stateno = 330 && movecontact
trigger9 = stateno = 340 && movecontact
trigger10 = stateno = [100,102]
trigger11 = stateno = 52

;---------------------------------------------------------------------------

;Standing Low Kick
[State -1]
type = ChangeState
value = 230 + (var(8) * 10 * (p2bodydist x <= 15))
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = (command = "a" && var(8) = 0) || (command = "y" && var(8) = 1)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_X
trigger2 = movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = [100,102]
trigger5 = stateno = 230 && animelemno(0) >= 3
trigger6 = stateno = 52

;--------------------------------------------------------------------------
;Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(8) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 300
trigger5 = movecontact
trigger6 = stateno = 310
trigger6 = numhelper(315) >= 1
trigger6 = helper(315), movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = [100,102]
trigger9 = stateno = 52

;--------------------------------------------------------------------------
;Standing High Kick
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(8) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = numhelper(225) >= 1
trigger4 = helper(225), movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 300
trigger7 = movecontact
trigger8 = stateno = 310
trigger8 = numhelper(315) >= 1
trigger8 = helper(315), movecontact
trigger9 = stateno = 320
trigger9 = movecontact
trigger10 = stateno = 330
trigger10 = movecontact
trigger11 = stateno = 340
trigger11 = movecontact
trigger12 = stateno = [100,102]
trigger13 = stateno = 52

;---------------------------------------------------------------------------
;CrouchING LOW Punch
[State -1]
type = ChangeState
value = 300
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(8) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = [100,102]
trigger3 = stateno = 300 && animelemno(0) >= 4
trigger4 = stateno = 52

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = ifelse(var(25) = 0, 310, 300)
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 300 && var(25) = 0
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = [100,102]
trigger7 = stateno = 52

;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = ifelse(var(25) = 0, 320, 300)
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(8) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 300 && var(25) = 0
trigger6 = movecontact
trigger7 = stateno = 310
trigger7 = numhelper(315) >= 1
trigger7 = helper(315), movecontact
trigger8 = stateno = 330
trigger8 = movecontact
trigger9 = stateno = 340
trigger9 = movecontact
trigger10 = stateno = [100,102]
trigger11 = stateno = 52

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 330
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(8) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 300
trigger3 = movecontact
trigger4 = stateno = [100,102]
trigger5 = stateno = 330 && animelemno(0) >= 4
trigger6 = stateno = 52

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 340
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = (command = "b" && var(8) = 0) || (command = "x" && var(8) = 1)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 300
trigger5 = movecontact
trigger6 = stateno = 310
trigger6 = numhelper(315) >= 1
trigger6 = helper(315), movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = [100,102]
trigger9 = stateno = 52

;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = ifelse(var(25) = 0, 350, 340)
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = (command = "c" && var(8) = 0) || (command = "z" && var(8) = 1)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = numhelper(225) >= 1
trigger4 = helper(225), movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 300
trigger7 = movecontact
trigger8 = stateno = 310
trigger8 = numhelper(315) >= 1
trigger8 = helper(315), movecontact
trigger9 = stateno = 320
trigger9 = numhelper(325) >= 1
trigger9 = helper(325), movecontact
trigger10 = stateno = 330
trigger10 = movecontact
trigger11 = stateno = 340 && var(25) = 0
trigger11 = movecontact
trigger12 = stateno = [100,102]
trigger13 = stateno = 52

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "y"
triggerall = var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact && var(25) = 0
trigger3 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = ifelse(var(25) = 0, 420, 410)
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact && var(25) = 0
trigger3 = numhelper(415) >= 1
trigger3 = stateno = 410 && helper(415), movecontact && var(25) = 0
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = (command = "a" && var(8) = 0) || (command = "y" && var(8) = 1)
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "b"
triggerall = var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = numhelper(415) >= 1
trigger3 = stateno = 410 && helper(415), movecontact
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Jump_Z (moving)
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = ishelper = 0
triggerall = command = "c"
triggerall = var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = numhelper(415) >= 1
trigger3 = stateno = 410 && helper(415), movecontact
trigger4 = numhelper(425) >= 1
trigger4 = stateno = 420 && helper(425), movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 160
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State haha]
type = ChangeState
triggerall = roundstate = 2
triggerall = (stateno = [150, 155]) ;&& numhelper(250) = 0
trigger1 = (command = "xy" || Command = "yz")
trigger2 = Command = "xyz"
;trigger3 = var(22) = 1 && Random > 100
;trigger4 = var(22) = 1 && P2BodyDist X <= 10
value = 270
ignorehitpause = 1

[State 210, 2]
type = null;Appendtoclipboard
trigger1 = 1
text = " velocity = %f"
params = vel X
ignorehitpause = 1