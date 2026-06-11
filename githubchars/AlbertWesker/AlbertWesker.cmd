;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Animations Template V.9
;by Acey
;===========================================================================

[Remap]
 x = x
 y = y
 z = z
 a = a
 b = b
 c = c
 s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;---------------------------------------------------------------------------
;Samurai Edge

[Command]
name = "SpecialX"
command = a+x

[Command]
name = "SpecialY"
command = b+y

[Command]
name = "SpecialZ"
command = c+z

;-------------------------------------------------------------------------
;Cobra Strike

[Command]
name = "SpecialA"
command = ~D,DF,F, x

[Command]
name = "SpecialB"
command = ~D,DF,F, y

[Command]
name = "SpecialC"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Ghost Butterfly

 [Command]
name = "SpecialD"
command = ~D,DB,B, x

[Command]
name = "SpecialE"
command = ~D,DB,B, y

[Command]
name = "SpecialF"
command = ~D,DB,B, z

;---------------------------------------------------------------------------
;Jaguar Dash

[Command]
name = "SpecialG"
command = ~D,DF,F, a

[Command]
name = "SpecialH"
command = ~D,DF,F, b

[Command]
name = "SpecialI"
command = ~D,DF,F, c

;---------------------------------------------------------------------------
;Phantom Move

[Command]
name = "SpecialJ"
command = ~D, DB, B, a

[Command]
name = "SpecialK"
command = ~D, DB, B, b

[Command]
name = "SpecialL"
command = ~D, DB, B, c

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b

[Command]
name = "Hyper2"
command = ~D, DF, F, b+c

[Command]
name = "Hyper2"
command = ~D, DF, F, a+c

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b+c

;---------------------------------------------------------------------------
;Hyper3

[Command]
name = "Hyper3"
command = ~D, DB, B, x+y

[Command]
name = "Hyper3"
command = ~D, DB, B, y+z

[Command]
name = "Hyper3"
command = ~D, DB, B, x+z

[Command]
name = "Hyper3"
command = ~D, DB, B, x+y+z

;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

;-------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

;-------------------------------------------------------------------------
;Double_Tap

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-------------------------------------------------------------------------
;2/3 button combination

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

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

;-------------------------------------------------------------------------
;Dir + button

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;------------------------------------------------------------------------
;One button

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

;-------------------------------------------------------------------------
;Hold button

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
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;------------------------------------------------------------------------
;Hold dir

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
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------
;-|-AI-|--------------------------------------------------------------------
[State -1, AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1
;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger2 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger3 = (anim = 21)
trigger4 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && var(59) = 1 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

;-|-AI Combo Attempt-|------------------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28) && (random <= 750)
trigger1 = (stateno = 240) && movecontact
trigger2 = (stateno = 241) && movecontact
value = 251

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 240) && movecontact
trigger2 = (stateno = 241) && movecontact
value = 250

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28)
trigger1 = (stateno = 210) && movecontact
trigger2 = (stateno = 211) && movecontact
trigger3 = (stateno = 230) && movecontact
value = 241

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28)
trigger1 = (stateno = 210) && movecontact
trigger2 = (stateno = 211) && movecontact
trigger3 = (stateno = 230) && movecontact
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 25)
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28)
trigger1 = (stateno = 210) && movecontact
trigger2 = (stateno = 211) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 241) && movecontact
value = 221

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 210) && movecontact
trigger2 = (stateno = 211) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 241) && movecontact
value = 220

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28) && (random <= 750)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 230) && movecontact
value = 211

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 230) && movecontact
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist x <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 430) && movecontact
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 440) && movecontact
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 400) && movecontact
trigger2 = (stateno = 430) && movecontact
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
trigger1 = (p2bodydist x <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 7000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 640) && movecontact
value = 650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 610) && movecontact
trigger2 = (stateno = 630) && movecontact
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 610) && movecontact
trigger2 = (stateno = 640) && movecontact
value = 620

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist x <= 25) && (random <= 750)
value = 600

;-|-AI Super Attempt-|----------------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1120

;-|-AI Attempt Hyper-|-----------------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = power >= 2000
value = 3000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (statetype != A)
triggerall = power >= 2000
value = 3100

;--------------------------------------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Statetype = S)
triggerall = (Ctrl)
triggerall = (enemynear,statetype != L)
triggerall = stateno < 3000
triggerall = power > 1000
triggerall = p2bodydist x < 100
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (numproj = 0) && (statetype != A)
value = 3600

;---------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl=1) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
triggerall = numexplod (32710) = 0 ;When there is no Hyper Background
trigger1 = (p2bodydist x >= 150) && (prevstateno != 5120) && (statetype != A)
trigger1 = power >= 1000 
value = 3200

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
[Statedef -1]
[State -1, AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
triggerall = !inguarddist
trigger1 = random <= 3000
trigger1 = (var(17) = [2,3]) && enemynear,movetype = H
trigger1 = p2bodydist X > 50

[State -1,AI run back]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = stateno != 105
triggerall = backedgedist > 70
triggerall = statetype != A
triggerall = random <= 3000
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 120

[State -1, AI Guard (Standing)]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != C
trigger1 = inguarddist

[State -1, AI Guard (Crouching)]
type = ChangeState
value = 131
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype = C
trigger1 = inguarddist

[State -1, AI Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist

[State -1]
type = changestate
value = 210
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 230 && movehit
trigger3 = random > 3000

[State -1]
type = changestate
value = 220
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 210 && movehit
trigger3 = stateno = 220 && movehit
trigger4 = stateno = 230 && movehit
trigger5 = stateno = 240 && movehit
trigger6 = random > 3000

[State -1]
type = changestate
value = 410
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 400 && movehit
trigger3 = stateno = 230 && movehit
trigger4 = stateno = 430 && movehit
trigger5 = random > 3000

[State -1]
type = changestate
value = 420
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 400 && movehit
trigger3 = stateno = 230 && movehit
trigger4 = stateno = 430 && movehit
trigger5 = stateno = 410 && movehit
trigger6 = stateno = 440 && movehit
trigger7 = stateno = 210 && movehit
trigger8 = stateno = 240 && movehit
trigger9 = random > 3000

[State -1]
type = changestate
value = 440
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 400 && movehit
trigger3 = stateno = 230 && movehit
trigger4 = stateno = 430 && movehit
trigger5 = random > 3000

[State -1]
type = changestate
value = 450
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 400 && movehit
trigger3 = stateno = 230 && movehit
trigger4 = stateno = 430 && movehit
trigger5 = stateno = 410 && movehit
trigger6 = stateno = 440 && movehit
trigger7 = stateno = 210 && movehit
trigger8 = stateno = 240 && movehit
trigger9 = random > 3000

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = random < 900
triggerall = statetype = S
triggerall = p2statetype != L
trigger1 = p2bodydist y = [-25,25]
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger2 = enemynear,moveguarded

[State -1]
type = changestate
value = 950
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 950 && movehit
trigger2 = stateno = 951 && movehit
trigger3 = stateno = 952 && movehit
trigger4 = p2bodydist x > 0

[State -1]
type = changestate
value = 951
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 950 && movehit
trigger2 = stateno = 951 && movehit
trigger3 = stateno = 952 && movehit
trigger4 = p2bodydist x > 0

[State -1]
type = changestate
value = 952
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = stateno = 950 && movehit
trigger2 = stateno = 951 && movehit
trigger3 = stateno = 952 && movehit
trigger4 = p2bodydist x > 0

[State -1]
type = changestate
value = 2320
triggerall = statetype != A && ctrl && var(59) = 1 && roundstate = 2
trigger1 = p2bodydist x > 200
trigger1 = random > 1000
;---------------------------------------------------------------------------

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;-----------------------------

[State -1,Hyper3]
type = ChangeState
value = 3100
triggerall = command = "Hyper3"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper2]
type = ChangeState
value = 3000
triggerall = command = "Hyper2"
triggerall = power >= 1000
trigger1 = StateType = S
trigger1 = ctrl = 1
trigger2 = StateType = A
trigger2 = ctrl = 1

;-----------------------------

[State -1, Hyper1]
type = ChangeState
value = 3201
triggerall = !var(59)
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact
trigger4 = stateno = 600 && MoveContact
trigger5 = stateno = 610 && MoveContact
trigger6 = stateno = 630 && MoveContact
trigger7 = stateno = 640 && MoveContact

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 2320
triggerall = command = "SpecialX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 2320
triggerall = command = "SpecialY"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 2320
triggerall = command = "SpecialZ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 920
triggerall = !var(59)
triggerall = command = "SpecialA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 925
triggerall = !var(59)
triggerall = command = "SpecialB"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 930
triggerall = !var(59)
triggerall = command = "SpecialC"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;-----------------------------

[State -1, Special3]
type = ChangeState
value = 935
triggerall = !var(7)
triggerall = command = "SpecialD"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 940
triggerall = !var(7)
triggerall = command = "SpecialE"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 945
triggerall = !var(7)
triggerall = command = "SpecialF"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 950
triggerall = !var(7)
triggerall = command = "SpecialG"
triggerall = ctrl
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 951
triggerall = !var(7)
triggerall = command = "SpecialH"
triggerall = ctrl
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 952
triggerall = !var(7)
triggerall = command = "SpecialI"
triggerall = ctrl
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

;Phantom Move1
[State -1, Special5]
type = ChangeState
value = 1003
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "SpecialJ")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Phantom Move2
[State -1, Special6]
type = ChangeState
value = 1004
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 40000
triggerall = (command = "SpecialK")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Phantom Move3
[State -1, Special7]
type = ChangeState
value = 1005
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "SpecialL")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Air Phantom Move1
[State -1, AirSpecial5]
type = ChangeState
value = 1009
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "SpecialJ") || command = "BB"
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air Phantom Move2
[State -1, AirSpecial6]
type = ChangeState
value = 1011
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "SpecialK")
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air Phantom Move3
[State -1, AirSpecial7]
type = ChangeState
value = 1012
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "SpecialL") || command = "FF"
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;-----------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 430) && (Movecontact)

;-----------------------------
[State -1, Y]
type = ChangeState
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = !var(59)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 211) && (Movecontact)
trigger5 = (StateNo = 230) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)

;-----------------------------
[State -1, A]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (StateNo = 430) && (Movecontact)

;-----------------------------
[State -1, B]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = !var(59)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
 
;-----------------------------
[State -1, C]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = !var(59)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 211) && (Movecontact)
trigger5 = (StateNo = 230) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)

;-----------------------------
[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------
[State -1, A agachado]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)

;-----------------------------
[State -1, B agachado]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)

;-----------------------------
[State -1, C agachado]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !var(59)
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !var(59)
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,152]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,152]

[State -1, Guard Push crouch]
type = ChangeState
value = 6320
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [150,152]

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll
[State -1]
type = ChangeState
value = 900
triggerall = !var(59)
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5080

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll
[State -1]
type = ChangeState
value = 910
triggerall = !var(59)
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5080


