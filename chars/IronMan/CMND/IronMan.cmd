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
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c

;-| Super Motions |--------------------------------------------------------

[command] 
name = "Proton Cannon"
command = ~D, F, x+y
time = 20
[command] 
name = "Proton Cannon"
command = ~D, F, x+z
time = 20
[command] 
name = "Proton Cannon"
command = ~D, F, y+z
time = 20

;-| Special Motions |------------------------------------------------------
[command] 
name = "Repulsor Blast Weak"
command = ~F, $D, B, x

[command] 
name = "Repulsor Blast Strong"
command = ~F, $D, B, y

[command] 
name = "Repulsor Blast Fierce"
command = ~F, $D, B, z

[command] 
name = "Shoulder Cannon Weak"
command = ~D, F, x
time = 10
[command] 
name = "Shoulder Cannon Strong"
command = ~D, F, y
time = 10
[command] 
name = "Shoulder Cannon Fierce"
command = ~D, F, z
time = 10

[Command]
name = "Smart Bomb"     
command = y+a
time = 5
[Command]
name = "Smart Bomb Far"     
command = /$F, y+a
time = 5
[Command]
name = "Smart Bomb Short"     
command = /$B, y+a
time = 5

[command] 
name = "Advguard"
command = x+y
time = 5
[command] 
name = "Advguard"
command = y+z
time = 5
[command] 
name = "Advguard"
command = x+z
time = 5

[command] 
name = "nage"
command = x+a


[command] 
name = "Fly"
command = D, B, a+b
[command] 
name = "Fly"
command = D, B, b+a 
[command] 
name = "Fly"
command = D, B, c+b  
[command] 
name = "Fly"
command = D, B, c+a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
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

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = /B, x+y
time = 10

[command]
name = "SuperJump"
command = ~D, U
time = 10

[command]
name = "SuperJump_Fwd"
command = ~D, UF
time = 10

[command]
name = "SuperJump_Back"
command = ~D, UB
time = 10

[Command]
name = "DownUpCharge"
command = ~15$D, $U

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "Air Dash Neutral"
command = x+z
time = 3
[Command]
name = "Air Dash Neutral"
command = x+y
time = 3
[Command]
name = "Air Dash Neutral"
command = y+z
time = 3

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

[Command]
name = "Air Dash UF"
command = /$UF, x+y
time = 3
[Command]
name = "Air Dash UF"
command = /$UF, x+z
time = 3
[Command]
name = "Air Dash UF"
command = /$UF, y+z
time = 3
[Command]
name = "Air Dash U"
command = /$U, x+y
time = 3
[Command]
name = "Air Dash U"
command = /$U, x+z
time = 3
[Command]
name = "Air Dash U"
command = /$U, z+y
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, x+y
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, x+z
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, z+y
time = 3
[Command]
name = "Air Dash B"
command = /$B, x+y
time = 3
[Command]
name = "Air Dash B"
command = /$B, x+z
time = 3
[Command]
name = "Air Dash B"
command = /$B, z+y
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, x+y
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, x+z
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, z+y
time = 3
[Command]
name = "Air Dash D"
command = /$D, x+y
time = 3
[Command]
name = "Air Dash D"
command = /$D, x+z
time = 3
[Command]
name = "Air Dash D"
command = /$D, z+y
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, x+y
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, x+z
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, z+y
time = 3
[Command]
name = "Air Dash F"
command = /$F, x+y
time = 3
[Command]
name = "Air Dash F"
command = /$F, y+z
time = 3
[Command]
name = "Air Dash F"
command = /$F, x+z
time = 3

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
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwdback"
command = /UF
time = 1
buffer.time = 1

[Command]
name = "holddownfwdback"
command = /UB
time = 1
buffer.time = 1

[Command]
name = "holddownfwdbck"
command = /DF
time = 1
buffer.time = 1

[Command]
name = "holddownfwdbck"
command = /DB
time = 1
buffer.time = 1


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
name = "holdback2"
command = /B
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


[Command]
name = "VC1"
command = B, DB, D, x
time = 25
[Command]
name = "VC1"
command = B, DB, D, y
time = 25
[Command]
name = "VC1"
command = B, DB, D, z
time = 25

[Command]
name = "VC1"
command = y+b
time = 1

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

;-| CPU Commands |----------------------------------------------------------
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

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
;   triggerall = command = command_name
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

; Proton Cannon
[State -1, Proton Cannon]
type = ChangeState
value = 3100
triggerall = var(2) != 1
triggerall = command = "Proton Cannon"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = StateNo = [200,450]
trigger2 = ctrl
trigger3 = StateNo = 1100 || stateno = 1110 || StateNo = 1120 || stateno = 1200 || StateNo = 1215 || StateNo = 1220
trigger4 = Stateno = [1000,1009]
trigger4 = time > 20

;---------------------------------------------------------------------------
; Repulsor Blast
[State -1, Repulsor Blast]
type = ChangeState
value = 1200
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5
[State -1, Repulsor Blast]
type = ChangeState
value = 1215
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5
[State -1, Repulsor Blast]
type = ChangeState
value = 1220
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5

;---------------------------------------------------------------------------
; Shoulder Cannon
[State -1, Shoulder Cannon]
type = ChangeState
value = 1100
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,455]
trigger2 = movecontact
trigger3 = Stateno = [200,455]
trigger3 = time > 5

[State -1, Shoulder Cannon]
type = ChangeState
value = 1110
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,455]
trigger2 = movecontact
trigger3 = Stateno = [200,455]
trigger3 = time > 5

[State -1, Shoulder Cannon]
type = ChangeState
value = 1120
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,455]
trigger2 = movecontact
trigger3 = Stateno = [200,455]
trigger3 = time > 5

[State -1, Shoulder Cannon]
type = ChangeState
value = 1150
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Weak"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600,655]
trigger2 = movecontact
trigger3 = Stateno = [600,655]
trigger3 = time > 5

[State -1, Shoulder Cannon]
type = ChangeState
value = 1160
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Strong"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600,655]
trigger2 = movecontact
trigger3 = Stateno = [600,655]
trigger3 = time > 5

[State -1, Shoulder Cannon]
type = ChangeState
value = 1170
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Fierce"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600,655]
trigger2 = movecontact
trigger3 = Stateno = [600,655]
trigger3 = time > 5

;---------------------------------------------------------------------------
; Smart Bomb
[State -1, Smart Bomb]
type = ChangeState
value = 1000
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Short"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 3
[State -1, Smart Bomb]
type = ChangeState
value = 1000
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Short"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 3
[State -1, Smart Bomb]
type = ChangeState
value = 1004
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Far"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 3
[State -1, Smart Bomb]
type = ChangeState
value = 1004
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Far"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 3
[State -1, Smart Bomb]
type = ChangeState
value = 1002
triggerall = var(2) != 1
triggerall = command = "Smart Bomb"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 3
[State -1, Smart Bomb]
type = ChangeState
value = 1002
triggerall = var(2) != 1
triggerall = command = "Smart Bomb"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 3

;---------------------------------------------------------------------------
; Fly Mode
[State -1, Fly]
type = ChangeState
value = 730
triggerall = palno <=6
triggerall = StateNo != 731
triggerall = command = "Fly"
triggerall = Var(12) <= 0
trigger1 = ctrl
trigger2 = StateNo = [200,655]

[State -1, Fly End]
type = Null;ChangeState
value = 49
triggerall = command = "Fly"
triggerall = Var(12) > 0
triggerall = StateNo != [1000,1300]
trigger1 = 1

;---------------------------------------------------------------------------
[State -1, SuperJump]
type = Changestate
value = 702
triggerall = Command = "holdupfwd"
trigger1 = MoveHit
trigger1 = StateNo = 250
[State -1, SuperJump]
type = Changestate
value = 704
triggerall = Command = "holdupback"
trigger1 = MoveHit
trigger1 = StateNo = 250
;Follow Up After Launcher
[State -1, SuperJump]
type = Changestate
value = 700
triggerall = Command = "holdup"
trigger1 = MoveHit
trigger1 = StateNo = 250

;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = Changestate
value = 702
triggerall = Command = "SuperJump_Fwd"
triggerall = Command != "DownUpCharge"
triggerall = Stateno != 420
trigger1 = StateType != a
trigger1 = Ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact

[State -1, SuperJump]
type = Changestate
value = 704
triggerall = Command = "SuperJump_Back"
triggerall = Command != "DownUpCharge"
triggerall = Stateno != 420
trigger1 = StateType != a
trigger1 = Ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact

[State -1, SuperJump]
type = Changestate
value = 700
triggerall = Command = "SuperJump"
triggerall = Command != "DownUpCharge"
triggerall = Stateno != 420
trigger1 = StateType != a
trigger1 = Ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------

; Jumping Fierce Punch (Upward)
[State -1, Jumping Fierce Punch]
type = ChangeState
value = 621
triggerall = command = "holddownfwdback"  || (StateType = A && command = "up_z")
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact
trigger4 = StateNo = [720, 728]
trigger4 = Time > 1

; Jumping Fierce Punch (Downward)
[State -1, Jumping Fierce Punch]
type = ChangeState
value = 622
triggerall = command = "holddownfwdbck"  || (StateType = A && command = "down_z")
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact
trigger4 = StateNo = [720, 728]
trigger4 = Time > 1

;---------------------------------------------------------------------------
; Guard Push (Stand)
[State -1, Guard Push]
type = ChangeState
value = 710
triggerall = var(2) != 1
triggerall = command = "Advguard"
trigger1 = stateno = [150,151]
;Guard Push (Crouch)
[State -1, Guard Push]
type = ChangeState
value = 711
triggerall = var(2) != 1
triggerall = command = "Advguard"
trigger1 = stateno = [152,153]
;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
value = 712
triggerall = var(2) != 1
triggerall = command = "Advguard"
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
; Up Fwd
[State -1, Up Fwd]
type = ChangeState
value = 720
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash UF"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Up Back
[State -1, Up Back]
type = ChangeState
value = 722
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash UB"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Down Back
[State -1, Down Back]
type = ChangeState
value = 724
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash DB"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Down Fwd
[State -1, Down Fwd]
type = ChangeState
value = 726
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash DF"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Up
[State -1, Up]
type = ChangeState
value = 721
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash U"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Down
[State -1, Down]
type = ChangeState
value = 725
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash D"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Back
[State -1, Back]
type = ChangeState
value = 723
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash B"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Fwd
[State -1, Fwd]
type = ChangeState
value = 727
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Air Dash F" ||command = "Air Dash Neutral"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731


;---------------------------------------------------------------------------
; Rocket Knee Dive
[State -1, Rocket Knee Dive]
type = ChangeState
value = 645
triggerall = command = "down_b"
triggerall = var(13) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = StateNo != [620,622]
trigger2 = StateNo != [645,646]
trigger2 = movecontact
trigger3 = StateNo = [720, 728]
trigger3 = Time > 1

;---------------------------------------------------------------------------
; Jumping Fierce Kick (Upward)
[State -1, Jumping Fierce Kick]
type = ChangeState
value = 655
triggerall = command = "up_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = StateNo = [720, 728]
trigger3 = Time > 1

;===========================================================================

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(2) != 1
triggerall = stateno != 100
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(2) != 1
triggerall = stateno != 105
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 40
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 40
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "nage"
trigger1 = p2bodydist X < 50
trigger1 = (p2statetype = S) || (p2statetype = C)


[State -1, Throw]
type = ChangeState
value = 820
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 40
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 40
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
; Air Throw
[state -1]
type = changestate
value = 830
triggerall = statetype = a && p2statetype = a
triggerall = p2bodydist x <= 20 && ctrl && (p2movetype != h && stateno!=620 && stateno!=650)
triggerall = P2BodyDist Y >= -5
trigger1 = command = "fwd_z"
trigger3 = command = "back_z"

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(2) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(2) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(2) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


;---------------------------------------------------------------------------
; Stand Light Kick
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
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(2) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(2) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = p2stateno = 227 && time > 2
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(2) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(2) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(2) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(2) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(2) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(2) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = p2stateno = 227 && time > 2

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [720, 728]
trigger2 = Time > 1

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = StateNo = [720, 728]
trigger4 = Time > 1

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger2 = stateno != [620,622]
trigger3 = StateNo = [720, 728]
trigger3 = Time > 1

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = StateNo = [720, 728]

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = StateNo = [720, 728]

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = StateNo = [720, 728]

; カウンター
[State -1]
type = ChangeState
value = 2222
triggerall = power > 1000
triggerall = command = "VC1"
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
; CPU Commands
[State -1]
type = Null;VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
var(2) = 1

;---------------------------------------------------------------------------
; AI
[State -1, ChangeState]
type = ChangeState
triggerall = MoveContact
trigger1 = Var(2) = 1 && Random <= 500 && P2BodyDist X <= 40 && StateType != A
value = IfElse(StateNo = 200,210,IfElse(StateNo = 210,220,IfElse(StateNo = 220,1120,1128)))
[State -1, ChangeState]
type = ChangeState
triggerall = MoveContact
trigger1 = Var(2) = 1 && Random <= 799 && P2BodyDist X <= 40 && StateType != A
value = IfElse(StateNo = 200,230,IfElse(StateNo = 230,250,IfElse(StateNo = 250,700,701)))
[State -1, ChangeState]
type = ChangeState
triggerall = MoveContact
trigger1 = Var(2) = 1 && Random <= 799 && P2BodyDist X <= 40 && StateType = A
value = IfElse(StateNo = 600,630,IfElse(StateNo = 630,610,IfElse(StateNo = 610,640,IfElse(StateNo = 640,621,1120))))

[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype = A
triggerall = P2movetype = A
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > life
value = 132
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype != C
triggerall = Statetype = S
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > (enemynear, movecontact)*700
value = 130 
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype = C
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
trigger1 = StateNo = 150
trigger1 = 1
value = 152
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype = C
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > (enemynear, movecontact)*700
value = 131
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype != C
triggerall = P2movetype = A
trigger1 = random > life
trigger1 = StateNo = 152
value = 150

