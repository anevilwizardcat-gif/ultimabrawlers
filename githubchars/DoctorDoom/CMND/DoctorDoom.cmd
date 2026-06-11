; **IMPORTANT NOTE:**
; THIS COMMAND FILE WILL, AND WILL PREVENT THE AI FROM EVEN ATTACKING
; THIS COMMAND FILE WAS MADE LIKE THIS TO ADD AI AND PREVENT HUMAN COMMANDS
; FROM BEING INVOLVED IN THE AI.
;
; IF YOU WANT YOUR CHARACTER TO ATTACK, THEN YOU WILL HAVE TO CODE AI...

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
;==================================================================================
;======| RELACIONADO ﾀ AI - AI RELATED |===========================================
;==================================================================================

; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
; (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
; It may slightly increase the chances of faulty AI activation if the user is
; using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Another important point to make, is that if you want to add additional
; definitions for any of these basic command names, then there are limits on
; what kind of parameters you can use, in order to ensure the reliability of
; the helper method.  That is, if you redefine any of these first 11 commands,
; then you must follow these rules when doing so:
; - Don't use any command string that includes any tildes. (e.g. no "~x",
;   no "~30D")
; - In the command string, don't include any direction that isn't preceeded by
;   a slash. (e.g. no "F", no "$D")
; - Don't put any non-slashed buttons in a command string overloading one of
;   the Hold Dir command names.
; - Using a command string that includes any commas (e.g. no "a,b"), and/or
;   setting the time parameter to greater than 1, may be safe, but I wouldn't
;   risk it.
; An example of what is permissible, is redefining the "z" button like so:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; Other than that particular common type of redefinition, it's probably best
; to simply avoid adding definitions for these 11 command names altogether.
; And remember, this paragraph just has to do with the helper method.  You'll
; still need to make changes to the XOR code, no matter what type of overloading
; you use with the commands used by it.
[Defaults]
command.buffer.time = 2
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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
name = "holdstart"
command = /s
time = 1

[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;---------------------------------Supers--------------------------
[Command]
name = "ElectricCage"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "ElectricCage"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "ElectricCage"
command = ~D, DF, F, z+y
time = 20

[Command]
name = "PhotonArray"
command = ~F, $D, B, x+y
[Command]
name = "PhotonArray"
command = ~F, $D, B, x+z
[Command]
name = "PhotonArray"
command = ~F, $D, B, z+y

[Command]
name = "SphereFlame"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "SphereFlame"
command = ~D, DF, F, b+c
time = 20
[Command]
name = "SphereFlame"
command = ~D, DF, F, a+c
time = 20

;-| Special Motions |------------------------------------------------------
;------------------------Fly---------------------
[Command]
name = "Flight"
command = ~D, DB, B, a+b

[Command]
name = "Flight"
command = ~D, DB, B, b+c

[Command]
name = "Flight"
command = ~D, DB, B, a+c

;------------------------Plasma Beam---------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10

;---------------------Photon Shot------------
[Command]
name = "HCB_x"
command = ~F, $D, B, x
[Command]
name = "HCB_y"
command = ~F, $D, B, y
[Command]
name = "HCB_z"
command = ~F, $D, B, z

[Command]
name = "HCB_x"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10
[Command]
name = "HCB_y"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10
[Command]
name = "HCB_z"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10

;------------------Molecular Sheild------------------------
[Command]
name = "HCB_a"
command = ~F, $D, B, a
[Command]
name = "HCB_b"
command = ~F, $D, B, b
[Command]
name = "HCB_c"
command = ~F, $D, B, c

[Command]
name = "HCB_x"
command = ~F, $D, B, ~a
time = 10
buffer.time = 10
[Command]
name = "HCB_y"
command = ~F, $D, B, ~b
time = 10
buffer.time = 10
[Command]
name = "HCB_z"
command = ~F, $D, B, ~c
time = 10
buffer.time = 10

;-| Tap |-----------------------------------------------------------
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

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

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "SuperJump"
command = $D, $U

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "chargey"
command = /y
time = 1

[Command]
name = "chargeb"
command = /b
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

[Statedef -1]

;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; Photon Array Air
[State -1, Photon Array Air]
type = ChangeState
value = 3105
triggerall = command = "PhotonArray"&&power>=1000
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])
trigger3 = (stateno = [1000,1999])
;---------------------------------------------------------------------------
; Photon Array
[State -1, Photon Array]
type = ChangeState
value = 3100
triggerall = command = "PhotonArray"&&power>=1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger3 = (stateno = [1000,1999])

;---------------------------------------------------------------------------
; Electric Cage
[State -1, Electric Cage]
type = ChangeState
value = 3000
triggerall = command = "ElectricCage"&&power>=1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger3 = (stateno = [1000,1999])
;---------------------------------------------------------------------------
; Sphere Flame
[State -1, Sphere Flame]
type = ChangeState
value = 3200
triggerall = command = "SphereFlame"&&power>=1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499])
trigger3 = (stateno = [1000,1999])

;---------------------------------------------------------------------------
; Air Photon Shot
[State -1, Air Photon Shot]
type = ChangeState
value = 1105
triggerall = command = "HCB_x"||command="HCB_y"||command="HCB_z"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])
;---------------------------------------------------------------------------
; Photon Shot
[State -1, Photon Shot]
type = ChangeState
value = 1100
triggerall = command = "HCB_x"||command="HCB_y"||command="HCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499])
;---------------------------------------------------------------------------
; Molecular Sheild
[State -1, Molecular Sheild]
type = ChangeState
value = 1200
triggerall = command = "HCB_a"||command="HCB_b"||command="HCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499])
;---------------------------------------------------------------------------
; Air Plasma Beam
[State -1, Air Plasma Beam]
type = ChangeState
value = 1005
triggerall = command = "QCF_x"||command="QCF_y"||command="QCF_z"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])
;---------------------------------------------------------------------------
; Plasma Beam
[State -1, Plasma Beam]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"||command="QCF_y"||command="QCF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499])

;---------------------------------------------------------------------------
; Air Flight
[State -1, Flight]
type = ChangeState
value = 1301
triggerall = command = "Flight"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,699])

;---------------------------------------------------------------------------
; Flight
[State -1, Flight]
type = ChangeState
value = 1300
triggerall = command = "Flight"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,499])

[State -1]
type = ChangeState
value = 1310
triggerall = command = "Flight"
trigger1 = stateno = 1305

;---------------------------------------------------------------------------
; アドバンシングガード 
[State -1]
type = VarSet
triggerall = !numhelper(8060)
triggerall = command = "guardpush"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(48) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 112
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 112
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 99
triggerall = statetype != A
trigger1 = command = "SuperJump" 
trigger1 = ctrl

[State -1, Super Jump]
type = ChangeState
value = 99
triggerall = statetype!=A
triggerall = command = "holdup"
trigger1 = stateno = 240 && movehit && p2statetype = A && time<17
trigger2 = stateno = 420 && movehit && p2statetype = A && time<23

;---------------------------------------------------------------------------
; Air Dash Back Up
[State -1, Air Run Back Up]
type = ChangeState
value = 107
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdback"&&command = "holdup" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Fwd Up
[State -1, Air Run Fwd Up]
type = ChangeState
value = 106
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdfwd"&&command = "holdup" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Back Down
[State -1, Air Run Back Up]
type = ChangeState
value = 109
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdback"&&command = "holddown" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Fwd Down
[State -1, Air Run Fwd Up]
type = ChangeState
value = 108
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdfwd"&&command = "holddown" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Up
[State -1, Air Run Up]
type = ChangeState
value = 102
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdup" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Down
[State -1, Air Run Up]
type = ChangeState
value = 110
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holddown" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Back
[State -1, Air Run Back]
type = ChangeState
value = 104
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdback" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Air Dash Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 103
triggerall = !var(53)
triggerall = (stateno !=[100,109])&&var(20)<3
triggerall = command = "holdfwd" && command = "guardpush" || command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = [600,699])&&movecontact

;---------------------------------------------------------------------------
; Throw punch
[State -1, Throw]
type = ChangeState
value = 800
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Throw kick
[State -1, Throw]
type = ChangeState
value = 840
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Air Throw punch
[State -1, Air Throw]
type = ChangeState
value = 820
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A  && (ctrl || stateno = 1305)

;---------------------------------------------------------------------------
; Air Throw punch
[State -1, Air Throw]
type = ChangeState
value = 860
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A  && (ctrl || stateno = 1305)

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
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

[State -1]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "c"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = 600 || stateno = 630)  && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = stateno = 600  && movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = 630 || stateno = 600|| stateno = 610)  && movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Down Strong Kick]
type = ChangeState
value = 655
triggerall = command = "holddown"&&command = "c"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A  && (ctrl || stateno = 1305)
trigger2 = (stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
