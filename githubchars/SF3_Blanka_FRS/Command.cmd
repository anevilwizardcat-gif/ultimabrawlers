;Char: SFIII: 3rd Strike Blanka, Blanka Sprites by Chuchoryu, Code and Extra Sprites/Sound Rip by IAteMySink
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "Jumpbite"
command = ~D,DF,F,~D,DF,F,z
time = 40

[Command]
name = "RollShave"
command = ~48$B, $F, $B, F, z
time = 26

[Command]
name = "SOE_A"
command = ~48$DB,D,DF,D,DB,UF,z

[Command]
name = "SOE_A"
command = ~48$DB,D,DF,D,DB,UF+z

[Command]
name = "SOE_B"
command = ~48$DB,D,DF,D,DB,UF,c ;Anti Ground

[Command]
name = "SOE_B"
command = ~48$DB,D,DF,D,DB,UF+c ;Anti Ground

;-| Special Motions |------------------------------------------------------
[Command]
name = "Amazon River"
command = /DF, z
time = 1

[Command]
name = "Weak Electricity"
command = ~x, x, x
time = 30

[Command]
name = "Medium Electricity"
command = ~y, y, y
time = 30

[Command]
name = "Strong Electricity"
command = ~z, z, z
time = 30

[Command]
name = "Electricity EX"
command = ~x+x
time = 30

[Command]
name = "Electricity EX"
command = ~y+y
time = 30

[Command]
name = "Electricity EX"
command = ~z+z
time = 30

[Command]
name = "Weak Rolling Attack"
command = ~48$B, F, x

[Command]
name = "Medium Rolling Attack"
command = ~48$B, F, y

[Command]
name = "Strong Rolling Attack"
command = ~48$B, F, z

[Command]
name = "Rolling Attack EX"
command = ~48$B, F, x+y

[Command]
name = "Rolling Attack EX"
command = ~48$B, F, y+z

[Command]
name = "Rolling Attack EX"
command = ~48$B, F, x+z

[Command]
name = "Weak Backstep Rolling Attack"
command = ~48$B, F, a

[Command]
name = "Medium Backstep Rolling Attack"
command = ~48$B, F, b

[Command]
name = "Strong Backstep Rolling Attack"
command = ~48$B, F, c

[Command]
name = "Backstep Rolling Attack EX"
command = ~48$B, F, a+b

[Command]
name = "Backstep Rolling Attack EX"
command = ~48$B, F, b+c

[Command]
name = "Backstep Rolling Attack EX"
command = ~48$B, F, a+c

[Command]
name = "Weak Vertical Rolling Attack"
command = ~4$D, U, a

[Command]
name = "Medium Vertical Rolling Attack"
command = ~4$D, U, b

[Command]
name = "Strong Vertical Rolling Attack"
command = ~4$D, U, c

[Command]
name = "Vertical Rolling Attack EX"
command = ~4$D, U,a+b

[Command]
name = "Vertical Rolling Attack EX"
command = ~4$D, U,b+c

[Command]
name = "Vertical Rolling Attack EX"
command = ~4$D, U,a+c

[Command]
name = "Surprise Fwd"
command = a+b

[Command]
name = "Surprise Fwd"
command = a+c

[Command]
name = "Surprise Fwd"
command = c+b

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
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
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

[Command]
name = "Parry_SA"
command = F
time = 1

[Command]
name = "Parry_SAtoomuch"
command = F,F
time = 12

[Command]
name = "Parry_C"
command = D
time = 1

[Command]
name = "Parry_Ctoomuch"
command = D, D
time = 12

[Command]
name = "HighJump"
command = D,U
time = 8

[Command]
name = "HighJump"
command = D,UF
time = 8

[Command]
name = "HighJump"
command = D,UB
time = 8



[Command] ;For Dan so he can select his super art during dizzy in special intro
name = "holdStart"
command = /s
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
;Supers
[state 0]
type = changestate
value = 3000
triggerall = statetype = S
triggerall = command = "Jumpbite"
triggerall = var(58) = 2
triggerall = power >= 720
trigger1 = ctrl
trigger2 = stateno = [2050,2053] 
trigger2 = target,stateno = [2060,2065]
trigger3 = stateno = 803 && time >= 13
ignorehitpause = 1

[state 0]
type = changestate
value = 3010
triggerall = statetype = S
triggerall = command = "RollShave"
triggerall = var(58) = 3
triggerall = power >= 960
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1

[state 0]
type = changestate
value = 3021
triggerall = statetype != A
triggerall = command = "SOE_A"
triggerall = var(58) = 4
triggerall = power >= 1200
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
trigger10 = stateno = 40
ignorehitpause = 1

[state 0]
type = changestate
value = 3020
triggerall = statetype != A
triggerall = command = "SOE_B"
triggerall = var(58) = 4
triggerall = power >= 1200
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
trigger10 = stateno = 40
ignorehitpause = 1
;===========================================================================
;Parry_Ticks
[State 0]
type = varset
var(10) = 30
trigger1 = command = "Parry_SAtoomuch"
trigger2 = command = "Parry_Ctoomuch"
ignorehitpause = 1
persistent = 1

[state 0]
type = varadd
var(10) = -1
trigger1 = var(10) != 0

;parry Color
[state 0]
type = varset
var(28) = 1
trigger1 = stateno = [120,153]
ignorehitpause = 1

[state 0]
type = varset
var(28) = 0
trigger1 = stateno != [120,153]
trigger1 = stateno != [90,96]
ignorehitpause = 1
;---------------------------------------------------------------------------
;Parry (Stand, Hit By Stand/Air Attacks)
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_SA"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(10) = 0
trigger1 = stateno != [120,153]
attr = S, NA, SA, HA
slot = 0
stateno = 90
time = 7
forceair = 0
;ignorehitpause = 
;persistent = 
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_SA"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(10) = 0
trigger1 = stateno != [120,153]
attr = A, NA, SA, HA
slot = 1
stateno = 90
time = 7
forceair = 0
;Crouch (Hit by Crouch Attack
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_C"
trigger1 = statetype = C || statetype = S
trigger1 = ctrl
trigger1 = var(10) = 0
trigger1 = stateno != [120,153]
attr = C, NA, SA, HA
slot = 2
stateno = 92
time = 7
forceair = 0
ignorehitpause = 
persistent = 
;Parry (Air, Hit By Stand/Air Attacks)
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_SA"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(10) = 0
trigger1 = command != "holdback"
trigger1 = stateno != 94
trigger1 = stateno != [120,153]
attr = S, NA, SA, HA
slot = 3
stateno = 95
time = 7
forceair = 1
;ignorehitpause = 
;persistent = 
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_SA"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(10) = 0
trigger1 = command != "holdback"
trigger1 = stateno != 94
trigger1 = stateno != [120,153]
attr = A, NA, SA, HA
slot = 4
stateno = 95
time = 7
forceair = 1

;--------------------------------
;Red Parry



;Parry (Stand, Hit By Stand/Air Attacks)
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_SA"
trigger1 = statetype = S
trigger1 = var(10) = 0
trigger1 = stateno = [120,153]
attr = S, NA, SA, HA
slot = 5
stateno = 90
time = 3
forceair = 0
ignorehitpause = 1
;persistent = 
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_SA"
trigger1 = statetype = S
trigger1 = var(10) = 0
trigger1 = stateno = [120,153]
attr = A, NA, SA, HA
slot = 6
stateno = 90
time = 3
forceair = 0
ignorehitpause=1
;Crouch (Hit by Crouch Attack
[State 0, HitOverride]
type = HitOverride
trigger1 = command = "Parry_C"
trigger1 = statetype = C || statetype = S
trigger1 = var(10) = 0
trigger1 = stateno = [120,153]
attr = C, NA, SA, HA
slot = 7
stateno = 92
time = 3
forceair = 0
ignorehitpause = 1
persistent = 
;===========================================================================
;[State 0] ;EX Electricity
;type = changestate
;value = 2053
;triggerall = power >= 400
;triggerall = statetype != A
;triggerall = command = "Electricity EX"
;trigger1 = ctrl
;;
;;trigger2 = numtarget(200)
;;trigger3 = numtarget(205)
;;trigger4 = numtarget(210)
;;trigger5 = numtarget(215)
;trigger2 = numtarget(220)
;trigger3 = numtarget(225)
;;
;;trigger8 = numtarget(400)
;;trigger9 = numtarget(410)
;trigger4 = numtarget(420)
;trigger5 = stateno = [220,225]
;trigger6 = stateno = [420,425]
[State 0] ;Light Electricity
type = changestate
value = 2050
triggerall = statetype != A
triggerall = command = "Weak Electricity"
trigger1 = ctrl
;
trigger2 = numtarget(200)
trigger3 = numtarget(205)
;trigger4 = numtarget(210)
;trigger5 = numtarget(215)
;trigger6 = numtarget(220)
;trigger7 = numtarget(225)
;
trigger4 = numtarget(400)
;trigger9 = numtarget(410)
;trigger10 = numtarget(420)
trigger5 = stateno = [200,205]
trigger6 = stateno = [400,405]
;
;trigger11 = numtarget(600)
;trigger12 = numtarget(605)
;trigger13 = numtarget(610)
;trigger14 = numtarget(615)
;trigger15 = numtarget(620)
;trigger16 = numtarget(625)
;
[State 0] ;Medium Electricity
type = changestate
value = 2051
triggerall = statetype != A
triggerall = command = "Medium Electricity"
trigger1 = ctrl
;
;trigger2 = numtarget(200)
;trigger3 = numtarget(205)
trigger2 = numtarget(210)
trigger3 = numtarget(215)
;trigger6 = numtarget(220)
;trigger7 = numtarget(225)
;
;trigger8 = numtarget(400)
trigger4 = numtarget(410)
; = numtarget(420)
trigger5 = stateno = [210,215]
trigger6 = stateno = [410,415]
[State 0] ;Heavy Electricity
type = changestate
value = 2052
triggerall = statetype != A
triggerall = command = "Strong Electricity"
trigger1 = ctrl
;
;trigger2 = numtarget(200)
;trigger3 = numtarget(205)
;trigger4 = numtarget(210)
;trigger5 = numtarget(215)
trigger2 = numtarget(220)
trigger3 = numtarget(225)
;
;trigger8 = numtarget(400)
;trigger9 = numtarget(410)
trigger4 = numtarget(420)
trigger5 = stateno = [220,225]
trigger6 = stateno = [420,425]
;=================================================
;Rolling Attack
[state 0]
type = changestate
value = 2082
triggerall = power >= 400
triggerall = statetype != A
triggerall = command = "Rolling Attack EX"
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;Rolling Attack
[state 0]
type = changestate
value = 2070
triggerall = statetype != A
triggerall = command = "Weak Rolling Attack"
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;Rolling Attack
[state 0]
type = changestate
value = 2075
triggerall = statetype != A
triggerall = command = "Medium Rolling Attack"
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;Rolling Attack
[state 0]
type = changestate
value = 2080
triggerall = statetype != A
triggerall = command = "Strong Rolling Attack"
trigger1 = ctrl
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;
;Rolling Attack
[state 0]
type = changestate
value = 2101
triggerall = power >= 400
triggerall = statetype != A
triggerall = command = "Vertical Rolling Attack EX"
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;Rolling Attack
[state 0]
type = changestate
value = 2090
triggerall = statetype != A
triggerall = command = "Weak Vertical Rolling Attack"
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;trigger4 = numtarget(450)
;Rolling Attack
[state 0]
type = changestate
value = 2095
triggerall = statetype != A
triggerall = command = "Medium Vertical Rolling Attack"
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;trigger4 = numtarget(450)
;Rolling Attack
[state 0]
type = changestate
value = 2098
triggerall = statetype != A
triggerall = command = "Strong Vertical Rolling Attack"
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;trigger4 = numtarget(450)

;---------------------------------------------------------------------------
; Strong Backstep Rolling Attack
[State -1, Strong Backstep Rolling Attack]
type = ChangeState
value = 1224
triggerall = power >= 400
triggerall = command = "Backstep Rolling Attack EX"
triggerall = StateType != A
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Weak Backstep Rolling Attack
[State -1, Weak Backstep Rolling Attack]
type = ChangeState
value = 1200
triggerall = command = "Weak Backstep Rolling Attack"
triggerall = StateType != A
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Medium Backstep Rolling Attack
[State -1, Medium Backstep Rolling Attack]
type = ChangeState
value = 1210
triggerall = command = "Medium Backstep Rolling Attack"
triggerall = StateType != A
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Strong Backstep Rolling Attack
[State -1, Strong Backstep Rolling Attack]
type = ChangeState
value = 1220
triggerall = command = "Strong Backstep Rolling Attack"
triggerall = StateType != A
trigger1 = ctrl || stateno = 40
trigger2 = numtarget(230)
trigger3 = numtarget(235)
trigger4 = numtarget(240)
trigger5 = numtarget(245)
trigger6 = numtarget(430)
trigger7 = numtarget(435)
trigger8 = numtarget(440)
trigger9 = numtarget(445)
ignorehitpause = 1
;---------------------------------------------------------------------------
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
;Amazon River
[State -1, Amazon River]
type = ChangeState
value = 1050
triggerall = command = "Amazon River"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = numtarget(210) && stateno = 210
;---------------------------------------------------------------------------
[state -1, Overhead Jump]
type = changestate
value = 700
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "by"
; Throw
;[State -1, Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y" || command = "z"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 10
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 10
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H
;---------------------------------------------------------------------------
; Surprise Foward
[State -1, Surprise Foward]
type = ChangeState
value = 1500
triggerall = command = "holdfwd"
triggerall = command = "Surprise Fwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Surprise Backward
[State -1, Surprise Backward]
type = ChangeState
value = 1510
triggerall = command = "holdback"
triggerall = command = "Surprise Fwd"
trigger1 = statetype = S
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
;Throw
[State -1,throw]
type = ChangeState
value = 800
triggerall = !fvar(38) && (roundstate=[2,3]) && Statetype!=A
triggerall = ((var(24)=[800,810]) || (command="ax" && command!="holdup" && command!="holddown"))
trigger1 = (Ctrl && Statetype!=A) || StateNo=40 || (StateNo=52 && Time>=2)
trigger2 = var(3)=3


;===========================================================================
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;Stand Light P
[State -1]
type = ChangeState
value = 200+(P2bodydist X<=20&&stateno!=205)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=200||(command="x" && command!="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)
trigger2 = (((stateno=200||stateno=205||stateno=400)&&time>3) || ((stateno=235||stateno=430)&&time>4))

;Stand Medium P
[State -1]
type = ChangeState
value = 210+(P2bodydist X<=21)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=210||(command="y" && command!="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Stand High P
[State -1]
type = ChangeState
value = 220+ifelse(P2bodydist X<=30,5,0)
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=220||(command="z" && command!="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Stand Light K
[State -1]
type = ChangeState
value = 230+(P2bodydist X<=20)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=230||(command="a" && command!="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)
trigger2 = (((stateno=200||stateno=205||stateno=400)&&time>3) || ((stateno=235||stateno=430)&&time>4))

;Stand Medium K
[State -1]
type = ChangeState
value = 240+(P2bodydist X<=30)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=240||(command="b" && command!="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Stand High K
[State -1]
type = ChangeState
value = 250+(P2bodydist X<=30)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=250||(command="c" && command!="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Crouch Light P
[State -1]
type = ChangeState
value = 400
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=400||(command="x" && command="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)
trigger2 = (((stateno=200||stateno=205||stateno=400)&&time>3) || ((stateno=235||stateno=430)&&time>4))

;Crouch Medium P
[State -1]
type = ChangeState
value = 410
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=410||(command="y" && command="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Crouch High P
[State -1]
type = ChangeState
value = 420
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=420||(command="z" && command="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Crouch Light K
[State -1]
type = ChangeState
value = 430
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=430||(command="a" && command="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)
trigger2 = (((stateno=200||stateno=205||stateno=400)&&time>3) || ((stateno=235||stateno=430)&&time>4))

;Crouch Medium K
[State -1]
type = ChangeState
value = 440
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=440||(command="b" && command="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Crouch High K
[State -1]
type = ChangeState
value = 450
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype!=A && (var(24)=450 || (command="c" && command="holddown"))
trigger1 = Ctrl || (stateno=52 && time>=2)

;Jump Light P
[State -1]
type = ChangeState
value = 600+(Vel X!=0)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype=A && command="x"
trigger1 = Ctrl || (((stateno=105||stateno=117)&&AnimElemTime(4)>=1) || (stateno=115&&AnimElemTime(12)>=1))

;Jump Medium P
[State -1]
type = ChangeState
value = 610+(Vel X!=0)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype=A && command="y"
trigger1 = Ctrl || (((stateno=105||stateno=117)&&AnimElemTime(4)>=1) || (stateno=115&&AnimElemTime(12)>=1))

;Jump High P
[State -1]
type = ChangeState
value = 620+(Vel X!=0)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype=A && command="z"
trigger1 = Ctrl || (((stateno=105||stateno=117)&&AnimElemTime(4)>=1) || (stateno=115&&AnimElemTime(12)>=1))

;Jump Light K
[State -1]
type = ChangeState
value = 630+(Vel X!=0)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype=A && command="a"
trigger1 = Ctrl || (((stateno=105||stateno=117)&&AnimElemTime(4)>=1) || (stateno=115&&AnimElemTime(12)>=1))

;Jump Medium K
[State -1]
type = ChangeState
value = 640+(Vel X!=0)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype=A && command="b"
trigger1 = Ctrl || (((stateno=105||stateno=117)&&AnimElemTime(4)>=1) || (stateno=115&&AnimElemTime(12)>=1))

;Jump High K
[State -1]
type = ChangeState
value = 650+(Vel X!=0)*5
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && Statetype=A && command="c"
trigger1 = Ctrl || (((stateno=105||stateno=117)&&AnimElemTime(4)>=1) || (stateno=115&&AnimElemTime(12)>=1))