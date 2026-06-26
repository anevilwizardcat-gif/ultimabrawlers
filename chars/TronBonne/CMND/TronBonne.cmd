; the cmd File.
;
; two parts: 1. command Definition and  2. state entry
; (state entry is after the commands Def section)
;
; 1. command Definition
; ---------------------
; note: the commands are case-sensitive, and so are the command names.
; the eight Directions are:
;   B, DB, D, DF, F, UF, U, UB     (all caps)
;   corresponding to back, Down-back, Down, DownforwarD, etc.
; the six buttons are:
;   a, B, c, x, y, z               (all lower case)
;   in Default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you Use a and b.
;   For 6 button characters, Use abc For kicks and xyz For punches.
;
; each [command] section Defines a command that you can Use For
; state entry, as well as in the cns File.
; the command section should look like:
;
;   [command]
;   name = some_name
;   command = the_command
;   time = time (optional -- Defaults to 15 if omitted)
;
; - some_name
;   a name to give that command. you'll Use this name to refer to
;   that command in the state entry, as well as the cns. it is case-
;   sensitive (qcb_a is not the same as qcb_a or qcb_a).
;
; - command
;   list of buttons or Directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held Down
;          egs. command = /D       ;hold the Down Direction
;               command = /DB, a   ;hold Down-back while you press a
;   tilde (~) - to Detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release Down, press FwD, then a
;          if you want to Detect "charge moves", you can specify
;          the time the key must be held Down For (in game-ticks)
;          egs. command = ~30a     ;hold a For at least 30 ticks, then release
;   Dollar ($) - Direction-only: Detect as 4-way
;          egs. command = $D       ;will Detect if D, DB or DF is held
;               command = $B       ;will Detect if B, DB or UB is held
;   plus (+) - buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   you can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF For 30 ticks, release,
;                                  ;then press a and b together
;   it's recommended that For most "motion" commads, eg. quarter-circle-fwD,
;   you start off with a "release Direction". this matches the way most
;   popular Fighting games implement their command Detection.
;
; - time (optional)
;   time allowed to Do the commanD, given in game-ticks. Defaults to 15
;   if omitted
;
; if you have two or more commands with the same name, all of them will
; work. you can Use it to allow multiple motions For the same move.
;
; some common commands examples are given below.
;
; [command] ;quarter circle Forward + x
; name = "qcf_x"
; command = ~D, DF, F, x
;
; [command] ;half circle back + a
; name = "hcb_a"
; command = ~F, DF, D, DB, B, a
;
; [command] ;two quarter circles Forward + y
; name = "2qcf_y"
; command = ~D, DF, F, D, DF, F, y
;
; [command] ;tap b rapidly
; name = "5b"
; command = B, B, B, B, b
; time = 30
;
; [command] ;charge back, then Forward + z
; name = "charge_b_f_z"
; command = ~60$B, F, z
; time = 10
; 
; [command] ;charge Down, then Up + c
; name = "charge_d_u_c"
; command = ~60$D, U, c
; time = 10
; 

;-| super motions |--------------------------------------------------------
[command]
name = "dp_x"
command = ~F, D, DF, x

[command]
name = "dp_y"
command = ~F, D, DF, y

[command]
name = "dp_z"
command = ~F, D, DF, z

[command]
name = "qcf_xy"
command = ~D, DF, F, x+y

[command]
name = "qcf_xy"
command = ~D, DF, F, x+z

[command]
name = "qcf_xy"
command = ~D, DF, F, y+z

[command]
name = "qcb_xy"
command = ~D, DB, B, x+y

[command]
name = "qcb_xy"
command = ~D, DB, B, x+z

[command]
name = "qcb_xy"
command = ~D, DB, B, y+z

[command]
name = "qcb_x"
command = ~D, DB, B, x

[command]
name = "qcb_y"
command = ~D, DB, B, y

[command]
name = "qcb_z"
command = ~D, DB, B, z

;-| special motions |------------------------------------------------------

[command]
name = "qcf_x"
command = ~D, DF, F, x

[command]
name = "qcf_y"
command = ~D, DF, F, y

[command]
name = "qcf_z"
command = ~D, DF, F, z

[command]
name = "qcf_x"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

[command]
name = "qcf_y"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

[command]
name = "qcf_z"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10

[command]
name = "qcf_a"
command = ~D, DF, F, a

[command]
name = "qcf_b"
command = ~D, DF, F, b

[command]
name = "qcf_c"
command = ~D, DF, F, c

[command]
name = "qcf_a"
command = ~D, DF, F, ~a
time = 10
buffer.time = 10

[command]
name = "qcf_b"
command = ~D, DF, F, ~b
time = 10
buffer.time = 10

[command]
name = "qcf_c"
command = ~D, DF, F, ~c
time = 10
buffer.time = 10

[command]
name = "qcb_a"
command = ~D, DB, B, a

[command]
name = "qcb_b"
command = ~D, DB, B, b

[command]
name = "qcb_c"
command = ~D, DB, B, c

[command]
name = "qcb_a"
command = ~D, DB, B, ~a
time = 10
buffer.time = 10

[command]
name = "qcb_b"
command = ~D, DB, B, ~b
time = 10
buffer.time = 10

[command]
name = "qcb_c"
command = ~D, DB, B, ~c
time = 10
buffer.time = 10

[command]
name = "ff_x"
command = F,D,DF, x
time = 20

[command]
name = "ff_y"
command = F,D,DF,y
time = 20

[command]
name = "ff_z"
command = F,D,DF, z
time = 20

[command]
name = "ff_x"
command = ~F,D,DF, ~x
time = 10
buffer.time = 10

[command]
name = "ff_y"
command = ~F,D,DF,~y
time = 10
buffer.time = 10

[command]
name = "ff_z"
command = ~F,D,DF, ~z
time = 10
buffer.time = 10

[command]
name = "ff_a"
command = F,D,DF, a
time = 20

[command]
name = "ff_b"
command = F,D,DF,b
time = 20

[command]
name = "ff_c"
command = F,D,DF, c
time = 20

[Command]
name = "RecoveryRoll"
command = B, DB, D, x
time = 1

[Command]
name = "RecoveryRoll"
command = B, DB, D, y
time = 1

[Command]
name = "RecoveryRoll"
command = B, DB, D, z
time = 1

;-| DoUBle tap |-----------------------------------------------------------
[command]
name = "ff"     ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb"     ;required (do not remove)
command = B, B
time = 10

;-| TAP |------------

[command]
name = "TAP"     ;required (do not remove)
command = a, b, c
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = b, a, c
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = c, b, a
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = a, c, b
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = a, b, x
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = a, x, c
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = x, b, c
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = x, y, z
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = x, z, y
time = 1

[command]
name = "TAP"     ;required (do not remove)
command = y, z, x
time = 1

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = $D, $U

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| 2/3 button combination |-----------------------------------------------

[Command]
name = "Double"
command = ~D, DF, F, c+z

[Command]
name = "tag"
command = c+z

[Command]
name = "assist"
command = b+y

;------------------------------------------------------------
[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[command]
name = "recovery";required (do not remove)
command = y+z
time = 1

[command]
name = "recovery";required (do not remove)
command = x+z
time = 1

;-| Dir + button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = b
time = 1


;-| hold Dir |--------------------------------------------------------------
[command]
name = "hold c"
command = /$c
time = 1

[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

[command]
name = "holddownback"
command = /$DB
time = 1

[command]
name = "holddownfwd"
command = /$DF
time = 1

[command]
name = "holdupback"
command = /$UB
time = 1

[command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holddownforward"
command = /$DF
time = 1

[command]
name = "cpu1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu3"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu15"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu16"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu8"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu25"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu26"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "cpu29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "cpu30"
command = s, s, s, s, s, s, s, s
time = 1

;---------------------------------------------------------------------------

; commands
[statedef -1]

;Framelle
[state -1,z]
type = changestate
value = 4000
triggerall = Helper(3000), stateno != [34000,34299]
triggerall = stateno != 1019
triggerall = command = "qcf_xy"
triggerall = power >= 1000 
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,1299]
trigger2 = stateno != [800,899]

;Partonelle
[state -1,z]
type = changestate
value = 4100
triggerall = Helper(3000), stateno != [34000,34299]
triggerall = stateno != 1019
triggerall = statetype != a 
triggerall = command = "qcb_xy"
triggerall = power >= 1000 
trigger1 = ctrl
trigger2 = stateno = [200,1299]
trigger2 = stateno != [800,899]

;===========================================================================
;phantoom
[state -1, phantoom]
type = changestate
value = 1200
triggerall = command = "dp_x"
triggerall = statetype != a
triggerall = numhelper(12000) = 0
trigger1 = ctrl
trigger2 = stateno = [200,699]

;power Drain
[state -1, phantoom]
type = changestate
value = 1201
triggerall = statetype != a
triggerall = command = "dp_y"
triggerall = numhelper(12000) = 0
trigger1 = ctrl
trigger2 = stateno = [200,699]

[state -1, phantoom]
type = changestate
value = 1202
triggerall = statetype != a
triggerall = command = "dp_z"
triggerall = numhelper(12000) = 0
trigger1 = ctrl
trigger2 = stateno = [200,699]
;---------------------------------------------------------------------------

;shwarzelle
[state -1, ]
type = changestate
value = 1000
triggerall = command = "qcf_a"
trigger1 = ctrl
trigger2 = stateno = [200,699]
trigger2 = p2stateno != [715,717]
;---------------------------------------------------------------------------
;shwarzelle
[state -1, ]
type = changestate
value = 1001
triggerall = command = "qcf_b"
trigger1 = ctrl
trigger2 = stateno = [200,699]
trigger2 = p2stateno != [715,717]

;---------------------------------------------------------------------------
;shwarzelle
[state -1, ]
type = changestate
value = 1002
triggerall = command = "qcf_c"
trigger1 = ctrl
trigger2 = stateno = [200,699]
trigger2 = p2stateno != [715,717]

;-------------------------------------------------
;special powers 1
[state -1, steal]
type = changestate
value = 1100
triggerall = command = "qcf_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,699]

[state -1, steal]
type = changestate
value = 1101
triggerall = command = "qcf_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,699]

[state -1, steal]
type = changestate
value = 1102
triggerall = command = "qcf_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,699]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;“š‚°
[state -1, z]
type = changestate
value = 800 + (statetype = a)
triggerall = command = "z"
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = s)
trigger1 = p2bodydist x < 3
trigger1 = (p2statetype = s) || (p2statetype = c)
trigger1 = p2movetype != h
trigger2 = command = "holdback" && (statetype = s)
trigger2 = p2bodydist x < 5
trigger2 = (p2statetype = s) || (p2statetype = c)
trigger2 = p2movetype != h
trigger3 = command = "holdfwd" && (statetype = a)
trigger3 = p2bodydist x < 3
trigger3 = p2statetype = a
trigger4 = command = "holdback" && (statetype = a)
trigger4 = p2bodydist x < 5
trigger4 = p2statetype = a 
trigger5 = command = "holdback" && (statetype = s)
trigger5 = p2bodydist x < 5
trigger5 = (p2statetype = s) || (p2statetype = c)
trigger5 = p2stateno = 1110

;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 112
triggerall = !var(36)
triggerall = !var(11)
triggerall = statetype = A && Pos Y < -(const(movement.airjump.height))
triggerall = ctrl
trigger1 = command = "ff"
trigger2 = command = "recovery"


;run Fwd
;ƒ_ƒbƒvƒ…
[state -1, run Fwd]
type = changestate
value = 105
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "bb")

;run back
;ƒ_ƒbƒvƒ…
[state -1, run Fwd]
type = changestate
value = 100
triggerall = statetype != A
triggerall = var(5) = 0
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "recovery") || (StateType != A && command = "ff")

;---------------------------------------------------------------------------
;run back
;œã‘şƒ_ƒbƒvƒ…
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "bb"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;===========================================================================
;jump strong kick
[state -1]
type = changestate
value = 40
triggerall = command = "du"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger2 = time < 1

;Super Jump
[State -1]
type = ChangeState
value = 40
triggerall = statetype!=A
triggerall = command = "holdup"
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 420 && movehit && p2statetype = A && time<17

;---------------------------------------------------------------------------
;stand light punch
[state -1]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>6 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>6 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>6 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>6 && p2stateno = [5000,5030]

;---------------------------------------------------------------------------
;stand strong punch
[state -1]
type = changestate
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>6 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>6 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>6 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>6 && p2stateno = [5000,5030]
;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>6 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>6 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>6 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>6 && p2stateno = [5000,5030]

;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>6 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>6 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>6 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>6 && p2stateno = [5000,5030]

;---------------------------------------------------------------------------
;taunt
;’§”­
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>6 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>6 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>6 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>6 && p2stateno = [5000,5030]
;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>4 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>4 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>4 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>4 && p2stateno = [5000,5030]
;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>5 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>5 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>5 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>5 && p2stateno = [5000,5030]
;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && time>4 && p2stateno = [120,155]
trigger4 = stateno = 230 && time>4 && p2stateno = [5000,5030]
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && time>4 && p2stateno = [120,155]
trigger7 = stateno = 430 && time>4 && p2stateno = [5000,5030]
;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && time>6 && p2stateno = [120,155]
trigger4 = stateno = 630 && time>6 && p2stateno = [5000,5030]

;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && time>6 && p2stateno = [120,155]
trigger5 = stateno = 630 && time>6 && p2stateno = [5000,5030]
trigger6 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && time>6 && p2stateno = [120,155]
trigger5 = stateno = 630 && time>6 && p2stateno = [5000,5030]
;---------------------------------------------------------------------------
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && time>6 && p2stateno = [120,155]
trigger5 = stateno = 630 && time>6 && p2stateno = [5000,5030]
trigger6 = stateno = 640 && movecontact

; ƒAƒhƒoƒ“ƒVƒ“ƒOƒK[ƒh 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "guardpush"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(48) = 1
ignorehitpause = 1