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
command.time = 15

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
name = "place"
command = ~B, F, x
time = 20







;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a





[Command]
name = "FF_b"
command = F, F, b

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
name = "grab"
command = a+x
time = 2

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

;AI

var(59) = AI variable
var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = 0>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=0=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(0=1)*3+(0=2)*7+(0=3)*16+(0=4)*30+(0=5)*58+(0=6)*90+ (0=7)*150+(0=8)*300

;===========================================================================

;ai command
[State -1,creeper]
Type=Changestate
Triggerall=var(59)>0 ; Use this only if the AI is ON
Triggerall=power>=2000 ; Move cost still applies to the AI
Triggerall=Statetype=S ; Game rules still apply to the AI
Triggerall=abs(P2Bodydist X)<40 ; use this move only when the opponent is close enough. Moves usually don't hit the entire screen, so specifying the distance this way is necessary
Triggerall=P2StateType=S; use it only if the opponent is standing. This way, we don't need to worry about the y position of the opponent, and we won't use it when the opponent is on the ground or is falling. Using other triggers in other cases like P2dist Y, enemynear,pos Y, P2Stateype!=L,!enemynear,hitfall, etc... might be necessary.
Triggerall=!Inguarddist; Don't use it if in guard distance. We don't want to run into a hit and get our super interrupted. This line is unnecessary if the super cannot be interrupted by hits.
Triggerall=random<var(50)*1.2; 1-1.5="" a="" ai="" and="" around="" attack="" attack.="" attacks="" attacks.="" be="" br="" by="" can="" chance="" combo="" controlled="" determines="" difficulty="" dodging="" easy="" for="" from="" higher="" how="" in="" is="" it="" level.="" likely="" line="" long="" lower="" most="" multiplier="" of="" on="" only="" or="" powerful="" recommended="" reduces="" s="" so="" starter="" t="" that="" the="" this="" to="" triggerall="0>=3;" use="" used="" using="" value="" values="" want="" we="" what=""> Trigger1 = ctrl
Trigger1 = ctrl
value=1200

[State -1,water]
Type=Changestate
Triggerall=var(59)>0 ; Use this only if the AI is ON
Triggerall=power>=1000 ; Move cost still applies to the AI
Triggerall=Statetype=S ; Game rules still apply to the AI
Triggerall=abs(P2Bodydist X)< 130; use this move only when the opponent is close enough. Moves usually don't hit the entire screen, so specifying the distance this way is necessary
Triggerall=P2StateType=S; use it only if the opponent is standing. This way, we don't need to worry about the y position of the opponent, and we won't use it when the opponent is on the ground or is falling. Using other triggers in other cases like P2dist Y, enemynear,pos Y, P2Stateype!=L,!enemynear,hitfall, etc... might be necessary.
Triggerall=!Inguarddist; Don't use it if in guard distance. We don't want to run into a hit and get our super interrupted. This line is unnecessary if the super cannot be interrupted by hits.
Triggerall=random<var(50)*0.07; 1-1.5="" a="" ai="" and="" around="" attack="" attack.="" attacks="" attacks.="" be="" br="" by="" can="" chance="" combo="" controlled="" determines="" difficulty="" dodging="" easy="" for="" from="" higher="" how="" in="" is="" it="" level.="" likely="" line="" long="" lower="" most="" multiplier="" of="" on="" only="" or="" powerful="" recommended="" reduces="" s="" so="" starter="" t="" that="" the="" this="" to="" triggerall="0>=3;" use="" used="" using="" value="" values="" want="" we="" what=""> Trigger1 = ctrl
Trigger1 = ctrl
value=210

[State -1,gras]
Type=Changestate
Triggerall=var(59)>0 ; Use this only if the AI is ON
Triggerall=abs(P2Bodydist X)> 40; use this move only when the opponent is close enough. Moves usually don't hit the entire screen, so specifying the distance this way is necessary
Triggerall=!Inguarddist; Don't use it if in guard distance. We don't want to run into a hit and get our super interrupted. This line is unnecessary if the super cannot be interrupted by hits.
Triggerall=random<var(50)*0.8; 1-1.5="" a="" ai="" and="" around="" attack="" attack.="" attacks="" attacks.="" be="" br="" by="" can="" chance="" combo="" controlled="" determines="" difficulty="" dodging="" easy="" for="" from="" higher="" how="" in="" is="" it="" level.="" likely="" line="" long="" lower="" most="" multiplier="" of="" on="" only="" or="" powerful="" recommended="" reduces="" s="" so="" starter="" t="" that="" the="" this="" to="" triggerall="0>=3;" use="" used="" using="" value="" values="" want="" we="" what=""> Trigger1 = ctrl
Triggerall=NumHelper(240) < 3 
Trigger1 = ctrl
value=240


[State -1,throw]
Type=Changestate
Triggerall=var(59)>0 ; Use this only if the AI is ON
Triggerall=abs(P2Bodydist X) < 12; use this move only when the opponent is close enough. Moves usually don't hit the entire screen, so specifying the distance this way is necessary
Triggerall=!Inguarddist; Don't use it if in guard distance. We don't want to run into a hit and get our super interrupted. This line is unnecessary if the super cannot be interrupted by hits.
Triggerall=random<var(50)*1.2; 1-1.5="" a="" ai="" and="" around="" attack="" attack.="" attacks="" attacks.="" be="" br="" by="" can="" chance="" combo="" controlled="" determines="" difficulty="" dodging="" easy="" for="" from="" higher="" how="" in="" is="" it="" level.="" likely="" line="" long="" lower="" most="" multiplier="" of="" on="" only="" or="" powerful="" recommended="" reduces="" s="" so="" starter="" t="" that="" the="" this="" to="" triggerall="0>=3;" use="" used="" using="" value="" values="" want="" we="" what=""> Trigger1 = ctrl
Triggerall=P2StateType=S
Triggerall=Statetype=S ; Game rules still apply to the AI
Trigger1 = ctrl
value=800

[State -1,jab]
Type=Changestate
Triggerall=var(59)>0 ; Use this only if the AI is ON
Triggerall=abs(P2Bodydist X) < 7; use this move only when the opponent is close enough. Moves usually don't hit the entire screen, so specifying the distance this way is necessary
Triggerall=!Inguarddist; Don't use it if in guard distance. We don't want to run into a hit and get our super interrupted. This line is unnecessary if the super cannot be interrupted by hits.
Triggerall=random<var(50)*1.8; 1-1.5="" a="" ai="" and="" around="" attack="" attack.="" attacks="" attacks.="" be="" br="" by="" can="" chance="" combo="" controlled="" determines="" difficulty="" dodging="" easy="" for="" from="" higher="" how="" in="" is="" it="" level.="" likely="" line="" long="" lower="" most="" multiplier="" of="" on="" only="" or="" powerful="" recommended="" reduces="" s="" so="" starter="" t="" that="" the="" this="" to="" triggerall="0>=3;" use="" used="" using="" value="" values="" want="" we="" what=""> Trigger1 = ctrl
triggerall = (statetype = S) || (statetype = A)
Trigger1 = ctrl
value=200

[State -1,kick]
Type=Changestate
Triggerall=var(59)>0 ; Use this only if the AI is ON
Triggerall=abs(P2Bodydist X) < 6; use this move only when the opponent is close enough. Moves usually don't hit the entire screen, so specifying the distance this way is necessary
Triggerall=!Inguarddist; Don't use it if in guard distance. We don't want to run into a hit and get our super interrupted. This line is unnecessary if the super cannot be interrupted by hits.
Triggerall=random<var(50)*0.7; 1-1.5="" a="" ai="" and="" around="" attack="" attack.="" attacks="" attacks.="" be="" br="" by="" can="" chance="" combo="" controlled="" determines="" difficulty="" dodging="" easy="" for="" from="" higher="" how="" in="" is="" it="" level.="" likely="" line="" long="" lower="" most="" multiplier="" of="" on="" only="" or="" powerful="" recommended="" reduces="" s="" so="" starter="" t="" that="" the="" this="" to="" triggerall="0>=3;" use="" used="" using="" value="" values="" want="" we="" what=""> Trigger1 = ctrl
Triggerall=P2StateType=S
Triggerall=Statetype=S ; Game rules still apply to the AI
Trigger1 = ctrl
value=230

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)


;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)



;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)


;---------------------------------------------------------------------------
;Light Kung Fu Knee



;---------------------------------------------------------------------------
;Strong Kung Fu Knee


;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)


;---------------------------------------------------------------------------
;Light Kung Fu Palm pickaxe
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "y"
trigger1 = (statetype = S) || (statetype = C) 
trigger1 = ctrl
;---------------------------------------------------------------------------
;place
[State -1, Place]
type = ChangeState
value = 2000
triggerall = command = "place"
trigger1 = var(1) ;Use combo condition (above)


;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;[State -1, Strong Kung Fu Palm]
;type = ChangeState
;value = 1010
;triggerall = command = "QCF_y"
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)


;---------------------------------------------------------------------------
;Light Kung Fu Upper


;---------------------------------------------------------------------------
;Strong Kung Fu Upper

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)

;---------------------------------------------------------------------------
;Light Kung Fu Blow creeper
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = power >= 2000
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow


;---------------------------------------------------------------------------
;High Kung Fu Blocking (High)


;---------------------------------------------------------------------------
;High Kung Fu Blocking (Low)


;---------------------------------------------------------------------------
;High Kung Fu Blocking (Air)


;---------------------------------------------------------------------------
;Far Kung Fu Zankou


;---------------------------------------------------------------------------
;Rod
[State -1, Rod]
type = ChangeState
value = 1400
triggerall = command = "c"
trigger1 = (statetype = S) || (statetype = C) || (statetype = A)
trigger1 = ctrl


;---------------------------------------------------------------------------
;Pearl
[State -1, Pearl]
type = ChangeState
value = 1410
triggerall = command = "z"
trigger1 = (statetype = S) || (statetype = C) || (statetype = A)
trigger1 = NumHelper(400) < 1 
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back


;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "grab"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100

trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (statetype = C) || (statetype = A)
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Strong Punch water
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "QCB_a"
triggerall = power >= 1000

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (statetype = C) || (statetype = A)
trigger1 = ctrl


;---------------------------------------------------------------------------
Standing Strong Kick ;grasblock
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"

trigger1 = (statetype = S) || (statetype = C) || (statetype = A)
trigger1 = ctrl
trigger1 = NumHelper(240) < 3 


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Strong Kick



;---------------------------------------------------------------------------
;Jump Light Punch


;---------------------------------------------------------------------------
;Jump Strong Punch


;---------------------------------------------------------------------------
;Jump Light Kick


;---------------------------------------------------------------------------
;Jump Strong Kick

