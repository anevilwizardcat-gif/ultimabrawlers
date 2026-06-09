;---| AI |------------------------------------------------------
[Command]
name = "AI-0"
command = a, a
time = 0

[Command]
name = "AI-1"
command = a, b
time = 0

[Command]
name = "AI-2"
command = a, c
time = 0

[Command]
name = "AI-3"
command = a, x
time = 0

[Command]
name = "AI-4"
command = a, y
time = 0

[Command]
name = "AI-5"
command = a, z
time = 0

[Command]
name = "AI-6"
command = a, F
time = 0

[Command]
name = "AI-7"
command = a, B
time = 0

[Command]
name = "AI-8"
command = a, U
time = 0

[Command]
name = "AI-9"
command = a, D
time = 0

[Command]
name = "AI-10"
command = b, a
time = 0

[Command]
name = "AI-11"
command = b, b
time = 0

[Command]
name = "AI-12"
command = b, c
time = 0

[Command]
name = "AI-13"
command = b, x
time = 0

[Command]
name = "AI-14"
command = b, y
time = 0

[Command]
name = "AI-15"
command = b, z
time = 0

[Command]
name = "AI-16"
command = b, F
time = 0

[Command]
name = "AI-17"
command = b, B
time = 0

[Command]
name = "AI-18"
command = b, U
time = 0

[Command]
name = "AI-19"
command = b, D
time = 0

[Command]
name = "AI-20"
command = c, a
time = 0

[Command]
name = "AI-21"
command = c, b
time = 0

[Command]
name = "AI-22"
command = c, c
time = 0

[Command]
name = "AI-23"
command = c, x
time = 0

[Command]
name = "AI-24"
command = c, y
time = 0

[Command]
name = "AI-25"
command = c, z
time = 0

[Command]
name = "AI-26"
command = c, F
time = 0

[Command]
name = "AI-27"
command = c, B
time = 0

[Command]
name = "AI-28"
command = c, U
time = 0

[Command]
name = "AI-29"
command = c, D
time = 0

[Command]
name = "AI-30"
command = x, a
time = 0

[Command]
name = "AI-31"
command = x, b
time = 0

[Command]
name = "AI-32"
command = x, c
time = 0

[Command]
name = "AI-33"
command = x, x
time = 0

[Command]
name = "AI-34"
command = x, y
time = 0

[Command]
name = "AI-35"
command = x, z
time = 0

[Command]
name = "AI-36"
command = x, F
time = 0

[Command]
name = "AI-37"
command = x, B
time = 0

[Command]
name = "AI-38"
command = x, U
time = 0

[Command]
name = "AI-39"
command = x, D
time = 0

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
name = "Rough_Divide"
command = ~D,DF,F,x
time = 25

[command]
name = "Rough_Divide"
command = ~D,F,x
time = 25

[command]
name = "Rough_Divide_(DISSIDIA)"
command = ~D,DB,B,x
time = 25

[command]
name = "Rough_Divide_(DISSIDIA)"
command = ~D,B,x
time = 25

[command]
name = "Fated_Circle"
command = ~D,DF,F,y
time = 25

[command]
name = "Fated_Circle"
command = ~D,F,y
time = 25

[command]
name = "Fated_Circle_(DISSIDIA)"
command = ~D,DB,B,y
time = 25

[command]
name = "Fated_Circle_(DISSIDIA)"
command = ~D,B,y
time = 25

[command]
name = "Blasting_Zone"
command = ~D,DF,F,z
time = 25

[command]
name = "Blasting_Zone"
command = ~D,F,z
time = 25

[command]
name = "Revolver_Drive"
command = ~D,DB,B,z
time = 25

[command]
name = "Revolver_Drive"
command = ~D,B,z
time = 25

[command]
name = "Renzokuken"
command = ~D,DF,F,D,DF,F,x
time = 30

[command]
name = "Renzokuken"
command = ~D,F,D,F,x
time = 30

[command]
name = "Renzokuken"
command = ~D,DF,F,D,DF,F,y
time = 30

[command]
name = "Renzokuken"
command = ~D,F,D,F,y
time = 30

[command]
name = "Renzokuken"
command = ~D,DF,F,D,DF,F,z
time = 30

[command]
name = "Renzokuken"
command = ~D,F,D,F,z
time = 30

[command]
name = "Blizzard_a"
command = ~D,DF,F,a
time = 25

[command]
name = "Blizzard_a"
command = ~D,F,a
time = 25

[command]
name = "Fire_b"
command = ~D,DF,F,b
time = 25

[command]
name = "Fire_b"
command = ~D,F,b
time = 25

[command]
name = "Thunder_c"
command = ~D,DF,F,c
time = 25

[command]
name = "Thunder_c"
command = ~D,F,c
time = 25

[command]
name = "Water_a"
command = ~D,DB,B,a
time = 25

[command]
name = "Water_a"
command = ~D,B,a
time = 25

[command]
name = "Meteor_b"
command = ~D,DB,B,b
time = 25

[command]
name = "Meteor_b"
command = ~D,B,b
time = 25

[command]
name = "Tornado_c"
command = ~D,DB,B,c
time = 25

[command]
name = "Tornado_c"
command = ~D,B,c
time = 25

;-| Special Motions |------------------------------------------------------



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
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
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

;---------------------------------------------------------------------------
; Mad Rush
[State -1, Mad Rush]
type = ChangeState
value = 4900
triggerall = var(30)=0
triggerall = command = "x" && command = "y" && command = "a"
triggerall = power=powermax
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Tornado
[State -1, Tornado]
type = ChangeState
value = 4670
triggerall = var(30)=0
triggerall = command = "Tornado_c"
triggerall = power >= 1500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Meteor
[State -1, Meteor]
type = ChangeState
value = 4660
triggerall = numhelper(4661) = 0
triggerall = var(30)=0
triggerall = command = "Meteor_b"
triggerall = power >= 1500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Water
[State -1, Water]
type = ChangeState
value = 4650
triggerall = var(30)=0
triggerall = command = "Water_a"
triggerall = power >= 1500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Thunder
[State -1, Thunder]
type = ChangeState
value = 4630
triggerall = var(30)=0
triggerall = command = "Thunder_c"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Fire
[State -1, Fire]
type = ChangeState
value = 4620
triggerall = var(30)=0
triggerall = command = "Fire_b"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Blizzard
[State -1, Blizzard]
type = ChangeState
value = 4600
triggerall = var(30)=0
triggerall = command = "Blizzard_a"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Draw
[State -1, Draw]
type = ChangeState
value = 4500
triggerall = var(30)=0
triggerall = command = "hold_x" && command = "hold_a"
triggerall = power<powermax
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Renzokuken
[State -1, Renzokuken]
type = ChangeState
value = 900
triggerall = var(30)=0
triggerall = command = "Renzokuken"
triggerall = power >= 2500
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 220 && movecontact || stateno = 220 && time >= 13
trigger11 = stateno = 250 && movecontact || stateno = 250 && time >= 14
trigger12 = stateno = 450 && movecontact || stateno = 450 && time >= 15

;---------------------------------------------------------------------------
; Rough Divide
[State -1, Rough Divide]
type = ChangeState
value = ifelse(statetype=A,2001,2000)
triggerall = var(30)=0
triggerall = command = "Rough_Divide"
;triggerall = power >= 500
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger11 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger12 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger13 = stateno = 640 && movecontact || stateno = 640 && time >= 10
trigger14 = stateno = 2500 && time > 40
trigger15 = stateno = 2250 && movecontact || stateno = 2250 && time > 32
trigger16 = stateno = 2750 && time >= 21
trigger17 = stateno = 420 && movecontact || stateno = 420 && time >= 16
trigger18 = stateno = 450 && movecontact || stateno = 450 && time >= 15

;---------------------------------------------------------------------------
; Rough Divide (DISSIDIA)
[State -1, Rough Divide (DISSIDIA)]
type = ChangeState
value = 2250
triggerall = var(30)=0
triggerall = command = "Rough_Divide_(DISSIDIA)"
;triggerall = power >= 500
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger11 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger12 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger13 = stateno = 640 && movecontact || stateno = 640 && time >= 10
trigger14 = stateno = 2500 && time > 40
trigger15 = stateno = 2000 && time >= 21
trigger16 = stateno = 2750 && time >= 21
trigger17 = stateno = 420 && movecontact || stateno = 420 && time >= 16
trigger18 = stateno = 450 && movecontact || stateno = 450 && time >= 15

;---------------------------------------------------------------------------
; Fated Circle
[State -1, Fated Circle]
type = ChangeState
value = 2500
triggerall = var(30)=0
triggerall = command = "Fated_Circle"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger11 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger12 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger13 = stateno = 640 && movecontact || stateno = 640 && time >= 10
trigger14 = stateno = 2000 && time >= 21
trigger15 = stateno = 2002 && time >= 4
trigger16 = stateno = 2250 && movecontact || stateno = 2250 && time > 32
trigger17 = stateno = 2252 && time >= 4
trigger18 = stateno = 2750 && time >= 21
trigger19 = stateno = 220 && movecontact || stateno = 220 && time >= 13
trigger20 = stateno = 250 && movecontact || stateno = 250 && time >= 14

;---------------------------------------------------------------------------
; Fated Circle (DISSIDIA)
[State -1, Fated Circle (DISSIDIA)]
type = ChangeState
value = 2750
triggerall = var(30)=0
triggerall = command = "Fated_Circle_(DISSIDIA)"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger11 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger12 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger13 = stateno = 640 && movecontact || stateno = 640 && time >= 10
trigger14 = stateno = 2000 && time >= 21
trigger15 = stateno = 2002 && time >= 4
trigger16 = stateno = 2250 && movecontact || stateno = 2250 && time > 32
trigger17 = stateno = 2252 && time >= 4
trigger18 = stateno = 220 && movecontact || stateno = 220 && time >= 13
trigger19 = stateno = 250 && movecontact || stateno = 250 && time >= 14

;---------------------------------------------------------------------------
; Blasting Zone
[State -1, Blasting Zone]
type = ChangeState
value = 3000
triggerall = var(30)=0
triggerall = command = "Blasting_Zone"
triggerall = power >= 2000
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger11 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger12 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger13 = stateno = 640 && movecontact || stateno = 640 && time >= 10
trigger14 = stateno = 2000 && time >= 21
trigger15 = stateno = 2002 && time >= 4
trigger16 = stateno = 2500 && time > 40
trigger17 = stateno = 2250 && movecontact || stateno = 2250 && time > 32
trigger18 = stateno = 2252 && time >= 4
trigger19 = stateno = 2750 && time >= 21
trigger20 = stateno = 220 && movecontact || stateno = 220 && time >= 13
trigger21 = stateno = 250 && movecontact || stateno = 250 && time >= 14

;---------------------------------------------------------------------------
; Revolver Drive
;[State -1, Revolver Drive]
;type = ChangeState
;value = 3250
;triggerall = var(30)=0
;triggerall = command = "Revolver_Drive"
;trigger1 = power >= 2000
;trigger1 = statetype != A
;trigger1 = ctrl || stateno=[100,101]
;trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
;trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
;trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
;trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
;trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
;trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
;trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
;trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
;trigger10 = stateno = 600 && movecontact || stateno = 600 && time >= 9
;trigger11 = stateno = 610 && movecontact || stateno = 610 && time >= 12
;trigger12 = stateno = 630 && movecontact || stateno = 630 && time >= 11
;trigger13 = stateno = 640 && movecontact || stateno = 640 && time >= 10
;trigger14 = stateno = 2000 && time >= 21
;trigger15 = stateno = 2002 && time >= 4
;trigger16 = stateno = 2500 && time > 40
;trigger17 = stateno = 2250 && time > 32
;trigger18 = stateno = 2252 && time >= 4

;---------------------------------------------------------------------------
; Air Dash
[State -1, Air Dash]
type = ChangeState
value = 100
triggerall = pos y <= -35
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = ctrl

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
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && time >= 7
trigger3 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger4 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger5 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger6 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger4 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger5 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger6 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 400 && time >= 9
trigger3 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger4 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger5 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger6 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 430 && time >= 8
trigger3 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger4 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger5 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger6 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno=[100,101]
trigger2 = stateno = 200 && movecontact || stateno = 200 && time >= 7
trigger3 = stateno = 210 && movecontact || stateno = 210 && time >= 7
trigger4 = stateno = 230 && movecontact || stateno = 230 && time >= 10
trigger5 = stateno = 240 && movecontact || stateno = 240 && time >= 15
trigger6 = stateno = 400 && movecontact || stateno = 400 && time >= 8
trigger7 = stateno = 410 && movecontact || stateno = 410 && time >= 10
trigger8 = stateno = 430 && movecontact || stateno = 430 && time >= 10
trigger9 = stateno = 440 && movecontact || stateno = 440 && time >= 14
trigger10 = stateno = 4630 && time > 25

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time >= 9

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger3 = stateno = 630 && movecontact || stateno = 630 && time >= 11

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger3 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger4 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger5 = stateno = 640 && movecontact || stateno = 640 && time >= 10

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger3 = stateno = 630 && movecontact || stateno = 630 && time >= 11

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact || stateno = 600 && time >= 9
trigger3 = stateno = 610 && movecontact || stateno = 610 && time >= 12
trigger4 = stateno = 630 && movecontact || stateno = 630 && time >= 11
trigger5 = stateno = 640 && movecontact || stateno = 640 && time >= 10

;---------------------------------------------------------------------------
