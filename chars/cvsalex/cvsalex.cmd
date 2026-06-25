; The CMD file. Don't fuck with any of this.
;
; REQUIRED.
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[Defaults]
command.buffer.time = 1
;#region cvs2_common.cmd
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D,$U
time = 10

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
command = x+a
time = 1

[Command]
name = "MAX"
command = z+c
time = 10

[Command]
name = "cancel"
command = y+b
time = 10

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

[Command]
name = "back"     ; REQUIRED for command buffering
command = B
time = 1

[Command]
name = "fwd"      ; REQUIRED for command buffering
command = F
time = 1

[Command]
name = "up"       ; REQUIRED for command buffering
command = U
time = 1

[Command]
name = "down"     ; REQUIRED for command buffering
command = D
time = 1

[Command]
name = "downback" ; REQUIRED for command buffering
command = DB
time = 1

[Command]
name = "downfwd"  ; REQUIRED for command buffering
command = DF
time = 1

[Command]
name = "fwd2"     ; REQUIRED for command buffering
command = $F
time = 1

[Command]
name = "back2"    ; REQUIRED for command buffering
command = $B
time = 1

[Command]
name = "up2"
command = $U      ; REQUIRED for command buffering
time = 1

[Command]
name = "down2"    ; REQUIRED for command buffering
command = $D
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
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdfwd_r" ; Raw hold forward (REQUIRED for command buffering)
command = /F
time = 1
[Command]
name = "holddown_r" ; Raw hold forward (REQUIRED for command buffering)
command = /D
time = 1
[Command]
name = "holdback_r" ; Raw hold forward (REQUIRED for command buffering)
command = /B
time = 1
[Command]
name = "holdup_r" ; Raw hold forward (REQUIRED for command buffering)
command = /U
time = 1

;-| Release Dir |-----------------------------------------------------------
[Command]
name = "release_fwd"
command = ~F
time = 1

[Command]
name = "release_down"
command = ~D
time = 1

[Command]
name = "release_back"
command = ~B
time = 1

[Command]
name = "release_up"
command = ~U
time = 1

[Command]
name = "release_fwd_g"    ; REQUIRED for command buffering
command = ~$F
time = 1

[Command]
name = "release_down_g"   ; REQUIRED for command buffering
command = ~$D
time = 1

[Command]
name = "release_back_g"   ; REQUIRED for command buffering
command = ~$B
time = 1

[Command]
name = "release_up_g"     ; REQUIRED for command buffering
command = ~$U
time = 1

[Command]
name = "release_downback" ; REQUIRED for command buffering
command = ~DB
time = 1

[Command]
name = "release_downfwd"  ; REQUIRED for command buffering
command = ~DF
time = 1

;-| Release Button |---------------------------------------------------------
[Command]
name = "release_a"
command = ~a
time = 1

[Command]
name = "release_b"
command = ~b
time = 1

[Command]
name = "release_c"
command = ~c
time = 1

[Command]
name = "release_x"
command = ~x
time = 1

[Command]
name = "release_y"
command = ~y
time = 1

[Command]
name = "release_z"
command = ~z
time = 1

[Command]
name = "release_start"
command = ~s
time = 1
;#endregion

;---------------------------------------------------------------------------
; I said don't fuck with it, you stupid bitch.
[Statedef -1]
; Parrying/Just Defend Voice
[State -2, PlaySnd]
type = Playsnd
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
trigger4 = StateNo = 150 && Var(14) = 1
trigger5 = StateNo = 152 && Var(14) = 1
trigger6 = StateNo = 154 && Var(14) = 1
value = S8+Var(24),3
channel = 0

[State 710, Explod]; Parry spark
type = Explod
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
anim = 7500
pos = ifElse(StateNo=720,14,ifElse(StateNo=710,42,56)),ifElse(StateNo=720,-84,ifElse(StateNo=710,-28,-91)) ;basic code
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 15
[State 500, Explod]; Just Defend spark
type = Explod
triggerall = Time = 0
triggerall = Var(14) = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
anim = 7000
;pos = ifElse(StateNo=154,0,ifElse(StateNo=152,14,0)),ifElse(StateNo=154,-70,ifElse(StateNo=152,-42,-77)) ;basic code
pos = ifElse(StateNo=152,14,0),ifElse(StateNo=154,-70,ifElse(StateNo=152,-42,-77))
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 4

;==========================================================================;
;                              HUMAN COMMANDS                              ;
;==========================================================================;
;#region conflict_check.cmd
;---------------------------------------------------------------------------
; Conflict Check
[State -1, P]
type = VarSet
triggerall = !AILevel
trigger1 = (helper(10371), var(0)&903) > 0
trigger2 = !Var(30)
trigger2 = (helper(10371), var(2)&903) > 0
var(46) = 1
ignorehitpause = 1
[State -1, K]
type = VarSet
triggerall = !AILevel
trigger1 = (helper(10371), var(0)&14448) > 0
trigger2 = !Var(30)
trigger2 = (helper(10371), var(2)&14448) > 0
var(46) = 0
ignorehitpause = 1
[State -1, P beats ~K]
type = VarSet
triggerall = !AILevel
triggerall = !Var(30)
trigger1 = (helper(10371), var(0)&903) > 0
var(46) = (helper(10371), var(0)&903) >= ((helper(10371), var(2)&14448)/16) ; If 1, P beats ~K
ignorehitpause = 1
[State -1, K beats ~P]
type = VarSet
triggerall = !AILevel
triggerall = !Var(30)
trigger1 = (helper(10371), var(0)&14448) > 0
var(46) = (helper(10371), var(2)&903) >= ((helper(10371), var(0)&14448)/16) ; If 0, K beats ~P
ignorehitpause = 1
;#endregion

;---------------------------------------------------------------------------
; Stun Gun Headbutt
[State -1, Stun Gun Headbutt]
type = ChangeState
value = 3200
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**10)) > 0
triggerall = (helper(10371), Var(0)&903) > 0 || (!Var(30) && (helper(10371), Var(2)&903) > 0)
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 3) && Power >= 3000) || (Var(10) = 4 && (100*life/const(data.life))<=30 && Var(17)) || (Var(29) && Power >= 1000) || Var(19)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1500]) && (Var(50) = [1,2]) && (((var(5)&16)>0) || Var(30))
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Boomerang Raid
[State -1, Boomerang Raid]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**9)) > 0
triggerall = (helper(10371), Var(0)&903) > 0 || (!Var(30) && (helper(10371), Var(2)&903) > 0)
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1500]) && (Var(50) = [1,2]) && (((var(5)&16)>0) || Var(30))
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Hyper Bomb
[State -1, Hyper Bomb]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**11)) > 0
triggerall = (helper(10371), Var(0)&903) > 0 || (!Var(30) && (helper(10371), Var(2)&903) > 0)
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1500]) && (Var(50) = [1,2]) && (((var(5)&16)>0) || Var(30))
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&516) > 0 && (helper(10371), var(0)&8256) > 0
triggerall = statetype != A
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
; MAX Activation
[State -1, MAX Activation]
type = ChangeState
value = 960
triggerall = !AILevel
triggerall = Var(10) = 5
triggerall = Power >= 1000
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&516) > 0 && (helper(10371), var(0)&8256) > 0
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
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
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&516) > 0 && (helper(10371), var(0)&8256) > 0
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
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
; Counter Attack
[State -1, Counter Attack]
type = ChangeState
value = 2800
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&258) > 0 && (helper(10371), var(0)&4128) > 0
triggerall = command != "holddown" && command = "holdfwd"
triggerall = (var(5)&32)>0
trigger1 = Power >= 1000 && (Var(10) = 0 || Var(10) = 1 || Var(10) = 5)
trigger2 = Power >= 1500 && Var(10) = 2
trigger3 = Power >= 3000 && (Var(10) = 3 || Var(10) = 4)
trigger4 = Var(19)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
[State -1, Aerial Custom Combo]
type = ChangeState
value = 975
triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&516) > 0 && (helper(10371), var(0)&8256) > 0
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && Time < 2
trigger3 = StateNo = 610 && Time < 2
trigger4 = StateNo = 620 && Time < 2
trigger5 = StateNo = 630 && time < 2
trigger6 = StateNo = 640 && Time < 2
trigger7 = StateNo = 650 && time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = ifElse(((Var(5)&2)>0),100,102)
triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = numHelper(10371)
trigger1 = (helper(10371), Var(59)&(2**30)) > 0
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = numHelper(10371)
trigger1 = (helper(10371), Var(59)&-2147483648) = -2147483648
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Safe Fall
[State -1, Safe Fall]
type = ChangeState
value = 5201
triggerall = !AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Pos Y + Vel Y >= 0
trigger1 = numHelper(10371)
trigger1= (helper(10371), var(0)&2064) > 0 && (helper(10371), var(0)&129) > 0
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**3)|(2**10))) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (forward)
[State -1, Counter Movement (forward)]
type = ChangeState
value = 320
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&258) > 0 && (helper(10371), var(0)&4128) > 0
triggerall = command != "holddown" && command = "holdfwd"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (back)
[State -1, Counter Movement (back)]
type = ChangeState
value = 330
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&258) > 0 && (helper(10371), var(0)&4128) > 0
triggerall = command != "holddown" && command = "holdback"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && command = "holdfwd"),300,310)
triggerall = !AILevel
triggerall = Var(9) != 3
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&2064) > 0 && (helper(10371), var(0)&129) > 0
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
trigger23 = ((StateNo = [195,299]) || (StateNo = [400,450])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger24 = (StateNo = [1000,1999]) && Var(30) && Var(50)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Flash Chop
[State -1, Flash Chop]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**0)) > 0
triggerall = (helper(10371), Var(0)&903) > 0 || ((helper(10371), Var(2)&903) > 0 && !Var(30))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Air Stampede
[State -1, Air Stampede]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**8)) > 0
triggerall = (helper(10371), Var(0)&14448) > 0 || (!Var(30) && helper(10371), Var(2)&14448) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Slash Elbow
[State -1, Slash Elbow]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**6)) > 0
triggerall = (helper(10371), Var(0)&14448) > 0 || (!Var(30) && helper(10371), Var(2)&14448) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Bomb
[State -1, Power Bomb]
type = ChangeState
value = 1300
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**5)) > 0
triggerall = (helper(10371), Var(0)&903) > 0 || ((helper(10371), Var(2)&903) > 0 && !Var(30))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Air Knee Smash
[State -1, Air Knee Smash]
type = ChangeState
value = 1400
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), Var(59)&(2**2)) > 0
triggerall = (helper(10371), Var(0)&14448) > 0 || ((helper(10371), Var(2)&14448) > 0 && !Var(30))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = [200,205]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(2) < 0
trigger5 = StateNo = 230 && AnimElemTime(2) < 1
trigger6 = StateNo = 240 && AnimElemTime(3) < 0
trigger7 = StateNo = 245 && AnimElemTime(5) < 0
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(1) < 3
trigger10 = StateNo = 420 && AnimElemTime(2) < 0
trigger11 = StateNo = 430 && AnimElemTime(1) < 3
trigger12 = StateNo = 440 && AnimElemTime(1) < 3
trigger13 = StateNo = 450 && AnimElemTime(2) < 0
trigger14 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger15 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger16 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
trigger17 = StateNo = 3100 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), command = "holdback") || (helper(10371), command = "holdfwd")
triggerall = (helper(10371), Var(0)&8772) > 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [-22,22]
triggerall = roundstate = 2
trigger1 = p2statetype = S || p2statetype = C || p2statetype = A
trigger1 = p2movetype != H || Var(30) || p2stateno = 5300
ignorehitpause = 1

;---------------------------------------------------------------------------
; Lariat
[State -1, Lariat]
type = ChangeState
value = 270
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**2)|(2**9))) > 0
triggerall = helper(10371), command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(50) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Headbutt/Sleeper Hold
[State -1, Headbutt/Sleeper Hold]
type = ChangeState
value = 280
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**2)|(2**9))) > 0
triggerall = helper(10371), command != "holddown" && Command = "holdback"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(50) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Chop
[State -1, Chop]
type = ChangeState
value = 260
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**1)|(2**8))) > 0
triggerall = helper(10371), command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(50) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10371)
triggerall = ((helper(10371), var(0)&((2**0)|(2**7))) > 0) || ((helper(10371), var(0)&((2**1)|(2**8))) > 0) || ((helper(10371), var(0)&((2**2)|(2**9))) > 0)
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10371)
triggerall = ((helper(10371), var(0)&((2**4)|(2**11))) > 0) || ((helper(10371), var(0)&((2**6)|(2**13))) > 0) || ((helper(10371), var(0)&((2**6)|(2**13))) > 0)
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**6)|(2**13))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**2)|(2**9))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick (close)
[State -1, Standing Medium Kick (close)]
type = ChangeState
value = 245
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**5)|(2**12))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = P2BodyDist X = [-47,47]
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**5)|(2**12))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**1)|(2**8))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = (helper(10371), var(0)&((2**4)|(2**11))) > 0
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
trigger4 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch (close)
[State -1, Stand Light Punch (close)]
type = ChangeState
value = 205
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**0)|(2**7))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = P2BodyDist X = [-7,7]
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
trigger4 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**0)|(2**7))) > 0
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
trigger4 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**6)|(2**13))) > 0
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 430 && (Var(50) = [1,2])
trigger3 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger4 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**2)|(2**9))) > 0
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**5)|(2**12))) > 0
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 430 && (Var(50) = [1,2])
trigger3 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger4 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**1)|(2**8))) > 0
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**4)|(2**11))) > 0
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**0)|(2**7))) > 0
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
trigger4 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Flying Cross Chop
[State -1, Flying Cross Chop]
type = ChangeState
value = 660
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), command = "holddown"
triggerall = (helper(10371), var(0)&((2**2)|(2**9))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = Pos Y <= -50
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**6)|(2**13))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**2)|(2**9))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**5)|(2**12))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**1)|(2**8))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**4)|(2**11))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0)&((2**0)|(2**7))) > 0
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; BASIC MOVEMENT
[State -1, Buffered Walk]
type = AssertSpecial
trigger1 = NumHelper(10371)
flag = NoWalk
[State -1, Buffered Walk]
type = ChangeState
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), var(4)&34) = 0
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = (StateNo != [11,12]) && StateNo != 20 && StateNo != 40 && !(StateNo = 52 && Time < 3)
triggerall = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
trigger1 = (helper(10371), Var(4)&204) > 0
value = 20
[State -1, Buffered Crouch, Return to Stance or Walk]
type = ChangeState
triggerall = numHelper(10371)
triggerall = (helper(10371), var(4)&17) = 0 ; Buffered jump
triggerall = !AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = StateNo != 0 && (StateNo != [11,12]) && StateNo != 20 && StateNo != 52
trigger1 = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
value = ifElse((helper(10371), Var(4)&34) > 0, 11, ifElse((helper(10371), Var(4)&204) > 0, 20, 0))
[State -1, Buffered Jump]
type = ChangeState
triggerall = numHelper(10371)
triggerall = (helper(10371), var(4)&17) > 0 ; Buffered jump
triggerall = !AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = StateNo != 40 ;&& StateNo != 52
trigger1 = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
value = 40

;==========================================================================;
;                               AI COMMANDS                                ;
;==========================================================================;
;---------------------------------------------------------------------------
; AI Stun Gun Headbutt
[State -1, AI Stun Gun Headbutt]
type = ChangeState
value = 3200
triggerall = AILevel
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 3) && Power >= 3000) || (Var(10) = 4 && (100*life/const(data.life))<=30 && Var(17)) || (Var(29) && Power >= 1000) || Var(19)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	triggerall = Random = [751,850+AILevel*6]
trigger1 = EnemyNear(0), StateType = A && EnemyNear(0), Vel Y > 0 && EnemyNear(0), Pos Y >= -12
trigger2 = EnemyNear(0), StateType != A && EnemyNear(0), StateType != L
trigger3 = NumEnemy > 1
trigger3 = EnemyNear(1), StateType = A && EnemyNear(1), Vel Y > 0 && EnemyNear(1), Pos Y >= -12
trigger4 = NumEnemy > 1
trigger4 = EnemyNear(1), StateType != A && EnemyNear(1), StateType != L
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Boomerang Raid
[State -1, AI Boomerang Raid]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
trigger1 = P2BodyDist X = [-8,24]
trigger1 = StateNo = 245 && AnimElemTime(5) < 0
	trigger1 = Random = [0,75*AILevel]
trigger2 = StateNo = 3000 && Var(22) = 1 && (Var(50) = 1||Var(50) = 3) && AnimElemTime(30) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Hyper Bomb
[State -1, AI Hyper Bomb]
type = ChangeState
value = 3100
triggerall = AILevel
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [0,floor(97*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = P2StateType != L
triggerall = numHelper(10003)
triggerall = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
triggerall = (Random = [619,750]) || (NumTarget(1000) && P2Life > 127) || ((Var(30) = [0,30]) && Var(50) = 1)
trigger1 = EnemyNear(0), Pos Y >= -12 && EnemyNear(0), Vel Y >= 0 && EnemyNear(0), StateType != L
trigger2 = helper(10003), Var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Power Charge
[State -1, AI Power Charge] ; Thanks Warusaki!
type = ChangeState
value = 900
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = statetype != A
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(16)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101

trigger1 = P2BodyDist X >= 150 && (Random = [600,650])

trigger2 = teammode = single && P2BodyDist X >= 180 && P2StateType = L
	trigger2 = Random = [200,480]

trigger3 = Power >= 850 && Helper(10003), Var(15)
	trigger3 = Random = [550,620]

ignorehitpause = 0

;---------------------------------------------------------------------------
; AI MAX Activation
[State -1, AI AI MAX Activation] ; Thanks Warusaki!
type = ChangeState
value = 960
triggerall = AILevel
triggerall = Var(10) = 5
triggerall = Power >= 2000
triggerall = P2Life > 150
triggerall = !((100*life/const(data.life))<=20 && P2BodyDist X <= 160)
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(16)
trigger1 = P2BodyDist X >= 70 && Random <= 400
trigger2 = P2StateType = L && Random <= 550
trigger3 = helper(10003), Var(15)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Custom Combo
[State -1, AI Standing Custom Combo]
type = ChangeState
value = 970
triggerall = AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = !Var(29) && !Var(30)
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
; AI Counter Attack
[State -1, AI AI Counter Attack]
type = ChangeState
value = 2800
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
triggerall = (var(5)&32)>0
trigger1 = !EnemyNear, ctrl && P2BodyDist X <= 20 && Random <= 10+AILevel
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Aerial Custom Combo
;
; DON'T
;

;---------------------------------------------------------------------------
; AI Run Fwd
[State -1, AI Run Fwd]
type = ChangeState
value = IfElse(((Var(5)&2)>0),100,102)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = P2MoveType != A
triggerall = ctrl || StateNo = 21
triggerall = !(Var(30) && NumTarget)
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(16)
trigger1 = P2BodyDist X = [120,200]
    trigger1 = Random = [700,725]
trigger2 = P2bodydist X > 200
    trigger2 = Random = [700,750]
trigger3 = helper(10003), Var(15)
trigger3 = P2BodyDist X > 12
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Run Back
[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = ctrl || StateNo = 21
triggerall = !(Var(30) && NumTarget)
triggerall = BackEdgeDist > 60
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = P2BodyDist X <= 60 && P2MoveType != A
    trigger1 = Random = [460,474+AILevel*2]
trigger2 = P2bodydist X <= 40 && P2StateType = L
    trigger2 = Random = [491,504+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Safe Fall
[State -1, AI Safe Fall]
type = ChangeState
value = 5201
triggerall = AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071 || StateNo = 5100
triggerall = Pos Y + Vel Y >= 0
triggerall = roundstate = 2
trigger1 = Random < AILevel*125
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; AI Taunt
[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(6) = [1,2]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random = [920,960+AILevel*2*(helper(10003), Var(15)>0)]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Counter Movement
[State -1, AI Counter Movement]
type = ChangeState
value = ifElse((P2BodyDist X = [0,12]), 330, 320)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = P2MoveType = A
triggerall = P2BodyDist X = [0,24]
triggerall = Random <= 5
triggerall = GetHitVar(Guarded)
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Roll/Dodge
[State -1, AI Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && Random%6 < 2),300,310)
triggerall = AILevel
triggerall = Var(9) != 3
triggerall = StateType != A
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = !(Var(30) && numtarget)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2bodydist X >= 150
    trigger1 = Random <= AILevel+2
trigger2 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = P2BodyDist X <= 150
trigger2 = P2MoveType = I
    trigger2 = Random = [240,241+(AILevel/2)]
trigger3 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger3 = P2BodyDist X <= 150
trigger3 = P2MoveType = A
    trigger3 = Random = [430,432+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Power Bomb
[State -1, AI Power Bomb]
type = ChangeState
value = 1300
triggerall = AILevel
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(9) ; Don't do stupid shit on wakeup
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X <= 98
triggerall = (P2BodyDist Y = [-8,0]) && EnemyNear(0), Vel Y >= 0
triggerall = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = !helper(10003), Var(15)
trigger1 = Random = [549,570+AILevel*6]
trigger2 = helper(10003), Var(16)
trigger2 = !(((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30))
trigger3 = helper(10003), Var(16)
trigger3 = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
trigger3 = P2Life < 140
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Flash Chop
[State -1, AI Flash Chop]
type = ChangeState
value = 1000
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = P2StateType != L
triggerall = !NumTarget(1000) || Var(30)
triggerall = !helper(10003), Var(16)
triggerall = P2StateType != L
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = (Random = [326,400+AILevel*3]) || (P2StateType = S && cond(helper(10003), Var(15) = 2 && NumEnemy>1, abs((Enemy(1), Pos X - Enemy(1), Const(Size.Ground.Front)) - (Pos X + Const(Size.Ground.Front)))<= 8, cond(helper(10003), Var(15) = 1, abs((Enemy(0), Pos X - Enemy(0), Const(Size.Ground.Front)) - (Pos X + Const(Size.Ground.Front))) <= 8, 0)) && EnemyNear(0), Vel Y >= -0.01)
trigger2 = (StateNo = [200,205]) && Var(50) = 1
	trigger2 = Random = [326,380+AILevel*2]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0 && Var(50) = 1
	trigger3 = Random = [326,380+AILevel*5]
trigger4 = StateNo = 245 && AnimElemTime(5) < 0 && Var(50) = 1
	trigger4 = Random = [326,380+AILevel*2]
trigger5 = StateNo = 400 && Var(50) = 1
	trigger5 = Random = [326,380+AILevel*2]
trigger6 = (StateNo = 1000 || StateNo = 250) && Var(30) && Var(50)
	trigger6 = (Var(51) > 2 && StateNo = 250) || StateNo = 1000
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Air Stampede
[State -1, AI Air Stampede]
type = ChangeState
value = 1100
triggerall = AILevel
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(9) < 4 ; Try not to do this on wakeup
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random = [627,635+AILevel*(P2StateType = C)]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Slash Elbow
[State -1, AI Slash Elbow]
type = ChangeState
value = 1200
triggerall = AILevel
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(9) ; Don't do stupid shit on wakeup
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random = [618,626-AILevel] ; Nobody likes using this. It's just stupid. Don't do it.
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Air Knee Smash
[State -1, AI Air Knee Smash]
type = ChangeState
value = 1400
triggerall = AILevel
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(9) ; Don't do stupid shit on wakeup
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2MoveType != H
triggerall = P2BodyDist X = [-4,72]
triggerall = P2BodyDist Y <= -24
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random = [511,524+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Throw 1
[State -1, AI Throw 1]
type = ChangeState
value = 800
triggerall = AILevel
triggerall = (Random%500) = [250,399]
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [-22,22]
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = p2statetype = S || p2statetype = C || p2statetype = A
trigger1 = p2movetype != H || Var(30) || p2stateno = 5300
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Chop
[State -1, AI Chop]
type = ChangeState
value = 260
triggerall = AILevel
triggerall = P2BodyDist X = [-4,116-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-64,0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [482,502+AILevel]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Lariat
[State -1, AI Lariat]
type = ChangeState
value = 270
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-4,floor(116*Const(Size.XScale))-Const(Size.Ground.Front)]
triggerall = Random = [445,465+AILevel*(2*(P2StateType=A))]
triggerall = cond(helper(10003), Var(14), Random%2 = 0, Random%6 = 0)
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Headbutt/Sleeper Hold
[State -1, AI Headbutt/Sleeper Hold]
type = ChangeState
value = 280
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [436,444]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Light Punch (far, close)
[State -1, AI Stand Light Punch (far, close)]
type = ChangeState
value = cond((P2BodyDist X = [-7,7]), 205, 200)
triggerall = AILevel
triggerall = P2BodyDist X = [-7,32]
triggerall = P2BodyDist Y = [-32,0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Var(51) < 3 ; NumHits < 3
triggerall = Random = [405,435]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Stand Medium Punch
[State -1, AI Stand Medium Punch]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = P2BodyDist X = [14,90]
triggerall = P2BodyDist Y = [-78,0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [361,380+AILevel*3]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Dodge Attack (P)
[State -1, AI Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = roundstate = 2
triggerall = numHelper(10371)
triggerall = Random%4 != 0
triggerall = (helper(10371), var(0) = [1,2]) || (helper(10371), var(1) = [1,2]) || (helper(10371), var(2) = [1,2])
triggerall = StateNo = 310 && Time = [14,24]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = Random = [0,132+AILevel*2]

;---------------------------------------------------------------------------
; AI Stand Strong Punch
[State -1, AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = P2BodyDist X = [0,113]
triggerall = P2StateType = C
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [337,352+AILevel]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,279]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Standing Light Kick
[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [325,332+(AILevel/2)]
triggerall = Random%AILevel = 0 && P2StateType = C
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Dodge Attack (K)
[State -1, AI Dodge Attack (K)]
type = ChangeState
value = 240
triggerall = AILevel
triggerall = P2BodyDist X = [34,146]
triggerall = roundstate = 2
triggerall = StateNo = 310 && Time = [14,24]
trigger1 = Random = [150,153]

;---------------------------------------------------------------------------
; AI Standing Medium Kick (close)
[State -1, AI Standing Medium Kick (close)]
type = ChangeState
value = 245
triggerall = AILevel
triggerall = P2BodyDist X = [-47,47]
triggerall = P2BodyDist Y = [-10,0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [296,316+AILevel+16*(helper(10003), Var(10)>0)]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Standing Medium Kick
[State -1, AI Standing Medium Kick]
type = ChangeState
value = 240
triggerall = AILevel
triggerall = P2BodyDist X = [34,146]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [325,352+AILevel]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Standing Strong Kick
[State -1, AI Standing Strong Kick]
type = ChangeState
value = 250
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [291,295]
trigger2 = StateNo = 250 && Var(50) = 1 && AnimElemTime(6) > 0 && Var(30)
	trigger2 = Random = [291,225-AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Medium Punch
[State -1, AI Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-2,142]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [0,(125+AILevel*5)+(20*P2MoveType=A)+25*(helper(10003), Var(10)>0)]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Light Punch
[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [186,195+AILevel*2]
triggerall = P2BodyDist X = [0,94-Const(Size.Ground.Front)]
triggerall = Var(50) < 2 && Var(51) < 3 ; Move actually hit and the counter is < 3 hits
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 3
trigger3 = StateNo = 400 && Time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Strong Punch
[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-8,8]
triggerall = P2BodyDist Y = [-28,0]
triggerall = Random = [212,220]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Light Kick
[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [221,232+AILevel]
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Strong Kick
[State -1, AI Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(5) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [256,274+AILevel*2]
triggerall = P2BodyDist X = [0,142-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = 0
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 430 && (Var(50) = [1,2]) && (Random%4 != 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Crouching Medium Kick
[State -1, AI Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Random = [241,255]
triggerall = P2BodyDist X = [0,113-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = 0
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 430 && (Var(50) = [1,2]) && (Random%4) = 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Flying Cross Chop
[State -1, AI Flying Cross Chop]
type = ChangeState
value = 660
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = Pos Y <= -50
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
triggerall = P2StateType != A
trigger1 = ctrl
	trigger1 = Random = [0,56+AILevel/2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel
triggerall = P2BodyDist X = [-2,35]
triggerall = P2BodyDist Y = [-4,32]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl
	trigger1 = Random = [60,78+AILevel+(20*P2StateType=A)]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Medium Punch
[State -1, AI Jump Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = P2BodyDist X = [27,52]
triggerall = P2BodyDist Y = [-8,56]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl
	trigger1 = Random = [99,120+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Strong Punch
[State -1, AI Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = P2BodyDist X = [-3,26]
triggerall = P2BodyDist Y = [-8,72]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl
	trigger1 = Random = [129-(AILevel*5*P2MoveType=A),144+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Light Kick
; DON'T

;---------------------------------------------------------------------------
; AI Jump Medium Kick
[State -1, AI Jump Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel
triggerall = P2BodyDist X = [27,52]
triggerall = P2BodyDist Y = [-8,56]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl
	trigger1 = Random = [161,187+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Jump Strong Kick
[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AILevel
triggerall = P2BodyDist X = [42,88]
triggerall = P2BodyDist Y = [-8,60]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = ctrl
	trigger1 = Random = [195,200+AILevel*6]
ignorehitpause = 0

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
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(16)
trigger1 = Random%5 <= 2
value = 21

[State -1, Avoid Throws] ; Thanks, Warusaki!
type = ChangeState
value = 40
triggerall = AILevel
triggerall = RoundState = 2
triggerall = InGuardDist || P2bodydist X = [-60,120]
triggerall = ctrl || StateNo = 21 || StateNo = 21
triggerall = StateType != A
triggerall = StateNo != 40
triggerall = numHelper(10003)
triggerall = !helper(10003), Var(15)
triggerall = !helper(10003), Var(16)
trigger1 = EnemyNear, HitDefAttr = SC, NT,ST,HT
    trigger1 = Random <= 300+AILevel*50

[State -1, Guard] ; Thanks, Warusaki and Kamekaze!
type = ChangeState
value = 120
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (StateNo != [120,155]) && (StateNo != [700,720])
triggerall = ctrl
triggerall = !Var(30)
triggerall = InGuardDist
triggerall = !(StateType = A && !((var(5)&256)>0))
;trigger1 = StateNo = 21 && Anim = 21
;trigger2 = EnemyNear, MoveType = A && EnemyNear, HitDefAttr != SCA,AA
;   trigger2 = Random < (110*AILevel)
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0
trigger2 = EnemyNear, HitDefAttr = SCA, NA,SA,HA 
    trigger2 = Random < (110*AILevel)
trigger3 = NumHelper(10003)
trigger3 = EnemyNear, MoveType = A && Helper(10003), Var(8)
    trigger3 = Random < (105*AILevel)





