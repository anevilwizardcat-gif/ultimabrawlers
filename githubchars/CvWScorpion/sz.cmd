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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "hell"
command = ~D, DB, B, D, DB, x+y
time = 32

[command]
name = "hell"
command = ~D, DB, B, D, DB, y+z
time = 32

[command]
name = "hell"
command = ~D, DB, B, D, DB, x+z
time = 32

[command]
name = "combo"
command = ~D, DF, F, D, DF, a
time = 32

[command]
name = "combo"
command = ~D, DF, F, D, DF, b
time = 32

[command]
name = "combo"
command = ~D, DF, F, D, DF, c
time = 32

[command]
name = "fire"
command = ~D, DF, F, D, DF, x
time = 32

[command]
name = "fire"
command = ~D, DF, F, D, DF, y
time = 32

[command]
name = "fire"
command = ~D, DF, F, D, DF, z
time = 32
;-| Special Motions |------------------------------------------------------
[command]
name = "exslide"
command = ~D,DF,F,a+b
time = 15

[command]
name = "exslide"
command = ~D,DF,F,b+c
time = 15

[command]
name = "exslide"
command = ~D,DF,F,a+c
time = 15

[command]
name = "slide"
command = ~D,DF,F,~c
time = 15

[command]
name = "slide"
command = ~D,DF,F,~b
time = 15

[command]
name = "slide2"
command = ~D,DF,F,~a
time = 15

[command]
name = "slide"
command = ~D,DF,F,c
time = 15

[command]
name = "slide"
command = ~D,DF,F,b
time = 15

[command]
name = "slide2"
command = ~D,DF,F,a
time = 15

[command]
name = "exspear2"
command = ~D,DF,F,x+y
time = 15

[command]
name = "exspear2"
command = ~D,DF,F,y+z
time = 15

[command]
name = "exspear2"
command = ~D,DF,F,x+z
time = 15

[command]
name = "spear"
command = ~D,DF,F,~z
time = 15

[command]
name = "spear2"
command = ~D,DF,F,~x
time = 15

[command]
name = "spear2"
command = ~D,DF,F,~y
time = 15

[command]
name = "spear"
command = ~D,DF,F,z
time = 15

[command]
name = "spear2"
command = ~D,DF,F,x
time = 15

[command]
name = "spear2"
command = ~D,DF,F,y
time = 15

[command]
name = "extelepunch"
command = ~D,DB,B,x+y
time = 15

[command]
name = "extelepunch"
command = ~D,DB,B,y+z
time = 15

[command]
name = "extelepunch"
command = ~D,DB,B,x+z
time = 15

[command]
name = "telepunch"
command = ~D,DB,B,~x
time = 15

[command]
name = "telepunch"
command = ~D,DB,B,x
time = 15

[command]
name = "telepunch"
command = ~D,DB,B,~y
time = 15

[command]
name = "telepunch"
command = ~D,DB,B,y
time = 15

[command]
name = "telepunch2"
command = ~D,DB,B,~z
time = 15

[command]
name = "telepunch2"
command = ~D,DB,B,z
time = 15

[command]
name = "exdp"
command = ~F,D,DF,x+y
time = 15

[command]
name = "exdp"
command = ~F,D,DF,y+z
time = 15

[command]
name = "exdp"
command = ~F,D,DF,x+z
time = 15

[command]
name = "exdp2"
command = ~F,D,DF,a+b
time = 15

[command]
name = "exdp2"
command = ~F,D,DF,b+c
time = 15

[command]
name = "exdp2"
command = ~F,D,DF,a+c
time = 15

[command]
name = "dp"
command = ~F,D,DF,a
time = 15

[command]
name = "dp"
command = ~F,D,DF,y
time = 15

[command]
name = "dp2"
command = ~F,D,DF,x
time = 15

[command]
name = "dp3"
command = ~F,D,DF,c
time = 15

[command]
name = "dp3"
command = ~F,D,DF,b
time = 15

[command]
name = "dp4"
command = ~F,D,DF,a
time = 15

[command]
name = "hellz"
command = ~D,D,a
time = 15

[command]
name = "hellz"
command = ~D,D,b
time = 15

[command]
name = "hellz"
command = ~D,D,c
time = 15

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

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
name = "recovery" ;Required (do not remove)
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
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "kk"
command = a+b
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

[Command]
name = "releasez"
command = ~z
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

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdy"
command = /y
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

;====================<RELEASE DIR>====================

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



;====================<RELEASE BUTTON>====================

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

;====================<OTHER>====================

[Command]
name = "super jump"
command = $D, $U

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

[State -1, Roll Forward]
type = ChangeState
value = 771
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 772
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 770
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, MAX Mode]
type = ChangeState
value = 775
triggerall = command = "c+z"
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

;combo
[State -1, AI combo]
type = ChangeState
value = 3100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.5
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;hell
[State -1, AI hell]
type = ChangeState
value = 3200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.7
Triggerall=AILevel>=7
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;fire
[State -1, AI fire]
type = ChangeState
value = 3000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.4
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = (statetype != A) && ctrl
trigger2 = var(7) || var(8)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 212 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 240 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = StateNo = 1502 && MoveContact
trigger14 = StateNo = 1500 && MoveContact
trigger15 = StateNo = 1400 && MoveContact
trigger16 = StateNo = 1200 && MoveContact
trigger17 = StateNo = 1206 && MoveContact
trigger18 = StateNo = 1135 && MoveContact

;exflames2
[State -1, AI exflames2]
type = ChangeState
value = 1405
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<120
Triggerall=random<var(50)*0.5
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;exflames1
[State -1, AI exflames1]
type = ChangeState
value = 1404
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.4
Triggerall=AILevel>=6
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames
[State -1, AI flames]
type = ChangeState
value = 1402
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)=[200,249]
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames2
[State -1, AI flames2]
type = ChangeState
value = 1403
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)=[250,300]
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames3
[State -1, AI flames3]
type = ChangeState
value = 1401
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)=[150,199]
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames4
[State -1, AI flames4]
type = ChangeState
value = 1400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)=[100,149]
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;spear2
[State -1, AI spear2]
type = ChangeState
value = 1120
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl

;spear
[State -1, AI spear]
type = ChangeState
value = 1100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = p2stateno != 118011
triggerall = p2stateno != 11911
trigger1 = (statetype != A) && ctrl

;extelepunch
[State -1, AI extelepunch]
type = ChangeState
value = 1206
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)>250
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 500
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 600 && movecontact
trigger13 = stateno = 610 && movecontact
trigger14 = stateno = 630 && movecontact

;telepunch2a
[State -1, AI telepunch2a]
type = ChangeState
value = 1201
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)>200
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;telepuncha
[State -1, AI telepuncha]
type = ChangeState
value = 1200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)>200
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;telepunch2
[State -1, AI telepunch2]
type = ChangeState
value = 1201
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)>200
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;telepunch
[State -1, AI telepunch]
type = ChangeState
value = 1200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)>200
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;exslide
[State -1, AI exslide]
type = ChangeState
value = 1502
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;slide
[State -1, AI slide]
type = ChangeState
value = 1500
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;slide2
[State -1, AI slide2]
type = ChangeState
value = 1501
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;ut
[State -1, AI ut]
type = ChangeState
value = 990
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
triggerall = var(37) >= 2
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------


;launch
[State -1, AI upfwd]
Type = changestate
value = 40000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.7
Triggerall=AILevel>=5
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (StateNo = 410)
trigger1 = movehit

;airthrow
[state -1, AI throw]
Type = changestate
value = 802
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.7
Triggerall=AILevel>=6
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (statetype = a) && ctrl

;throw
[state -1, AI throw]
Type = changestate
value = 800
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<70
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
;[State -1, Air Dash]
;type = ChangeState
;value = 110
;triggerall = pos y <= -35
;trigger1 = command = "FF"
;trigger1 = statetype = a
;trigger1 = ctrl

; Run Fwd
[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, AI Crouching Strong Punch 2]
type = ChangeState
value = 415
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact
trigger11 = (stateno=[100,101])
trigger12 = stateno = 212 && movecontact

; FWD+HP
[State -1, AI FWD+HP]
type = ChangeState
value = 700
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=6
Triggerall=P2StateType=C
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, AI Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch 2
[State -1, AI Stand Strong Punch 2]
type = ChangeState
value = 215
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 210 && time >= 16
trigger10 = stateno = 210 && movehit
trigger11 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 205 && time >= 7

;---------------------------------------------------------------------------
; Stand Light Punch 2
[State -1, AI Stand Light Punch 2]
type = ChangeState
value = 205
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 9

;---------------------------------------------------------------------------
;Stand Strong Punch 3
[State -1, AI Stand Strong Punch]
type = ChangeState
value = 212
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick 2
[State -1, AI Stand Light Kick 2]
type = ChangeState
value = 235
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact
trigger8 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 9
trigger3 = (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<90
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact
trigger11 = (stateno=[100,101])
trigger12 = stateno = 212 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<70
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 8
trigger3 = (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, AI Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact
trigger8 = (stateno=[100,101])
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 212 && movecontact


;===============================================================================
; Super Jump
;===============================================================================
[State -1, Super Jump]
type = ChangeState
value = 55
trigger1 = command = "super jump"
trigger1 = ctrl && statetype != A
;trigger2 = stateno = 420
;trigger2 = (movecontact) && (command = "holdup") && time > 18
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, AI Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------

[state -1, AI Jump]
Type=changestate
triggerall = var(59) > 0
Triggerall=random<var(50)*0.5
Triggerall=AILevel>=1
trigger1 = ctrl && statetype != A
value=40

;combo
[State -1, combo]
type = ChangeState
value = 3100
triggerall = command = "combo"
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;hell
[State -1, hell]
type = ChangeState
value = 3200
triggerall = command = "hell"
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;fire
[State -1, fire]
type = ChangeState
value = 3000
triggerall = command = "fire"
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = (statetype != A) && ctrl
trigger2 = var(7) || var(8)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 212 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 240 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = StateNo = 1502 && MoveContact
trigger14 = StateNo = 1500 && MoveContact
trigger15 = StateNo = 1400 && MoveContact
trigger16 = StateNo = 1200 && MoveContact
trigger17 = StateNo = 1206 && MoveContact
trigger18 = StateNo = 1135 && MoveContact

;exflames2
[State -1, exflames2]
type = ChangeState
value = 1405
triggerall = command = "exdp2"
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;exflames1
[State -1, exflames1]
type = ChangeState
value = 1404
triggerall = command = "exdp"
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames
[State -1, flames]
type = ChangeState
value = 1402
triggerall = command = "dp2"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames2
[State -1, flames2]
type = ChangeState
value = 1403
triggerall = command = "dp"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames3
[State -1, flames3]
type = ChangeState
value = 1401
triggerall = command = "dp3"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;flames4
[State -1, flames4]
type = ChangeState
value = 1400
triggerall = command = "dp4"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;spear2
[State -1, spear2]
type = ChangeState
value = 1120
triggerall = command = "spear"
trigger1 = (statetype != A) && ctrl

;spear
[State -1, spear]
type = ChangeState
value = 1100
triggerall = command = "spear2"
triggerall = p2stateno != 118011
triggerall = p2stateno != 11911
triggerall = var(51) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;extelepunch
[State -1, extelepunch]
type = ChangeState
value = 1206
triggerall = command = "extelepunch"
triggerall = power >= 500
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 600 && movecontact
trigger13 = stateno = 610 && movecontact
trigger14 = stateno = 630 && movecontact

;telepunch2a
[State -1, telepunch2a]
type = ChangeState
value = 1201
triggerall = command = "telepunch2"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;telepuncha
[State -1, telepuncha]
type = ChangeState
value = 1200
triggerall = command = "telepunch"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;telepunch2
[State -1, telepunch2]
type = ChangeState
value = 1201
triggerall = command = "telepunch2"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;telepunch
[State -1, telepunch]
type = ChangeState
value = 1200
triggerall = command = "telepunch"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;exslide
[State -1, exslide]
type = ChangeState
value = 1502
triggerall = command = "exslide"
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;slide
[State -1, slide]
type = ChangeState
value = 1500
triggerall = command = "slide"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;slide2
[State -1, slide2]
type = ChangeState
value = 1501
triggerall = command = "slide2"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 212 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 430 && movecontact

;ut
[State -1, ut]
type = ChangeState
value = 990
triggerall = command = "hellz"
triggerall = var(37) >= 2
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------


;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd" || command = "up"
triggerall = var(59) = 0
trigger1 = (StateNo = 410)
trigger1 = movehit

;airthrow
[state -1, throw]
Type = changestate
value = 802
triggerall = (command = "holdfwd" || command = "holdback") && command = "pp" || (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = (statetype = a) && ctrl

;throw
[state -1, throw]
Type = changestate
value = 800
triggerall = (command = "holdfwd" || command = "holdback") && command = "pp" || (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
;[State -1, Air Dash]
;type = ChangeState
;value = 110
;triggerall = pos y <= -35
;trigger1 = command = "FF"
;trigger1 = statetype = a
;trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch 2]
type = ChangeState
value = 415
triggerall = command = "y" 
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact
trigger11 = (stateno=[100,101])
trigger12 = stateno = 212 && movecontact

; FWD+HP
[State -1, FWD+HP]
type = ChangeState
value = 700
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y" 
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch 2
[State -1, Stand Strong Punch 2]
type = ChangeState
value = 215
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 210 && time >= 16
trigger10 = stateno = 210 && movehit
trigger11 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 205 && time >= 7

;---------------------------------------------------------------------------
; Stand Light Punch 2
[State -1, Stand Light Punch 2]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 9

;---------------------------------------------------------------------------
;Stand Strong Punch 3
[State -1, Stand Strong Punch]
type = ChangeState
value = 212
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick 2
[State -1, Stand Light Kick 2]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact
trigger8 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 9
trigger3 = (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact
trigger11 = (stateno=[100,101])
trigger12 = stateno = 212 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 8
trigger3 = (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact
trigger8 = (stateno=[100,101])
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 212 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact
trigger8 = (stateno=[100,101])
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 212 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
