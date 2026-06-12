;-| Button Remapping |----------------------------------------------------
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



[Command]
name = "Fatality1"
command = ~F,F,F,b
time = 40
[Command]
name = "Fatality1"
command = ~F,F,F+b
time = 40
[Command]
name = "Fatality1"
command = ~F,F,F,F,b
time = 40
[Command]
name = "Fatality1"
command = ~F,F,F,F+b
time = 40

[Command]
name = "Fatality2"
command = ~D,D,D,F,F+x
time = 60
[Command]
name = "Fatality2"
command = ~D,D,D,F,F,x
time =60
[Command]
name = "Fatality2"
command = ~D,D,D,F,F,F+x
time = 60
[Command]
name = "Fatality2"
command = ~D,D,D,F,F,F,x
time =60
[Command]
name = "Fatality2"
command = ~D,D,DF,F,F+x
time = 60
[Command]
name = "Fatality2"
command = ~D,D,DF,F,F,x
time =60
[Command]
name = "Fatality2"
command = ~D,D,DF,F,F,F+x
time = 60
[Command]
name = "Fatality2"
command = ~D,D,DF,F,F,F,x
time =60
[Command]
name = "Fatality2"
command = ~D,D,D,DF,F+x
time = 60
[Command]
name = "Fatality2"
command = ~D,D,D,DF,F,x
time =60
[Command]
name = "Fatality2"
command = ~D,D,D,DF,F,F+x
time = 60
[Command]
name = "Fatality2"
command = ~D,D,D,DF,F,F,x
time =60


[Command]
name = "Grab&Pound"
command = ~F,F,y
time = 20
[Command]
name = "Grab&Pound"
command = ~F,F,+y
time = 20
[Command]
name = "Grab&Pound"
command = ~F,F,F,y
time = 20
[Command]
name = "Grab&Pound"
command = ~F,F,F,+y
time = 20

[Command]
name = "FrontKicks"
command = ~F,F,x
time = 20
[Command]
name = "FrontKicks"
command = ~F,F,+x
time = 20
[Command]
name = "FrontKicks"
command = ~F,F,F,x
time = 20
[Command]
name = "FrontKicks"
command = ~F,F,F,+x
time = 20

[Command]
name = "FireBall"
command = ~F,DF,D,DB,B,y
time = 35
[Command]
name = "FireBall"
command = ~F,DF,D,DB,B+y
time = 35
[Command]
name = "FireBall"
command = ~F,D,DB,B,y
time = 30
[Command]
name = "FireBall"
command = ~F,D,DB,B+y
time = 30
[Command]
name = "FireBall"
command = ~F,D,B+y
time = 20
[Command]
name = "FireBall"
command = ~F,D,B,y
time = 20
[Command]
name = "FireBall"
command = ~F,DF,D,B+y
time = 30
[Command]
name = "FireBall"
command = ~F,DF,D,B,y
time = 30


[Command]
name = "Guarding"
command = /z
time = 1

[Command]
name = "Teleport"
command = ~D, U
time = 20
[Command]
name = "Teleport"
command = D, U
time = 20

[Command]
name = "RunFWD"
command = ~F,F, a
time = 25
[Command]
name = "RunFWD"
command = ~F,F+a
time = 25

[Command]
name = "RunUP"
command = ~B,B,F,b
time = 38
[Command]
name = "RunUP"
command = ~B,B,F+b
time = 38
[Command]
name = "RunUP"
command = ~B,B,DF,b
time = 38
[Command]
name = "RunUP"
command = ~B,B,DF+b
time = 38
[Command]
name = "RunUP"
command = ~DB,DB,F,b
time = 38
[Command]
name = "RunUP"
command = ~DB,DB,F+b
time = 38
[Command]
name = "RunUP"
command = ~DB,B,F,b
time = 38
[Command]
name = "RunUP"
command = ~DB,B,F+b
time = 38
[Command]
name = "RunUP"
command = ~B,DB,F,b
time = 38
[Command]
name = "RunUP"
command = ~B,DB,F+b
time = 38
[Command]
name = "RunUP"
command = ~B,DB,DF,b
time = 38
[Command]
name = "RunUP"
command = ~B,DB,DF+b
time = 38
[Command]
name = "RunUP"
command = ~DB,DB,DF,b
time = 38
[Command]
name = "RunUP"
command = ~DB,DB,DF+b
time = 38

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

;-| AI |------------------------------------------------------

[StateDef -1]

;AI
[State -1, AI]
type = VarSet
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = AIlevel != 0
trigger1 = 1
var(50) = 1

;===========================================================================
;---------------------------------------------------------------------------
[State -2, NO-FATALITY]
type = Varset
triggerall = 1
trigger1 = p2name = "MOTARO" || enemy,name = "MOTARO" 
trigger2 = p2name = "KINTARO-BOSS" || enemy,name = "KINTARO-BOSS" 
trigger3 = p2name = "SHAO KAHN-BOSS" || enemy,name = "SHAO KAHN-BOSS"
trigger4 = enemy,AuthorName = "OMEGAPSYCHO-BOSS"
trigger5 = enemy,AuthorName = "OMEGAPSYCHO-MKSecret"
trigger6 = enemy,AuthorName = "OMEGAPSYCHO-MKBoss"
v = 58
value = 0

;FATALITY TIME
[State 10000, 1]
type = Helper
triggerall = 1
triggerall = NumHelper(7000) = 0
triggerall = RoundState = 2
triggerall = p2statetype != A
triggerall = P2Life <= 1
triggerall = P2StateNo != 49999
triggerall = RoundNo >1
triggerall = var(58) >= 1
triggerall = var(55) = 0
trigger1 = NumEnemy = 1
trigger1 = NumPartner = 0
ID = 7000 
stateno = 7000
pos = 160, -140
postype = left
helpertype = normal
name = "FINISH_HIM_MODE" 
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
;FATALITY TIME (BACKUP)
[State 10000, 2]
type = Helper
triggerall = 1
triggerall = NumHelper(7001) = 0
triggerall = RoundState = 2
triggerall = p2statetype != A
triggerall = P2Life <= 1
triggerall = P2StateNo != 49999
triggerall = RoundNo >1
triggerall = var(58) >= 1
triggerall = var(55) = 0
trigger1 = NumEnemy = 1
trigger1 = NumPartner = 0
ID = 7001 
stateno = 7001
pos = 160, -140
postype = left
helpertype = normal
name = "FINISH_HIM_MODE_BACKUP" 
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

; Guarding
[State -1, Guarding]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = stateno != 120
triggerall = stateno != 140
triggerall = ctrl
triggerall = statetype = S || statetype = C
trigger1 = command = "Guarding"
value = 120





;==============================================

;STRONG PUNCH
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "x"
triggerall = command != "FrontKicks"
triggerall = command != "Fatality2"
triggerall = statetype != A
triggerall = p2bodydist x > 14
trigger1 = Ctrl 
ignorehitpause = 1
value = 200
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "y" 
triggerall = command != "FireBall"
triggerall = command != "Grab&Pound"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 200

;THROW
[State -1,THROW]
type = ChangeState
triggerall = RoundState = 2
triggerall = command = "x"
triggerall = command != "FrontKicks"
triggerall = command != "Fatality2"
triggerall = statetype != A
triggerall = p2bodydist x <= 14
trigger1 = Ctrl 
ignorehitpause = 1
value = 700


;STRONG KICK
[State -1,STRONG KICK]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "a" 
triggerall = command != "RunFWD"
triggerall = command != "holdback"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 250
[State -1,STRONG KICK]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "b"
triggerall = command != "RunUP"
triggerall = command != "Fatality1"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 250

;RUN JUMP FWD
[State -1,RUN JUMP FWD]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "RunFWD"
triggerall = statetype != A
trigger1 = Ctrl 
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 250
trigger3 = movehit
ignorehitpause = 1
value = 390

;SUPER JUMP 
[State -1,SUPER JUMP]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command != "Fatality1"
triggerall = command = "RunUP"
triggerall = statetype != A
trigger1 = Ctrl 
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 250
trigger3 = movehit
ignorehitpause = 1
value = 391

;FIREBALL
[State -1,FIREBALL]
type = ChangeState
triggerall = var(50) = 0
triggerall = NumProjID(501) = 0
triggerall = RoundState = 2
triggerall = command = "FireBall"
triggerall = command != "Grab&Pound"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 500

;GRAB & POUND
[State -1,GRAB & POUND]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "Grab&Pound"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 600

;TELEPORT
[State -1, TELEPORT]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "Teleport"
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = movetype != H
trigger1 = Ctrl 
value = 750

;TAIL TRIP
[State -1, TAIL TRIP ]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "a" && command = "holdback"
triggerall = command != "RunFWD"
triggerall = command != "RunUP"
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = movetype != H
trigger1 = Ctrl 
value = 760

;FRONT KICKS
[State -1,FRONT KICKS]
type = ChangeState
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = command = "FrontKicks"
triggerall = command != "Fatality2"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 770

;===========================================================================
;FATALITY # 1 MOTARO
[State -1, FATALITY # 1 MOTARO]
type = ChangeState
triggerall = P2Dist X < 320
triggerall = RoundState = 2
triggerall = p2stateno != [5050,5150]
triggerall = p2stateno = 49999
triggerall = var(55) >= 1
triggerall = command = "Fatality1"
triggerall = statetype != A
trigger1 = stateno = [120,140]
trigger2 = Ctrl 
ignorehitpause = 1
value = 1000

;FATALITY # 2 MOTARO
[State -1, FATALITY #2 MOTARO]
type = ChangeState
triggerall = P2Dist X < 320
triggerall = RoundState = 2
triggerall = p2stateno != [5050,5150]
triggerall = p2stateno = 49999
triggerall = var(55) >= 1
triggerall = command = "Fatality2"
triggerall = statetype != A
trigger1 = stateno = [120,140]
trigger2 = Ctrl 
ignorehitpause = 1
value = 2000




































;****************************************************************************
;****************************************************************************
;***************************A.I.*********************************************
;****************************************************************************
;****************************************************************************
; Guarding
[State -1, Guarding]
type = ChangeState
triggerall = var(50) = 1
triggerall = RoundState = 2
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = NumHelper(7000) = 0
triggeral = P2StateNo != 49999
triggerall = Movetype = I
triggerall = p2Movetype != I || enemynear,movetype != I
triggerall = p2Movetype = A || enemynear,movetype = A
triggerall = p2Statetype != C
triggerall = stateno != 120
triggerall = stateno != 131
triggerall = stateno != 140
triggerall = stateno != 25
triggerall = ctrl
triggerall = statetype != A
trigger1 = P2Dist X <200
trigger1 = p2movetype = A
trigger1 = p2statetype = S
trigger2 = enemy, NumProj >= 1
trigger2 = P2Dist X <=120
trigger2 = statetype = S
trigger3 = P2Dist X <20
trigger3 = p2movetype = A
trigger3 = p2statetype = S
trigger4 = enemy, NumProj >= 1
trigger4 = Random <=500
trigger4 = P2Dist X >=100
trigger4 = statetype = S
ignorehitpause = 1
value = 120
; Crouch Guarding
[State -1, Guarding]
type = ChangeState
triggerall = var(50) = 1
triggerall = RoundState = 2
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = NumHelper(7000) = 0
triggeral = P2StateNo != 49999
triggerall = p2Movetype != I || enemynear,movetype != I
triggerall = p2Movetype = A || enemynear,movetype = A
triggerall = p2Statetype != S
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 140
triggerall = stateno != 25
triggerall = ctrl
triggerall = statetype != A
trigger1 = P2Dist X <200
trigger1 = p2movetype = A
trigger1 = p2statetype = C
trigger2 = enemy, NumProj >= 1
trigger2 = P2Dist X <=120
trigger2 = statetype = C
trigger3 = P2Dist X <20
trigger3 = p2movetype = A
trigger3 = p2statetype = C
trigger4 = enemy, NumProj >= 1
trigger4 = Random <=500
trigger4 = P2Dist X >=100
trigger4 = statetype = C
ignorehitpause = 1
value = 131






;STRONG PUNCH
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(50) = 1
triggerall = RoundState = 2
triggerall = Random < AILevel *12
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = life>1
triggerall = p2life>2
triggerall = Movetype = I
triggerall = ctrl
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
triggerall     = p2bodydist X < 60
trigger1       = p2statetype = S && enemynear,movetype != A && random = [651,999]
trigger2   = p2statetype = C
trigger2   = p2bodydist X < 15 && random = [0,300]
ignorehitpause = 1
value = 200


;THROW & FRONT KICKS
[State -1,THROW & FRONT KICKS]
type = ChangeState
triggerall = var(50) = 1
triggerall = stateno !=210
triggerall = RoundState = 2
triggerall = Random < AILevel *12
triggerall = p2bodydist x <= 10
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = movetype = I
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = Ctrl || stateno = [120,140]
ignorehitpause = 1
value = ifelse(random<=500,700,770)

;GRAB & POUND
[State -1,GRAB & POUND]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = RoundState = 2
triggerall = Random < AILevel *11
triggerall     = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
triggerall     = statetype != L
triggerall     = p2statetype != L
trigger1       = p2movetype = A
trigger1       = enemynear,vel x = 0
trigger1       = p2bodydist X < 50
trigger2      = p2statetype = A
trigger2       = enemynear,vel x >0
trigger2       = p2bodydist X < 50
trigger2       = p2movetype = A
ignorehitpause = 1
value = 600

;FIREBALL
[State -1, FIREBALL]
type = ChangeState
triggerall = var(50) =1
triggerall = NumProjID(501) = 0
triggerall = RoundState = 2
triggerall = Random < AILevel *12
triggerall = p2name != "MOTARO"
triggerall = p2name != "JADE MK2"
triggerall = life>1
triggerall = statetype != A
triggerall = statetype != L
triggerall = stateno != 500
trigger1       = Ctrl
trigger1       = p2movetype = A
trigger1       = p2statetype = A
trigger1       = enemynear,vel x <=0
trigger1       = p2bodydist X > 80
trigger1       = p2bodydist Y >-120
trigger2       = Ctrl
trigger2       = enemynear, Stateno = 50
trigger2       = enemynear, anim = 43 || enemynear, anim = 41
trigger2       = p2bodydist X > 180
trigger2       = p2bodydist Y >-120
trigger3       = Ctrl
trigger3       = enemynear,vel x = 0
trigger3       = p2bodydist X > 190
trigger3       = p2movetype = A
trigger3       = p2statetype != A
trigger3       = enemy, NumProj =0
trigger3       = random <= 400 
trigger4       = Ctrl
trigger4       = enemynear,vel x <0
trigger4       = enemynear, Stateno = [5030,5050]
trigger4       = p2bodydist X > 100
trigger4      = random <=400 
trigger5       = Ctrl || stateno = [120,140]
trigger5       = p2movetype = A
trigger5       = p2bodydist X > 100
trigger6       = Ctrl
trigger6       = enemynear,vel x = 0
trigger6       = p2bodydist X > 250
trigger6       = enemy, NumProj >=1
trigger6       = random <= 200 
trigger7       = Ctrl
trigger7       = P2stateno = [123456,123458]
ignorehitpause = 1
value = 500

;TELEPORT
[State -1, TELEPORT]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = stateno != [700,770]
triggerall = statetype != A
triggerall = Random < AILevel *11
triggerall = RoundState = 2
triggerall = movetype != H
triggerall = p2movetype != H
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger1 = P2Dist X <50
trigger1 = BackEdgeBodyDist <50
trigger1 = p2movetype = A
trigger2       = p2movetype = A
trigger2       = p2statetype = C
trigger2       = enemynear,vel x = 0
trigger2       = p2bodydist X < 50
value = 750

;STRONG KICK
[State -1,STRONG KICK]
type = ChangeState
triggerall = var(50) = 1
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = life>1
triggerall = p2life>2
triggerall = RoundState = 2
triggerall = Random < AILevel *11
triggerall = statetype != A
triggerall = ctrl
triggerall     = statetype != L
trigger1       = p2movetype != H
trigger1       = p2bodydist X <100
trigger1       = p2statetype = A
trigger1       = enemynear,vel x >0
trigger2       = p2movetype = A
trigger2       = p2statetype != A
trigger2       = p2bodydist X <100
trigger2       = enemynear,vel x >0
ignorehitpause = 1
value = 250

;SUPER JUMP
[State -1,SUPER JUMP]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = RoundState = 2
triggerall = Random < AILevel *12
triggerall = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger1 = enemy, NumProj >= 1
trigger2       = enemynear,vel x >0
trigger2       = p2bodydist X > 200
trigger2       = p2movetype = A
trigger2       = p2statetype = S
ignorehitpause = 1
value = 391

;RUN JUMP FWD
[State -1,RUN JUMP FWD]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = RoundState = 2
triggerall = Random < AILevel *12
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = P2Dist X >250
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger1 = enemynear,stateno = 40
trigger2 = enemynear,stateno = 45
trigger3 = enemynear,stateno = 50
trigger4 = enemynear,stateno = 51
trigger5 = enemynear,stateno = 52
ignorehitpause = 1
value = 390

;TAIL TRIP
[State -1,TAIL TRIP ]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = stateno != 760
triggerall = RoundState = 2
triggerall = Random < AILevel *2
triggerall = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
triggerall = statetype != L
triggerall = p2statetype != L
triggerall = p2movetype != H 
trigger1       = p2statetype = C
trigger1       = enemynear,vel x = 0
trigger1       = p2bodydist X > 90
trigger2       = p2statetype = S
trigger2      = p2bodydist X > 110
ignorehitpause = 1
value = 760


;NO JUMP
[State -1,NO JUMP]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = RoundState = 2
triggerall = stateno = 40
trigger1 = 1
ignorehitpause = 1
value = Ifelse(random<=500, 250, Ifelse(random>500, 770,500))





;--- OLD A.I.


;STRONG PUNCH
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(50) = 1
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = life>0
triggerall = p2life>2
triggerall = RoundState = 2
triggerall = Movetype = I
triggerall = ctrl
triggerall     = Random <300
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
triggerall     = p2bodydist X < 60
trigger1       = p2statetype = S && enemynear,movetype != A && random = [651,999]
trigger2   = p2statetype = C
trigger2   = p2bodydist X < 15 && random = [0,300]
ignorehitpause = 1
value = ifelse(enemynear,stateno = 49999,1000,200)
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>0
triggerall = p2life>2
triggerall = RoundState = 2
triggerall = Movetype = I
triggerall = ctrl
triggerall      = random = [0,300]
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
triggerall     = p2bodydist X < 60
trigger1       = p2statetype = S && enemynear,movetype != A && random = [651,900]
trigger2   = p2statetype = C
trigger2   = p2bodydist X < 15 && random = [500,999]
ignorehitpause = 1
value = 200

;THROW
[State -1,THROW]
type = ChangeState
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = stateno != [354,357]
triggerall = RoundState = 2
triggerall = p2bodydist x <= 34
triggerall = Random <=810
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = var(50) = 1
triggerall = movetype = I
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != L
trigger1 = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
ignorehitpause = 1
value = ifelse(random<=500,700,770)

;GRAB & POUND
[State -1,GRAB & POUND]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = RoundState = 2
triggerall     = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
triggerall     = statetype != L
triggerall     = p2statetype != L
trigger1       = p2movetype = A
trigger1       = p2statetype != C
trigger1       = enemynear,vel x = 0
trigger1       = p2bodydist X < 100
trigger1      = random <= 350 
trigger2       = enemynear,vel x <0
trigger2       = p2bodydist X < 60
trigger2       = p2movetype = H
trigger2       = enemy, NumProj <= 0
trigger2       = random <= 300 
ignorehitpause = 1
value = 600

;FIREBALL
[State -1,FIREBALL]
type = ChangeState
triggerall = var(50) = 1
triggerall = p2name != "MOTARO"
triggerall = p2name != "JADE MK2"
triggerall = life>1
triggerall = RoundState = 2
triggerall     = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
triggerall     = statetype != L
triggerall = stateno != [354,357]
trigger1       = p2movetype = A
trigger1       = p2statetype = A
trigger1       = enemynear,vel x <0
trigger1       = p2bodydist X >50
trigger1      = random >300 
trigger2       = enemynear, Stateno = 50
trigger2       = enemynear, anim = 43
trigger2      = random <= 700
trigger2       = p2bodydist X > 60
ignorehitpause = 1
value = 500

;TELEPORT
[State -1, TELEPORT]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = stateno != [700,770]
triggerall = statetype != A
triggerall = RoundState = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H
triggerall = p2movetype != H
trigger1 = P2Dist X <90
trigger1 = BackEdgeDist < 30
trigger1 = movetype = I
trigger2       = p2movetype = A
trigger2       = p2statetype = C
trigger2       = enemynear,vel x = 0
trigger2       = p2bodydist X < 90
trigger2      = random <= 400 
trigger2 = Ctrl
value = 750

;STRONG KICK
[State -1,STRONG KICK]
type = ChangeState
triggerall = var(50) = 1
triggerall = stateno != 357
triggerall = stateno != 196
triggerall = life>1
triggerall = p2life>2
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall     = statetype != L
trigger1       = p2movetype != H
trigger1       = p2bodydist X <175
trigger1     = random <= 30
trigger2       = p2movetype = A
trigger2       = p2statetype = A
trigger2       = p2bodydist X <100
trigger2     = random <= 30
ignorehitpause = 1
value = 250

;SUPER JUMP
[State -1,SUPER JUMP]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = Random =[301,999]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger1 = enemy, NumProj >= 1
trigger1 = Random <=430
trigger2      = enemynear,vel x = 0
trigger2       = p2bodydist X > 150
trigger2       = p2movetype = A
trigger2       = p2statetype = S
trigger2       = random <= 70 
ignorehitpause = 1
value = 391

;RUN JUMP FWD
[State -1,RUN JUMP FWD]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = Random =[1,400]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = enemynear,movetype = I
triggerall = P2Dist X >210
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger1 = enemynear,stateno = 40
trigger2 = enemynear,stateno = 45
trigger3 = enemynear,stateno = 50
trigger4 = enemynear,stateno = 51
trigger5 = enemynear,stateno = 52
ignorehitpause = 1
value = 390

;TAIL TRIP
[State -1,TAIL TRIP ]
type = ChangeState
triggerall = var(50) = 1
triggerall = life>1
triggerall = stateno != 760
triggerall = RoundState = 2
triggerall     = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
triggerall     = statetype != L
triggerall     = p2statetype != L
trigger1       = p2movetype = A
trigger1       = p2statetype = C
trigger1       = enemynear,vel x = 0
trigger1       = p2bodydist X > 150
trigger1      = random <= 300 
trigger2       = enemynear, Stateno = 11
trigger2       = enemynear, anim = 11
trigger2      = random <= 300 
trigger2      = p2bodydist X > 150
ignorehitpause = 1
value = 760

;****************************FATALITY-A.I.******************

;FATALITY MOTARO
[State -1, FATALITY]
type = ChangeState
triggerall = P2Dist X < 300
triggerall = var(50) = 1
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = Random < AILevel *11
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = movetype = I
triggerall = enemynear,stateno = 49999 || p2stateno = 49999 
triggerall = p2stateno != [5050,5150]
trigger1 = Ctrl
value = ifelse(random<=500,1000,2000)











