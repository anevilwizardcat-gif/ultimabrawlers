[Defaults]
command.buffer.time = 1
;#region deep_buffering_FE.cds
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"			;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"			;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"	;Required (do not remove)
command = x+a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"			; REQUIRED for command buffering
command = a
time = 1

[Command]
name = "b"			; REQUIRED for command buffering
command = b
time = 1

[Command]
name = "c"			; REQUIRED for command buffering
command = c
time = 1

[Command]
name = "x"			; REQUIRED for command buffering
command = x
time = 1

[Command]
name = "y"			; REQUIRED for command buffering
command = y
time = 1

[Command]
name = "z"			; REQUIRED for command buffering
command = z
time = 1

[Command]
name = "start"		; REQUIRED for command buffering
command = s
time = 1

[Command]
name = "back"		; REQUIRED for command buffering
command = B
time = 1

[Command]
name = "fwd"		; REQUIRED for command buffering
command = F
time = 1

[Command]
name = "up"			; REQUIRED for command buffering
command = U
time = 1

[Command]
name = "down"		; REQUIRED for command buffering
command = D
time = 1

[Command]
name = "fwd2"		; REQUIRED for command buffering
command = $F
time = 1

[Command]
name = "back2"		; REQUIRED for command buffering
command = $B
time = 1

[Command]
name = "up2"		; REQUIRED for command buffering
command = $U
time = 1

[Command]
name = "down2"		; REQUIRED for command buffering
command = $D
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"		; REQUIRED for command buffering
command = /x
time = 1

[Command]
name = "hold_y"		; REQUIRED for command buffering
command = /y
time = 1

[Command]
name = "hold_z"		; REQUIRED for command buffering
command = /z
time = 1

[Command]
name = "hold_a"		; REQUIRED for command buffering
command = /a
time = 1

[Command]
name = "hold_b"		; REQUIRED for command buffering
command = /b
time = 1

[Command]
name = "hold_c"		; REQUIRED for command buffering
command = /c
time = 1

[Command]
name = "hold_start"	; REQUIRED for command buffering
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"	;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown"	;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback"	;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"		;Required (do not remove)
command = /$U
time = 1
;#endregion

;---------------------------------------------------------------------------
; 2. State entry
; --------------

[Statedef 69]
[State -2, 1]
type = ChangeState
trigger1 = !numHelper(201) || !SelfAnimExist(9001)
value = 69

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
; Parrying Voice
[State -2, PlaySnd]
type = Playsnd
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
value = S8,14
channel = 0

[State 710, Explod]; Parry spark
type = Explod
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
anim = 8360
;pos = ifElse(StateNo=720,49,ifElse(StateNo=710,56,49)),ifElse(StateNo=720,-21,ifElse(StateNo=710,-49,-77)) ;basic code
pos = ifElse(StateNo=710,56,49),ifElse(StateNo=720,-21,ifElse(StateNo=710,-49,-77))
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 15

;===========================================================================
[State -1, Link]
type = CtrlSet
triggerall = !Ctrl
trigger1 =	(StateNo = 52 || StateNo = 101 || StateNo = 106 || StateNo = 5120 || StateNo = 1305) && AnimTime = -1	;Land States
trigger2 =	(StateNo = [200,499]) && AnimTime = -1 && Anim != 300													;Standing and Crouching Basics
trigger3 = ((StateNo = 5201) || (StateNo = [900,999])) && Anim != 900 && StateNo != 960 && AnimTime = -1			;System States
trigger4 =	 StateNo = 2800 && AnimTime = -1																		;Counter Attacks
trigger5 =	(StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value= 1

[State -1, State Correction (Cancels, CC)]
type = VarSet
triggerall = (var(46) = [1000,2999]) && !var(30) && !ctrl
trigger1  = (stateNo = [1000,1999])
trigger1  = (var(46) != [1005,1035]) ; Felicia's exceptions
; Felicia's cancel corrections
trigger2 = StateNo = 200 && AnimElemTime(3) >= 0
trigger3 = StateNo = 205 && AnimElemTime(4) >= 0
trigger4 = StateNo = 210 && (AnimElemTime(4) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger5 = StateNo = 215 && (AnimElemTime(5) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger6 = StateNo = 220 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger7 = StateNo = 225 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger8 = StateNo = 230 && (AnimElemTime(4) >= 0 || ((PrevStateNo = [200,205]) || (PrevStateNo = 400)))
trigger9 = StateNo = 235 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,205]) || (PrevStateNo = 400)))
trigger10 = StateNo = 240 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger11 = StateNo = 245 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger12 = StateNo = 250 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger13 = StateNo = 255 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger14 = StateNo = 400 && AnimElemTime(3) >= 0
trigger15 = StateNo = 410 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger16 = StateNo = 415 && (AnimElemTime(4) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger17 = StateNo = 420 && (AnimElemTime(4) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger18 = StateNo = 430 && (AnimElemTime(4) >= 0 || ((PrevStateNo = [200,205]) || (PrevStateNo = 400)))
trigger19 = StateNo = 440 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
trigger20 = StateNo = 450 && (AnimElemTime(3) >= 0 || ((PrevStateNo = [200,255]) || (PrevStateNo = [400,450])))
v = 46
value = -1
ignorehitpause = 1

;==========================================================================;
;							   HUMAN COMMANDS							   ;
;==========================================================================;
;---------------------------------------------------------------------------
; Cancel Dark Force
[State -1, Cancel Dark Force]
type = ChangeState
value = 3505
triggerall = !AILevel
triggerall = StateType != A
triggerall = roundstate = 2
trigger1 = (var(0)&32) > 0
trigger1 = ctrl && !Var(3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Supers
[State -1, Supers]
type = ChangeState
value = var(46)
triggerall = var(46) = [3000,3500]
triggerall = Power >= 1000 && Var(30) <= 60
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && AnimElemTime(5) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger21 = var(46) = 3000 || var(46) = 3500
trigger21 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger22 = var(46) = 3000 || var(46) = 3500
trigger22 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
triggerall = !AILevel
triggerall = Power >= 1000
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&516) > 0 && (helper(10372), var(0)&8256) > 0
triggerall = !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = (var(0)&32) = 0
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Zero Counter
[State -1, Zero Counter]
type = ChangeState
value = 2800
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = numHelper(10372)
triggerall = (helper(10372), Var(59)&(2**2)) > 0
triggerall = (helper(10372), Var(0)&14448) > 0 || ((helper(10372), Var(2)&14448) > 0 && !Var(30))
triggerall = !Var(30)
trigger1 = Power >= 1000
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
[State -1, Aerial Custom Combo]
type = ChangeState
value = 975
triggerall = !AILevel
triggerall = Power >= 1000
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&516) > 0 && (helper(10372), var(0)&8256) > 0
triggerall = !Var(30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = (var(0)&32) = 0
trigger1 = ctrl
trigger2 = StateNo = 600 && Time < 2
trigger3 = StateNo = 610 && Time < 2
trigger4 = StateNo = 620 && Time < 2
trigger5 = StateNo = 630 && Time < 2
trigger6 = StateNo = 640 && Time < 2
trigger7 = StateNo = 650 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Pursuit Attack
[State -1, ES Pursuit Attack]
type = ChangeState
value = 960
triggerall = !Var(30)
triggerall = roundstate = 2
triggerall = Power >= 1000
triggerall = numHelper(10372)
triggerall = (helper(10372), var(4)&17) > 0
triggerall = StateType != A
triggerall = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
triggerall = (p2StateNo%10000) = 5050 || (p2StateNo%10000) = 5071 || ((p2StateNo%10000) = [5110,5111]) || ((p2StateNo%10000) = [5100,5101]) || ((p2StateNo = [834,835]) && p2MoveType = H) || p2StateNo = [3901,3910]
trigger1 = var(49) = 1
trigger1 = (var(22) := 1)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Pursuit Attack
[State -1, Pursuit Attack]
type = ChangeState
value = 960
triggerall = roundstate = 2
triggerall = NumHelper(10372)
triggerall = (helper(10372), var(4)&17) > 0
triggerall = StateType != A
triggerall = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
triggerall = (p2StateNo%10000) = 5050 || (p2StateNo%10000) = 5071 || ((p2StateNo%10000) = [5110,5111]) || ((p2StateNo%10000) = [5100,5101]) || ((p2StateNo = [834,835]) && p2MoveType = H) || p2StateNo = [3901,3910]
trigger1 = (helper(10372), Var(0)&15351) > 0 || ((helper(10372), Var(2)&15351) > 0 && !Var(30))
trigger1 = e||(var(22) := 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 102
triggerall = roundstate = 2
trigger1 = numHelper(10372)
trigger1 = (helper(10372), Var(59)&(2**30)) > 0
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = roundstate = 2
trigger1 = numHelper(10372)
trigger1 = (helper(10372), Var(59)&-2147483648) = -2147483648
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Fall Recovery (Air)
[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
triggerall = numHelper(10372)
triggerall = StateType = A && MoveType = H
triggerall = CanRecover
triggerall = RoundState = 2 && Alive
triggerall = vel y > 0 && pos y < -20
trigger1 = Var(49) = 1

;---------------------------------------------------------------------------
; Fall Recovery (Ground)
[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
triggerall = numHelper(10372)
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = GetHitVar(Fall.Recover)
triggerall = RoundState = 2 && Alive
triggerall = Vel y > 0 && Pos y >= -20
trigger1 = Var(49) = 1

;===========================================================================
;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = 301 + (((helper(10372), Var(4)&136) > 0) - ((helper(10372), Var(4)&68) > 0))
triggerall = !AILevel
triggerall = numHelper(10372)
triggerall = (helper(10372), var(0)&2064) > 0 && (helper(10372), var(0)&129) > 0
triggerall = StateType != A
triggerall = StateNo < 195 || PrevStateNo != 310
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time <= 2 && PrevStateNo != [200,450]
trigger3 = StateNo = 205 && Time <= 2 && PrevStateNo != [200,450]
trigger4 = StateNo = 210 && Time <= 2 && PrevStateNo != [200,450]
trigger5 = StateNo = 215 && Time <= 2 && PrevStateNo != [200,450]
trigger6 = StateNo = 220 && Time <= 2 && PrevStateNo != [200,450]
trigger7 = StateNo = 225 && Time <= 2 && PrevStateNo != [200,450]
trigger8 = StateNo = 230 && Time <= 2 && PrevStateNo != [200,450]
trigger9 = StateNo = 235 && Time <= 2 && PrevStateNo != [200,450]
trigger10 = StateNo = 240 && Time <= 2 && PrevStateNo != [200,450]
trigger11 = StateNo = 245 && Time <= 2 && PrevStateNo != [200,450]
trigger12 = StateNo = 250 && Time <= 2 && PrevStateNo != [200,450]
trigger13 = StateNo = 255 && Time <= 2 && PrevStateNo != [200,450]
trigger14 = StateNo = 260 && Time <= 2 && PrevStateNo != [200,450]
trigger15 = StateNo = 270 && Time <= 2 && PrevStateNo != [200,450]
trigger16 = StateNo = 280 && Time <= 2 && PrevStateNo != [200,450]
trigger17 = StateNo = 400 && Time <= 2 && PrevStateNo != [200,450]
trigger18 = (StateNo = 410 || StateNo = 415) && Time <= 2 && PrevStateNo != [200,450]
trigger19 = StateNo = 420 && Time <= 2 && PrevStateNo != [200,450]
trigger20 = StateNo = 430 && Time <= 2 && PrevStateNo != [200,450]
trigger21 = StateNo = 440 && Time <= 2 && PrevStateNo != [200,450]
trigger22 = StateNo = 450 && Time <= 2 && PrevStateNo != [200,450]
trigger23 = ((StateNo = [195,299]) || (StateNo = [400,450])) && MoveContact = 1 && Var(30)
trigger24 = (StateNo = [1000,1999]) && Var(30) && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Wall Cling (back)
[State -1, Wall Cling (back)]
type = ChangeState
value = 88
triggerall = StateNo != 5050 && Alive
triggerall = statetype = A
triggerall = ctrl
triggerall = StateNo = 50 && PrevStateNo != 840
triggerall = Pos Y < -40
triggerall = numHelper(10372)
trigger1 = backedgebodydist < 1
trigger1 = (helper(10372), Var(3)&68) != 0											; COMMAND = "B"
ignorehitpause = 0

;---------------------------------------------------------------------------
; Wall Cling (forward)
[State -1, Wall Cling (forward)]
type = ChangeState
value = 89
triggerall = StateNo != 5050 && Alive
triggerall = statetype = A
triggerall = ctrl
triggerall = StateNo = 50 && PrevStateNo != 845
triggerall = Pos Y < -40
trigger1 = frontedgebodydist < 1
trigger1 = (helper(10372), Var(3)&136) != 0											; COMMAND = "F"
ignorehitpause = 0

;---------------------------------------------------------------------------
; Extra Specials
[State -1, Extra Specials]
type = ChangeState
value = Var(46)
triggerall = !AILevel
triggerall = !IsHelper
triggerall = roundstate = [2,3]
triggerall = (var(46) = [2000,2999])
triggerall = statetype != A
trigger1  = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2  = StateNo = 200 && AnimElemTime(3) < 0
trigger3  = StateNo = 205 && AnimElemTime(4) < 0
trigger4  = StateNo = 210 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5  = StateNo = 215 && AnimElemTime(5) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6  = StateNo = 220 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7  = StateNo = 225 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8  = StateNo = 230 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9  = StateNo = 235 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger21 = StateNo = 2000 && (Var(46) = [2010,2030])
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = !Var(30)
triggerall = RoundState = 2
triggerall = numHelper(10372)
triggerall = Power < PowerMax
triggerall = (helper(10372), var(0)&258) > 0 && (helper(10372), var(0)&4128) > 0
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && AnimElemTime(5) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger21 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger22 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Specials
[State -1, Specials]
type = ChangeState
value = Var(46)
triggerall = !AILevel
triggerall = !IsHelper
triggerall = roundstate = [2,3]
triggerall = var(46) = 195 || (var(46) = [1000,1999])
triggerall = statetype != A
trigger1  = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2  = StateNo = 200 && AnimElemTime(3) < 0
trigger3  = StateNo = 205 && AnimElemTime(4) < 0
trigger4  = StateNo = 210 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5  = StateNo = 215 && AnimElemTime(5) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6  = StateNo = 220 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7  = StateNo = 225 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8  = StateNo = 230 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9  = StateNo = 235 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && AnimElemTime(4) < 0 && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && AnimElemTime(3) < 0 && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger21 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger22 = (StateNo = [1000,1499]) && Var(50) && Var(30)
trigger23 = StateNo = 1000 && (Var(46) = [1005,1035])
trigger24 = StateNo = 1400 && Var(46) = 1405

;---------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 830
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = NumHelper(10372)
triggerall = (helper(10372), var(4)&204) > 0
triggerall = (helper(10372), var(0)&112) > 0 || (helper(10372), var(0)&14336) > 0
triggerall = (helper(10372), var(0)&112) != 16 && (helper(10372), var(0)&112) != 32 && (helper(10372), var(0)&112) != 64
triggerall = (helper(10372), var(0)&14336) != 2048 && (helper(10372), var(0)&14336) != 4096 && (helper(10372), var(0)&14336) != 8192
triggerall = statetype = S
trigger1 = ctrl && stateNo != 100
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = NumHelper(10372)
triggerall = (helper(10372), var(4)&204) > 0
triggerall = (helper(10372), var(0)&7) > 0 || (helper(10372), var(0)&896) > 0
triggerall = (helper(10372), var(0)&7) != 1 && (helper(10372), var(0)&7) != 2 && (helper(10372), var(0)&7) != 4
triggerall = (helper(10372), var(0)&896) != 128 && (helper(10372), var(0)&896) != 256 && (helper(10372), var(0)&896) != 512
triggerall = statetype = S
trigger1 = ctrl && stateNo != 100
ignorehitpause = 0

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = roundstate = 2
triggerall = NumHelper(10372)
triggerall = helper(10372), var(4) > 0
triggerall = (helper(10372), var(0)&7) > 0 || (helper(10372), var(0)&896) > 0
triggerall = (helper(10372), var(0)&7) != 1 && (helper(10372), var(0)&7) != 2 && (helper(10372), var(0)&7) != 4
triggerall = (helper(10372), var(0)&896) != 128 && (helper(10372), var(0)&896) != 256 && (helper(10372), var(0)&896) != 512
triggerall = statetype = A
trigger1 = ctrl
trigger2 = time = 0 && StateNo = [600,650]
ignorehitpause = 0

;---------------------------------------------------------------------------
; State Correction
[State -1, State Correction]
type = VarSet
triggerall = numHelper(10372)
trigger1 = Var(46) = [600,699]
trigger1 = stateType != A
v = 46
value = Var(46)-cond((helper(10372), var(4)&32) != 0, 200, 400)
ignorehitpause = 1

;---------------------------------------------------------------------------
; State Correction (Supers)
[State -1, State Correction (Supers, ES)]
type = VarSet
trigger1 = (Var(46) = [2000,2999]) || Var(46) = 3000 || Var(46) = 3500
trigger1 = Power < 1000
trigger2 = Var(46) = 3100
trigger2 = Power < 3000
v = 46
value = -1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Basics
[State -1, Basics]
type = ChangeState
value = Var(46)
triggerall = !AILevel
triggerall = !IsHelper
triggerall = roundstate = [2,3]
triggerall = StateNo != [800,899]
triggerall = StateNo != 300
triggerall = MoveType != H
trigger1 = Var(46) = [200,299]
trigger2 = Var(46) = [400,499]
trigger3 = Var(46) = [600,699]
ignorehitpause = 0

;==========================================================================;
;								AI COMMANDS 							   ;
;==========================================================================;
;---------------------------------------------------------------------------
; AI Movement
[State -1, AI Walk]
type = ChangeState
triggerall = AILevel
triggerall = StateType != A
triggerall = Ctrl
triggerall = !InGuardDist
triggerall = StateNo != [10,12]
triggerall = PrevStateNo != [10,12]
triggerall = StateNo != 20
triggerall = PrevStateNo != 20
triggerall = StateNo != 21
triggerall = PrevStateNo != 21
triggerall = StateNo != [120,159]
triggerall = PrevStateNo != [120,159]
triggerall = Random%5 <= 2
trigger1 = P2BodyDist X < 25 || P2BodyDist x > 45
value = 21

[State -1, AI Avoid Throws] ; Thanks, Warusaki!
type = ChangeState
value = 40
triggerall = AILevel
triggerall = RoundState = 2
triggerall = InGuardDist || P2bodydist X = [-60,120]
triggerall = ctrl || StateNo = 21 || StateNo = 21
triggerall = StateType != A
triggerall = StateNo != 40
trigger1 = EnemyNear, HitDefAttr = SC, NT,ST,HT
	trigger1 = Random <= 300+AILevel*50

[State -1, AI Guard] ; Thanks, Warusaki and Kamekaze!
type = ChangeState
value = 120
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (StateNo != [120,155]) && (StateNo != [700,720])
triggerall = ctrl
triggerall = !Var(30)
triggerall = InGuardDist
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0
trigger2 = EnemyNear, HitDefAttr = SCA, NA,SA,HA 
	trigger2 = Random < (110*AILevel)

;---------------------------------------------------------------------------
; AI Please Help Me!
[State -1, AI Please Help Me!]
type = ChangeState
value = 3100
triggerall = AILevel
triggerall = Power >= 3000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2MoveType = A
triggerall = P2BodyDist Y = [-64,0]
triggerall = (P2StateNo != [200,205]) && (P2StateNo != [230,235])
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random = [0,150+AILevel*5]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Dancing Flash
[State -1, AI Dancing Flash]
type = ChangeState
value = 3000
triggerall = AILevel
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType != L
triggerall = EnemyNear(0), Vel Y >= 0
triggerall = P2BodyDist Y = [-16,0] ; AI About to land
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = P2MoveType = A
	trigger1 = (Random = [190,350+AILevel*20]) || (Var(30) = [1,15])
trigger2 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger2 = P2BodyDist X = [0,(60-Const(Size.Ground.Front))*Const(Size.XScale)]
	trigger2 = Random%12 = [0,AILevel-8*((var(5)&16)>0)]
trigger3 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger3 = P2BodyDist X = [0,(60-Const(Size.Ground.Front))*Const(Size.XScale)]
	trigger3 = Random%12 = [0,AILevel-8*((var(5)&16)>0)]
trigger4 = StateNo = 225 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger4 = P2BodyDist X = [0,(60-Const(Size.Ground.Front))*Const(Size.XScale)]
trigger5 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = P2BodyDist X = [0,(60-Const(Size.Ground.Front))*Const(Size.XScale)]
	trigger5 = Random%12 = [0,AILevel-8*((var(5)&16)>0)]
trigger6 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = P2BodyDist X = [0,(60-Const(Size.Ground.Front))*Const(Size.XScale)]
	trigger6 = Random%12 = [0,AILevel-8*((var(5)&16)>0)]
trigger7 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = P2BodyDist X = [0,(60-Const(Size.Ground.Front))*Const(Size.XScale)]
	trigger7 = Random%12 = [0,AILevel-8*((var(5)&16)>0)]
trigger8 = StateNo = 1200 && MoveContact = 1 && (Var(30) = [1,15])
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Power Charge
[State -1, AI Power Charge] ; Thanks Warusaki!
type = ChangeState
value = 900
triggerall = AILevel
triggerall = roundstate = 2
triggerall = Power < 3000
triggerall = !Var(30)
triggerall = statetype != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101

trigger1 = P2BodyDist X >= 150 && (Random = [600,650])

trigger2 = teammode = single && P2BodyDist X >= 180 && P2StateType = L
	trigger2 = Random = [200,480]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Custom Combo
[State -1, AI Standing Custom Combo]
type = ChangeState
value = 970
triggerall = AILevel
triggerall = Power >= 1000
triggerall = !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A

trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2StateType = S || P2StateType = C
;trigger1 = P2MoveType = A
	trigger1 = Random <= 200

trigger2 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = P2BodyDist X = [0,30]
trigger2 = P2BodyDist Y = [-50,-30]
trigger2 = P2StateType = A
trigger2 = P2MoveType = A
	trigger2 = Random <= 200

trigger3 = ctrl || StateNo = 21 || StateNo = 21 || (StateNo = 100 && animelemtime(2) > 1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger3 = P2BodyDist X = [0,35]
trigger3 = P2BodyDist Y = [-50,-25]
trigger3 = P2StateNo = [5000,5070]
trigger3 = P2StateNo != 5040
trigger3 = P2MoveType = H
trigger3 = !NumTarget
	trigger3 = Random < (AILevel+1)*90

trigger4 = ctrl
trigger4 = P2BodyDist X = [0,16]
trigger4 = P2BodyDist Y = [-56,-30] 
trigger4 = P2StateNo = [5000,5070]
trigger4 = P2StateNo != 5040
trigger4 = P2MoveType = H
trigger4 = Random < (AILevel+1)*111

ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Pursuit Attack
[State -1, AI Pursuit Attack]
type = ChangeState
value = 960
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
triggerall = p2StateNo = 5071 || p2StateNo = 5110 || p2StateNo = 5101 || (p2StateNo = 888 && p2MoveType = H) || p2StateNo = [3901,3910]
triggerall = P2BodyDist X > 84 || P2BodyDist X <= 24
trigger1 = Random = [800,860+AILevel*8]
trigger1 = e||(var(22) := ifElse(P2Life >= 112 && Power >= 1000, 1, 0))
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Zero Counter
[State -1, AI Zero Counter]
type = ChangeState
value = 2800
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
triggerall = Power >= 1000
trigger1 = !EnemyNear, ctrl && P2BodyDist X <= 20 && Random <= 18-AILevel
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Aerial Custom Combo
;
; DON'T
;

;---------------------------------------------------------------------------
; AI Dash Fwd
[State -1, AI Dash Fwd]
type = ChangeState
value = 102
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = P2MoveType != A
triggerall = ctrl || (StateNo = 21 && Anim = 20)
triggerall = !(Var(30) && NumTarget)
trigger1 = P2BodyDist X = [120,200]
	trigger1 = Random = [300,316+AILevel*3]
trigger2 = P2bodydist X > 200
	trigger2 = Random = [350,410+AILevel*5]
trigger3 = !((Var(25)&2)>0)
trigger3 = Enemy, NumProj > 0 || EnemyNear, HitDefAttr = SCA,AP
trigger3 = P2BodyDist X > 58
	trigger3 = Random%(5-((Var(25)&8)>0)-((Var(25)&32)>0)-((Var(25)&128)>0)) = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Dash Back
[State -1, AI Dash Back]
type = ChangeState
value = 105
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = ctrl || (StateNo = 21 && Anim = 21)
triggerall = !(Var(30) && NumTarget)
triggerall = BackEdgeDist > 60
trigger1 = P2BodyDist X <= 60 && P2MoveType != A
	trigger1 = Random = [460,474+AILevel*2]
trigger2 = P2bodydist X <= 40 && P2StateType = L
	trigger2 = Random = [491,504+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Fall Recovery (Air)
[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
triggerall = numHelper(10372)
triggerall = StateType = A && MoveType = H
triggerall = CanRecover
triggerall = RoundState = 2 && Alive
triggerall = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Fall Recovery (Ground)
[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
triggerall = numHelper(10372)
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = GetHitVar(Fall.Recover)
triggerall = RoundState = 2 && Alive
triggerall = Vel y > 0 && Pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

;===========================================================================
;---------------------------------------------------------------------------
; AI Taunt
[State -1, AI Taunt]
type = null;ChangeState
value = 195
triggerall = AILevel
triggerall = numHelper(10372)
triggerall = helper(10372), var(6) = [1,2]
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger7 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger8 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger9 = StateNo = 400 && AnimElemTime(3) < 0
trigger10 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger13 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = (StateNo = [1000,1020]) && Var(50) && Var(30)
trigger15 = (StateNo = [1100,1120]) && Var(50) && Var(30)
trigger16 = (StateNo != 220 && StateNo != 255) || (StateNo = 220 && AnimElemTime(6)>=0)
trigger16 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger17 = (StateNo = [1000,1499]) && Var(50) && Var(30) ;&& MoveContact
trigger18 = (StateNo = [3000,3099]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Roll/Dodge
[State -1, AI Roll/Dodge]
type = ChangeState
value = IfElse(Random%6 < 2,301,ifElse((EnemyNear, Vel X >= 0), 302, 300))
triggerall = AILevel
triggerall = EnemyNear, HitDefAttr != SCA,NT,ST,HT
triggerall = StateType != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = !(Var(30) && numtarget)
trigger1 = P2bodydist X >= 150
	trigger1 = Random <= AILevel+2
trigger2 = P2BodyDist X <= 150
trigger2 = P2MoveType = I
	trigger2 = Random = [240,241+(AILevel/2)]
trigger3 = P2BodyDist X <= 150
trigger3 = P2MoveType = A
	trigger3 = Random = [430,432+AILevel]
trigger4 = EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0
	trigger4 = Random%(5-((Var(25)&2)>0)-((Var(25)&8)>0)-((Var(25)&32)>0)-((Var(25)&128)>0)) = 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Wall Cling (back)
[State -1, AI Wall Cling (back)]
type = ChangeState
value = 88
triggerall = AILevel
triggerall = StateNo != 5050 && Alive
triggerall = statetype = A
triggerall = ctrl
triggerall = StateNo = 50 && PrevStateNo != 840
triggerall = Pos Y < -40
trigger1 = backedgebodydist < 1
	trigger1 = Random%83 = [14,32]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Wall Cling (forward)
[State -1, AI Wall Cling (forward)]
type = ChangeState
value = 89
triggerall = AILevel
triggerall = StateNo != 5050 && Alive
triggerall = statetype = A
triggerall = ctrl
triggerall = StateNo = 50 && PrevStateNo != 845
triggerall = Pos Y < -40
trigger1 = frontedgebodydist < 1
	trigger1 = Random%83 = [14,32]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Hellcat
[State -1, AI Hellcat]
type = ChangeState
value = ifElse(Power >= 1000 && !Var(30), 2500, 1500)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType = S || P2StateType = C
triggerall = P2StateNo != [120,155]
triggerall = !Var(30)
triggerall = P2BodyDist X = [0,ceil(88*Const(Size.XScale))-Const(Size.Ground.Front))
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random < 111*AILevel
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Cat Spike (Light)
[State -1, AI Cat Spike (Light)]
type = ChangeState
value = 1200
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(122*Const(Size.XScale))-Const(Size.Ground.Front)]
trigger1 = (StateNo = 200 || StateNo = 205 || StateNo = 400) && MoveHit = 1 && Var(51) > 1
	trigger1 = Random%4 = [0,2]
trigger2 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger2 = Random%12 = 1
trigger3 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger3 = Random%12 = 1
trigger4 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger4 = Random%12 = 1
trigger5 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger5 = Random%12 = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Cat Spike (Medium)
[State -1, AI Cat Spike (Medium)]
type = ChangeState
value = 1210
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(122*Const(Size.XScale))-Const(Size.Ground.Front)]
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random < 50+100*P2StateType=C
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 400) && MoveHit = 1 && Var(51) > 1
	trigger2 = Random%4 = 3 && P2StateType = C && (P2StateNo = [120,155])
trigger3 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger3 = Random%12 = [2,2+3*(P2StateType=C && (P2StateNo = [120,155]))]
trigger4 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger4 = Random%12 = [2,2+3*(P2StateType=C && (P2StateNo = [120,155]))]
trigger5 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger5 = Random%12 = [2,2+3*(P2StateType=C && (P2StateNo = [120,155]))]
trigger6 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger6 = Random%12 = [2,2+3*(P2StateType=C && (P2StateNo = [120,155]))]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Cat Spike (Heavy)
[State -1, AI Cat Spike (Heavy)]
type = ChangeState
value = ifElse(Power >= 1000 && (Random%256) = 123 && !Var(30), 2200, 1220)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !((Var(25)&128)>0)
triggerall = P2StateType != L
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0
	trigger1 = Random%(5-((Var(25)&2)>0)-((Var(25)&8)>0)-((Var(25)&32)>0)) = 4-((Var(25)&2)>0)-((Var(25)&8)>0)-((Var(25)&32)>0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Delta Kick
[State -1, AI Delta Kick]
type = ChangeState
value = ifElse(Power >= 1000 && P2StateType != A && !Var(30), 2300, 1300)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType != L
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = P2BodyDist X = [-24,64]
trigger1 = (P2BodyDist Y = [-96,-24]) || (Power >= 1000 && P2StateType != A)
	trigger1 = Random < (90-60*(P2StateType != A))*AILevel
trigger2 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger2 = Random%12 = [6,9]
trigger3 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger3 = Random%12 = [6,9]
trigger4 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger4 = Random%12 = [6,9]
trigger5 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger5 = Random%12 = [6,9]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Rolling Buckler
[State -1, AI Rolling Buckler]
type = ChangeState
value = ifElse(Power >= 1000 && ((Random%64) = [45,63]) && !Var(30), 2000, 1000)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = !((var(25)&8)>0) && (EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0)
	trigger1 = Random%(5-((Var(25)&2)>0)-((Var(25)&32)>0)-((Var(25)&128)>0)) = 2-((Var(25)&2)>0)
trigger2 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger2 = Random%12 = 10
trigger3 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger3 = Random%12 = 10
trigger4 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger4 = Random%12 = 10
trigger5 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger5 = Random%12 = 10
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Rolling Scratch
[State -1, AI Rolling Scratch]
type = ChangeState
value = ifElse(Power >= 1000 && ((Random%64) = [45,63]) && !Var(30), 2400, 1400)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP || Enemy, NumProj > 0
	trigger1 = Random%(5-((Var(25)&2)>0)-((Var(25)&8)>0)-((Var(25)&128)>0)) = 3-((Var(25)&2)>0)-((Var(25)&8)>0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Sand Splash
[State -1, AI Sand Splash]
type = ChangeState
value = ifElse(Power >= 1000 && ((Random%64) = [12,63]) && !Var(30), 2100, 1100)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP || Enemy, NumProj = 1
	trigger1 = Random < 150
trigger2 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger2 = Random%12 = 11
trigger3 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger3 = Random%12 = 11
trigger4 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger4 = Random%12 = 11
trigger5 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
	trigger5 = Random%12 = 11
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Toy Touch
[State -1, AI Toy Touch]
type = ChangeState
value = ifElse(Power >= 1000 && !Var(30) && P2Life >= 84, 2600, 1600)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = P2BodyDist X = [64,84]
triggerall = P2BodyDist Y = [-32,0]
triggerall = StateType != A
triggerall = p2StateNo = 5071 || p2StateNo = 5110 || p2StateNo = 5101 || (p2StateNo = 888 && p2MoveType = H) || p2StateNo = [3901,3910]
trigger1 = ctrl
	trigger1 = (Random%94) = [32,89]

;---------------------------------------------------------------------------
; AI Sliding Kick/Rolling Uppercut
[State -1, AI Sliding Kick/Rolling Uppercut]
type = ChangeState
triggerall = AILevel
triggerall = StateNo = 1000
trigger1 = (Anim = [1003,1005]) && MoveContact = 1
value = ifElse((target, StateType = S && MoveGuarded = 1), 1035, 1025)

;---------------------------------------------------------------------------
; AI Neko Punch/Rolling Uppercut
[State -1, AI Neko Punch/Rolling Uppercut]
type = ChangeState
triggerall = AILevel
triggerall = StateNo = 1000
triggerall = (Anim = [1003,1005])
trigger1 = Var(11) = [1,2]
	trigger1 = (Random%4 = 0)
trigger2 = P2StateType = A
trigger2 = P2BodyDist X <= 48 && P2BodyDist Y < -56
value = ifElse(Random%5=3, 1005, 1015)

;---------------------------------------------------------------------------
; AI Throw 1
[State -1, AI Throw 1]
type = ChangeState
value = ifElse(GameTime%4=0,800,830)
triggerall = AILevel
triggerall = statetype = S
triggerall = ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X = [-22,22]
triggerall = roundstate = 2
triggerall = !Var(30)
trigger1 = P2StateType = S || P2StateType = C
	trigger1 = Random <= 100+AILevel*50
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Air Throw
[State -1, AI Air Throw]
type = ChangeState
value = 860
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = P2BodyDist X <= 35-Const(Size.Ground.Front)
triggerall = P2BodyDist Y = [-36,-enemynear,const(size.head.pos.y)-36]
trigger1 = p2statetype = A
	trigger1 = Random < 125*AILevel
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Light Punch
[State -1, AI Stand Light Punch]
type = ChangeState
value = ifElse((P2BodyDist X = [-10,10]),205,200)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [0,ceil(94*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = P2StateType = S
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random < 100
trigger2 = ((StateNo = [200,205]) || StateNo = 400) && Time > 4
	trigger2 = Var(51) < 1 && Random = [0,10]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Medium Punch (zoning)
[State -1, AI Stand Medium Punch (zoning)]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X > ceil(80*Const(Size.XScale))-Const(Size.Ground.Front)
triggerall = P2BodyDist X < 105
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [200,220+8*AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Medium Punch
[State -1, AI Stand Medium Punch]
type = ChangeState
value = ifElse((P2BodyDist X = [-10,10]), 215, 210)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(98*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&2)
trigger1 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&520)
trigger2 = (StateNo = [230,235]) && MoveContact = 1
trigger3 = StateNo = 400 && MoveContact = 1 && !(var(24)&520)
trigger4 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Strong Punch (zoning)
[State -1, AI Stand Strong Punch (zoning)]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X > ceil(74*Const(Size.XScale))-Const(Size.Ground.Front)
triggerall = P2BodyDist X < 110
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2MoveType = A
	trigger1 = Random = [300,350+5*AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Strong Punch
[State -1, AI Stand Strong Punch]
type = ChangeState
value = ifElse((P2BodyDist X = [-10,10]),225,220)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(107*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&4)
trigger1 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&1690)
trigger2 = (StateNo = [210,215]) && MoveContact = 1 && !(var(24)&1040)
trigger3 = (StateNo = [230,235]) && MoveContact = 1 && !(var(24)&1170)
trigger4 = (StateNo = [240,245]) && MoveContact = 1 && PrevStateNo != 310
trigger5 = StateNo = 400 && MoveContact = 1 && !(var(24)&1690)
trigger6 = (StateNo = 410 || (StateNo = 415 && AnimElemTime(4) < 0)) && MoveContact = 1 && !(var(24)&1040)
trigger7 = StateNo = 430 && MoveContact = 1 && !(var(24)&1170)
trigger8 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Dodge Attack (P)
[State -1, AI Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateNo = 310 && Time = [15,25]
trigger1 = Random < 150+50*AILevel

;---------------------------------------------------------------------------
; AI Standing Light Kick
[State -1, AI Stand Light Kick]
type = ChangeState
value = ifElse((P2BodyDist X = [-10,10]),235,230)
triggerall = AILevel
triggerall = P2BodyDist X = [-10,10]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(94*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&8)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [600,615+5*AILevel]
trigger2 = (StateNo = [200,205]) && Time > 4
trigger3 = (StateNo = [230,235]) && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [200,205]) && MoveContact = 1
trigger7 = StateNo = 400 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Standing Medium Kick
[State -1, AI Standing Medium Kick]
type = ChangeState
value = ifElse((P2BodyDist X = [-10,10]),245,240)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(114*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2StateType = A
	trigger1 = Random = [655,684+2*AILevel]
trigger2 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&138)
trigger3 = (StateNo = [210,215]) && MoveContact = 1
trigger4 = (StateNo = [230,235]) && MoveContact = 1 && !(var(24)&130)
trigger5 = StateNo = 400 && MoveContact = 1 && !(var(24)&138)
trigger6 = (StateNo = 410 || (StateNo = 415 && AnimElemTime(4) < 0)) && MoveContact = 1
trigger7 = StateNo = 430 && MoveContact = 1 && !(var(24)&130)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Dodge Attack (K)
[State -1, AI Dodge Attack (K)]
type = ChangeState
value = 245
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateNo = 310 && Time = [15,25]
trigger1 = Random = [550,555+7*AILevel]

;---------------------------------------------------------------------------
; AI Standing Strong Kick
[State -1, AI Standing Strong Kick]
type = ChangeState
value = ifElse((P2BodyDist X = [-10,10]),255,250)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(188*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&32)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2BodyDist X > ceil(159*Const(Size.XScale))-Const(Size.Ground.Front)
	trigger1 = Random < 150+25*AILevel
trigger2 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&1950)
trigger3 = (StateNo = [210,215]) && MoveContact = 1 && !(var(24)&1300)
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = (StateNo = [230,235]) && MoveContact = 1 && !(var(24)&1430)
trigger6 = (StateNo = [240,245]) && MoveContact = 1 && !(var(24)&260) && PrevStateNo != 310
trigger7 = StateNo = 225 && MoveContact = 1 && AnimElemTime(5) < 0
trigger8 = StateNo = 400 && MoveContact = 1 && !(var(24)&1950)
trigger9 = (StateNo = 410 || (StateNo = 415 && AnimElemTime(4) < 0)) && MoveContact = 1 && !(var(24)&1300)
trigger10 = StateNo = 430 && MoveContact = 1 && !(var(24)&1430)
trigger11 = StateNo = 440 && MoveContact = 1 && !(var(24)&260)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Light Punch
[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(67*Const(Size.XScale))-Const(Size.Ground.Front)]
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [100,300+300*(P2BodyDist X < 48)]
trigger2 = ((StateNo = [200,205]) || StateNo = 400) && Time > 4
	trigger2 = Var(51) < 1 && Random = [0,10]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Medium Punch (VH)
[State -1, AI Crouching Medium Punch (VH)]
type = null;ChangeState
value = 415
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 230 && MoveContact = 1
trigger4 = StateNo = 205 && MoveContact = 1
trigger5 = StateNo = 235 && MoveContact = 1
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 430 && MoveContact = 1
trigger8 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(50) && Var(30)
trigger9 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Medium Punch (VS)
[State -1, AI Crouching Medium Punch (VS)]
type = ChangeState
value = 410
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(92*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&128)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&520)
trigger3 = (StateNo = [230,235]) && MoveContact = 1
trigger4 = StateNo = 400 && MoveContact = 1 && !(var(24)&520)
trigger5 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Strong Punch
[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(50*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&256)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&1690)
trigger3 = (StateNo = [210,215]) && MoveContact = 1 && !(var(24)&1040)
trigger4 = (StateNo = [230,235]) && MoveContact = 1 && !(var(24)&1170)
trigger5 = (StateNo = [240,245]) && MoveContact = 1 && PrevStateNo != 310
trigger6 = StateNo = 400 && MoveContact = 1 && !(var(24)&1690)
trigger7 = (StateNo = 410 || (StateNo = 415 && AnimElemTime(4) < 0)) && MoveContact = 1 && !(var(24)&1040)
trigger8 = StateNo = 430 && MoveContact = 1 && !(var(24)&1170)
trigger9 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Light Kick
[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = (var(24)&512)
triggerall = P2BodyDist X = [0,ceil(80*Const(Size.XScale))-Const(Size.Ground.Front)]
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 4
trigger3 = (StateNo = [230,235]) && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [200,205]) && MoveContact = 1
trigger7 = StateNo = 400 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Medium Kick
[State -1, AI Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = (var(24)&1024)
triggerall = P2BodyDist X = [0,ceil(93*Const(Size.XScale))-Const(Size.Ground.Front)]
trigger1 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&650)
trigger2 = (StateNo = [210,215]) && MoveContact = 1
trigger3 = (StateNo = [230,235]) && MoveContact = 1 && !(var(24)&130)
trigger4 = StateNo = 400 && MoveContact = 1 && !(var(24)&650)
trigger5 = (StateNo = 410 || (StateNo = 415 && AnimElemTime(4) < 0)) && MoveContact = 1
trigger6 = StateNo = 430 && MoveContact = 1 && !(var(24)&130)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Strong Kick
[State -1, AI Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,ceil(140*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = (var(24)&2048)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2StateType = S
	trigger1 = Random%(13-AILevel) = 4
trigger2 = (StateNo = [200,205]) && MoveContact = 1 && !(var(24)&1950)
trigger3 = (StateNo = [210,215]) && MoveContact = 1 && !(var(24)&1300)
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = (StateNo = [230,235]) && MoveContact = 1 && !(var(24)&1430)
trigger6 = (StateNo = [240,245]) && MoveContact = 1 && !(var(24)&260) && PrevStateNo != 310
trigger7 = StateNo = 225 && MoveContact = 1 && AnimElemTime(5) < 0
trigger8 = StateNo = 400 && MoveContact = 1 && !(var(24)&1950)
trigger9 = (StateNo = 410 || (StateNo = 415 && AnimElemTime(4) < 0)) && MoveContact = 1 && !(var(24)&1300)
trigger10 = StateNo = 430 && MoveContact = 1 && !(var(24)&1430)
trigger11 = StateNo = 440 && MoveContact = 1 && !(var(24)&260)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = P2StateType = A
triggerall = ctrl
trigger1 = P2BodyDist X = [0,52-Const(Size.Ground.Front)]
trigger1 = P2BodyDist Y = [-16,32]
	trigger1 = Random < 120+AILevel*8
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Medium Punch
;
; DON'T

;---------------------------------------------------------------------------
; AI Jump Strong Punch
[State -1, AI Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = P2BodyDist X = [0,28-Const(Size.Ground.Front)]
trigger1 = P2BodyDist Y = [0,64]
	trigger1 = Random = [185,225]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Light Kick
[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,64-Const(Size.Ground.Front)]
trigger1 = P2BodyDist Y = [-8,56]
	trigger1 = Random = [225,245]
trigger2 = MoveContact = 1 && StateNo = 600
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Medium Kick
[State -1, AI Jump Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,82-Const(Size.Ground.Front)]
trigger1 = P2BodyDist Y = [0,56]
	trigger1 = Random = [185,225]
trigger2 = MoveContact = 1 && StateNo = 630
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Strong Kick
[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,98-Const(Size.Ground.Front)]
trigger1 = P2BodyDist Y = [0,64]
	trigger1 = Random = [245,345]
trigger2 = MoveContact = 1 && StateNo = 640
ignorehitpause = 0

;#region basic_movement.cds
;---------------------------------------------------------------------------
; BASIC MOVEMENT (Human)
[State -1, Buffered Movement]
type = ChangeState
triggerall = numHelper(10372)
triggerall = !IsHelper
triggerall = roundstate = [2,3]
triggerall = StateNo != 40 && StateNo != 21
triggerall = (stateNo != [190,194]) && (stateNo != [196,199])
;triggerall = !AILevel
trigger1 = statetype != A && statetype != L
trigger1 = Ctrl && cond(StateNo = 52, (helper(10372), var(4)&255) != 0, (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720]))
trigger2 = stateNo = 60 && (helper(10372), var(4)&51) != 0
value = cond((helper(10372), Var(4)&34) != 0, cond(stateNo = 60, 40, 11), cond((helper(10372), var(4)&17) != 0, 40, cond((helper(10372), Var(4)&204) != 0, 20, cond((StateNo = [11,12]) && (helper(10372), Var(4)&34) = 0, 12, 0))))	; cond(COMMAND = "/D", 11, cond(COMMAND = "/U", 40, cond(COMMAND = "/F" || COMMAND = "/B", 20, 0)))
;#endregion

[State -2, 1]
type = ChangeState
trigger1 = !numHelper(201) || !SelfAnimExist(9001)
value = 69
[Statedef 69]
[State -2, 1]
type = ChangeState
trigger1 = !numHelper(201) || !SelfAnimExist(9001)
value = 69