


;=========================================
;Mugen_2_TsMugen added this commands
;=========================================

[Command]
name    = "call-st"
command = s
time    = 1

;=========================================


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
[Command] 
 name = "Death_Move1"
 command = x+a
 time = 1500
 
[Command] 
 name = "Death_Move2"
 command = y+b
 time = 1500
 ;-----------------------------------------------
[Command];Stand Alone Hypers 
 name = "OuroborosV2"
 command = ~D, DF, F, x+y
 
 [Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 50

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

 [Command]
name = "blazing guns"
command = ~D, DB, B, D, DB, B, x
time = 50

[Command]
name = "blazing guns"  ;Same name as above
command = ~D, DB, B, D, DB, B, y
time = 20


[Command]
name = "dx"
command = ~D, F, a+b
time = 20
;------------------------------------------------
[Command]; specials performed in either mode.
 name = "tackle command"
 command = ~D, DB, B, b
 

;------------------------------------------------
 [Command];Specials performed in Swordplay mode
 name = "Standing Grahm"
 command = ~F, D, DF, b
;
[Command] 
 name = "Crouching Grahm"
 command = ~D, D, a
 time = 20

; 
[Command] 
 name = "Jumping Grahm"
 command = ~F, D, DF, b
;
[Command] 
 name = "Jumping Grahm"
 command = ~F, D, DF, a
[Command]
 name = "blazing slash"
 command = ~F, D, DF, y
 
[Command]
name = "QCF_y"
command = ~D, DF, F, y
 
 ;---------------------------------------
 ;Attacks only done in a combo, Freehand
[Command]
 name = "Thrust Kick"
 command = ~D, DF, F, b
 
[Command]
 name = "Thrust Kick"
 command = /$F, b
 
[Command]
 name = "flip kick"
 command = /$B, b

[Command]
 name = "Elbow"
 command = /$F, y

[Command]
 name = "Snap Kick"
 command = a
 
;rain storm
[Command]
name = "Rain storm"
command = D, DB, B, x+y

;
; [Command] ;Two quarter circles forward + z
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, z
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + y
; name = "charge_B_F_z"
; command = ~60$B, F, y
; time = 10
;
; [Command] ;Charge down, then up + b
; name = "charge_D_U_c"
; command = ~60$D, U, b
; time = 10
;-------------------------------------------------------------------------
[Command]
name = "Ground Roll fwd";Required (do not remove)
command = /F, x+a
time = 1

[Command]
name = "Ground Roll bkwd";Required (do not remove)
command = /B, x+a
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F

[Command]
name = "BB"     ;Required (do not remove)
command = B, B


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[command]
name = "guardpush"
command = x+y
time = 1

[command]
name = "guardpush"
command = a+b
time = 1

name = "a+b";Required (do not remove)
command = a+c
time = 1

[Command]
name = "a+c";Required (do not remove)
command = a+b
time = 1

[Command]
name = "b+c";Required (do not remove)
command = b+c
time = 1

[Command]
name = "y+z";Required (do not remove)
command = y+z
time = 1

[Command]
name = "x+a";Required (do not remove)
command = x+a
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
command = c
time = 1

[Command]
name = "c"
command = b
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = z
time = 1

[Command]
name = "z"
command = y
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



;=========================================
;Mugen_2_TsMugen added this commands
;=========================================

[Command]
name    = "longjump"
command = D,$U
time    = 18

;=========================================



[Statedef -1]
;---------------------------------------------------------------------------
;Stand alone Hypers
;---------------------------------------------------------------------------
[State -1,Devil trigger 1]
type = Changestate
value = 99100
triggerall = power >= 1000 || var(10)= 0 && power >= 1000 
triggerall = var(10) != 1  
trigger1 = command = "OuroborosV2" 
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Devil trigger 2]
type = Changestate
value = 65456
triggerall = power >= 1000 || var(10)= 0 && power >= 1000 
triggerall = var(10) != 1  
trigger1 = command = "OuroborosV2" 
trigger1 = statetype = A
trigger1 = ctrl

----------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Million Stab]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Blazing Guns]
type = ChangeState
value = 4000
triggerall = command = "blazing guns"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;------------------------------------------
  ;Devil X
[State -1, Devil x]
type = ChangeState
value = 1000
triggerall = command = "dx" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && MoveContact
trigger3 = stateno  = 201 && MoveContact
trigger4 = stateno  = 202 && MoveContact
trigger5 = stateno  = 203 && MoveContact
trigger6 = stateno  = 204 && MoveContact
trigger7 = stateno  = 205 && MoveContact
trigger8 = stateno  = 300 && MoveContact
trigger9 = stateno  = 301 && MoveContact
trigger10 = stateno = 302 && MoveContact
trigger11 = stateno = 303 && MoveContact
trigger12 = stateno = 304 && MoveContact
trigger13 = stateno = 305 && MoveContact





;----------------------------------
;Specials  rain storm

[State -1,Rain storm]
type = ChangeState
value = 1003
triggerall = power >= 1000
triggerall = var(2) = 1
triggerall = var(4) = 0 && var(59)!=1
trigger1 = command = "Rain storm"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Death Moves
;---------------------------------------------------------------------------
[State -1,]
type = Changestate
value = 80000
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1 ; Finish Him must be on the screen
triggerall = enemy(0), stateno = 987123 ; P2 must be in this state
triggerall = RoundNo != 1 ; Round can't be the first
triggerall = var(59) >= 1 ; You should have on a round before
trigger1 = command = "Death_Move1" ; the command
trigger1 = ctrl 
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
[State -1,]
type = Changestate
value = 81000
triggerall = var(5) = 2 && var(14) != 5
triggerall = (var(9)!)
triggerall = P2Life = 1 && P2Dist X < 200
triggerall = NumHelper(9010) = 1 ; Finish Him must be on the screen
triggerall = enemy(0), stateno = 987123 ; P2 must be in this state
triggerall = RoundNo != 1 ; Round can't be the first
triggerall = var(59) >= 1 ; You should have on a round before
trigger1 = command = "Death_Move2" ; the command
trigger1 = ctrl 
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
;===========================================================================

;---------------------------------------------------------------------------
[State -1]
type = changestate
value = 16166
triggerall = var(4) = 0
triggerall = command = "tackle command"
trigger1 = statetype = S 
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Shotgun]
type = changestate
value = 66601
triggerall = command = "Standing Grahm"
trigger1 = statetype = S 
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Shotgun low]
type = changestate
value = 66602
triggerall = command = "Crouching Grahm"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Air Shot Gun]
type = changestate
value = 66603
triggerall = command = "Jumping Grahm"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, sho ryuken style move]
type = changestate
value = 710
triggerall = var(2) = 1
triggerall = command = "blazing slash"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Stinger]
type = ChangeState
value = 701
triggerall = command = "QCF_y" && command != "holddown"
triggerall = var(2) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && MoveContact
trigger3 = stateno  = 201 && MoveContact
trigger4 = stateno  = 202 && MoveContact
trigger5 = stateno  = 203 && MoveContact
trigger6 = stateno  = 204 && MoveContact
trigger7 = stateno  = 205 && MoveContact
trigger8 = stateno  = 300 && MoveContact
trigger9 = stateno  = 301 && MoveContact
trigger10 = stateno = 302 && MoveContact
trigger11 = stateno = 303 && MoveContact
trigger12 = stateno = 304 && MoveContact
trigger13 = stateno = 305 && MoveContact
;----------------------------------------------------------------------

;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back/dodge
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Guard Push  
[State -1, Guard Push]
type = ChangeState
value = 900
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,151]
;---------------------------------------------------------------------------
;Guard Push  
[State -1, Guard Push]
type = ChangeState
value = 901
triggerall = command = "guardpush"
triggerall = statetype = C
trigger1 = stateno = [152,153]
;---------------------------------------------------------------------------
;Guard Push  
[State -1, Guard Push]
type = ChangeState
value = 902
triggerall = command = "guardpush"
triggerall = statetype = A
trigger1 = stateno = [154,155]
;---------------------------------------------------------------------------
;Ground Roll  
[State -1]
type = ChangeState
value = 11668
triggerall = command = "Ground Roll fwd"
triggerall = statetype = s
trigger1 = stateno = 0 || stateno = 11 || stateno = 20 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 101 || stateno = 130 || stateno = 151 
;---------------------------------------------------------------------------
;Ground Roll  
[State -1]
type = ChangeState
value = 11669
triggerall = command = "Ground Roll bkwd"
triggerall = statetype = s
trigger1 = stateno = 0 || stateno = 11 || stateno = 20 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 101 || stateno = 130 || stateno = 151 

;---------------------------------------------------------------------------
;Basics
;---------------------------------------------------------------------------
[State -1]
type = changestate
value = 200
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------
[State -1]
type = changestate
value = 300
triggerall = var(2) = 0 
triggerall = p2life != 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------
[State -1]
type = changestate
value = 210
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "a" 
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl 

;----------------------------------------------
[State -1]
type = changestate
value = 310
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "a" 
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl 

;----------------------------------------------
[State -1]
type = changestate
value = 220
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "z" 
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl 

;----------------------------------------------
[State -1]
type = changestate
value = 320
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "z" 
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl 

;----------------------------------------------

[State -1]
type = changestate
value = 230
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "c" 
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 330
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "c" 
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 400
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "x" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 500
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "x" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 410
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "a" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 510
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 520
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "z" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 420
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "z" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 430
triggerall = var(2) = 1
triggerall = p2life != 0
triggerall = command = "c" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 530
triggerall = var(2) = 0
triggerall = p2life != 0
triggerall = command = "c" 
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl 
;-----------------------------------------------
[State -1]
type = changestate
value = 800
triggerall = var(2) = 0 
triggerall = p2life != 0
triggerall = command = "x" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 600
triggerall = var(2) = 1 
triggerall = p2life != 0
triggerall = command = "x" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 810
triggerall = var(2) = 0 
triggerall = p2life != 0
triggerall = command = "a" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 610
triggerall = var(2) = 1 
triggerall = p2life != 0
triggerall = command = "a" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 820
triggerall = var(2) = 0 
triggerall = p2life != 0
triggerall = command = "z" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 620
triggerall = var(2) = 1 
triggerall = p2life != 0
triggerall = command = "z" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 830
triggerall = var(2) = 0 
triggerall = p2life != 0
triggerall = command = "c" 
trigger1 = statetype = a
trigger1 = ctrl 

;-----------------------------------------------
[State -1]
type = changestate
value = 630
triggerall = var(2) = 1 
triggerall = p2life != 0
triggerall = command = "c" 
trigger1 = statetype = a
trigger1 = ctrl 
;-----------------------------------------------


;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;-----------------
;air dash
[State -1, Dash Air]
type = ChangeState
value = 234
;triggerall = Var(20) = 0
triggerall = Var(0) != 1 ;AI doesn't do this move
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 224

;-----------------
;AIR Dash Back
[State -1, Dash Back]
type = ChangeState
value = 235
ctrl = 0
triggerall = Var(0) != 1
triggerall = var(41) != 3
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl



;-----------------------------------------------------------------------
;MK Armageddon stage Meteor Storm
;-----------------------------------------------------------------------
[State -1, Meteor Storm id]
type = VarSet
trigger1 = Floor(Pos Z = 3)
var(58) = 1

[State -1, Top Floor Helper]
type = helper
triggerall = Floor(Pos Z = 3);var(58) = 1
trigger1 = 1 && !numhelper(887702)
helpertype = Normal
id = 887702
name = "Ground Level"
pos = 0,200;9999999999
stateno = 887702
supermovetime = 999999999
pausemovetime = 999999999
ownpal = 0

[State -1, Meteor Shower Helper]
type = helper
triggerall = Floor(Pos Z = 3);var(58) = 1
trigger1 = 1 && !numhelper(887701)
helpertype = Normal
id = 887701
name = "Meteor Shower"
pos = 0,9999999999
stateno = 887701
supermovetime = 999999999
pausemovetime = 999999999
ownpal = 0

[State -1, VarAdd]
type = VarAdd
triggerall = var(58) = 1 && !p2life = 0
trigger1 = (time = 1 && (stateno = 5110)) || (enemy,time = 1 && (enemy,stateno = 5110 )) || (enemy,stateno = 5504060 && (time = 1 || enemy,time = 1)) || (enemy,stateno = 5504060 && (time = 50 || enemy,time = 50))
trigger2 = (stateno = 5504061 && (time = 1 || enemy,time = 1)) || (stateno = 5504061 && (time = 50 || enemy,time = 50))
v = 57
value = 1

[State -1, VarAdd]
type = VarAdd
trigger1 = stateno = 6660020 || enemy,stateno = 6660021
v = 56
value = 1

[State -1, ChangeState]
type = ChangeState
triggerall = stateno != 5504061
trigger1 = var(57) = 3
value = 6660020
ctrl = 0

[State -1, ChangeState]
type = ChangeState
triggerall = var(57) = 2 && !life = 0
trigger1 = Movetype = H && Pos Y >= 0 && pos y > 12
value = 5504061

;=============================< Meteor Storm Stage helper codes start>========================================
;-----------------------------------------------
;Top Level
;-----------------------------------------------
[Statedef 887702]
type = s
movetype = a
physics = s
anim = 666000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
;flag3 = nofg

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, Bottom floor Helper]
type = helper
;triggerall = Floor(Pos Z = 3)
trigger1 = 1 && !numhelper(887700)
helpertype = normal
id = 887700
name = "Ground Level"
pos = 0,9999999999
stateno = 887700
supermovetime = 999999999
pausemovetime = 999999999
ownpal = 0

[State 0, RemoveExplod];bridge
type = RemoveExplod
trigger1 = root,var(57) = 3
ID = 8018

[State 0, Explod];polls
type = Explod
trigger1 = time = 1 && !numexplod(8018)
anim = f8004
ID = 8018
pos = 259,288
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -3
shadow = 0,0,0
ownpal = 0
scale = .8,.8

;------------------------------------<hit def to mimic desending>-----------------------
[State 0, HitDef]
type = HitDef
triggerall = root,var(57) = 2 && !p2life = 0
trigger1 = enemy,Movetype = H && enemy,Pos Y >= 0 && enemy,pos y > 12
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 0,0
pausetime = 0,20
sparkno = 0
guard.sparkno = 0
sparkxy = 0,-99999999999999
hitsound = s0,0112233445566778899
guardsound = 0,0112233445566778899
p2stateno = 5504060
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = root,stateno = 5504061
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 0,0
pausetime = 0,20
sparkno = 0
guard.sparkno = 0
sparkxy = 0,-99999999999999
hitsound = s0,0112233445566778899
guardsound = 0,0112233445566778899
p2stateno = 6660021
persistent = 0

[State 0, Playsnd];explosion
type = PlaySnd
trigger1 = root,var(57) = 3
value = f8000
volume = 100
persistent = 1

;------------------------------------<exploding bridge>---------------------------------
[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8005
pos = 17,195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 102
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8005
pos = -200,195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 102
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8005
pos = 300,195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 102
sprpriority = 5
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
;-----------------------------<bridge breaking>----------------------------
[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = -100,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 0,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 100,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 200,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 300,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 400,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 500,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(57) = 3
anim = f8007
pos = 600,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

;-------------------------------<p1 falling states>--------------------------------------------
[Statedef 5504061]
type = s
movetype = h
physics = n

[state 0, ChangeAnim2]
type = changeanim2
trigger1 = 1
value = 666001
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,1
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s110,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 5040, Velset]
type = Velset
trigger1 = var(56) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(56) >= 700
trigger1 = Pos Y > 0
value = 5110
ctrl = 0
;-----------------------<p1 jumpdown states>--------------------------------
[Statedef 6660020]
type = a
movetype = i
physics = n

[state 0, ChangeAnim]
type = changeanim
trigger1 = time = 0
value = 44
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 400
time = 250
add = 0,0,0
mul = 256,256,256
sinadd = 255,255,255,-500
invertall = 0
color = 256
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = var(56) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y > 0
value = 52
ctrl = 0

;-------------------------------<p2 jump down states>------------------------------------------
[Statedef 6660021]
type = a
movetype = i
physics = n

[state 0, ChangeAnim]
type = changeanim
trigger1 = time = 0
value = 44
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 400
time = 250
add = 0,0,0
mul = 256,256,256
sinadd = 255,255,255,-500
invertall = 0
color = 256
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = enemy,var(56) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, SelfState]
type = SelfState
trigger1 = Pos Y > 0
value = 52
ctrl = 0
;-------------------------------<p2 falling states>--------------------------------------------
[Statedef 5504060]
type = s
movetype = h
physics = n

[state 0, ChangeAnim2]
type = changeanim2
trigger1 = 1
value = 666001
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,1
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s110,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 5040, Velset]
type = Velset
trigger1 = enemy,var(56) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, SelfState]
type = SelfState
triggerall = enemy,var(56) >= 700
trigger1 = Pos Y > 0
value = 5110
ctrl = 0

;-----------------------------------------------
;Ground Level
;-----------------------------------------------
[Statedef 887700]
type = s
movetype = i

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, Explod];polls
type = Explod
trigger1 = time = 1 && !numexplod(8004)
anim = f8008
ID = 8004
pos = 259,288
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -3
shadow = 0,0,0
ownpal = 0
scale = .8,.8
bindtime = parent,time = -1

[State 0, ModifyExplod];polls
type = ModifyExplod
trigger1 = root,var(57) = 3
ID = 8004
pos = 259,288
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -2
shadow = 0,0,0
ownpal = 0
scale = .8,.8
vel = 0,-4
bindtime = parent,time = -1

[State 0, RemoveExplod];bridge
type = RemoveExplod
trigger1 = root,var(56) >= 550
ID = 8004

[State 0, Explod];ground
type = Explod
trigger1 = root,var(56) >= 600 && !numexplod(18000)
anim = f8000
ID = 18000
pos = 0,195;347;195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -3
shadow = 0,0,0
ownpal = 0
scale = .5,.5
bindtime = parent,time = -1

;-------------------------------<flame urn 1>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(56) >= 600
anim = f8001
pos = 100,194
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && roundno = 1
trigger2 = roundno >= 2
anim = f8002
pos = 100,154
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 2>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(56) >= 600
anim = f8001
pos = 300,190
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && roundno = 1
trigger2 = roundno >= 2
anim = f8002
pos = 300,150
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 3>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(56) >= 600
anim = f8001
pos = 500,196
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && roundno = 1
trigger2 = roundno >= 2
anim = f8002
pos = 500,156
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 1 front>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(56) >= 600
anim = f8001
pos = 20,294
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && roundno = 1
trigger2 = roundno >= 2
anim = f8002
pos = 20,254
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
scale = .6,.6
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 2 front>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(56) >= 600
anim = f8001
pos = 300,300
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && roundno = 1
trigger2 = roundno >= 2
anim = f8002
pos = 300,260
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
scale = .6,.6
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 3 front>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(56) >= 600
anim = f8001
pos = 570,294
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && roundno = 1
trigger2 = roundno >= 2
anim = f8002
pos = 570,254
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
scale = .6,.6
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, VarAdd]
type = VarAdd
triggerall = root,var(56) >= 700
trigger1 = 1
v = 1
value = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = root,var(56) >= 700 && root,pos y >= 0
trigger1 = root,roundstate = 2 && var(1) >= 150
trigger2 = roundno >= 2
value = f8000,1
volume = 0
loop = 1
channel = 4
persistent = 0

;-----------------------------------------------
;Meteor Shower
;-----------------------------------------------
[Statedef 887701]
type = s
movetype = i

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

;====================================<meteor shower mid>=====================================
[State 0, Explod];metor
type = Explod
trigger1 = (gametime%200) = 0 && !numexplod(8010)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 200
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 120,150
id = 8010

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%300) = 0 && !numexplod(8011)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 120,150
id = 8011

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%100) = 0 && !numexplod(8013)
anim = f8003
pos = 150,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 100
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 170,150
id = 8012

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%400) = 0 && !numexplod(8013)
anim = f8003
pos = 180,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 200,150
id = 8013
;====================================<meteor shower far>=====================================
[State 0, Explod];metor
type = Explod
trigger1 = (gametime%100) = 0 && !numexplod(8110)
anim = f8003
pos = -100,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -120,-150
id = 8110

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%200) = 0 && !numexplod(8111)
anim = f8003
pos = -100,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -120,-150
id = 8111

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%300) = 0 && !numexplod(8112)
anim = f8003
pos = -150,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -170,-150
id = 8112

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%400) = 0 && !numexplod(8113)
anim = f8003
pos = -180,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 400
sprpriority = -1
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -200,-150
id = 8113

;====================================<meteor shower front>=====================================
[State 0, Explod];metor
type = Explod
trigger1 = (gametime%200) = 0 && !numexplod(8210)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 200
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 120,150
id = 8210

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%300) = 0 && !numexplod(8211)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 120,150
id = 8211

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%100) = 0 && !numexplod(8213)
anim = f8003
pos = 150,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 100
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 170,150
id = 8212

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%400) = 0 && !numexplod(8213)
anim = f8003
pos = 180,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 200,150
id = 8213

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  ((gametime%100) = 0 || (gametime%200) = 0 || (gametime%300) = 0 || (gametime%400) = 0)
value = f8000,2
volume = 100
channel = -1
;=============================< Meteor Storm stage helper codes end>========================================
