;-| Special Motions |------------------------------------------------------
;-----------------
; Aggressor
[Command]
name = "Aggressor"
command = ~B, D, F, s
time = 35

[Command]
name = "ShadowKick"
command = F, F, b
time = 25

[Command]
name = "TeleLift"
command = B, D, B, y
time = 32

[Command]
name = "Float"
command = B, D, B, b
time = 32

[Command]
name = "Teleport"
command = ~D, B, x
time = 15

; Green Fireball
[Command]
name = "GreenBall"
command = ~D, B, a
time = 15

; Green Fireball
[Command]
name = "FloatGreenBall"
command = ~D, F, a
time = 15

[Command]
name = "TelePush"
command = F, D, F, y
time = 32

;-| Finisher Motions |------------------------------------------------------
;-----------------
[Command]
name = "Decap"
command = ~z, c, z, z, y
time = 40

[Command]
name = "Gathering" ;EASTER EGG. I know it's Scorpion but, I just had to keep it. It fits Ermac's plotline well.
command = ~F, F, D, U, z
time = 46

[Command]
name = "Doll"
command = ~B, B, D, y
time = 30

[Command]
name = "Bunny"
command = ~F, F, F, x
time = 32

[Command]
name = "TeleDeath"
command = ~D, U, D, D, D
time = 50

[Command]
name = "TeleOverkill"
command = ~U, D, U, U, U
time = 50

[Command]
name = "SuperEnergyball"
command = ~B, B, F, F, y
time = 50

;-| Double Tap |------------------------------------------------------
;-----------------
[Command]
name = "FF"       ;Required (do not remove)
command = /$F,z
time = 15

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "Roundhouse"
command = /B,y
time = 1

[Command]
name = "AltRoundhouse"
command = /F,y
time = 1

[Command]
name = "CLP"
command = /$D,a
time = 1

[Command]
name = "Uppercut"
command = /$D,x
time = 1

[Command]
name = "CLK"
command = /$D,b
time = 1

[Command]
name = "CHK"
command = /$D,y
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "LP"
command = a
time = 1

[Command]
name = "HP"
command = x
time = 1

[Command]
name = "THROW"
command = a
time = 1

[Command]
name = "LK"
command = b
time = 1

[Command]
name = "HK"
command = y
time = 1

[Command]
name = "Z"
command = z
time = 1

[Command]
name = "AIRTHROW"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
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
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdfwdR"  ;Required (do not remove)
command = /$F+z
time = 1

[Command]
name = "Guard"  ;Required (do not remove)
command = /c
time = 1

[Command]
name = "ALTRUN"  ;Required (do not remove)
command = /z
time = 1

;-| CPU ONLY (DUMMY MOVES ONLY THE COMPUTER CAN DO THAT ACTIVATE HIS AI |-----------------------
[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command]
name = "CPU3"
command = D, D, D, U, U, U
time = 1

[Command]
name = "CPU4"
command = U, D, D, U, U, U
time = 1

[Command]
name = "CPU5"
command = D, D, U, U, D, D
time = 1

[Command]
name = "CPU6"
command = U, D, D, D, D, U
time = 1

[Command]
name = "CPU7"
command = U, U, U, U, U, D
time = 1

[Command]
name = "CPU8"
command = U, U, U, U, D, U
time = 1

[Command]
name = "CPU9"
command = U, U, U, D, U, U
time = 1

[Command]
name = "CPU10"
command = U, U, D, U, U, U
time = 1

[Command]
name = "CPU11"
command = U, D, U, U, U, U
time = 1

[Command]
name = "CPU12"
command = D, U, D, U, D, U
time = 1

[Command]
name = "CPU13"
command = U, U, D, U, U, U, U
time = 1

[Command]
name = "CPU14"
command = U, D, D, U, U, U, U
time = 1

[Command]
name = "CPU15"
command = D, U, D, U, U, U, D
time = 1

[Command]
name = "CPU16"
command = D, D, D, U, U, U, U
time = 1

[Command]
name = "CPU17"
command = U, U, D, U, U, D, D
time = 1

[Command]
name = "CPU18"
command = D, D, D, U, D, D, D
time = 1

[Command]
name = "CPU19"
command = U, D, D, U, D, U, D
time = 1

[Command]
name = "CPU20"
command = D, D, D, U, U, U, D
time = 1

[Command]
name = "CPU21"
command = U, D, U, D, U, U, U
time = 1

[Command]
name = "CPU22"
command = U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU23"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU24"
command = D, D, D, D, D, D, U
time = 1

[Command]
name = "CPU25"
command = D, D, D, D, D, U, D
time = 1

[Statedef -1]

[State -1, AITurnOn]
type = VarSet
triggerall = var(21) != 1
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
v = 21
value = 1

;**********FINISHERS/AGGRESSOR**********
[State -1, Aggressor]
type = ChangeState
value = 1999
triggerall = command = "Aggressor"
triggerall = power >= 2000
triggerall = NumExplod(1998) = 0
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = C

;******************Decap Fatal**************************
[State -1, Decap]
type = ChangeState
value = 4500
triggerall = command = "Decap"
triggerall = P2bodydist X < 20
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = statetype = S
trigger2 = statetype = C


;*******************The Gathering***************************
;EASTER EGG. I know it's Scorpion, but I just had to keep it. It fits Ermac's plotline well.
[State -1, Gathering]
type = ChangeState
value = 4110
triggerall = command = "Gathering"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = statetype = S
trigger2 = statetype = C

;***************Telekinetic Overkill Fatality***********************
;CAN ONLY BE DONE WHILE BLOCKING
;SEE STATE 130 IN ERMAC.CNS
;[State -1, TeleOverkill]
;type = ChangeState
;value = 4130
;triggerall = command = "TeleOverkill"
;triggerall = ctrl = 1 ;stateno = [120,139]
;triggerall = p2stateno = 9010
;triggerall = p2life < 10
;triggerall = P2statetype = S
;trigger1 = statetype = S
;trigger2 = statetype = C

;*******************Tele-Death***************************
;CAN ONLY BE DONE WHILE BLOCKING
;SEE STATE 130 IN ERMAC.CNS
;[State -1, Tele-Death]
;type = ChangeState
;value = 4140
;triggerall = command = "TeleDeath"
;triggerall = ctrl = 1 ;stateno = [120,139]
;triggerall = p2stateno = 9010
;triggerall = p2life < 10
;triggerall = P2statetype = S
;trigger1 = statetype = S
;trigger2 = statetype = C

;*******************Super Energyball***************************
[State -1, SuperEnergyball]
type = ChangeState
value = 4150
triggerall = command = "SuperEnergyball"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = statetype = S
trigger2 = statetype = C

;***************Doll Friendship***********************
[State -1, Doll Friendship]
type = ChangeState
value = 4010
triggerall = command = "Doll"
triggerall = p2stateno = 9010
triggerall = ctrl = 1
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = statetype = S
trigger2 = statetype = C

;***************Bunny Friendship***********************
[State -1, Bunny Friendship]
type = ChangeState
value = 4020
triggerall = command = "Bunny"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = statetype = S
trigger2 = statetype = C

;**********SPECIAL MOVES**********
[State -1]
type = ChangeState
value = 3100
triggerall = command = "TeleLift"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3200
triggerall = command = "TelePush"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3130
triggerall = command = "ShadowKick"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3150
triggerall = command = "ShadowKick"
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Float]
type = ChangeState
value = 2111
triggerall = command = "Float"
triggerall = var(21) = 0
triggerall = ctrl
trigger1 = statetype = S

[State -1, AirFloat]
type = ChangeState
value = 2111
triggerall = command = "Float"
triggerall = var(21) = 0
triggerall = ctrl
trigger1 = statetype = A

[State -1]
type = Changestate
value = 1570
trigger1 = command = "Teleport"
trigger1 = p2stateno != 1547
trigger1 = Var(42) = 0
trigger1 = ctrl = 1

[State -1,GreenFireball]
type = Changestate
value = 1500
triggerall = command = "GreenBall"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

[State -1,AirGreenFireBall]
type = Changestate
value = 1520
triggerall = command = "GreenBall"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1,Overhead Throw]
type = ChangeState
value = 3000
triggerall = P2bodydist X < 5
triggerall = P2bodydist Y < 25
triggerall = P2bodydist Y > -25
triggerall = p2movetype != H
triggerall = ctrl = 1
trigger1 = command = "THROW"
trigger1 = command != "Teleport"
trigger1 = statetype = S
trigger1 = p2statetype = S
trigger1 = P2statetype != A

[State -1,ThrowOverride]
type = ChangeState
value = 1010
triggerall = command != "Teleport"
triggerall = P2bodydist X < 5
triggerall = p2movetype = H
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = command = "THROW"

;**********NONATTACKS**********
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "hold_z"
trigger1 = command = "BB"
trigger1 = p2stateno != 9010
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Guard
;ダッシュ
[State -1, Guard]
type = ChangeState
value = 130
triggerall = command = "Guard"
triggerall = ctrl
;triggerall = stateno != 130
;triggerall = stateno != 131
trigger1 = var(21) != 1
trigger1 = statetype = S

[State -1, Guard]
type = ChangeState
value = 131
triggerall = command = "Guard"
triggerall = ctrl
;triggerall = stateno != 130
;triggerall = stateno != 131
trigger1 = var(21) != 1
trigger1 = statetype = C

[State -1, Guard]
type = ChangeState
value = 132
triggerall = command = "Guard"
triggerall = ctrl
;triggerall = stateno != 130
;triggerall = stateno != 131
trigger1 = var(21) != 1
trigger1 = statetype = A

;---------------------------------------------------------------------------
;Guard
;ダッシュ
[State -1, Guard]
type = ChangeState
value = 130
triggerall = command = "Guard"
trigger1 = var(21) != 1
trigger1 = stateno = 130
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Guard
;ダッシュ
[State -1, CrouchGuard]
type = ChangeState
value = 131
triggerall = command = "Guard"
trigger1 = var(21) != 1
trigger1 = stateno = 131
trigger1 = statetype = C

;---------------------------------------------------------------------------
;Guard
;ダッシュ
[State -1, AirGuard]
type = ChangeState
value = 132
triggerall = command = "Guard"
trigger1 = var(21) != 1
trigger1 = stateno = 132
trigger1 = statetype = A

;**********STANDARD ATTACKS**********
[State -1,6]
type = ChangeState
value = 1100
triggerall = command = "Uppercut"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1301
trigger2 = time >= 23
trigger2 = p2stateno = 6666

[State -1,7]
type = ChangeState
value = 1300
triggerall = command = "Roundhouse"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1,8]
type = ChangeState
value = 1010
triggerall = command = "LP"
triggerall = statetype = S
triggerall = P2bodydist X > 5
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1011
trigger3 = stateno = 1011
trigger3 = animtime = 0

[State -1,9]
type = ChangeState
value = 1011
triggerall = command = "LP"
trigger1 = stateno = 1010
trigger1 = statetype = S
trigger2 = stateno = 1010
trigger2 = animtime = 0
trigger2 = statetype = S

;Axe Swipe
[State -1,11]
type = ChangeState
value = 1320
triggerall = command = "HP"
triggerall = p2bodydist X < 12
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1,12]
type = ChangeState
value = 1330
triggerall = p2bodydist X < 12
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno != 6666
trigger1 = command = "LK"
trigger2 = command = "HK"

[State -1,16]
type = Changestate
value = 1310
triggerall = command = "LK"
triggerall = command = "holdback"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

[State -1,10]
type = ChangeState
value = 1030
triggerall = command = "LK"
triggerall = p2bodydist X > 10
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1,13]
type = ChangeState
value = 1020
triggerall = command = "HK"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1,14]
type = ChangeState
value = 1000
triggerall = command = "HP"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 1001
;trigger2 = movecontact = 1

[State -1,15]
type = ChangeState
value = 1001
triggerall = command = "HP"
trigger1 = statetype = S
trigger1 = stateno = 1000
;trigger1 = movecontact = 1

[State -1,17]
type = changestate
value = 1110
trigger1 = command = "LP"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1,19]
type = ChangeState
value = 1130
triggerall = command = "CLK"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = stateno != 1130

[State -1,20]
type = ChangeState
value = 1120
triggerall = command = "CHK"
triggerall = statetype = C
trigger1 = ctrl = 1

[State -1,21]
type = ChangeState
value = 1200
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = stateno != 1200
triggerall = stateno != 1210
triggerall = stateno != 1220
trigger1 = command = "LP"
trigger2 = command = "HP"

[State -1,23]
type = ChangeState
value = 1220
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = anim = 41
triggerall = stateno != 1200
triggerall = stateno != 1210
triggerall = stateno != 1220
trigger1 = command = "LK"
trigger2 = command = "HK"

[State -1,24]
type = ChangeState
value = 1210
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = stateno != 1200
triggerall = stateno != 1210
triggerall = stateno != 1220
trigger1 = command = "LK"
trigger2 = command = "HK"
