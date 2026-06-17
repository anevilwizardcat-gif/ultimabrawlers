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
y = z
z = y
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
name = "qcbsuper"
command = ~D,DF,F,D,DF,F,a
time = 35

[command]
name = "qcbsuper"
command = ~D,DF,F,D,DF,F,b
time = 35

[command]
name = "qcbsuper"
command = ~D,DF,F,D,DF,F,c
time = 35

[command]
name = "Beat_Plane_ABC"
command = ~D,DB,B,D,DB,B,a
time = 35

[command]
name = "Beat_Plane_ABC"
command = ~D,DB,B,D,DB,B,b
time = 35

[command]
name = "Beat_Plane_ABC"
command = ~D,DB,B,D,DB,B,c
time = 35

[command]
name = "dpsuper"
command = ~D,DF,F,D,DF,F,x+y
time = 35

[command]
name = "dpsuper"
command = ~D,DF,F,D,DF,F,x+z
time = 35

[command]
name = "dpsuper"
command = ~D,DF,F,D,DF,F,y+z
time = 35

[command]
name = "qcfsuper"
command = ~D,DF,F,D,DF,F,x
time = 35

[command]
name = "qcfsuper"
command = ~D,DF,F,D,DF,F,y
time = 35

[command]
name = "qcfsuper"
command = ~D,DF,F,D,DF,F,z
time = 35

[command]
name = "ddsuper"
command = D, D, s
time = 20

[Command]
name = "Hyper"
command = ~D,DB,B,D,DB,B,x+y
time = 32

[Command]
name = "Hyper"
command = ~D,DB,B,D,DB,B,x+z
time = 32

[Command]
name = "Hyper"
command = ~D,DB,B,D,DB,B,y+z
time = 32
;-| Special Motions |------------------------------------------------------
[command]
name = "qcfk"
command = ~D,DF,F,~b
time = 15

[command]
name = "qcfk2"
command = ~D,DF,F,~a
time = 15

[command]
name = "qcfk"
command = ~D,DF,F,~c
time = 15

[command]
name = "exqcfk"
command = ~D,DF,F,b+c
time = 15

[command]
name = "exqcfk"
command = ~D,DF,F,a+c
time = 15

[command]
name = "exqcfk"
command = ~D,DF,F,b+a
time = 15

[command]
name = "qcfk"
command = ~D,DF,F,b
time = 15

[command]
name = "qcfk2"
command = ~D,DF,F,a
time = 15

[command]
name = "qcfk"
command = ~D,DF,F,c
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,~b
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,~c
time = 15

[command]
name = "qcbk2"
command = ~D,DB,B,~a
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,b
time = 15

[command]
name = "qcbk2"
command = ~D,DB,B,a
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,c
time = 15

[command]
name = "EXdp"
command = ~F,D,DF, x+y
time = 15

[command]
name = "EXdp"
command = ~F,D,DF, x+z
time = 15

[command]
name = "EXdp"
command = ~F,D,DF, y+z
time = 15

[command]
name = "dp"
command = ~F,D,DF,~z
time = 15

[command]
name = "dp2"
command = ~F,D,DF,~x
time = 15

[command]
name = "dp3"
command = ~F,D,DF,~y
time = 15

[command]
name = "dp"
command = ~F,D,DF,z
time = 15

[command]
name = "dp3"
command = ~F,D,DF,y
time = 15

[command]
name = "dp2"
command = ~F,D,DF,x
time = 15

[command]
name = "exqcbp"
command = ~D,DB,B,y+x
time = 15

[command]
name = "exqcbp"
command = ~D,DB,B,x+z
time = 15

[command]
name = "exqcbp"
command = ~D,DB,B,y+z
time = 15

[command]
name = "qcbp"
command = ~D,DB,B,y
time = 15

[command]
name = "qcbp2"
command = ~D,DB,B,x
time = 15

[command]
name = "qcbp"
command = ~D,DB,B,z
time = 15

[command]
name = "exqcfp"
command = ~D,DF,F,x+y
time = 15

[command]
name = "exqcfp"
command = ~D,DF,F,y+z
time = 15

[command]
name = "exqcfp"
command = ~D,DF,F,x+z
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,~y
time = 15

[command]
name = "qcfp2"
command = ~D,DF,F,~x
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,~z
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,y
time = 15

[command]
name = "qcfp2"
command = ~D,DF,F,x
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,z
time = 15

[command]
name = "change"
command = ~D,D,x
time = 15

[command]
name = "change"
command = ~D,D,y
time = 15

[command]
name = "change"
command = ~D,D,z
time = 15

[command]
name = "helper"
command = ~D,D,a
time = 15

[command]
name = "helper2"
command = ~D,D,b
time = 15

[command]
name = "helper3"
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

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
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
;Hyper Megaman
[State -1, Hyper Megaman]
type = ChangeState
value = 3000
triggerall = var(46) >= 24
triggerAll = command = "Hyper"
triggerAll = RoundState = 2 && statetype = S || statetype = A
triggerAll = power >= 3000 
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])

;L3
[State -1, AI L3]
type = ChangeState
value = 3400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.7
Triggerall=AILevel>=7
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 3000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;astrocrush
[State -1, AI astrocrush]
type = ChangeState
value = 3350
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.5
Triggerall=AILevel>=6
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 6
triggerall = power >= 1000
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;firestorm
[State -1, AI firestorm]
type = ChangeState
value = 3300
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 3
triggerall = var(38) = 0
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;rushdrill
[State -1, AI rushdrill]
type = ChangeState
value = 3100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<250
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;WTank
[State -1, AI WTank]
type = ChangeState
value = 3370
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.7
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 1000
triggerall = var(46) <= 5
trigger1 = (statetype != A) && ctrl
;--------------------------------------------------------------------------
[State -1, Beat_Plane_ABC]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "Beat_Plane_ABC"
triggerAll = RoundState = 2 && statetype = S || statetype = A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])

;exslide
[State -1, AI exslide]
type = ChangeState
value = 1102
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;slide
[State -1, AI slide]
type = ChangeState
value = 1100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;slide2
[State -1, AI slide2]
type = ChangeState
value = 1101
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;dp
[State -1, AI dp]
type = ChangeState
value = 1001
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=4
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;dp2
[State -1, AI dp2]
type = ChangeState
value = 1000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=4
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;bhair
[State -1, AI bhair]
type = ChangeState
value = 1355
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<250
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
triggerall = var(46) >= 4
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
triggerall = numhelper(1365) = 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;bh
[State -1, AI bh]
type = ChangeState
value = 1355
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<250
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
triggerall = var(46) >= 4
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
triggerall = numhelper(1365) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;tcair
[State -1, AI tcair]
type = ChangeState
value = 1354
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) != 0
trigger1 = (statetype = A) && ctrl

;tc
[State -1, AI tc]
type = ChangeState
value = 1354
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl

;nbair
[State -1, AI nbair]
type = ChangeState
value = 1304
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;nb
[State -1, AI nb]
type = ChangeState
value = 1304
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;csair
[State -1, AI csair]
type = ChangeState
value = 1353
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 3
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1645) = 0
triggerall = var(38) != 0
triggerall = p2stateno != 13579
triggerall = p2stateno != 135799
trigger1 = (statetype = A) && ctrl

;cs
[State -1, AI cs]
type = ChangeState
value = 1353
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
triggerall = var(46) >= 3
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1645) = 0
triggerall = p2stateno != 13579
triggerall = p2stateno != 135799
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl

;dwair
[State -1, AI dwair]
type = ChangeState
value = 1352
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 3
triggerall = power >= 500
triggerall = var(38) != 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;dw
[State -1, AI dw]
type = ChangeState
value = 1352
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 3
triggerall = power >= 500
triggerall = var(38) != 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;stair
[State -1, AI stair]
type = ChangeState
value = 1350
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 1
triggerall = var(38) != 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;st
[State -1, AI st]
type = ChangeState
value = 1350
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 1
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;thair
[State -1, AI thair]
type = ChangeState
value = 1351
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 3
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;th
[State -1, AI th]
type = ChangeState
value = 1351
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = var(46) >= 3
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;mmair
[State -1, AI mmair]
type = ChangeState
value = 1302
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 4
triggerall = power >= 500
triggerall = var(38) = 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;mm
[State -1, AI mm]
type = ChangeState
value = 1302
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 4
triggerall = power >= 500
triggerall = var(38) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;mbair
[State -1, AI mbair]
type = ChangeState
value = 1300
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 1
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;mb
[State -1, AI mb]
type = ChangeState
value = 1300
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = var(46) >= 1
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;rcair
[State -1, AI rcair]
type = ChangeState
value = 1301
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=L
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact


;rc
[State -1, AI rc]
type = ChangeState
value = 1301
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 2
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;change2
[State -1, AI change2]
type = ChangeState
value = 1341
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl

;change
[State -1, AI change]
type = ChangeState
value = 1340
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl

;helper3
[State -1, AI helper3]
type = ChangeState
value = 992
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = var(37) >= 3
triggerall = numhelper(1201) = 0
triggerall = numhelper(1211) = 0
triggerall = numhelper(1221) = 0
trigger1 = (statetype != A) && ctrl

;helper2
[State -1, AI helper2]
type = ChangeState
value = 991
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = var(37) >= 2
triggerall = numhelper(1201) = 0
triggerall = numhelper(1211) = 0
triggerall = numhelper(1221) = 0
trigger1 = (statetype != A) && ctrl

;helper1
[State -1, AI helper1]
type = ChangeState
value = 990
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = var(37) >= 1
triggerall = numhelper(1201) = 0
triggerall = numhelper(1211) = 0
triggerall = numhelper(1221) = 0
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------

;launch
[State -1, AI upfwd]
Type = changestate
value = 40000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=4
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
triggerall = var(59) = 0
trigger1 = (StateNo = 410)
trigger1 = movehit

;fthrow
[state -1, AI fthrow]
Type = changestate
value = 800
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != a) && ctrl

;throw
[state -1, AI throw]
Type = changestate
value = 800
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdz"
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
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6

;Stand Strong Punch
[State -1, AI Stand Strong Punch 3]
type = ChangeState
value = 222
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = stateno = 221 && time >= 3

;Stand Strong Punch
[State -1, AI Stand Strong Punch 2]
type = ChangeState
value = 221
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = stateno = 220 && time >= 12

;Stand Strong Punch
[State -1, AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
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
;Stand Strong Punch
[State -1, AI Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.9
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

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*0.9
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
Triggerall=random<var(50)*0.9
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

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1, AI Crouch Strong Punch 3]
type = ChangeState
value = 422
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = stateno = 421 && time >= 3

;Crouch Strong Punch
[State -1, AI Crouch Strong Punch 2]
type = ChangeState
value = 421
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
trigger1 = stateno = 420 && time >= 12

;Crouch Strong Punch
[State -1, AI Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
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
; Crouching Strong Punch
[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.9
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
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, AI Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.3
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

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI Jump Medium Punch]
type = ChangeState
value = 622
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = statetype = A
trigger1 = stateno = 621 && time >= 3

;Jump Strong Punch
[State -1, AI Jump Medium Punch]
type = ChangeState
value = 621
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.9
Triggerall=AILevel>=1
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = statetype = A
trigger1 = stateno = 620 && time >= 14

;Jump Strong Punch
[State -1, AI Jump Medium Punch]
type = ChangeState
value = 620
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<300
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=1
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.3
Triggerall=AILevel>=1
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.9
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
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*1.4
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact

[state -1, AI Jump]
Type=changestate
triggerall = var(59) > 0
Triggerall=random<var(50)*0.5
Triggerall=AILevel>=1
trigger1 = ctrl && statetype != A
value=40

;L3
[State -1, L3]
type = ChangeState
value = 3400
triggerall = command = "dpsuper"
triggerall = power >= 3000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;astrocrush
[State -1, astrocrush]
type = ChangeState
value = 3350
triggerall = command = "qcfsuper"
triggerall = var(46) >= 6
triggerall = power >= 1000
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;firestorm
[State -1, firestorm]
type = ChangeState
value = 3300
triggerall = command = "qcfsuper"
triggerall = var(46) >= 3
triggerall = var(38) = 0
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;rushdrill
[State -1, rushdrill]
type = ChangeState
value = 3100
triggerall = command = "qcbsuper"
triggerall = power >= 2000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;WTank
[State -1, WTank]
type = ChangeState
value = 3370
triggerall = command = "ddsuper"
triggerall = power >= 1000
triggerall = var(46) <= 23
trigger1 = (statetype != A) && ctrl

;exslide
[State -1, exslide]
type = ChangeState
value = 1102
triggerall = command = "exqcfk"
triggerall = power >= 500
triggerall = var(46) >= 2
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;EXdp
[State -1, dp2]
type = ChangeState
value = 1003
triggerall = command = "EXdp"
triggerall = power >= 500
triggerall = var(46) >= 2
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;slide
[State -1, slide]
type = ChangeState
value = 1100
triggerall = command = "qcfk"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;slide2
[State -1, slide2]
type = ChangeState
value = 1101
triggerall = command = "qcfk2"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;dp3
[State -1, dp2]
type = ChangeState
value = 1002
triggerall = command = "dp3"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;dp
[State -1, dp]
type = ChangeState
value = 1001
triggerall = command = "dp"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;dp2
[State -1, dp2]
type = ChangeState
value = 1000
triggerall = command = "dp2"
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;bhair
[State -1, bhair]
type = ChangeState
value = 1355
triggerall = command = "exqcbp"
triggerall = var(46) >= 4
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
triggerall = numhelper(1365) = 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;bh
[State -1, bh]
type = ChangeState
value = 1355
triggerall = command = "exqcbp"
triggerall = var(46) >= 4
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
triggerall = numhelper(1365) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;sbair
[State -1, sbair]
type = ChangeState
value = 1643
triggerall = command = "exqcbp"
triggerall = numhelper(1645) > 0
triggerall = var(46) >= 2
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;sb
[State -1, sb]
type = ChangeState
value = 1643
triggerall = command = "exqcbp"
triggerall = numhelper(1645) > 0
triggerall = var(46) >= 2
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;sbair
[State -1, sbair]
type = ChangeState
value = 1305
triggerall = command = "exqcbp"
triggerall = var(46) >= 4
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;sb
[State -1, sb]
type = ChangeState
value = 1305
triggerall = command = "exqcbp"
triggerall = var(46) >= 4
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;tcair
[State -1, tcair]
type = ChangeState
value = 1354
triggerall = command = "qcbp"
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) != 0
trigger1 = (statetype = A) && ctrl

;tc
[State -1, tc]
type = ChangeState
value = 1354
triggerall = command = "qcbp"
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl

;nbair
[State -1, nbair]
type = ChangeState
value = 1304
triggerall = command = "qcbp"
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;nb
[State -1, nb]
type = ChangeState
value = 1304
triggerall = command = "qcbp"
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = numhelper(1314) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;csair
[State -1, csair]
type = ChangeState
value = 1353
triggerall = command = "qcbp2"
triggerall = var(46) >= 3
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1645) = 0
triggerall = var(38) != 0
triggerall = p2stateno != 13579
triggerall = p2stateno != 135799
trigger1 = (statetype = A) && ctrl

;cs
[State -1, cs]
type = ChangeState
value = 1353
triggerall = command = "qcbp2"
triggerall = var(46) >= 3
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1645) = 0
triggerall = p2stateno != 13579
triggerall = p2stateno != 135799
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl

;lsair
[State -1, lsair]
type = ChangeState
value = 1143
triggerall = command = "qcbp2"
triggerall = numhelper(1145) > 0
triggerall = var(46) >= 1
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;ls
[State -1, ls]
type = ChangeState
value = 1143
triggerall = command = "qcbp2"
triggerall = var(46) >= 1
triggerall = numhelper(1145) > 0
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;lsair
[State -1, lsair]
type = ChangeState
value = 1303
triggerall = command = "qcbp2"
triggerall = var(46) >= 2
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1645) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;ls
[State -1, ls]
type = ChangeState
value = 1303
triggerall = command = "qcbp2"
triggerall = var(46) >= 2
triggerall = var(35) = 0
triggerall = var(36) = 0
triggerall = numhelper(1645) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;dwair
[State -1, dwair]
type = ChangeState
value = 1352
triggerall = command = "exqcfp"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 3
triggerall = power >= 500
triggerall = var(38) != 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;dw
[State -1, dw]
type = ChangeState
value = 1352
triggerall = command = "exqcfp"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 3
triggerall = power >= 500
triggerall = var(38) != 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;stair
[State -1, stair]
type = ChangeState
value = 1350
triggerall = command = "qcfp2"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 1
triggerall = var(38) != 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;st
[State -1, st]
type = ChangeState
value = 1350
triggerall = command = "qcfp2"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 1
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;thair
[State -1, thair]
type = ChangeState
value = 1351
triggerall = command = "qcfp"
triggerall = var(46) >= 3
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;th
[State -1, th]
type = ChangeState
value = 1351
triggerall = command = "qcfp"
triggerall = var(46) >= 3
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;mmair
[State -1, mmair]
type = ChangeState
value = 1302
triggerall = command = "exqcfp"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 4
triggerall = power >= 500
triggerall = var(38) = 0
triggerall = power >= 500
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;mm
[State -1, mm]
type = ChangeState
value = 1302
triggerall = command = "exqcfp"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 4
triggerall = power >= 500
triggerall = var(38) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;mbair
[State -1, mbair]
type = ChangeState
value = 1300
triggerall = command = "qcfp2"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 1
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;mb
[State -1, mb]
type = ChangeState
value = 1300
triggerall = command = "qcfp2"
triggerall = var(46) >= 1
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;rcair
[State -1, rcair]
type = ChangeState
value = 1301
triggerall = command = "qcfp"
triggerall = var(46) >= 2
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact


;rc
[State -1, rc]
type = ChangeState
value = 1301
triggerall = command = "qcfp"
triggerall = numhelper(1145) = 0
triggerall = var(46) >= 2
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;change2
[State -1, change2]
type = ChangeState
value = 1341
triggerall = command = "change"
triggerall = numhelper(1145) = 0
triggerall = var(38) != 0
trigger1 = (statetype != A) && ctrl

;change
[State -1, change]
type = ChangeState
value = 1340
triggerall = command = "change"
triggerall = numhelper(1145) = 0
triggerall = var(38) = 0
trigger1 = (statetype != A) && ctrl

;helper3
[State -1, helper3]
type = ChangeState
value = 992
triggerall = command = "helper3" 
triggerall = numhelper(1201) = 0
triggerall = numhelper(1211) = 0
triggerall = numhelper(1221) = 0
triggerall = var(37) >= 3
trigger1 = (statetype != A) && ctrl

;helper2
[State -1, helper2]
type = ChangeState
value = 991
triggerall = command = "helper2" 
triggerall = numhelper(1201) = 0
triggerall = numhelper(1211) = 0
triggerall = numhelper(1221) = 0
triggerall = var(37) >= 2
trigger1 = (statetype != A) && ctrl

;helper1
[State -1, helper1]
type = ChangeState
value = 990
triggerall = command = "helper"
triggerall = numhelper(1201) = 0
triggerall = numhelper(1211) = 0
triggerall = numhelper(1221) = 0
triggerall = var(37) >= 1
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

;fthrow
[state -1, fthrow]
Type = changestate
value = 800
triggerall = (command = "holdfwd" || command = "holdback") && command = "pp" || (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = (statetype != a) && ctrl

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
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6

;Stand Strong Punch
[State -1, Stand Strong Punch 3]
type = ChangeState
value = 222
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 221 && time >= 3

;Stand Strong Punch
[State -1, Stand Strong Punch 2]
type = ChangeState
value = 221
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 220 && time >= 12

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = command = "y" 
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
;Stand Strong Punch (Hold Burst)
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = NumHelper(229) > 0 ;the same as holding buttom
triggerall = command != "hold_y"
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
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
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
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
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

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1, Crouch Strong Punch 3]
type = ChangeState
value = 422
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = stateno = 421 && time >= 3

;Crouch Strong Punch
[State -1, Crouch Strong Punch 2]
type = ChangeState
value = 421
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
trigger1 = stateno = 420 && time >= 12

;Crouch Strong Punch
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = command = "y" 
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
;Crouch Strong Punch (Hold Burst)
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = NumHelper(229) > 0 ;the same as holding buttom
triggerall = command != "hold_y"
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
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 622
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = command = "y"
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = statetype = A
trigger1 = stateno = 621 && time >= 3

;Jump Strong Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 621
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = command = "z"
triggerall = numhelper(223) <= 2
triggerall = numhelper(227) <= 1
triggerall = statetype = A
trigger1 = stateno = 620 && time >= 14

;Jump Strong Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 620
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = command = "y" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
;---------------------------------------------------------------------------
;Jump Strong Punch (Hold Burst)
[State -1, Jump Medium Punch]
type = ChangeState
value = 620
;triggerall = Pos Y < - 75
triggerall = NumHelper(1700) < 1 ;Hand Burst helper = 0
triggerall = NumHelper(229) > 0 ;the same as holding buttom
triggerall = command != "hold_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

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

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact

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
trigger4 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Rush (code by VIB)
;---------------------------------------------------------------------------
[State -1, Var(32) normal]
type     = VarSet
trigger1 = IsHelper(7000)
trigger1 = !(Parent, Anim = 804 && Parent, Stateno = 800)
var(32)   = Parent, Facing

[State -1, Var(32) 800]
type     = VarSet
trigger1 = IsHelper(7000)
trigger1 = (Parent, Anim = 804 && Parent, Stateno = 800)
var(32)   = Parent, Facing * -1

[State -1, Var(31) normal]
type     = VarSet
trigger1 = IsHelper(7000)
var(31)   = Floor(ParentDist X)
;---------------------------------------------------------------------------
