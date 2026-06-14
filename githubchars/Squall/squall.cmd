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
name = "blastingzone"
command = ~D, DB, B, D, DB, x
time = 32

[command]
name = "blastingzone"
command = ~D, DB, B, D, DB, y
time = 32

[command]
name = "blastingzone"
command = ~D, DB, B, D, DB, z
time = 32

[command]
name = "renzokuken"
command = ~D, DF, F, D, DF, x
time = 32

[command]
name = "renzokuken"
command = ~D, DF, F, D, DF, y
time = 32

[command]
name = "renzokuken"
command = ~D, DF, F, D, DF, z
time = 32

[command]
name = "thundaga"
command = ~D, DB, B, D, DB, a
time = 32

[command]
name = "thundaga"
command = ~D, DB, B, D, DB, b
time = 32

[command]
name = "thundaga"
command = ~D, DB, B, D, DB, c
time = 32

[command]
name = "firaga"
command = ~D, DF, F, D, DF, a
time = 32

[command]
name = "firaga"
command = ~D, DF, F, D, DF, b
time = 32

[command]
name = "firaga"
command = ~D, DF, F, D, DF, c
time = 32


;-| Special Motions |------------------------------------------------------
[command]
name = "exthunder"
command = ~D,DB,B,a+b
time = 10

[command]
name = "exthunder"
command = ~D,DB,B,b+c
time = 10

[command]
name = "exthunder"
command = ~D,DB,B,a+c
time = 10

[command]
name = "thunder"
command = ~D,DB,B,~b
time = 10
buffer.time=5

[command]
name = "thunder"
command = ~D,DB,B,b
time = 10

[command]
name = "thunder2"
command = ~D,DB,B,~a
time = 10
buffer.time=5

[command]
name = "thunder2"
command = ~D,DB,B,a
time = 10

[command]
name = "thunder"
command = ~D,DB,B,~c
time = 10
buffer.time=5

[command]
name = "thunder"
command = ~D,DB,B,c
time = 10

[command]
name = "exfire"
command = ~D,DF,F,a+b
time = 10

[command]
name = "exfire"
command = ~D,DF,F,b+c
time = 10

[command]
name = "exfire"
command = ~D,DF,F,a+c
time = 10

[command]
name = "fire2"
command = ~D,DF,F,~a
time = 10
buffer.time=5
[command]
name = "fire2"
command = ~D,DF,F,a
time = 10

[command]
name = "fire"
command = ~D,DF,F,~b
time = 10
buffer.time=5

[command]
name = "fire"
command = ~D,DF,F,b
time = 10

[command]
name = "fire"
command = ~D,DF,F,~c
time = 10
buffer.time=5

[command]
name = "fire"
command = ~D,DF,F,c
time = 10

[command]
name = "exfc"
command = ~D,DF,F,x+y
time = 15

[command]
name = "exfc"
command = ~D,DF,F,y+z
time = 15

[command]
name = "exfc"
command = ~D,DF,F,x+z
time = 15

[command]
name = "fc"
command = ~D,DF,F,~z
time = 15
buffer.time=5

[command]
name = "fc"
command = ~D,DF,F,~y
time = 15
buffer.time=5

[command]
name = "fc2"
command = ~D,DF,F,~x
time = 15
buffer.time=5

[command]
name = "fc"
command = ~D,DF,F,z
time = 15

[command]
name = "fc"
command = ~D,DF,F,y
time = 15

[command]
name = "fc2"
command = ~D,DF,F,x
time = 15

[command]
name = "exroughdivide"
command = ~F,D,DF,x+y
time = 15

[command]
name = "exroughdivide"
command = ~F,D,DF,y+z
time = 15

[command]
name = "exroughdivide"
command = ~F,D,DF,x+z
time = 15

[command]
name = "roughdivide"
command = ~F,D,DF,~z
time = 15
buffer.time=5

[command]
name = "roughdivide"
command = ~F,D,DF,~y
time = 15
buffer.time=5

[command]
name = "roughdivide2"
command = ~F,D,DF,~x
time = 15
buffer.time=5

[command]
name = "roughdivide"
command = ~F,D,DF,z
time = 15


[command]
name = "roughdivide"
command = ~F,D,DF,y
time = 15

[command]
name = "roughdivide2"
command = ~F,D,DF,x
time = 15

[command]
name = "dashslash"
command = ~D,DF,F,~z
time = 15
buffer.time=5

[command]
name = "dashslash"
command = ~D,DF,F,~y
time = 15
buffer.time=5

[command]
name = "dashslash2"
command = ~D,F,~x
time = 15
buffer.time=5

[command]
name = "dashslash"
command = ~D,F,~y
time = 15
buffer.time=5

[command]
name = "dashslash2"
command = ~B,D,F,~x
time = 15
buffer.time=5

[command]
name = "dashslash"
command = ~D,DF,F,z
time = 15

[command]
name = "dashslash"
command = ~D,DF,F,y
time = 15

[command]
name = "dashslash2"
command = ~D,DF,F,x
time = 15

[command]
name = "dashslash"
command = ~D,F,z
time = 15

[command]
name = "dashslash"
command = ~D,F,y
time = 15

[command]
name = "dashslash2"
command = ~D,F,x
time = 15

[command]
name = "drain"
command = ~D,D,a
time = 15

[command]
name = "drain2"
command = ~D,D,b
time = 15

[command]
name = "drain3"
command = ~D,D,c
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
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])


[State -1, renzokukenAI]
type = ChangeState
value = 3100
triggerall = AILevel>1 && roundstate = 2
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = random<25 *AILevel
triggerall = power >= 2000
trigger1 = stateno = 3005 && time >= 30
;--------------------------------------------------------------
;renzokuken
[State -1, renzokukenAI]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = AILevel>1 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = ((p2bodydist y = [-55,-25])&&enemy,vel y >=0&&p2statetype=A) ||(p2statetype!=A)
triggerall = stateno !=[800,899]
triggerall = stateno !=[3000,3999]
triggerall = stateno != [3400,3403]
triggerall =statetype!=A
triggerall = p2statetype!=L
triggerall = random<12 *AILevel
triggerall = p2bodydist x =[0,110]
triggerall = movetype!=H
trigger1 =(p2movetype=A && (enemy,hitdefattr!=SCA,AA,AP))|| (stateno=[100,101])
trigger2 = stateno = 201 && movehit && (enemy,gethitvar(hitcount)>3)
trigger3 = stateno = 210 && movehit && (enemy,gethitvar(hitcount)>2)
trigger4 = stateno = 240 &&movehit  && (enemy,gethitvar(hitcount)>2)
trigger5 = stateno = 1005 && p2movetype=A
trigger6 = stateno = 1006 && p2movetype=A
trigger7 = stateno = 1010 && movehit
trigger8 = stateno = 1011 && movehit
trigger9= var(40)=1
trigger10 = p2movetype=H && ctrl && p2statetype=A
;-------------------------------------------
[State -1, blastingzoneAI]
type = ChangeState
value = 3500
triggerall = power >= 2000
triggerall = AILevel>1 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = ((p2bodydist y = [-125,-35])&&enemy,vel y >=0&&p2statetype=A) ||(p2statetype!=A)
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = random<12 *AILevel
triggerall = p2statetype!=L
triggerall = p2bodydist x >=65
triggerall = movetype!=H
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 210 && movehit
trigger3 = stateno = 240 && movehit
trigger5 = stateno = 1010 && movehit
trigger6 = stateno = 1011 && movehit
trigger7= var(40)=1
trigger8 = p2movetype=A && ctrl
;-------------------------------------------------------------
[State -1, thundagaAI]
type = ChangeState
value = 3400
triggerall = power >= 1000
triggerall = AILevel>1 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = ( p2bodydist x =[110,150]) || (p2movetype=H && enemy,vel x <0 && ( p2bodydist x =[80,160]))
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = random<12 *AILevel
triggerall = p2movetype!=I
triggerall = movetype!=H
triggerall = p2statetype!=L
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1010 &&movehit
trigger3 = stateno = 1011 && movehit
trigger4= var(40)=1  && ((enemy,backedgedist <40&&AILevel >5)||AILevel <=5)
;------------------------------------------------------------
;thundaga2
[State -1, thundagaAI]
type = ChangeState
value = 3400
triggerall = power >= 1000
triggerall = AILevel>1 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  ((p2bodydist x =[25,50]) && p2movetype!=H)||((p2bodydist x =[0,65]) && p2movetype=H&& enemy,vel y >=0)
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = p2statetype!=L
triggerall =  movehit || (p2statetype=A && p2bodydist x >60)
triggerall = random<12 *AILevel
triggerall = p2movetype!=I
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
triggerall = enemy,vel x >=0
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1010 &&movehit
trigger3 = stateno = 1011 && movehit
trigger4= var(40)=1
;------------------------------------------------------------------------------
[State -1, firagaAI]
type = ChangeState
value = 3402
triggerall = power >= 1000
triggerall = AILevel>1 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  (p2bodydist x =[120,150]) || (p2movetype=H && enemy,vel x <0 && ( p2bodydist x =[80,160]))
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = ((p2bodydist y = [-75,0]) && enemy,vel y >=0) || ((p2bodydist y =[-55,-15]) && p2movetype=H&& enemy,vel y >=0)
triggerall = random<12 *AILevel
triggerall = p2movetype!=I
triggerall = p2statetype!=L
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 210 && movehit
trigger3 = stateno = 240 && movehit
trigger4 = stateno = 217 &&movehit
trigger5 = stateno = 1010 &&movehit
trigger6 = stateno = 1011 && movehit
trigger7= var(40)=1  && ((enemy,backedgedist <40&&AILevel >5)||AILevel <=5)
;------------------------------------------------------
;firaga2
[State -1, firagaAI]
type = ChangeState
value = 3402
triggerall = power >= 1000
triggerall = AILevel>1 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  ((p2bodydist x =[45,65]) && p2movetype!=H)||((p2bodydist x =[0,65]) && p2movetype=H)
triggerall = stateno !=[800,899]
triggerall = ((p2bodydist y = [-75,0]) && enemy,vel y >=0) || ((p2bodydist y =[-65,-15]) && p2movetype=H&& enemy,vel y >=0)
triggerall =statetype!=A
triggerall = random<12 *AILevel
triggerall = p2statetype!=L
triggerall = p2movetype!=I
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1010 &&movehit
trigger3 = stateno = 1011 && movehit
trigger4= var(40)=1
 ;--------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall=AILevel>0
triggerall = (statetype!=A)||(statetype=A && p2bodydist x >5)
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
Triggerall =  Random < (113*AILevel)
triggerall =InGuardDist || enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA
triggerall =((EnemyNear, movetype=A&& enemynear,hitdefattr!=SCA,AA)||( enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA))|| enemy,numproj >0
trigger1 = ctrl ||stateno=20
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light PunchAI]
type = ChangeState
value = 200
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,50]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = p2statetype!=C
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A || (p2movetype= H && (p2bodydist y =[-45,0])&&enemy,vel y >=0&& AILevel >3)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 10
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light PunchAI]
type = ChangeState
value = 201
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,65]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A || (p2movetype= H && (p2bodydist y =[-45,0])&&enemy,vel y >=0&& AILevel >3)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 9
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand strong PunchAI]
type = ChangeState
value = 210
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall =enemy, statetype != A || ((p2bodydist y =[-65,0])&&enemy,vel y >=0&& AILevel >3&& p2movetype!=H)
triggerall = p2bodydist x = [0,80]
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact



;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light KickAI]
type = ChangeState
value = 230
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall =  Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,60]
trigger1 = ctrl || (stateno=[100,101])

;--------------------------------------------------------
;Stand hard Kick
;立ち弱キック
[State -1, Stand hard KickAI]
type = ChangeState
value = 215
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall =  Random < 40*AILevel
triggerall = p2statetype !=L
triggerall = p2bodydist x = [0,90]
triggerall = p2statetype=C
triggerall = enemynear,anim!=5120
triggerall = enemy,hitdefattr!=SC,AA
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact
;--------------------------------------------------------
;Stand hard Kick
;立ち弱キック
[State -1, Stand hard KickAI]
type = ChangeState
value = 240
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall =  Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall =enemy, statetype != A
triggerall = p2bodydist x = [0,80]
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact

;------------------------------------------------------
[State -1, AI5]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = (StateType != A)
triggerall = Random < 70*AILevel
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,30]
triggerall = enemynear,anim!=5120
triggerall = (p2statetype !=L)
triggerall = enemy, statetype != A
triggerall = (movetype !=H)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 10
value = 400
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = StateType != A
triggerall = stateno != [800,3999]
Triggerall = (P2BodyDist X = [0,65])&&((p2bodydist y =[-75,0])&&enemy,vel y >=0&& AILevel >3)
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = (movetype !=H)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact
trigger8 = stateno = 210 && movecontact
value = 410

;------------------------------------------------------
[State -1, AI9]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = StateType != A
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,30]
triggerall = (movetype !=H)
triggerall = enemynear,anim!=5120
Triggerall = ( Random < 70*AILevel) && (enemy, statetype != A && enemy,statetype !=L)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = enemy,statetype = S  && ctrl
value = 430
;------------------------------------------------------
[State -1, AI 9]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel > 0)
Triggerall = StateType != A
triggerall = (movetype !=H)
triggerall = enemynear,anim!=5120
Triggerall = (P2BodyDist X = [0,85]) && (P2BodyDist Y = 0 )
Triggerall = ( Random < 40*AILevel) && (enemy, statetype != A && enemy,statetype !=L)
triggerall = stateno != [800,4999]
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact
trigger8 = enemy,statetype = S && ctrl
value = 440

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, AI9]
type = ChangeState
value = 600
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
triggerall = vel y <0 ||p2statetype=A
Triggerall = (P2BodyDist X = [0,30])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,20]
triggerall = p2statetype=A
trigger1 = ctrl



;---------------------------------------------------------------------------
[State -1, AI9]
type = ChangeState
value = 630
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
Triggerall = (P2BodyDist X = [-20,65])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-10,50]
triggerall =  vel y >=0 ||(p2statetype=A)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, AI9]
type = ChangeState
value = 640
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
Triggerall = (P2BodyDist X = [0,80])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-10,70]
triggerall = vel y >=0 ||(p2statetype=A)
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, AI9]
type = ChangeState
value = 610
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [0,70])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall = movecontact || p2statetype!=A
triggerall= p2bodydist y =[-20,60]
triggerall = vel y >=0 ||(p2statetype=A)
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact



;------------------------------------------------------------------------
[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = random <= 30*AILevel
triggerall = AILevel >0
triggerall = statetype != A
triggerall= (p2statetype != A)
triggerall = ctrl || stateno=20
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
trigger1 = p2bodydist X < 28
trigger2 = (p2stateno =[120,150]) &&p2bodydist X < 28
;--------------------------------------------------------
;fc
[State -1, fcAI]
type = ChangeState
value = 2000
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [0,110])
Triggerall = Random <= 20*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall = movecontact || p2statetype!=A
triggerall= p2bodydist y =[-40,40]
triggerall = (p2statetype=A)
trigger1= stateno = 640 && movehit
;--------------------------------------
;fc2
[State -1, fcAI]
type = ChangeState
value = 2001
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [0,110])
Triggerall = Random <= 20*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall = movecontact || p2statetype!=A
triggerall= p2bodydist y =[-40,40]
triggerall = (p2statetype=A)
trigger1 = stateno = 640 && movehit
;-------------------------------------------------------------------
;thunder2
[State -1, thunderAI]
type = ChangeState
value = 1302
triggerall = AILevel>3 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  p2bodydist x =[0,60]
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = (power>=1000 && p2bodydist y <-25) || movecontact || (p2statetype=A && p2bodydist x >60)
triggerall = random<16 *AILevel
triggerall = p2movetype=H
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2= enemy,vel x >0 && (p2bodydist x =[80,120]) && ctrl  && AILevel >4
trigger3 = stateno = 410 && movecontact
;------------------------------------------------------------------------
[State -1, thunderAI]
type = ChangeState
value = 1300
triggerall = AILevel>3 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  p2bodydist x =[100,140]
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = random<16 *AILevel
triggerall = p2movetype=H
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2= enemy,vel x >0 && p2bodydist x >150 && ctrl  && AILevel >4
trigger3= p2movetype=A && ctrl && AILevel >5

;------------------------------------------------------------------------
[State -1, fireAI]
type = ChangeState
value = 1303
triggerall = AILevel>3 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  p2bodydist x =[110,160]
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = (p2bodydist y = [-30,0]) && enemy,vel y >=0
triggerall = random<16 *AILevel
triggerall = p2movetype=H
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2= enemy,vel x >0 && p2bodydist x >150 && ctrl  && AILevel >4
trigger3= p2movetype=A && ctrl && AILevel >5
;-------------------------------------------------------------------
;thunder2
[State -1, fireAI]
type = ChangeState
value = 1301
triggerall = AILevel>3 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall =  p2bodydist x =[45,75]
triggerall = stateno !=[800,899]
triggerall = (p2bodydist y = [-30,0]) && enemy,vel y >=0
triggerall =statetype!=A
triggerall = (power>=1000 && p2bodydist y <-25) || movecontact || (p2statetype=A && p2bodydist x >60)
triggerall = random<16 *AILevel
triggerall = p2movetype=H
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2= enemy,vel x >0 && (p2bodydist x =[80,120]) && ctrl  && AILevel >4
;---------------------------------------------------------------------------------

;dashslash
[State -1, dashslashAI]
type = ChangeState
value = 1000
triggerall = AILevel>3 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = ((p2bodydist y = [-75,-25])&&p2statetype=A&&enemy,vel y >=0)||((p2bodydist y = 0)&&p2statetype!=A)
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = random<13*AILevel
triggerall = p2movetype!=A
triggerall = p2movetype=H
triggerall = p2bodydist x =[0,110]
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = p2statetype=A && p2movetype=H && ctrl
;------------------------------------------------------------
;dashslash2
[State -1, dashslashAI]
type = ChangeState
value = 1001
triggerall = AILevel>3 && roundstate = 2
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = ((p2bodydist y = [-75,-25])&&p2statetype=A&&enemy,vel y >=0)||((p2bodydist y = 0)&&p2statetype!=A)
triggerall = stateno !=[800,899]
triggerall =statetype!=A
triggerall = random<13 *AILevel
triggerall = p2movetype=H
triggerall = p2bodydist x =[0,110]
triggerall = movetype!=H
triggerall = (p2movetype=H && p2statetype=A)||(p2statetype!=A)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = p2statetype=A && p2movetype=H && ctrl
;-----------------------------------------------------------------------
;roughdivide
[State -1, roughdivideAI]
type = ChangeState
value = 1200
triggerall = AILevel >3 && StateType != A
triggerall = roundstate = 2
triggerall = (p2bodydist y >=-120)
triggerall = (p2bodydist x=[0,65])|| ((p2bodydist x=[0,80])&& p2statetype=A)
triggerall = stateno !=[800,4999]
triggerall = enemy,stateno !=[800,899]
triggerall = !(EnemyNear,IsHelper)
triggerall = (p2stateno!=[120,159])
triggerall = p2statetype != L
triggerall = movetype != H
triggerall = p2movetype!=I
triggerall=(random < 13*AILevel)
trigger1 = ctrl|| (stateno=[100,101])
trigger2 = stateno = 201 && movehit
trigger3 = stateno = 200 && movehit
trigger4 = stateno = 210 &&movehit
trigger5 = stateno = 230 && movehit
trigger6 = stateno = 240 && movehit
trigger7 = stateno = 400 &&movehit
trigger8 = stateno = 430 &&movehit
trigger10 = stateno = 217 && movecontact
;-----------------------------------------------------------------------
;roughdivide2
[State -1, roughdivideAI]
type = ChangeState
value = 1201
triggerall = AILevel >3 && StateType != A
triggerall = roundstate = 2
triggerall = (p2bodydist y >=-120)
triggerall = (p2bodydist x=[0,50])|| ((p2bodydist x=[0,65])&& p2statetype=A)
triggerall = stateno !=[800,4999]
triggerall = enemy,stateno !=[800,899]
triggerall = !(EnemyNear,IsHelper)
triggerall = (p2stateno!=[120,159])
triggerall = p2statetype != L
triggerall = movetype != H
triggerall = p2movetype!=I
triggerall=(random < 13*AILevel)
trigger1 = ctrl|| (stateno=[100,101])
trigger2 = stateno = 201 && movehit
trigger3 = stateno = 200 && movehit
trigger4 = stateno = 210 &&movehit
trigger5 = stateno = 230 && movehit
trigger6 = stateno = 240 && movehit
trigger7 = stateno = 400 &&movehit
trigger8 = stateno = 430 &&movehit
trigger10 = stateno = 217 && movecontact
trigger11=p2statetype=A &&(p2movetype=A||enemy,vel y >=0) && ctrl

;----------------------------------------------------------------------------------
[state -1, AI jump]
type = changestate
triggerall=AILevel>0
triggerall = p2statetype !=L||p2stateno=5120
triggerall = (p2stateno!=[5090,5119]) &&(p2stateno!=[5121,5899])
triggerall = statetype != A
triggerall = var(30)=1
triggerall = random< 25*AILevel || (ctrl && p2movetype=A && p2statetype=C && random<43*AILevel)||(enemy,hitdefattr=SC,AT  && (ctrl||(stateno=130||stateno=120))  && random<35*AILevel)
trigger1 = ctrl && p2movetype=A && p2statetype=C && random<43*AILevel
trigger2 =p2statetype = C && (p2bodydist x = [50,90]) && ctrl&& random<25*AILevel
trigger3= enemy,hitdefattr=SC,AT  && (ctrl||(stateno=130||stateno=120))  && random<35*AILevel
trigger4= p2bodydist x >60 && ctrl&& random<79 && (p2movetype!=A|| enemynear,hitdefattr= SC,AA)
trigger5 = p2statetype=L && ctrl && random <49 && AILevel >=4
value = 40

; Air Dash
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = pos y <= -35
triggerall = (AILevel >0)
triggerall = p2statetype=L
triggerall = random <249
triggerall = p2bodydist x >150
triggerall = statetype = a
trigger1 = ctrl
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = AILevel >0
triggerall = roundstate=2||winko
triggerall = random<299
triggerall = gametime%30=0
triggerall = enemy,life < (enemy,lifemax/2.25) ||winko
triggerall = life >700 ||winko
triggerall = p2statetype = L
triggerall = p2bodydist x >120
triggerall = statetype != A
trigger1 = ctrl
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = numproj = 0
triggerall = numhelper = 0
triggerall = random < 15*AILevel
triggerall = (AILevel >0)
trigger1 = (StateNo = 410) && movehit

[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=AILevel>0 && statetype!=A && ctrl
triggerall = (stateno!=[100,105])
triggerall = p2bodydist y =[-150,0]
triggerall = p2bodydist x >80
trigger1= p2movetype!=A && (p2bodydist x=[140,788])&& random < 99
trigger2= p2movetype=H && p2statetype=A && p2bodydist x>40&& random < 399

[State -1, AI run]
type=changestate
value=20
triggerall = roundstate = 2
triggerall = p2bodydist x >80
triggerall=AILevel>0 && statetype=S && ctrl && random < 249
triggerall = p2movetype!=H
triggerall=p2statetype!=L
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[20,139])

[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall = AILevel >0
triggerall = stateno !=105
triggerall = statetype != A
triggerall = random <  19*AILevel
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = (p2statetype =L || p2movetype = A) && (p2bodydist x=[-99,15])
;==============================================================================
;lionheart
[State -1, lionheart]
type = ChangeState
value = 3100
triggerall = command = "renzokuken"
triggerall = power >= 2000
triggerall = AILevel <=1
trigger1 = stateno = 3005 && time >= 10

;blastingzone
[State -1, blastingzone]
type = ChangeState
value = 3500
triggerall = command = "blastingzone"
triggerall = power >= 2000
triggerall = AILevel <=1
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact
trigger13= var(40)=1

;renzokuken
[State -1, renzokuken]
type = ChangeState
value = 3000
triggerall = command = "renzokuken"
triggerall = power >= 1000
triggerall = AILevel <=1
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1005
trigger12 = stateno = 1006
trigger13 = stateno = 1010 && movecontact
trigger14 = stateno = 1011 && movecontact
trigger15= var(40)=1
;thundaga
[State -1, thundaga]
type = ChangeState
value = 3400
triggerall = command = "thundaga"
triggerall = power >= 1000
triggerall = AILevel <=1
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact
trigger13= var(40)=1

;firaga
[State -1, firaga]
type = ChangeState
value = 3402
triggerall = command = "firaga"
triggerall = power >= 1000
triggerall = AILevel <=1
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact
trigger13= var(40)=1

;exfire
[State -1, exfire]
type = ChangeState
value = 1403
triggerall = command = "exfire"
triggerall = (AILevel <3)
triggerall = power >= 500
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact

;exthunder
[State -1, exthunder]
type = ChangeState
value = 1401
triggerall = command = "exthunder"
triggerall = (AILevel <3)
triggerall = power >= 500
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact

;thunder
[State -1, thunder]
type = ChangeState
value = 1300
triggerall = command = "thunder"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact

;thunder2
[State -1, thunder2]
type = ChangeState
value = 1302
triggerall = command = "thunder2"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact
;fire
[State -1, fire]
type = ChangeState
value = 1301
triggerall = command = "fire"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact



;fire2
[State -1, fire2]
type = ChangeState
value = 1303
triggerall = command = "fire2"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1011 && movecontact

;exroughdivide
[State -1, exroughdivide]
type = ChangeState
value = 1202
triggerall = command = "exroughdivide"
triggerall = (statetype != a)
triggerall = power >= 500
triggerall = (AILevel <3)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact

;roughdivide
[State -1, roughdivide]
type = ChangeState
value = 1200
triggerall = command = "roughdivide"
triggerall = (statetype != a)
triggerall = (AILevel <3)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact

;roughdivide2
[State -1, roughdivide2]
type = ChangeState
value = 1201
triggerall = command = "roughdivide2"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact

;dashslash
[State -1, dashslash]
type = ChangeState
value = 1000
triggerall = command = "dashslash"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact

;dashslash2
[State -1, dashslash2]
type = ChangeState
value = 1001
triggerall = command = "dashslash2"
triggerall = (AILevel <3)
triggerall = (statetype != a)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 217 && movecontact

;exfc
[State -1, exfc]
type = ChangeState
value = 2002
triggerall = command = "exfc"
triggerall = (AILevel <3)
triggerall = power >= 500
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;fc
[State -1, fc]
type = ChangeState
value = 2000
triggerall = command = "fc"
triggerall = (AILevel <3)
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;fc2
[State -1, fc2]
type = ChangeState
value = 2001
triggerall = command = "fc2"
triggerall = (AILevel <3)
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd" || command = "up"
triggerall = (AILevel =0)
trigger1 = (StateNo = 410)
trigger1 = movehit

;cancel
[state -1, cancel]
Type = changestate
value = 101
triggerall = command = "x"
trigger1 = stateno = 1005
trigger2 = stateno = 1006

;drain3
[state -1, drain]
Type = changestate
value = 992
triggerall = command = "drain3" 
triggerall = var(37) >= 2
trigger1 = (statetype != a) && ctrl

;drain
[state -1, drain]
Type = changestate
value = 990
triggerall = command = "drain" 
triggerall = var(37) >= 2
trigger1 = (statetype != a) && ctrl

;drain2
[state -1, drain]
Type = changestate
value = 991
triggerall = command = "drain2"
triggerall = var(37) >= 2
trigger1 = (statetype != a) && ctrl

;throw
[state -1, throw]
Type = changestate
value = 800
triggerall = (command = "holdfwd" || command = "holdback") && command = "pp" || (command = "holdfwd" || command = "holdback") && command = "kk"
triggerall = (AILevel <3)
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = pos y <= -35
triggerall = (AILevel =0)
trigger1 = command = "FF"
trigger1 = statetype = a
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
triggerall = (AILevel =0)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = (AILevel =0)
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
triggerall = (AILevel =0)
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; FWD+HP
[State -1, FWD+HK]
type = ChangeState
value = 215
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
triggerall = (AILevel = 0)
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; FWD+LP
[State -1, FWD+LP]
type = ChangeState
value = 201
triggerall = command = "y" 
triggerall = command != "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 10

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" || command = "y"
triggerall = command = "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 10

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact
trigger8 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" || command = "b"
triggerall = command = "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = (AILevel = 0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 231 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || command = "y"
triggerall = (AILevel = 0)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = (AILevel = 0)
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
triggerall = (AILevel = 0)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = (AILevel = 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
