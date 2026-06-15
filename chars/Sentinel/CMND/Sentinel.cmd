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

;--------|Ai Activation|------------------------------------------
[Command] 
name = "cpu01" 
command = F, D,DF, F,x,x,x,x,x 
time = 1 

[Command] 
name = "cpu02" 
command = F, D,DF, F,x,x,x,x,y 
time = 1 

[Command] 
name = "cpu03" 
command = F,x,x,x,y,x 
time = 1 

[Command] 
name = "cpu04" 
command = F, D,DF, F,x,x,y,x,x 
time = 1 

[Command] 
name = "cpu05" 
command = F, D,DF, F,x,y,x,x,x 
time = 1 

[Command] 
name = "cpu06" 
command = F, D,DF, F,y,x,x,x,x 
time = 1 

[Command] 
name = "cpu07" 
command = F, D,DF, F,y,x,x,x,y 
time = 1 

[Command] 
name = "cpu08" 
command = F, D,DF, F,y,x,x,y,x 
time = 1 

[Command] 
name = "cpu09" 
command = F, D,DF, F,y,x,y,x,x 
time = 1 

[Command] 
name = "cpu10" 
command = F, D,DF, F,y,y,x,x,x 
time = 1

[Command] 
name = "cpu11" 
command = F, D,DF, F,a,x,x,x,x 
time = 1 

[Command] 
name = "cpu12" 
command = F, D,DF, F,a,x,x,x,y 
time = 1 

[Command] 
name = "cpu13" 
command = F, D,DF, F,a,x,x,y,x 
time = 1 

[Command] 
name = "cpu14" 
command = F, D,DF, F,a,x,y,x,x 
time = 1 

[Command] 
name = "cpu15" 
command = F, D,DF, F,a,y,x,x,x 
time = 1 

[Command] 
name = "cpu16" 
command = F, D,DF, F,y,x,x,x,a 
time = 1 

[Command]
name = "cpu17" 
command = F, D,DF, F,y,x,x,a,x 
time = 1 

[Command] 
name = "cpu18" 
command = F, D,DF, F,y,x,a,x,x 
time = 1 

[Command] 
name = "cpu19" 
command = F, D,DF, F,y,a,x,x,x 
time = 1 

[Command] 
name = "cpu20" 
command = F, D,DF, F,a,a,x,x,x 
time = 1

[Command] 
name = "cpu21" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu22" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu23" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu24" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu25" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu26" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu27" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu28" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu29" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu30" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu31" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu32" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu33" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu34" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu35" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu36" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu37" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu38" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu39" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu40" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu41" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu42" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu43" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu44" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu45" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu46" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu47" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu48" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu49" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu50" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


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
;command.buffer.time = 2


;-| Super Motions |--------------------------------------------------------


;Plasma Storm
[Command]
name = "Plasma Storm"
command = ~D, DF, F, x+y

;Plasma Storm
[Command]
name = "Plasma Storm"
command = ~D, DF, F, x+z

;Plasma Storm
[Command]
name = "Plasma Storm"
command = ~D, DF, F, y+z

[Command]
name = "Plasma Storm"
command = ~D, DF, F, ~x+y
time = 10
buffer.time = 10

;Plasma Storm
[Command]
name = "Plasma Storm"
command = ~D, DF, F, ~x+z
time = 10
buffer.time = 10

;Plasma Storm
[Command]
name = "Plasma Storm"
command = ~D, DF, F, ~y+z
time = 10
buffer.time = 10

;Hyper Sentinel Force
[Command]
name = "Hyper Sentinel Force"
command = ~D, DF, F, a+b

;Hyper Sentinel Force
[Command]
name = "Hyper Sentinel Force"
command = ~D, DF, F, a+c

;Hyper Sentinel Force
[Command]
name = "Hyper Sentinel Force"
command = ~D, DF, F, b+c

;Hyper Sentinel Force
[Command]
name = "Hyper Sentinel Force"
command = ~D, DF, F, ~a+b
time = 10
buffer.time = 10

;Hyper Sentinel Force
[Command]
name = "Hyper Sentinel Force"
command = ~D, DF, F, ~a+c
time = 10
buffer.time = 10

;Hyper Sentinel Force
[Command]
name = "Hyper Sentinel Force"
command = ~D, DF, F, ~b+c
time = 10
buffer.time = 10


;Hard Drive (Air)
[Command]
name = "Hard Drive"
command = ~D, DF, F, x+y

;Hard Drive (Air)
[Command]
name = "Hard Drive"
command = ~D, DF, F, x+z

;Hard Drive (Air)
[Command]
name = "Hard Drive"
command = ~D, DF, F, z+y

;Hard Drive (Air)
[Command]
name = "Hard Drive"
command = ~D, DF, F, ~x+y
time = 10
buffer.time = 10

;Hard Drive (Air)
[Command]
name = "Hard Drive"
command = ~D, DF, F, ~x+z
time = 10
buffer.time = 10

;Hard Drive (Air)
[Command]
name = "Hard Drive"
command = ~D, DF, F, ~z+y
time = 10
buffer.time = 10

[Command]
name = "214_KK"
command = ~D, DB, B, a+b

[Command]
name = "214_KK"
command = ~D, DB, B, b+c

[Command]
name = "214_KK"
command = ~D, DB, B, a+c

name = "214_KK"
command = ~D, DB, B, ~a+b
time = 10
buffer.time = 10

[Command]
name = "214_KK"
command = ~D, DB, B, ~b+c
time = 10
buffer.time = 10

[Command]
name = "214_KK"
command = ~D, DB, B, ~a+c
time = 10
buffer.time = 10


;-| Special Motions |------------------------------------------------------



;Ground/Air Rocket Punch Downward
[Command]
name = "QCF_x"
command = ~D, DF, F, x

;Ground/Air Rocket Punch Horizontal
[Command]
name = "QCF_y"
command = ~D, DF, F, y

;Ground/Air Rocket Punch Upward
[Command]
name = "QCF_z"
command = ~D, DF, F, z

;Ground/Air Rocket Punch Upward
[Command]
name = "FQCF"
command = F, D, DF, z

;Ground/Air Rocket Punch Upward
[Command]
name = "FQCF"
command = F, D, DF, x

;Ground/Air Rocket Punch Upward
[Command]
name = "FQCF"
command = F, D, DF, y

;Ground/Air Rocket Punch Downward
[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

;Ground/Air Rocket Punch Horizontal
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

;Ground/Air Rocket Punch Upward
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10

;Ground/Air Rocket Punch Upward
[Command]
name = "FQCF"
command = F, D, DF, ~z
time = 10
buffer.time = 10

;Ground/Air Rocket Punch Upward
[Command]
name = "FQCF"
command = F, D, DF, ~x
time = 10
buffer.time = 10

;Ground/Air Rocket Punch Upward
[Command]
name = "FQCF"
command = F, D, DF, ~y
time = 10
buffer.time = 10

;Sentinel Force
[Command]
name = "QCF_a"
command = ~D, DF, F, a


;Sentinel Force 2
[Command]
name = "QCF_b"
command = ~D, DF, F, b


;Sentinel Force 3
[Command]
name = "QCF_c"
command = ~D, DF, F, c

;Sentinel Force
[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
time = 10
buffer.time = 10


;Sentinel Force 2
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
time = 10
buffer.time = 10


;Sentinel Force 3
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
time = 10
buffer.time = 10


[Command] ;Tap x rapidly
name = "5x"
command = x, x, x, x, x
time = 80

[Command] ;Tap y rapidly
name = "5y"
command = y, y, y, y, y
time = 80

[Command] ;Tap z rapidly
name = "5z"
command = z, z, z, z, z
time = 80

;[Command]
;name = "FFx"
;command = F, F, x


;[Command]
;name = "FFy"
;command = F, F, y


;[Command]
;name = "Oiuchi"
;command = $U,a


;[Command]
;name = "Giga Crush"
;command = x+y


;[Command]
;name = "Recharge Power"
;command = y+z


[Command]
name = "Super Jump"
command = D,$U



;----|Combo Motions|---------------------------------------


;----|Throw Motions|---------------------------------------
;Throw, F/B + z
;Throw, F/B + c


;[Command]
;name = "Forward Slam"  ;while standing
;command = ~B,F,z


;Toss
;[Command]
;name = "Toss"
;command = ~B,F,y



;----|Basic Motions|---------------------------------------



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10


[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z+y
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback2"
command = /B
time = 1

;---|Hold Buttons|------------------------

[Command]
name = "holdx"
command = /x
time = 1


[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

;---|Relase Buttons|------------------------


;---|Press then Release no other key in between|------------------


;--------------

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
;This is not a move, but it sets up var(3) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(17) = 0

[State -1, Move Cancel condition Reset]
type = VarSet
trigger1 = 1
var(51) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200 || stateno = 202
trigger2 = stateno = 300
trigger3 = stateno = 400
trigger4 = stateno = 500
var(17) = 1


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 310
trigger3 = stateno = 410
trigger4 = stateno = 510
var(17) = 2


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 320
trigger3 = stateno = 420
trigger4 = stateno = 520
var(17) = 3


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 630
var(17) = 5

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 640
var(17) = 6


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 620
trigger2 = stateno = 650
var(17) = 7

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [200,790]
var(51) = 1


[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [1240,1320]
var(51) = 2


;===========================================================================
;===========================================================================
;------|AI Moves|-----------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu01"
trigger2 = command = "cpu02"
trigger3 = command = "cpu03"
trigger4 = command = "cpu04"
trigger5 = command = "cpu05"
trigger6 = command = "cpu06"
trigger7 = command = "cpu07"
trigger8 = command = "cpu08"
trigger9 = command = "cpu09"
trigger10 = command = "cpu10"
var(59) = 1
;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu11"
trigger2 = command = "cpu12"
trigger3 = command = "cpu13"
trigger4 = command = "cpu14"
trigger5 = command = "cpu15"
trigger6 = command = "cpu16"
trigger7 = command = "cpu17"
trigger8 = command = "cpu18"
trigger9 = command = "cpu19"
trigger10 = command = "cpu20"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu21"
trigger2 = command = "cpu22"
trigger3 = command = "cpu23"
trigger4 = command = "cpu24"
trigger5 = command = "cpu25"
trigger6 = command = "cpu26"
trigger7 = command = "cpu27"
trigger8 = command = "cpu28"
trigger9 = command = "cpu29"
trigger10 = command = "cpu30"
var(59) = 1


;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu31"
trigger2 = command = "cpu32"
trigger3 = command = "cpu33"
trigger4 = command = "cpu34"
trigger5 = command = "cpu35"
trigger6 = command = "cpu36"
trigger7 = command = "cpu37"
trigger8 = command = "cpu38"
trigger9 = command = "cpu39"
trigger10 = command = "cpu40"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu41"
trigger2 = command = "cpu42"
trigger3 = command = "cpu43"
trigger4 = command = "cpu44"
trigger5 = command = "cpu45"
trigger6 = command = "cpu46"
trigger7 = command = "cpu47"
trigger8 = command = "cpu48"
trigger9 = command = "cpu49"
trigger10 = command = "cpu50"
var(59) = 1

;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
trigger1 = !Var(56)
var(56) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
trigger1 = var(59) && var(56) < 1
var(59) = 0 + random < 100 
;-----------------------------------------------------------------------------
;max hit combo each type
[State -1]
type = varset
trigger1 = var(36) != 1 
trigger2 = var(56) != 4
var(36) = 1

;max hit combo each type
[State -1]
type = varset
trigger1 = var(56) = 4
trigger1 = var(36) != 4
var(36) = 4
;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
triggerall = var(59)
triggerall = time = 1
trigger1 = p2life <= 0
trigger2 = life <= 0
var(59) = 0

;---------------------------------------------------------------------------



[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "x" && command = "y"
var(56) = 0


[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "a" && command = "b"
var(56) = 1


[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "z" && command = "c"
var(56) = 4

;---------------------------------------------------------------------------
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = Var(59)
triggerall = ctrl
triggerall = StateType = S
triggerall = random <= 100
trigger1 = p2statetype = L



;---------------------------------------------------------------------------
[State -1, Oiuchi]
type = null;ChangeState
value = 500+10*(random%3)
triggerall = Var(59)
triggerall = p2bodydist x < 100
trigger1 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 7720;ifelse(FrontEdgeDist < 90,7720,7720)
triggerall = numenemy > 1
triggerall = enemynear(0),life > 0 && enemynear(1),life > 0
triggerall = Var(59)
triggerall = var(57) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = random < 700
trigger1 = screenpos x = [enemynear(0),screenpos x,enemynear(1),screenpos x]
trigger2 = screenpos x = [enemynear(1),screenpos x,enemynear(0),screenpos x]

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = BackEdgeDist > 90
triggerall = stateno != 105
triggerall = p2bodydist x < 100
triggerall = ctrl
triggerall = StateType != A
trigger1 = p2statetype = L && random < 300

;---------------------------------------------------------------------------
[State -1]
type = null;ChangeState
value = 1475
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = p2bodydist X <= 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = enemynear,statetype != A
trigger1 = BackEdgeDist < 20
trigger1 = random < 500
trigger2 = p2statetype = L && random < 300
trigger2 = BackEdgeDist < 50

;---------------------------------------------------------------------------
[State -1, anti crouch spam]
type = ChangeState
value = 131
triggerall = Var(59)
triggerall = statetype != A
triggerall = p2bodydist x < 80
triggerall = random <= 900
triggerall = p2statetype = A && ctrl
trigger1 = prevstateno = 5120
trigger2 = prevstateno = 52

;---------------------------------------------------------------------------
[State -1, Reversal]
type = null;ChangeState
value = 7970
triggerall = Var(59)
triggerall = var(56) > 0
triggerall = p2movetype = A
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, hitdefattr = SCA, NA, SA, HA, AA,AP, NT, ST,HT, NP, SP, HP
trigger1 = p2bodydist X <= 80
trigger1 = random < 100

;---------------------------------------------------------------------------
;Escape

[State -1]
type = ChangeState
triggerall = var(59) && Stateno != [7800,7801]
triggerall = p2bodydist x < 100
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType != A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
value = 7800 + (backedgedist > 100)

[State -1]
type = null;ChangeState
triggerall = var(59)
triggerall = p2bodydist x < 80
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType = A
triggerall = p2statetype = A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
trigger7 = p2stateno = var(49)
value = 7620


;-------------------------------------------------------------------------------
;Guarding states

;---------------------------------------------------------------------------
[State -1,AI stand guard]
type = ChangeState
triggerall = var(59)
;triggerall = random < 900
triggerall = statetype != A
;triggerall = enemynear,movetype = A
triggerall = enemynear,statetype != C 
triggerall = inguarddist
triggerall = ctrl
trigger1 = 1
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0
value = 130

;-------------------------------------
[State -1, Stand Parry]
type = hitoverride
triggerall = var(56) > 1
triggerall = var(59) && roundstate = 2 && statetype = S
trigger1 = 1
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = ifelse(random < 500,130, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)
;---------------------------------------------------------------------------

[State -1, AI S to C Guard] 
type = ChangeState 
triggerall = var(59)
triggerall = StateType != A 
triggerall = (enemynear,statetype = C) || (enemynear,HitDefAttr = C)
triggerall = enemynear,Movetype = A 
trigger1 = stateno = 150 || stateno = 130
value = 151 

;---------------------------------------------------------------------------

[State -1, AI Crouch Guard] 
type = ChangeState 
triggerall = var(59)
;triggerall = random < 900
triggerall = StateType != A 
triggerall = enemynear,statetype = C 
;triggerall = enemynear,Movetype = A 
triggerall = inguarddist
triggerall = ctrl
trigger1 = 1
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0
value = 131 

;-------------------------------------
[State -1, Crouch Parry]
type = hitoverride
triggerall = var(56) > 1
triggerall = var(59) && roundstate = 2 && statetype = C
trigger1 = 1
attr = C,NA, SA, HA, NP, HP, SP, AA, AT, AP,NT,ST,HT
stateno = ifelse(random < 500,131, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)
;---------------------------------------------------------------------------

[State -1, AI C to S Guard] 
type = ChangeState 
triggerall = var(59)
triggerall = Statetype != A 
triggerall = enemynear,statetype != C  || (enemynear,HitDefAttr = S)
triggerall = enemynear,Movetype = A 
trigger1 = stateno = 151 || stateno = 131
value = 150 

;---------------------------------------------------------------------------

[State -1,AI Aerial Guard] 
type = ChangeState 
triggerall = var(59)
;triggerall = random < 900
triggerall = statetype = A || Pos Y < 0
;triggerall = enemynear,Movetype = A  
triggerall = inguarddist
triggerall = ctrl
trigger1 = 1
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0
value = 132 

;-------------------------------------
[State -1, Air Parry]
type = hitoverride
triggerall = var(56) > 1
triggerall = var(59) && roundstate = 2 && (statetype = A || Pos Y < 0)
trigger1 = 1
attr = SA,NA, SA, HA, NP, HP, SP, AA, AT, AP
stateno = 132
;forceair = 1
slot = 0
time = ifelse((stateno=[154,155]),6,8)


;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = Var(59) 
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Crouching)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7615
triggerall = Var(59) 
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Air)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7620
triggerall = Var(59)
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;-----------------------------------------------------------------------------
;Basic Attacks
;---------------------------------------------------------------------------
;Throws


;---------------------------------------------------------------------------

[State -1, Ground Throw]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = random < 300
trigger1 = p2bodydist y = [-25,25]
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = var(17) = [1,2]
trigger2 = enemynear,moveguarded
;---------------------------------------------------------------------------

[State -1, Air Throw]
type = ChangeState
value = 920
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = p2bodydist y = [-25,25]
triggerall = random < 300
trigger1 = statetype = A && ctrl 
trigger1 = p2movetype != H
trigger1 = pos Y < -50


;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = stateno != [100,109]
triggerall = statetype = S && ctrl
triggerall = p2movetype != A
triggerall = p2bodydist X > 155
trigger1 = random <= 100
;trigger1 = enemy, numproj = 0
;trigger1 = enemy, numhelper = 0

;---------------------------------------------------------------------------
[State -1,AI run back]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = stateno != [100,109]
triggerall = statetype = S && ctrl
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = p2bodydist X < 120
triggerall = backedgedist > 70
trigger1 = random <= 200
;trigger1 = enemy, numproj = 0
;trigger1 = enemy, numhelper = 0

;---------------------------------------------------------------------------
[State -1,AI run fwd stop]
type = ChangeState
value = 0
triggerall = var(59)
triggerall = stateno = 100
trigger1 = p2movetype = A
trigger1 = p2bodydist X <= 105


;-----------------------------------------------------------------------------
;AI Combo
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Follow Launcher]
type = ChangeState
value = 7720
triggerall = Var(59)
trigger1 = stateno = 320 && movehit


;---------------------------------------------------------------------------
[State -1,AI standing light punch]
type = ChangeState
value = 200
triggerall = var(59)
trigger1 = p2bodydist X = [50,90]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 500
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = var(59)
trigger1 = p2bodydist X <= 45
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != A && statetype != A && ctrl && random < 300
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500
;trigger3 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120

;---------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 300
triggerall = var(59)
trigger1 = p2bodydist X <= 40
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X <= 90
triggerall = p2bodydist y = [-15,15]
triggerall = ctrl
trigger1 = statetype != A
trigger1 = random < 300
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400



;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)
trigger1 = p2bodydist X = [70,130]
trigger1 = p2bodydist y = [-15,15]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 500
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = var(59)
trigger1 = p2bodydist X <= 100
trigger1 = p2bodydist y = [-15,15]
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 200
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310
trigger4 = var(17) = 5 && stateno = 52 && random < 200

;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59)
trigger1 = random < 300
trigger1 = p2bodydist X <= 130
trigger1 = p2bodydist y = [-15,15]
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410
trigger4 = var(17) = 5 && stateno = 52 && random < 200
;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = var(59)
trigger1 = random < 500
trigger1 = p2bodydist X <= 130
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != A && p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510
trigger4 = var(17) = 5 && stateno = 52 && random < 200

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
;triggerall = enemynear,const(size.head.pos.y) >= 110
triggerall = enemynear,screenpos y = [70,170]
trigger1 = ctrl && statetype = S ;&& p2movetype != A
trigger1 = p2statetype != L && random < 250
trigger1 = p2bodydist X = [70,250]
trigger1 = p2bodydist y = [-15,15]
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 220
trigger5 = var(17) = 6 && stateno = 52 && random < 200

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = var(59)
trigger1 = p2bodydist X <= 100
trigger1 = p2bodydist y = [-75,15]
trigger1 = ctrl && p2movetype != A && statetype = S
trigger1 = p2statetype != L && random < 250
trigger2 = var(17) = [1,2]
trigger2 = MoveHit
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 420 && MoveHit
trigger4 = var(17) = 6 && stateno = 52 && random < 200 && MoveHit

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59)
trigger1 = ctrl  && statetype != A ;&& p2movetype != A
trigger1 = p2statetype != L && random < 250
trigger1 = p2bodydist X = [70,250]
trigger1 = p2bodydist y = [-5,5]
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 420
trigger5 = var(17) = 6 && stateno = 52 && random < 200

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = var(59)
trigger1 = p2bodydist X <= 140
trigger1 = statetype != A
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != L && ctrl  && random < 300;&& p2statetype != A
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 520
trigger5 = var(17) = 6 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Rocket Punch Upward]
type = ChangeState
value = 1260
triggerall = Var(59)
triggerall = p2bodydist X = [150,250]
triggerall = p2bodydist y = [-155,-55]
triggerall = statetype != A
trigger1 = random < 100
trigger1 = ctrl
trigger1 = p2statetype != L
trigger2 = var(17) = 3 && random < 100

;---------------------------------------------------------------------------
[State -1, Rocket Punch Downward]
type = ChangeState
value = 1250
triggerall = Var(59)
triggerall = p2bodydist X = [150,250]
triggerall = p2bodydist y = [-5,5]
triggerall = statetype != A
trigger1 = random < 100
trigger1 = ctrl
trigger1 = p2statetype != L
trigger2 = var(17) = 3 && random < 100

;---------------------------------------------------------------------------
[State -1, Rocket Punch Horizontal]
type = ChangeState
value = 1240
triggerall = Var(59)
triggerall = p2bodydist X = [190,250]
triggerall = p2bodydist y = [-45,5]
triggerall = statetype != A
trigger1 = random < 50
trigger1 = ctrl
trigger1 = p2statetype != L
trigger2 = var(17) = 3 && random < 50


;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Upward]
type = ChangeState
value = 1290
triggerall = Var(59)
triggerall = stateno != 7721
triggerall = p2bodydist X = [150,250]
triggerall = p2bodydist y = [-155,-55]
triggerall = statetype = A
trigger1 = random < 100
trigger1 = ctrl
trigger1 = p2statetype != L
trigger2 = var(17) = 3 && random < 100

;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Downward]
type = ChangeState
value = 1280
triggerall = Var(59)
triggerall = stateno != 7721
triggerall = p2bodydist X = [150,250]
triggerall = p2bodydist y = [-5,5]
triggerall = statetype = A
trigger1 = random < 100
trigger1 = ctrl
trigger1 = p2statetype != L
trigger2 = var(17) = 6 && random < 100

;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Horizontal]
type = ChangeState
value = 1270
triggerall = Var(59)
triggerall = stateno != 7721
triggerall = p2bodydist X = [190,250]
triggerall = p2bodydist y = [-45,5]
triggerall = statetype = A
trigger1 = random < 50
trigger1 = ctrl
trigger1 = p2statetype != L
trigger2 = var(17) = 6 && random < 50



;---------------------------------------------------------------------------
[State -1, Sentinel Force]
type = ChangeState
value = 1300
triggerall = Var(59)
triggerall = p2bodydist X >= 140
triggerall = p2bodydist y = [-75,5]
triggerall = statetype != A
triggerall = NumHelper(21320) = 0
triggerall = NumHelper(21323) = 0
triggerall = NumHelper(21324) = 0
triggerall = NumHelper(2320) = 0
trigger1 = random < 200
trigger1 = ctrl
trigger1 = enemynear,statetype != L
trigger2 = var(17) = 3 && random < 100

;---------------------------------------------------------------------------
[State -1, Sentinel Force 2]
type = ChangeState
value = 1310
triggerall = Var(59)
triggerall = p2bodydist X >= 140
triggerall = p2bodydist y = [-45,5]
triggerall = statetype != A
triggerall = NumHelper(21320) = 0
triggerall = NumHelper(21323) = 0
triggerall = NumHelper(21324) = 0
triggerall = NumHelper(2320) = 0
trigger1 = random < 200
trigger1 = ctrl
trigger1 = enemynear,statetype != L
trigger2 = var(17) = 3 && random < 100
;---------------------------------------------------------------------------
[State -1, Sentinel Force 3]
type = ChangeState
value = 1320
triggerall = Var(59)
triggerall = enemynear, screenpos x >= 140
;triggerall = p2bodydist y = [-5,5]
triggerall = statetype != A
triggerall = NumHelper(21300) = 0
triggerall = NumHelper(21301) = 0
triggerall = NumHelper(21302) = 0
triggerall = NumHelper(2320) = 0
trigger1 = random < 200
trigger1 = ctrl
trigger1 = enemynear,statetype = L
trigger2 = var(17) = 3 && random < 100


;---------------------------------------------------------------------------
[State -1, Jump in]
type = ChangeState
value = 631
triggerall = var(59)
trigger1 = p2bodydist X = [120,270]
trigger1 = statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 300



;----|AI Hypers |---------------------------------------------------

;-------------------------------------------------------------------------

[State -1,Plasma Storm]
type = ChangeState
value = 3000
triggerall = enemynear,life > 300
triggerall = Var(59) 
triggerall = power >= 1000
triggerall = statetype = S
triggerall = p2bodydist X <= 130
triggerall = p2bodydist y = [-45,5]
trigger1 = random < 200
trigger1 = ctrl
triggerall = p2statetype != L && p2stateno != 5120
trigger2 = var(17) = 3 && Movehit
trigger2 = random < 100
trigger3 = var(17) = 2 && Movehit
trigger3 = random < 200
trigger4 = random < 200
trigger4 = var(51) = 2

;-------------------------------------------------------------------------

[State -1,Hyper Sentinel Force]
type = ChangeState
value = 3020
triggerall = enemynear,life > 300
triggerall = Var(59)
triggerall = power >= 1000
triggerall = statetype = S
triggerall = p2bodydist X >= 120
triggerall = p2bodydist y = [-75,5]
triggerall = NumHelper(21300) = 0
triggerall = NumHelper(21301) = 0
triggerall = NumHelper(21302) = 0
triggerall = NumHelper(21320) = 0
triggerall = NumHelper(21323) = 0
triggerall = NumHelper(21324) = 0
trigger1 = random < 200
trigger1 = ctrl
triggerall = p2statetype != L && p2stateno != 5120
trigger2 = var(17) = 3 && Movehit
trigger2 = random < 100
trigger3 = var(17) = 2 && Movehit
trigger3 = random < 200
trigger4 = random < 200
trigger4 = var(51) = 2

;-------------------------------------------------------------------------


[State -1,Hard Drive]
type = ChangeState
value = 3040
triggerall = Var(59) && enemynear,life > 200
triggerall = power >= 1000
triggerall = statetype = A
triggerall = p2bodydist X = [50,200]
triggerall = p2bodydist y = [-35,35]
triggerall = random < 200
trigger1 = ctrl
triggerall = p2statetype != L && p2stateno != 5120
trigger2 = var(17) = 6 && Movehit
trigger2 = random < 100
trigger3 = var(17) = 5 && Movehit
trigger3 = random < 200
trigger4 = random < 200
trigger4 = var(51) = 2

;----|AI Specials |---------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = var(59)
trigger1 = p2bodydist X <= 70
trigger1 = statetype = A && ctrl
trigger1 = p2bodydist y = [-45,85]
trigger1 = p2statetype = A && random < 400
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 630
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 300
trigger1 = p2bodydist y = [-45,105]
trigger1 = p2bodydist X <= 130
trigger2 = var(17) = 5 && var(19) = var(36) && random < 50
trigger2 = stateno != 630

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 300
trigger1 = p2bodydist y = [-45,65]
trigger1 = p2bodydist X <= 100
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 200
trigger1 = p2bodydist y = [-45,45]
trigger1 = p2bodydist X <= 160
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 640

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59)
trigger1 = p2bodydist X <= 130
trigger1 = p2bodydist y = [-55,105]
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 620

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 650
triggerall = var(59)
trigger1 = p2bodydist X <= 110
trigger1 = p2bodydist y = [-15,105]
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 650

;---------------------------------------------------------------------------

[State -1, Plasma Storm]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Plasma Storm"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = [1,2]

;---------------------------------------------------------------------------

[State -1, Hyper Sentinel Force]
type = ChangeState
value = 3020
triggerall = !var(59)
triggerall = command = "Hyper Sentinel Force"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(21300) = 0
triggerall = NumHelper(21301) = 0
triggerall = NumHelper(21302) = 0
triggerall = NumHelper(21320) = 0
triggerall = NumHelper(21323) = 0
triggerall = NumHelper(21324) = 0
trigger1 = ctrl
trigger2 = var(51) = [1,2]

;---------------------------------------------------------------------------

[State -1,Hard Drive]
type = ChangeState
value = 3050
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "Hard Drive"
triggerall = power >= 1000
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = var(51) = [1,2]

;---------------------------------------------------------------------------

[State -1,Hard Drive]
type = ChangeState
value = 3040
triggerall = !var(59)
triggerall = command = "Hard Drive"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = [1,2]

[State -1]
type = ChangeState
value = 1331
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_KK"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 630
trigger5 = stateno = 640
trigger6 = stateno = 650

[State -1]
type = ChangeState
value = 1330
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_KK"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 300
trigger7 = stateno = 310
trigger8 = stateno = 320
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 411
trigger12 = stateno = 420
trigger13 = stateno = 450
trigger14 = stateno = 500
trigger15 = stateno = 510
trigger16 = stateno = 511
trigger17 = stateno = 512
trigger18 = stateno = 520
trigger19 = stateno = 521
trigger20 = stateno = 522
trigger21 = stateno = 523

[State -1]
type = ChangeState
value = 1336
triggerall = roundstate = 2 && !var(59)
triggerall = command = "214_KK"
trigger1 = stateno = 1335

;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Upward]
type = ChangeState
value = 1291
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "FQCF"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601
trigger3 = stateno = 611
trigger4 = stateno = 621
trigger5 = stateno = 631
trigger6 = stateno = 641
trigger7 = stateno = 651


;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Horizontal]
type = ChangeState
value = 1271
triggerall = !var(59)
triggerall = var(21)
triggerall = (command = "QCF_y" || command = "QCF_z")
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601
trigger3 = stateno = 611
trigger4 = stateno = 621
trigger5 = stateno = 631
trigger6 = stateno = 641
trigger7 = stateno = 651

;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Downward]
type = ChangeState
value = 1281
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "QCF_x"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601
trigger3 = stateno = 611
trigger4 = stateno = 621
trigger5 = stateno = 631
trigger6 = stateno = 641
trigger7 = stateno = 651

;---------------------------------------------------------------------------
[State -1, Ground Rocket Punch Upward]
type = ChangeState
value = 1260
triggerall = !var(59)
triggerall = command = "FQCF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 300
trigger4 = stateno = 400
trigger5 = stateno = 500
trigger6 = stateno = 210
trigger7 = stateno = 211
trigger8 = stateno = 220
trigger9 = stateno = 310
trigger10 = stateno = 320
trigger11 = stateno = 410
trigger12 = stateno = 411
trigger13 = stateno = 420
trigger14 = stateno = 510
trigger15 = stateno = 511
trigger16 = stateno = 512
trigger17 = stateno = 520
trigger18 = stateno = 521
trigger19 = stateno = 522
trigger20 = stateno = 523

;---------------------------------------------------------------------------
[State -1, Ground Rocket Punch Horizontal]
type = ChangeState
value = 1240
triggerall = !var(59)
triggerall = (command = "QCF_y" || command = "QCF_z")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 300
trigger4 = stateno = 400
trigger5 = stateno = 500
trigger6 = stateno = 210
trigger7 = stateno = 211
trigger8 = stateno = 220
trigger9 = stateno = 310
trigger10 = stateno = 320
trigger11 = stateno = 410
trigger12 = stateno = 411
trigger13 = stateno = 420
trigger14 = stateno = 510
trigger15 = stateno = 511
trigger16 = stateno = 512
trigger17 = stateno = 520
trigger18 = stateno = 521
trigger19 = stateno = 522
trigger20 = stateno = 523

;---------------------------------------------------------------------------
[State -1, Ground Rocket Punch Downward]
type = ChangeState
value = 1250
triggerall = !var(59)
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 300
trigger4 = stateno = 400
trigger5 = stateno = 500
trigger6 = stateno = 210
trigger7 = stateno = 211
trigger8 = stateno = 220
trigger9 = stateno = 310
trigger10 = stateno = 320
trigger11 = stateno = 410
trigger12 = stateno = 411
trigger13 = stateno = 420
trigger14 = stateno = 510
trigger15 = stateno = 511
trigger16 = stateno = 512
trigger17 = stateno = 520
trigger18 = stateno = 521
trigger19 = stateno = 522
trigger20 = stateno = 523

;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Upward]
type = ChangeState
value = 1290
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "FQCF"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650


;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Horizontal]
type = ChangeState
value = 1270
triggerall = !var(59)
triggerall = !var(21)
triggerall = (command = "QCF_y" || command = "QCF_z")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650

;---------------------------------------------------------------------------
[State -1, Air Rocket Punch Downward]
type = ChangeState
value = 1280
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650

;---------------------------------------------------------------------------
[State -1, Sentinel Force]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "QCF_a"
triggerall = statetype != A
triggerall = NumHelper(21320) = 0
triggerall = NumHelper(21323) = 0
triggerall = NumHelper(21324) = 0
triggerall = NumHelper(2320) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Sentinel Force 2]
type = ChangeState
value = 1310
triggerall = !var(59)
triggerall = command = "QCF_b"
triggerall = statetype != A
triggerall = NumHelper(21320) = 0
triggerall = NumHelper(21323) = 0
triggerall = NumHelper(21324) = 0
triggerall = NumHelper(2320) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Sentinel Force 3]
type = ChangeState
value = 1320
triggerall = !var(59)
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = NumHelper(21300) = 0
triggerall = NumHelper(21301) = 0
triggerall = NumHelper(21302) = 0
triggerall = NumHelper(2320) = 0
trigger1 = ctrl
trigger2 = var(51) = 1


;===========================================================================

;---------------------------------------------------------------------------
; Push Block (Stand)
[State -1]
type = ChangeState
value = 7610
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 7615
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 7620
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10


;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "x" && command = "y"

;---------------------------------------------------------------------------


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"




;---------------------------------------------------------------------------

[State -1,Forward Slam]
type = ChangeState
value = 800
triggerall = roundstate = 2
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------

[State -1,Air Forward Slam]
type = ChangeState
value = 920
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 15 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact


;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command != "holdfwd"
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact


;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 601
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "x"
trigger1 = statetype = A && (ctrl || stateno = 1335)

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 631
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "a"
trigger1 = statetype = A && (ctrl || stateno = 1335)

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 611
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "y"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 631 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 641
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "b"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 631 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 621
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "z"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 631 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = !var(21)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 651
triggerall = !var(59)
triggerall = var(21)
triggerall = command = "c"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 601 && movecontact
trigger3 = stateno = 631 && movecontact


;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7710
triggerall = !var(59)
triggerall = statetype != A
trigger1 = command = "Super Jump" 
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"  && prevstateno != 710
trigger2 = MoveHit
trigger2 = Stateno = 320

;---------------------------------------------------------------------------
[State -1,Guard]
type = ChangeState
triggerall = NumHelper(8600)
triggerall = !var(59) && (stateno != [120,155]) ;&& Helper(8600),Numenemy
;triggerall = statetype != A
triggerall = p2bodydist x > 80
triggerall = enemynear,movetype = A ;inguarddist || Helper(8600),inguarddist
triggerall = command = "holdback"
trigger1 = ctrl
value = 120
