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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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

[Command]
name = "Ouroboros"
command = ~D, DF, F, x+y

[Command]
name = "Ouroboros"
command = ~D, DF, F, y+z

[Command]
name = "Ouroboros"
command = ~D, DF, F, x+y+z

[Command]
name = "Legion"
command = ~D, DF, F, a+b

[Command]
name = "Legion"
command = ~D, DF, F, b+c

[Command]
name = "Legion"
command = ~D, DF, F, a+b+c

[Command]
name = "Ragnarok"
command = ~F, D, DF, F, x+y

[Command]
name = "Ragnarok"
command = ~F, D, DF, F, y+z

[Command]
name = "Ragnarok"
command = ~F, D, DF, F, x+y+z

;-| Special Motions |------------------------------------------------------

[Command]
name = "Excalibur_x"
command = ~D, DF, F, x

[Command]
name = "Excalibur_y"
command = ~D, DF, F, y

[Command]
name = "Excalibur_z"
command = ~D, DF, F, z

[Command]
name = "Excalibur_a"
command = ~D, DF, F, a

[Command]
name = "Excalibur_b"
command = ~D, DF, F, b

[Command]
name = "Excalibur_c"
command = ~D, DF, F, c

[Command]
name = "Warpa"
command = ~B, D, DB, B, a

[Command]
name = "Warpb"
command = ~B, D, DB, B, b

[Command]
name = "Warpc"
command = ~B, D, DB, B, c

[Command]
name = "Warpx"
command = ~B, D, DB, B, x

[Command]
name = "Warpy"
command = ~B, D, DB, B, y

[Command]
name = "Warpz"
command = ~B, D, DB, B, z

[Command]
name = "Vajraa"
command = ~D, DB, B, a

[Command]
name = "Vajrab"
command = ~D, DB, B, b

[Command]
name = "Vajrac"
command = ~D, DB, B, c

[Command]
name = "FormationA"
command = ~D, DF, F, a

[Command]
name = "FormationA"
command = ~D, DF, F, b

[Command]
name = "FormationA_c"
command = ~D, DF, F, c

[Command]
name = "FormationB"
command = ~45$B, F, x

[Command]
name = "FormationB"
command = ~45$B, F, y

[Command]
name = "FormationB"
command = ~45$B, F, z

[Command]
name = "FormationC_A"
command = ~45$B, F, a

[Command]
name = "FormationC_B"
command = ~45$B, F, b

[Command]
name = "FormationC_C"
command = ~45$B, F, c

[Command]
name = "WallClimb"
command = ~D, DB, B, x

[Command]
name = "WallClimb"
command = ~D, DB, B, y

[Command]
name = "WallClimb"
command = ~D, DB, B, z

[Command]
name = "FallOff"
command = F

[Command]
name = "LongSlashSt"
command = ~F, D, DF, F, x

[Command]
name = "LongSlashSt"
command = ~F, D, DF, F, y

[Command]
name = "LongSlashSt"
command = ~F, D, DF, F, z

[Command]
name = "LongSlashCr"
command = ~F, D, DF, F, a

[Command]
name = "LongSlashCr"
command = ~F, D, DF, F, b

[Command]
name = "LongSlashCr"
command = ~F, D, DF, F, c

[Command]
name = "RunSlashx"
command = ~D, DF, F, x

[Command]
name = "RunSlashy"
command = ~D, DF, F, y

[Command]
name = "RunSlashz"
command = ~D, DF, F, z

[Command]
name = "SuperJump"
command = $D, $U

[Command]
name = "RecoveryRolla"
command = ~B, DB, D, x

[Command]
name = "RecoveryRolla"
command = ~B, DB, D, a

[Command]
name = "RecoveryRollb"
command = ~B, DB, D, y

[Command]
name = "RecoveryRollb"
command = ~B, DB, D, b

[Command]
name = "RecoveryRollc"
command = ~B, DB, D, z

[Command]
name = "RecoveryRollc"
command = ~B, DB, D, c

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

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

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


;-| Release Button |--------------------------------------------------------

[Command]
name = "releasex"
command = ~x

[Command]
name = "releasey"
command = ~y

[Command]
name = "releasez"
command = ~z

[Command]
name = "releasea"
command = ~a

[Command]
name = "releaseb"
command = ~b

[Command]
name = "releasec"
command = ~c

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

;-| Press Dir |-------------------------------------------------------------

[Command]
name = "pressup"
command = $U
time = 6

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

;---------------------------------------------------------------------------
;AI Activation
[State -1]
type = VarSet
triggerall = roundstate = 2
triggerall = !var(26)
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 26
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
triggerall = !var(26)
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 26
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
triggerall = !var(26)
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 26
value = 1

[State -1]
type = VarSet
triggerall = !var(26)
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 26
value = 1

;===========================================================================
; AI COMMANDS

;-------------------
; Get modified Enemy Y dist
[State -1, Get Y]
type = VarSet
trigger1 = var(26)
v = 27
value = floor(P2Dist Y + EnemyNear, const(size.mid.pos.y)) - const(size.mid.pos.y)

;-------------------
; Monitor enemy power
[State -1, Detect Changes In Enemy Power]
type = VarSet
trigger1 = var(26)
v = 29
value = var(30) - EnemyNear, Power

[STate -1, Set Timer]
type = VarSEt
trigger1 = var(26)
trigger1 = var(29) >= 1000
v = 31
value = 3

[State -1, Decrement Timer]
type = VarAdd
trigger1 = var(26)
trigger1 = var(31) > 0
v = 31
value = -1 

;-------------------
; Increment Charge Var
[State -1, Charge!]
type = VarAdd
triggerall = var(26)
trigger1 = !Ctrl
trigger2 = Vel X < 0
trigger3 = StateType = A
v = 28
value = 1
ignorehitpause = 1

; Clear Charge Var
[State -1, Clear!]
type = VarSet
triggerall = var(26)
trigger1 = Ctrl
trigger1 = Vel X > 0 && StateType != A
trigger2 = StateNo = 0
v = 28
value = 0

; Run Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(26)
triggerall = StateType = S
triggerall = StateNo != 100
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X >= 100
trigger1 = Random <= (170 - ifelse(Life < 265, 90, 0) + (100 * NumHelper(5643)))
trigger2 = ctrl
trigger2 = P2MoveType = H
trigger2 = Random <= 300

; Roll backward
[State -1, Roll back]
type = ChangeState
value = 105
triggerall = var(26)
triggerall = StateNo != 105
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 10
trigger1 = Random <= 10

; Throw
[State -1, Throw When P2 Is Close]
type = ChangeState
value = ifelse(Random <= 499, 1000, 1050)
triggerall = var(26)
triggerall = StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = Random < 20

; Air Throw
[State -1, Air Throw When P2 Is Close]
type = ChangeState
value = 1130
triggerall = var(26)
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = Random < 50

; Air Combo
[State -1, Launcher Followup]
type = ChangeState
value = 800
triggerall = var(26)
trigger1 = StateNo = 320
trigger1 = MoveHit
trigger1 = var(1) = 1

[State -1, Air Combo First Hit]
type = ChangeState
value = 400
triggerall = var(26)
triggerall = StateType = A
triggerall = var(17)
trigger1 = ctrl
trigger1 = time > 8
trigger1 = P2BodyDist X <= 30
trigger1 = var(27) = [-35,15]

[State -1, Air Combo Second Hit]
type = ChangeState
value = 430
triggerall = var(26)
;triggerall = var(17)
trigger1 = StateNo = 400
trigger1 = MoveHit

[State -1, Air Combo Third Hit]
type = ChangeState
value = 410
triggerall = var(26)
triggerall = !var(32)
trigger1 = StateNo = 430
trigger1 = MoveHit

[State -1, Air Combo Fourth Hit]
type = ChangeState
value = 440
triggerall = var(26)
;triggerall = var(17)
trigger1 = StateNo = 410
trigger1 = MoveHit

[State -1, Excalibur Finisher]
type = ChangeState
value = 2400
triggerall = var(26)
triggerall = var(17)
trigger1 = StateNo = 440
trigger1 = MoveHit
trigger1 = Random <= 499

[State -1, HP Finisher]
type = ChangeState
value = 420
triggerall = var(26)
;triggerall = var(17)
trigger1 = StateNo = 440
trigger1 = MoveHit

[State -1, HK Followup to HP]
type = ChangeState
value = 450
triggerall = var(26)
;triggerall = var(17)
trigger1 = StateNo = 420 
trigger1 = MoveHit

; Initiate Ground Combos
[State -1, Jab]
type = ChangeState
value = ifelse(Random <= 499, 200, 300)
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 65
trigger1 = Random <= 70

[State -1, Low Kick]
type = ChangeState
value = 330
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 55
trigger1 = Random <= (5 + ifelse(P2StateType = S, 60, 10))

[State -1, Second Hit of Ground Combo]
type = ChangeState
value = ifelse(Random <= 499, 230, 330)
triggerall = var(26)
trigger1 = StateNo = 200 || StateNo = 300
trigger1 = MoveHit || (NumHelper(5643) > 0 && MoveContact)
trigger1 = Random <= 499

[State -1, Third Hit]
type = ChangeState
value = ifelse(Random <= 499, 210, 310)
triggerall = var(26)
trigger1 = StateNo = 230 || StateNo = 330
trigger1 = MoveHit || (NumHelper(5643) > 0 && MoveContact)

[State -1, Fourth Hit]
type = ChangeState
value = ifelse(Random <= 499, 240, 340)
triggerall = var(26)
trigger1 = StateNo = 210 || StateNo =  310
trigger1 = (MoveHit && var(1) = 1) || (NumHelper(5643) > 0 && MoveContact && var(1) = 1) 

[State -1, Launcher]
type = ChangeState
value = 320
triggerall = var(26)
trigger1 = StateNo = 200 || StateNo = 300 || StateNo = 230 || StateNo = 330
trigger1 = MoveHit && NumHelper(5643) = 0
trigger2 = StateNo = 240 || StateNo = 340
trigger2 = MoveHit && var(1) = 1
trigger2 = (Random <= 499) && (NumHelper(5643) = 0) && (P2BodyDist X <= 30)

[State -1, Fifth Hit, Stand HP]
type = ChangeState
value = 220
triggerall = var(26)
trigger1 = StateNo = 240 || StateNo = 340
trigger1 = MoveHit && var(1) = 1
trigger1 = (Random <= 499) || (NumHelper(5643) > 0)

[State -1, Sweep]
type = ChangeState
value = 350
triggerall = var(26)
trigger1 = StateNo = 240 || StateNo = 340
trigger1 = MoveHit && var(1) = 1

[State -1, Sixth Hit, Stand HK]
type= ChangeState
value = 250
triggerall = var(26)
trigger1 = StateNo = 220
trigger1 = MoveHit && var(1) = 1

[State -1, Followup HK and Sweep with Dash Slash]
type = ChangeState
value = 2000
triggerall = var(26)
trigger1 = StateNo = 250 || StateNo = 350
trigger1 = MoveHit
trigger1 = ((Power < 1000) || (Random <= 700)) && (NumHelper(8135) = 0)

[State -1, Do jumping attack if crouch guarding]
type = VarSet
triggerall = var(26)
triggerall = NumHelper(5643) = 0
triggerall = StateType = S || StateType = C
triggerall = MoveType = A
triggerall = MoveGuarded
trigger1 = P2StateType = C
trigger1 = Random <= 50
v = 32
value = 1

[State -1, Jump Up]
type = ChangeState
value = 40
triggerall = var(26)
triggerall = var(32)
triggerall = StateType = S || StateType = C
trigger1 = ctrl

[State -1, Set SysVar]
type = VarSet
triggerall = var(26)
trigger1 = var(32)
sysvar(1) = 1

[State -1, Excalibur Attack]
type = ChangeState
value = 2530
triggerall = var(26)
triggerall = var(32)
triggerall = StateType = A
trigger1 = ctrl
trigger1 = StateNo = 50

[State -1, Clear var32]
type = VarSet
triggerall = var(26)
triggerall = var(32)
trigger1 = MoveType = H
trigger2 = StateNo = 2091
v = 32
value = 0

; Air Moves
[State -1, Air Jab]
type = ChangeState
value = 400
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = var(27) = [-60,-15]
triggerall = P2BodyDist X <= 55
trigger1 = ctrl
trigger1 = Random <= 90

[State -1, Air Kick]
type = ChangeState
value = 430
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = var(27) = [-14,55]
triggerall = P2BodyDist X <= 50
trigger1 = ctrl
trigger1 = Random <= 90

[State -1, Air Hard Kick Slash]
type = ChangeState
value = 450
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X <= 75
triggerall = var(27) <= 140
triggerall = Vel Y >= 0
trigger1 = ctrl
trigger1 = Random <= 140

; Special Move Usage
[State -1, Ground Gram]
type = ChangeState
value = ifelse(Random <= 499, 2030, 2040)
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X >= 125
trigger1 = ctrl
trigger1 = Random <= 12

[State -1, Air Gram]
type = ChangeState
value = 2050
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2BodyDist X >= 125
triggerall = var(27) = [-80,80]
triggerall = EnemyNear, Ctrl = 0
triggerall = P2StateType != L
trigger1 = ctrl
trigger1 = Random <= 50

[State -1, Formation A]
type = ChangeState
value = 2170
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X >= 110
trigger1 = ctrl
trigger1 = Random <= 10

[State -1, Formation B]
type = ChangeState
value = 2200
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X >= 110
triggerall = NumHelper(8135) = 0
triggerall = var(28) >= 45
triggerall = P2StateType != A
triggerall = Life > 200
trigger1 = ctrl
trigger1 = Random <= 45

[State -1, Release Satellite]
type = ChangeState
value = ifelse(StateType = A, 2220, 2210)
triggerall = var(26)
triggerall = !var(17)
triggerall = NumHelper(8135) > 0
triggerall = Helper(8135), StateNo = 2230
triggerall = var(27) = [-75,50]
triggerall = var(28) >= 45
triggerall = EnemyNear, Ctrl = 0
trigger1 = ctrl
trigger1 = Random <= 120
trigger2 = StateNo = 250 || StateNo = 350
trigger2 = MoveHit

[State -1, Formation C]
type = ChangeState
value = 2340
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = NumHelper(5198) = 0
triggerall = var(28) >= 45
triggerall = ctrl
triggerall = Power >= 1000
triggerall = NumHelper(5643) = 0
triggerall = Life > 200
triggerall = Random <= 15
trigger1 = EnemyNear, ScreenPos X = [110,200]

[State -1, Formation C]
type = ChangeState
value = 2350
triggerall = var(26)
triggerall = StateType = S || StateType = C
triggerall = NumHelper(5198) = 0
triggerall = var(28) >= 45
triggerall = ctrl
triggerall = Power >= 1000
triggerall = NumHelper(5643) = 0
triggerall = Life > 200
triggerall = Random <= 30
trigger1 = EnemyNear, Facing = 1
trigger1 = EnemyNear, ScreenPos X = [15,115]
trigger2 = EnemyNear, Facing = -1
trigger2 = EnemyNear, ScreenPos X = [210,305]

[State -1, Warp To Left of Screen When Opponent Uses Super]
type = ChangeState
value = 2300
triggerall = var(26)
triggerall = var(31) = 1
triggerall = EnemyNear, Facing = 1
triggerall = EnemyNear, ScreenPos X >= 100
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 800

[State -1, Warp to Right of Screen When Opponent Uses Super]
type = ChangeState
value = 2302
triggerall = var(26)
triggerall = var(31) = 1
triggerall = EnemyNear, Facing = -1
triggerall = EnemyNear, ScreenPos X <= 215
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 800

[State -1, Warp to Left of Screen When Opponent Is Far Away]
type = ChangeState
value = 2303
triggerall = var(26)
triggerall = EnemyNear, ScreenPos X <= 100
triggerall = P2BodyDist X >= 150
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 15

[State -1, Warp to Right of Screen When Opponent Is Far Away]
type = ChangeState
value = 2305
triggerall = var(26)
triggerall = EnemyNear, Facing = -1
triggerall = EnemyNear, ScreenPos X >= 215
triggerall = P2BodyDist X >= 150
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 15

[State -1, Excalibur X]
type = ChangeState
value = 2400
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = (P2BodyDist X >= floor((var(27) / 2.1705) - 40)) && (P2BodyDist X <= floor((var(27) / 2.1705) + 40))
triggerall = (var(27) >= floor((-(P2Dist X) * 2.1705) - 40)) && (var(27) <= floor((-(P2Dist X) * 2.1705) + 40))
trigger1 = ctrl
trigger1 = Random <= 120

[State -1, Excalibur Y]
type = ChangeState
value = 2450
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = (P2BodyDist X >= floor((var(27) / 0.58) - 40)) && (P2BodyDist X <= floor((var(27) / 0.58) + 40))
triggerall = (var(27) >= floor((-(P2Dist X) * 0.58) - 40)) && (var(27) <= floor((-(P2Dist X) * 0.58) + 40))
trigger1 = ctrl
trigger1 = Random <= 50

[State -1, Excalibur Z]
type = ChangeState
value = 2470
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = (P2BodyDist X >= floor((var(27) / 0.15) - 40)) && (P2BodyDist X <= floor((var(27) / 0.15) + 40))
triggerall = (var(27) >= floor((-(P2Dist X) * 0.15) - 40)) && (var(27) <= floor((-(P2Dist X) * 0.15) + 40))
trigger1 = ctrl
trigger1 = Random <= 30

[State -1, Excalibur A]
type = ChangeState
value = 2490
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = (P2BodyDist X >= floor((var(27) / -2.17054) - 40)) && (P2BodyDist X <= floor((var(27) / -2.17054) + 40))
triggerall = (var(27) >= floor((-(P2Dist X) * -2.17054) - 40)) && (var(27) <= floor((-(P2Dist X) * -2.17054) + 40))
trigger1 = ctrl
trigger1 = Random <= 120

[State -1, Excalibur B]
type = ChangeState
value = 2510
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = (P2BodyDist X >= floor((var(27) / -0.5) - 40)) && (P2BodyDist X <= floor((var(27) / -0.5) + 40))
triggerall = (var(27) >= floor((-(P2Dist X) * -0.5) - 40)) && (var(27) <= floor((-(P2Dist X) * -0.5) + 40))
trigger1 = ctrl
trigger1 = Random <= 70

[State -1, Excalibur C]
type = ChangeState
value = 2530
triggerall = var(26)
triggerall = !var(17)
triggerall = StateType = A
triggerall = (P2BodyDist X >= floor((var(27) / -0.13333) - 40)) && (P2BodyDist X <= floor((var(27) / -0.13333) + 40))
triggerall = (var(27) >= floor((-(P2Dist X) * -0.13333) - 40)) && (var(27) <= floor((-(P2Dist X) * -0.13333) + 40))
trigger1 = ctrl
trigger1 = Random <= 80

; Use Super Moves
[State -1, Use Ouroboros]
type = ChangeState
value = 3000
triggerall = var(26)
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = NumHelper(5643) = 0
trigger1 = StateNo = 250 || StateNo = 350
trigger1 = MoveHit
trigger1 = Random <= 499
trigger2 = StateNo = 2170
trigger2 = time > 30
trigger2 = Random <= 35
trigger3 = StateNo = [2340,2350]
trigger3 = time > 45
trigger3 = Random <= 35
trigger4 = StateNo = 2000
trigger4 = MoveHit
trigger4 = Random <= 10

[State -1, Use Legion]
type = ChangeState
value = 3040
triggerall = var(26)
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = NumHelper(7752) = 0
triggerall = (P2StateNo != 3045 && P2StateNo != 3046) || P2MoveType != H
trigger1 = StateNo = 2170
trigger1 = time > 30
trigger1 = Random <= 35
trigger2 = StateNo = 250 || StateNo = 350
trigger2 = MoveHit
trigger2 = Random <= 150
trigger3 = Ctrl
trigger3 = P2BodyDist X >= 100
trigger3 = Random < 2
trigger4 = StateNo = 2000
trigger4 = MoveHit
trigger4 = Random <= 10

[State -1, Use Ragnarok]
type = ChangeState
value = 3200
triggerall = var(26)
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 250 
trigger1 = MoveHit
trigger2 = var(31) = 1
trigger2 = Random <= 50

; Push Blocking

[State -1, Push Block Stand]
type = ChangeState
value = 550
triggerall = var(17)
trigger1 = stateno = [150,151]
trigger1 = Random <= 5

[State -1, Push Block Crouch]
type = ChangeState
value = 560
triggerall = var(17)
trigger1 = stateno = [152,153]
trigger1 = Random <= 5

[State -1, Push Block Air]
type = ChangeState
value = 570
triggerall = var(17)
triggerall = Random <= 5
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;--------------------
; Update enemy power
[State -1, Update]
type = VarSet
trigger1 = var(26)
v = 30
value = EnemyNear, Power

;===========================================================================
; PLAYER COMMANDS

;---------------------------------------------------------------------------
; Ragnarok
[State -1, Ragnarok]
type = ChangeState
value = 3200
triggerall = !var(26)
triggerall = var(24) = 0
triggerall = command = "Ragnarok"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = [200,350]
trigger3 = StateNo = 2170 || StateNo = 2550
trigger4 = StateNo = [2330,2350]
trigger5 = StateNo = [2000,2010]
trigger6 = StateNo = [2030,2040]

;---------------------------------------------------------------------------
; Ouroboros
[State -1, Ouroboros]
type = ChangeState
value = 3000
triggerall = !var(26)
triggerall = var(24) = 0
triggerall = command = "Ouroboros"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = NumHelper(5643) = 0
triggerall = NumHelper(7752) = 0
triggerall = NumHelper(3200) = 0
triggerall = NumHelper(3040) = 0
trigger1 = ctrl
trigger2 = StateNo = [200,350]
trigger3 = StateNo = 2170 || StateNo = 2550
trigger4 = StateNo = [2330,2350]
trigger5 = StateNo = [2000,2010]
trigger6 = StateNo = [2030,2040]

;---------------------------------------------------------------------------
; Legion
[State -1, Legion]
type = ChangeState
value = 3040
triggerall = !var(26)
triggerall = var(24) = 0
triggerall = command = "Legion"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = NumHelper(7752) = 0
triggerall = (P2StateNo != 3045 && P2StateNo != 3046) || P2MoveType != H
trigger1 = ctrl
trigger2 = StateNo = [200,350]
trigger3 = StateNo = 2170 || StateNo = 2550
trigger4 = StateNo = [2330,2350]
trigger5 = StateNo = [2000,2010]
trigger6 = StateNo = [2030,2040]

;===========================================================================

;---------------------------------------------------------------------------
; Gram Air
[State -1, Gram Air]
type = ChangeState
value = 2050
triggerall = !var(26)
triggerall = command = "LongSlashSt"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]

;--------------------------------------------------------------------------
; Excalibur X
[State -1, Excalibur X]
type = ChangeState
value = 2400
triggerall = !var(26)
triggerall = command = "Excalibur_x"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]
trigger3 = StateNo = 500

;--------------------------------------------------------------------------
; Excalibur Y
[State -1, Excalibur Y]
type = ChangeState
value = 2450
triggerall = !var(26)
triggerall = command = "Excalibur_y"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]
trigger3 = StateNo = 500

;--------------------------------------------------------------------------
; Excalibur Y
[State -1, Excalibur Y]
type = ChangeState
value = 2470
triggerall = !var(26)
triggerall = command = "Excalibur_z"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]
trigger3 = StateNo = 500

;--------------------------------------------------------------------------
; Excalibur A
[State -1, Excalibur A]
type = ChangeState
value = 2490
triggerall = !var(26)
triggerall = command = "Excalibur_a"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]
trigger3 = StateNo = 500

;--------------------------------------------------------------------------
; Excalibur B
[State -1, Excalibur B]
type = ChangeState
value = 2510
triggerall = !var(26)
triggerall = command = "Excalibur_b"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]
trigger3 = StateNo = 500

;--------------------------------------------------------------------------
; Excalibur C
[State -1, Excalibur C]
type = ChangeState
value = 2530
triggerall = !var(26)
triggerall = command = "Excalibur_c"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]
trigger3 = StateNo = 500

;---------------------------------------------------------------------------
; Warp LP
[State -1, Warp LP]
type = ChangeState
value = 2300
triggerall = !var(26)
triggerall = command = "Warpx"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Warp MP
[State -1, Warp MP]
type = ChangeState
value = 2301
triggerall = !var(26)
triggerall = command = "Warpy"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Warp HP
[State -1, Warp HP]
type = ChangeState
value = 2302
triggerall = !var(26)
triggerall = command = "Warpz"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Warp LK
[State -1, Warp LK]
type = ChangeState
value = 2303
triggerall = !var(26)
triggerall = command = "Warpa"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Warp MK
[State -1, Warp MK]
type = ChangeState
value = 2304
triggerall = !var(26)
triggerall = command = "Warpb"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Warp HK
[State -1, Warp HK]
type = ChangeState
value = 2305
triggerall = !var(26)
triggerall = command = "Warpc"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Kabe Haritsuki
[State -1, Kabe Haritsuki]
type = ChangeState
value = 2060
triggerall = !var(26)
triggerall = command = "WallClimb"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Vajra A
[State -1, Vajra A]
type = ChangeState
value = 2270
triggerall = !var(26)
triggerall = command = "Vajraa"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Vajra B
[State -1, Vajra B]
type = ChangeState
value = 2271
triggerall = !var(26)
triggerall = command = "Vajrab"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Vajra C
[State -1, Vajra C]
type = ChangeState
value = 2272
triggerall = !var(26)
triggerall = command = "Vajrac"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Gram Standing
[State -1, Gram Standing]
type = ChangeState
value = 2030
triggerall = !var(26)
triggerall = command = "LongSlashSt"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Gram Crouching
[State -1, Gram Crouching]
type = ChangeState
value = 2040
triggerall = !var(26)
triggerall = command = "LongSlashCr"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation A
[State -1, Formation A]
type = ChangeState
value = 2170
triggerall = !var(26)
triggerall = command = "FormationA"
triggerall = NumHelper(7307) = 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation A Falcon
[State -1, Formation A Falcon]
type = ChangeState
value = 2550
triggerall = !var(26)
triggerall = command = "FormationA_c"
triggerall = NumHelper(7308) = 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Ame-no-Murakumo X
[State -1, Dash Slash x]
type = ChangeState
value = 2000
triggerall = !var(26)
triggerall = command = "RunSlashx"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Ame-no-Murakumo Y
[State -1, Dash Slash y]
type = ChangeState
value = 2010
triggerall = !var(26)
triggerall = command = "RunSlashy"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Ame-no-Murakumo Z
[State -1, Dash Slash z]
type = ChangeState
value = 2020
triggerall = !var(26)
triggerall = command = "RunSlashz"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation B - Release Stand
[State -1, Formation B Release Stand]
type = ChangeState
value = 2210
triggerall = !var(26)
triggerall = command = "FormationB"
triggerall = NumHelper(8135) > 0
triggerall = Helper(8135), StateNo = 2230
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation B - Release Air
[State -1, Formation B]
type = ChangeState
value = 2220
triggerall = !var(26)
triggerall = command = "FormationB"
triggerall = NumHelper(8135) > 0
triggerall = Helper(8135), StateNo = 2230
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Formation B
[State -1, Formation B]
type = ChangeState
value = 2200
triggerall = !var(26)
triggerall = command = "FormationB"
triggerall = NumHelper(8135) = 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation C LK
[State -1, Formation C LK]
type = ChangeState
value = 2330
triggerall = !var(26)
triggerall = command = "FormationC_A"
triggerall = NumHelper(5198) = 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation C MK
[State -1, Formation C MK]
type = ChangeState
value = 2340
triggerall = !var(26)
triggerall = command = "FormationC_B"
triggerall = NumHelper(5198) = 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;---------------------------------------------------------------------------
; Formation C HK
[State -1, Formation C HK]
type = ChangeState
value = 2350
triggerall = !var(26)
triggerall = command = "FormationC_C"
triggerall = NumHelper(5198) = 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,350]

;===========================================================================
;---------------------------------------------------------------------------
; Push Block (Stand)
[State -1]
type = ChangeState
value = 550
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 560
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 570
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(26)
triggerall = StateNo != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(26)
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"
trigger3 = command = "y" && command = "z"
trigger4 = command = "x" && command = "y" && command = "z"

;---------------------------------------------------------------------------
; Triangle Jump
[State -1, Triangle Jump]
type = ChangeState
value = 500
triggerall = StateType = A
triggerall = Pos Y <= -55
triggerall = Ctrl
;triggerall = PrevStateNo != 45
trigger1 = FrontEdgeBodyDist <= 3
trigger1 = Vel X > 0
trigger1 = command = "holdback"
trigger2 = BackEdgeBodyDist <= 3
trigger2 = Vel X < 0
trigger2 = command = "holdfwd"

;---------------------------------------------------------------------------
; Super Jump
[State -1, Superjump]
type = ChangeState
value = 800
triggerall = StateType = S || StateType = C
trigger1 = command = "DU"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = command = "DU"
trigger2 = StateType = C
trigger2 = ctrl
trigger3 = command = "DUF"
trigger3 = StateType = S
trigger3 = ctrl
trigger4 = command = "DUF"
trigger4 = StateType = C
trigger4 = ctrl
trigger5 = command = "DUB"
trigger5 = StateType = S
trigger5 = ctrl
trigger6 = command = "DUB"
trigger6 = StateType = C
trigger6 = ctrl

[State -1]
type = ChangeState
value = 800
triggerall = command = "holdup" && prevstateno != 710
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 320 && movehit

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 1130
triggerall = !var(26)
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A) 
;trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = A)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Stand Punch Throw
[State -1, Stand Punch Throw]
type = ChangeState
value = 1000
triggerall = !var(26)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Stand Kick Throw
[State -1, Stand Kick Throw]
type = ChangeState
value = 1050
triggerall = !var(26)
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
; Cypher combo varsets


[State -1, Set]
type = VarSet
triggerall = var(3) = 0
trigger1 = command = "SuperJump" || (command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "b" && command = "c")
v = 3
value = 6

[State -1, Set]
type = VarSet
triggerall = var(3) = 0 || var(3) = 5
trigger1 = command = "y"
v = 3
value = 1

[State -1, Set]
type = VarSet
triggerall = var(3) = 0 || var(3) = 5
trigger1 = command = "z"
v = 3
value = 2

[State -1, Set]
type = VarSet
triggerall = var(3) = 0 || var(3) = 5
trigger1 = command = "b"
v = 3
value = 3

[State -1, Set]
type = VarSet
triggerall = var(3) = 0 || var(3) = 5
trigger1 = command = "c"
v = 3
value = 4

[State -1, Set]
type = VarSet
triggerall = var(3) = 0
trigger1 = command = "holdup"
v = 3
value = 5


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(26)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(26)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(26)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact

; Stand Hard Punch Cypher Combo
[State -1, SHPCC]
type = ChangeState
value = 220
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command != "holddown"
trigger1 = StateNo = 210 || StateNo = 240 || StateNo = 310 || StateNo = 340
trigger1 = var(3) = 2

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(26)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(26)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact

; Stand Medium Kick Cypher Combo
[State -1, SMKCC]
type = ChangeState
value = 240
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command != "holddown"
trigger1 = StateNo = 210 || StateNo = 310 
trigger1 = var(3) = 3

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(26)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact

; Stand Hard Kick Cypher Combo
[State -1, SHKCC]
type = ChangeState
value = 250
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command != "holddown"
trigger1 = StateNo = 210 || StateNo = 310 || StateNo = 240 || StateNo = 340 || StateNo = 220 || StateNo = 320
trigger1 = var(3) = 4

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(26)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = !var(26)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 310
triggerall = !var(26)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 320
triggerall = !var(26)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact

; Crouch Hard Punch Cypher Combo
[State -1, CHPCC]
type = ChangeState
value = 320
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command = "holddown"
trigger1 = StateNo = 210 || StateNo = 240 || StateNo = 310 || StateNo = 340
trigger1 = var(3) = 2


;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 330
triggerall = !var(26)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 || Stateno = 300
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 340
triggerall = !var(26)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact

; Crouch Medium Kick Cypher Combo
[State -1, CMKCC]
type = ChangeState
value = 340
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command = "holddown"
trigger1 = StateNo = 210 || StateNo = 310 
trigger1 = var(3) = 3

;---------------------------------------------------------------------------
;Crouch Slide Kick
[State -1, Crouch Slide Kick]
type = ChangeState
value = 360
triggerall = !var(26)
triggerall = command = "c"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact

; Crouch Hard Kick Cypher Combo
[State -1, CSKCC]
type = ChangeState
value = 360
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = StateNo = 210 || StateNo = 310 || StateNo = 240 || StateNo = 340 || StateNo = 220 || StateNo = 320
trigger1 = var(3) = 4

;---------------------------------------------------------------------------
;Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 350
triggerall = !var(26)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact

; Crouch Hard Kick Cypher Combo
[State -1, CHKCC]
type = ChangeState
value = 350
triggerall = time > 0
triggerall = MoveContact
triggerall = var(1) = 1
triggerall = command = "holddown"
trigger1 = StateNo = 210 || StateNo = 310 || StateNo = 240 || StateNo = 340 || StateNo = 220 || StateNo = 320
trigger1 = var(3) = 4

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 400 || StateNo = 430
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 400 || StateNo = 410
trigger2 = MoveContact
trigger3 = StateNo = 430 || StateNo = 440
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 400 || StateNo = 410
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = Stateno = [400,420]
trigger2 = MoveContact
trigger3 = StateNo = 430 || StateNo = 440
trigger3 = MoveContact
