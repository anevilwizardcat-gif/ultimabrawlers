; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B,F,B,F,c,z
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B,F,B,F,x,a
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B,F,B,F,x,b
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,B,F,x,c
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B,F,B,F,y,a
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,B,F,B,F,y,b
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,B,F,y,c
time = 0

[Command]
name = "CPU28"
command = U,U,D,D,B,F,B,F,z,a
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B,F,B,F,z,b
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B,F,B,F,z,c
time = 0

[Command]
name = "CPU31"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "ShunGokuSatsu"
command = x, x, $F, a, z
time = 45

[Command]
name = "GoodnightSugah"
command = ~D, DF, F, x+y

[Command]
name = "GoodnightSugah"
command = ~D, DF, F, y+z

[Command]
name = "GoodnightSugah"
command = ~D, DF, F, x+y+z

[Command]
name = "PunchAssault"
command = ~D, DB, B, x+y

[Command]
name = "PunchAssault"
command = ~D, DB, B, y+z

[Command]
name = "PunchAssault"
command = ~D, DB, B, x+y+z

;-| Special Motions |------------------------------------------------------

[Command]
name = "RepeatingPunchx"
command = ~D, DF, F, x

[Command]
name = "RepeatingPunchy"
command = ~D, DF, F, y

[Command]
name = "RepeatingPunchz"
command = ~D, DF, F, z


[Command]
name = "RepeatingPunchx"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

[Command]
name = "RepeatingPunchy"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

[Command]
name = "RepeatingPunchz"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10


[Command]
name = "UpRepeatingPunch"
command = ~F, D, DF, F, x

[Command]
name = "UpRepeatingPunch"
command = ~F, D, DF, F, y

[Command]
name = "UpRepeatingPunch"
command = ~F, D, DF, F, z

[Command]
name = "UpRepeatingPunch"
command = ~F, D, DF, F, ~x
time = 10
buffer.time = 10

[Command]
name = "UpRepeatingPunch"
command = ~F, D, DF, F, ~y
time = 10
buffer.time = 10

[Command]
name = "UpRepeatingPunch"
command = ~F, D, DF, F, ~z
time = 10
buffer.time = 10


[Command]
name = "DivePuncha"
command = ~F, D, DF, F, a

[Command]
name = "DivePunchb"
command = ~F, D, DF, F, b

[Command]
name = "DivePunchc"
command = ~F, D, DF, F, c


[Command]
name = "DivePuncha"
command = ~F, D, DF, F, ~a
time = 10
buffer.time = 10

[Command]
name = "DivePunchb"
command = ~F, D, DF, F, ~b
time = 10
buffer.time = 10

[Command]
name = "DivePunchc"
command = ~F, D, DF, F, ~c
time = 10
buffer.time = 10


[Command]
name = "PowerDrain"
command = ~D, DB, B, a

[Command]
name = "PowerDrain"
command = ~D, DB, B, b

[Command]
name = "PowerDrain"
command = ~D, DB, B, c

[Command]
name = "PowerDrain"
command = ~D, DB, B, ~a
time = 10
buffer.time = 10

[Command]
name = "PowerDrain"
command = ~D, DB, B, ~b
time = 10
buffer.time = 10

[Command]
name = "PowerDrain"
command = ~D, DB, B, ~c
time = 10
buffer.time = 10


;-| Special Commands |-----------------------------------------------------


[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z

[Command]
name = "HoldC"
command = /c

[Command]
name = "HoldX"
command = /x

[Command]
name = "HoldY"
command = /y

[Command]
name = "HoldZ"
command = /z

[Command]
name = "Up"
command = U

[Command]
name = "Down"
command = D

[Command] 
name = "highjump"
command = $D, $U
time = 9

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
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
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
name = "holdback2"
command = /B
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
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1

;-| Release Buttons |-------------------------------------------------------
[Command]
name = "Releasea"
command = ~a

[Command]
name = "Releaseb"
command = ~b

[Command]
name = "Releasec"
command = ~c

[Command]
name = "Releasex"
command = ~x

[Command]
name = "Releasey"
command = ~y

[Command]
name = "Releasez"
command = ~z
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;AI Activation
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 13
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 13
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 13
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 13
value = 1

;----------------
; AI air combo
[State -1, First Hit]
type = ChangeState
value = 600
triggerall = Var(13) = 1
triggerall = Var(15) = 1
triggerall = StateType = A
triggerall = StateNo != 600
triggerall = PrevStateNo != 600
trigger1 = p2bodyDist Y <= 40 
trigger1 = p2bodyDist Y >= -40
trigger1 = p2bodyDist X <= 40

[State -1, Second hit]
type = ChangeState
value = 630
triggerall = Var(13) = 1
triggerall = Var(15) = 2
triggerall = StateType = A
trigger1 = StateNo = 600
trigger1 = movehit

[State -1, Third hit]
type = ChangeState
value = 610
triggerall = Var(13) = 1
triggerall = Var(15) = 3
triggerall = StateType = A
trigger1 = StateNo = 630
trigger1 = movehit

[State -1, Fourth hit]
type = ChangeState
value = 640
triggerall = Var(13) = 1
triggerall = Var(15) = 4
triggerall = StateType = A
trigger1 = StateNo = 610
trigger1 = movehit

[State -1, Ctrl]
type = CtrlSet
trigger1 = Var(15) = 1
value = 0

[State -1, Ctrl]
type = CtrlSet
trigger1 = Var(15) = 1
trigger1 = StateType != A
trigger1 = StateNo != 250 && StateNo != 670
value = 1

;----------------
; AI combo into supers
[State -1, Gnight Sugah Combo]
type = ChangeState
value = 2000
triggerall = Power >= 1000
triggerall = Statetype = S || StateType = C || ((StateType = A) && (var(6) = 1))
triggerall = Var(13) = 1
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = AnimElem = 3
trigger1 = Random < (50 + (var(6) * 150))
trigger2 = StateNo = 210
trigger2 = MoveHit
trigger2 = AnimElem = 5
trigger2 = Random < (200 + (var(6) * 175))
trigger3 = Pos Y >= -2
trigger3 = StateNo = 1000 || StateNo = 1010 || StateNo = 1020
trigger3 = Movehit
trigger3 = Random < 90

[State -1, Punch Assault Combo]
type = ChangeState
value = 2040
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(13) = 1
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = AnimElem = 3
trigger1 = Random < (50 + (var(6) * 100))
trigger2 = StateNo = 210
trigger2 = MoveHit
trigger2 = AnimElem = 5
trigger2 = Random < (150 + (var(6) * 225))
trigger3 = StateNo = 230
trigger3 = AnimElem = 5
trigger3 = MoveHit
trigger3 = Random < (100 + (var(6) * 100))
trigger4 = StateNo = 240
trigger4 = AnimElem = 7
trigger4 = MoveHit
trigger4 = Random < (150 + (var(6) * 250))
trigger5 = ctrl
trigger5 = p2StateNo = 1371
trigger5 = p2BodyDist X <= 20
trigger5 = Random <= 100

[State -1, Raging Demon Combo]
type = ChangeState
value = 2330
triggerall = Power >= 3000
triggerall = StateType = S || StateType = C
triggerall = var(59) = 9
triggerall = var(5) = 1
triggerall = Var(13) = 1
trigger1 = ctrl
trigger1 = p2StateType = S
trigger1 = p2BodyDist X <= 90
trigger1 = Random <= 5

[State -1, Spin Drive Combo]
type = ChangeState
value = 2050
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 1
triggerall = var(5) = 1
trigger1 = StateNo = 210
trigger1 = MoveHit
trigger1 = AnimElem = 5
trigger1 = Random < 400 
trigger2 = StateNo = 240
trigger2 = AnimElem = 7
trigger2 = MoveHit
trigger2 = Random < 400
trigger3 = StateNo = 410
trigger3 = AnimElem = 4
trigger3 = Movehit
trigger3 = Random < 100
trigger4 = StateNo = 440
trigger4 = AnimElem = 4
trigger4 = Movehit
trigger4 = Random < 400

[State -1, Mega Optic Blast Combo]
type = ChangeState
value = 2080
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 2
triggerall = var(5) = 1
trigger1 = p2Movetype = A
trigger1 = PlayerID(var(14)), Movecontact = 0
trigger1 = ctrl
trigger1 = p2BodyDist X >= 80
trigger1 = Random <= 20
trigger2 = StateNo = 220
trigger2 = AnimElem = 6
trigger2 = movehit
trigger2 = Random <= 400
trigger3 = StateNo = 250
trigger3 = AnimElem = 5
trigger3 = movehit
trigger3 = Random <= 100
trigger4 = StateNo = 450
trigger4 = AnimElem = 5
trigger4 = movehit
trigger4 = Random <= 400

[State -1, Yoga Inferno Combo]
type = ChangeState
value = 2100
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 3
triggerall = var(5) = 1
trigger1 = p2StateType = S
trigger1 = ctrl
trigger1 = Random <= 4
trigger2 = StateNo = 220
trigger2 = AnimElem = 6
trigger2 = movehit
trigger2 = Random <= 200
trigger3 = StateNo = 250
trigger3 = AnimElem = 4
trigger3 = movehit
trigger3 = Random <= 400
trigger4 = StateNo = 450
trigger4 = AnimElem = 5
trigger4 = movehit
trigger4 = Random <= 400
trigger5 = StateNo = 210
trigger5 = MoveHit
trigger5 = AnimElem = 5
trigger5 = Random < 100 

[State -1, Headcrush Combo]
type = ChangeState
value = 2110
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 4
triggerall = var(5) = 1
trigger1 = Ctrl
trigger1 = PlayerID(var(14)), Ctrl = 0
trigger1 = p2BodyDist Y >= -10
trigger1 = p2BodyDist X <= 150
trigger1 = p2StateType = S || p2StateType = C || p2StateType = A
trigger1 = Random <= 5

[State -1, Shoryureppa Combo]
type = ChangeState
value = 2130
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 5
triggerall = var(5) = 1
trigger1 = StateNo = 210
trigger1 = MoveHit
trigger1 = AnimElem = 5
trigger1 = Random < 500 
trigger2 = StateNo = 240
trigger2 = AnimElem = 7
trigger2 = MoveHit
trigger2 = Random < 200
trigger3 = p2BodyDist X <= 100
trigger3 = ctrl
trigger3 = Random <= 5

[State -1, Magnetic Shockwave Combo]
type = ChangeState
value = 2150
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 6
triggerall = var(5) = 1
trigger1 = ctrl
trigger1 = p2StateNo = 1371
trigger1 = p2BodyDist X <= 20
trigger1 = Random <= 125
trigger2 = StateNo = 450
trigger2 = AnimElem = 5
trigger2 = movehit
trigger2 = Random <= 200
trigger3 = StateNo = 200
trigger3 = MoveHit
trigger3 = AnimElem = 3
trigger3 = Random < 50
trigger4 = StateNo = 230
trigger4 = AnimElem = 5
trigger4 = MoveHit
trigger4 = Random < 200
trigger5 = StateNo = 400
trigger5 = AnimElem = 3
trigger5 = MoveHit
trigger5 = Random < 50
trigger6 = StateNo = 430
trigger6 = AnimElem = 3
trigger6 = Movehit
trigger6 = Random < 50

[State -1, Shinkuu Hadoken Combo]
type = ChangeState
value = 2190
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = Var(59) = 7
triggerall = var(5) = 1
trigger1 = StateNo = 210
trigger1 = MoveHit
trigger1 = AnimElem = 5
trigger1 = Random < 100
trigger2 = StateNo = 230
trigger2 = AnimElem = 5
trigger2 = MoveHit
trigger2 = Random < 50
trigger3 = StateNo = 610
trigger3 = AnimElem = 3
trigger3 = Movehit
trigger3 = Random <= 200
trigger4 = StateNo = 640
trigger4 = AnimElem = 3
trigger4 = Movehit
trigger4 = Random <= 300
trigger5 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
trigger5 = Random <= 100

[State -1, FAB Combo]
type = ChangeState
value = 2210
triggerall = Var(13) = 1
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = Var(59) = 8
triggerall = var(5) = 1
trigger1 = Ctrl
trigger1 = p2BodyDist X <= 30
trigger1 = Random <= 700
trigger1 = p2StateType = S || p2StateType = C

;---------------------
; Special Move Combos

[State -1, Launcher Followup Jump]
type = ChangeState
value = 670
triggerall = Var(13) = 1
trigger1 = StateNo = 250
trigger1 = Movehit
trigger1 = AnimElem = 4
trigger1 = Random <= 900
trigger1 = StateType = S
trigger2 = StateNo = 420
trigger2 = Movehit
trigger2 = AnimElem = 5
trigger2 = Random <= 900
trigger2 = StateType = C

[State -1, Rushing Punch Combo]
type = ChangeState
value = ifelse(Random < 400, 1010, ifelse(random < 600, 1020, 1000))
triggerall = var(13) = 1
trigger1 = ctrl
trigger1 = p2bodyDist X <= 120
trigger1 = p2bodyDist Y >= -30 && p2bodyDist Y <= 30
trigger1 = Random <= 5
trigger2 = StateNo = 200
trigger2 = movehit
trigger2 = AnimElem = 3
trigger2 = Random <= 200
trigger3 = StateNo = 210
trigger3 = movehit
trigger3 = AnimElem = 5
trigger3 = Random <= 300
trigger4 = StateNo = 610
trigger4 = AnimElem = 3
trigger4 = Movehit
trigger4 = Random <= 300
trigger5 = StateNo = 630
trigger5 = AnimElem = 3
trigger5 = Movehit
trigger5 = Random <= 300

[State -1, Power Drain Combo]
type = ChangeState
value = 1070
triggerall = var(13) = 1
trigger1 = ctrl
trigger1 = p2bodyDist Y >= -40 && p2bodyDist Y <= 40
trigger1 = p2bodyDIst X <= 151
trigger1 = Random <= 4
trigger2 = StateNo = 210
trigger2 = Movehit
trigger2 = AnimElem = 5
trigger2 = Random <= 200
trigger3 = StateNo = 240
trigger3 = AnimElem = 7
trigger3 = Movehit
trigger3 = Random <= 350
trigger4 = StateNo = 610
trigger4 = AnimElem = 3
trigger4 = Movehit
trigger4 = Random <= 200
trigger5 = AnimElem = 3
trigger5 = StateNo = 630
trigger5 = Movehit
trigger5 = Random <= 200

[State -1, Dive Kick Combo]
type = ChangeState
value = 660
triggerall = var(13) = 1
triggerall = StateType = A
trigger1 = ctrl
trigger1 = p2bodyDist X <= 90
trigger1 = Random <= 5

;--------------------
; Normal move combos

[State -1, S. Short]
type = ChangeState
value = 230
triggerall = var(13) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 200
trigger1 = Movehit
trigger1 = AnimElem = 3
trigger1 = Random <= 500
trigger2 = StateNo = 400
trigger2 = AnimElem = 3
trigger2 = Movehit
trigger2 = Random <= 200

[State -1, S. Strong]
type = ChangeState
value = 210
triggerall = var(13) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 200
trigger1 = Movehit
trigger1 = AnimElem = 3
trigger1 = Random <= 700
trigger2 = StateNo = 400
trigger2 = AnimElem = 3
trigger2 = Movehit
trigger2 = Random <= 400
trigger3 = StateNo = 230
trigger3 = AnimElem = 5
trigger3 = Movehit
trigger3 = Random <= 600

[State -1, S. Fierce]
type = ChangeState
value = 220
triggerall = var(13) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 200
trigger1 = AnimElem = 3
trigger1 = Movehit
trigger1 = Random <= 200
trigger2 = StateNo = 210
trigger2 = AnimElem = 5
trigger2 = Movehit
trigger2 = Random <= 200
trigger3 = StateNo = 240
trigger3 = AnimElem = 7
trigger3 = Movehit
trigger3 = Random <= 200

[State -1, S. Forward]
type = ChangeState
value = 240
triggerall = var(13) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 230
trigger1 = AnimElem = 5
trigger1 = Movehit
trigger1 = Random <= 200
trigger2 = StateNo = 210
trigger2 = AnimElem = 5
trigger2 = Movehit
trigger2 = Random <= 200
trigger3 = StateNo = 200
trigger3 = AnimElem = 3
trigger3 = Movehit
trigger3 = Random <= 250

[State -1, S. Roundhouse]
type = ChangeState
value = 250
triggerall = var(13) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 200
trigger1 = AnimElem = 3
trigger1 = movehit
trigger1 = Random <= 400
trigger2 = StateNo = 210
trigger2 = AnimElem = 5
trigger2 = Movehit
trigger2 = Random <= 400
trigger3 = StateNo = 240
trigger3 = AnimElem = 7
trigger3 = Movehit
trigger3 = Random <= 400

[State -1, C. Jab]
type = ChangeState
value = 400
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
trigger1 = var(1) = 1
trigger1 = StateNo = 410
trigger1 = Movehit

[State -1, C. Short]
type = ChangeState
value = 430
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
trigger1 = StateNo = 400
trigger1 = AnimElem = 3
trigger1 = Movehit 
trigger1 = Random <= 300

[State -1, C. Strong]
type = ChangeState
value = 410
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
trigger1 = StateNo = 400
trigger1 = AnimElem = 3
trigger1 = Movehit
trigger1 = Random <= 700
trigger2 = StateNo = 400
trigger2 = AnimElem = 3
trigger2 = Movehit
trigger2 = var(1) = 1

[State -1, C. Fierce]
type = ChangeState
value = 420
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
trigger1 = StateNo = 400
trigger1 = AnimElem = 3
trigger1 = Movehit
trigger1 = Random <= 700
trigger2 = StateNo = 200
trigger2 = AnimElem = 3
trigger2 = Movehit
trigger2 = Random <= 700
trigger3 = StateNo = 230
trigger3 = AnimElem = 5
trigger3 = Movehit
trigger3 = Random <= 900
trigger4 = StateNo = 410
trigger4 = AnimElem = 4
trigger4 = Movehit
trigger4 = Random <= 800
trigger5 = StateNo = 210
trigger5 = AnimElem = 5
trigger5 = Movehit
trigger5 = Random <= 800

[State -1, C. Forward]
type = ChangeState
value = 440
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
trigger1 = StateNo = 430
trigger1 = AnimElem = 3
trigger1 = Movehit
trigger1 = Random <= 850
trigger2 = StateNo = 410
trigger2 = AnimElem = 4
trigger2 = Movehit
trigger2 = Random <= 900
trigger3 = StateNo = 400
trigger3 = AnimElem = 3
trigger3 = Movehit
trigger3 = Random <= 800

[State -1, C. Roundhouse]
type = ChangeState
value = 450
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
trigger1 = StateNo = 440
trigger1 = AnimElem = 4
trigger1 = Movehit
trigger1 = Random <= 800
trigger2 = StateNo = 410
trigger2 = AnimElem = 4
trigger2 = Movehit
trigger2 = Random <= 900
trigger3 = StateNo = 240
trigger3 = AnimElem = 7
trigger3 = Movehit
trigger3 = Random <= 900

;--------------
; Finish Air Combo
[State -1, Final hit]
type = ChangeState
value = ifelse(random < 500, 620, 650) 
triggerall = Var(13) = 1
triggerall = Var(15) = 5
triggerall = StateType = A
trigger1 = StateNo = 640
trigger1 = movehit

;===========================================================================
; Put specials and supers here



;---------------------------------------------------------------------------
; Repeating Punch Assault
[State -1, Repeating Punch Assault]
type = ChangeState
value = 2040
triggerall = command = "PunchAssault" 
triggerall = Statetype = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = var(6)
trigger4 = StateNo = [1000,1020]
trigger4 = Pos Y >= -2
trigger5 = StateNo = 195

;---------------------------------------------------------------------------
; Goodnight Sugah
[State -1, Goodnight Sugah]
type = ChangeState
value = 2000
triggerall = command = "GoodnightSugah"
triggerall = Power >= 1000
trigger1 = Statetype = S || StateType = C 
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = var(6)
trigger4 = StateNo = [1000,1020]
trigger4 = Pos Y >= -2
trigger5 = StateNo = 195

;---------------------------------------------------------------------------
; Dive Punch Short
[State -1, Short Diving Punch]
type = ChangeState
value = 1040
triggerall = command = "DivePuncha"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Dive Punch Forward
[State -1, Short Diving Punch]
type = ChangeState
value = 1050
triggerall = command = "DivePunchb"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Dive Punch Roundhouse
[State -1, Roundhouse Diving Punch]
type = ChangeState
value = 1060
triggerall = command = "DivePunchc"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Power Drain
[State -1, Power Drain]
type = ChangeState
value = 1070
triggerall = command = "PowerDrain"
trigger1 = ctrl 
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]
trigger5 = StateNo = 660

;---------------------------------------------------------------------------
; Rising Repeating Punch
[State -1, Rising Repeating Punch]
type = ChangeState
value = 1030
triggerall = command = "UpRepeatingPunch"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C 
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Jab Repeating Punch
[State -1, Jab Repeating Punch]
type = ChangeState
value = 1000
triggerall = command = "RepeatingPunchx"
triggerall = Stateno != 110
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = (StateNo = [600,650]) ;&& StateNo != 620
trigger5 = StateNo = 660

;---------------------------------------------------------------------------
; Strong Repeating Punch
[State -1, Strong Repeating Punch]
type = ChangeState
value = 1010
triggerall = command = "RepeatingPunchy"
triggerall = Stateno != 110
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = (StateNo = [600,650]) ;&& StateNo != 620
trigger5 = StateNo = 660

;---------------------------------------------------------------------------
; Fierce Repeating Punch
[State -1, Fierce Repeating Punch]
type = ChangeState
value = 1020
triggerall = command = "RepeatingPunchz"
triggerall = Stateno != 110
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = (StateNo = [600,650]) ;&& StateNo != 620
trigger5 = StateNo = 660

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = stateno != 110
triggerall = !var(54)
triggerall = statetype = A && Pos Y < -(const(movement.airjump.height))
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "recovery"

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Basic Throw
[State -1, Basic Throw]
type = ChangeState
value = 800
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Air Throw
[State -1, Basic Throw]
type = ChangeState
value = 850
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; Dive Kick
[State -1, Dive Kick]
type = ChangeState
value = 660
triggerall = statetype = A
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = AnimElemTime(3) > 1

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 242
trigger10 = stateno = 220
trigger11 = stateno = 240
trigger11 = movecontact

[State -1]
type = ChangeState
value = 250
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "c"
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger2 = MoveContact
trigger3 = StateNo = [400,450]
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = AnimElemTime(3) > 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 210
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 242
trigger10 = stateno = 240
trigger10 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger2 = AnimElemTime(3) > 1
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 210
trigger7 = movecontact
trigger7 = AnimElemTime(4) > 2
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 242
trigger10 = stateno = 220
trigger11 = stateno = 240
trigger11 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(15) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(15) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(15) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(15) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 99
triggerall = statetype != A
trigger1 = command = "highjump"
trigger1 = ctrl
trigger2 = command = "highjump" || command = "holdup"
trigger2 = MoveHit
trigger2 = var(1) = 0
trigger2 = Stateno = 250  && movehit && time>15 && p2statetype = A && time<17
trigger3 = command = "highjump" || command = "holdup"
trigger3 = MoveHit
trigger3 = var(1) = 1
trigger3 = Stateno = 250  && movehit && time>9 && p2statetype = A && time<16
trigger4 = command = "highjump" || command = "holdup"
trigger4 = MoveHit
trigger4 = var(1) = 0
trigger4 = Stateno = 420  && movehit && p2statetype = A && time<16
trigger5 = command = "highjump" || command = "holdup"
trigger5 = var(1) = 1
trigger5 = MoveHit
trigger5 = Stateno = 420  && movehit && p2statetype = A && time<9

; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(13)
triggerall = !numhelper(8060)
triggerall = command = "recovery"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(51) = 1
ignorehitpause = 1