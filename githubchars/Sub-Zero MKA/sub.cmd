;subzero
;Created by: Gary Fisher ("ermac" on mugenguild.com, mugen-fantry.net)

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = y
y = x
z = c
a = b
b = a
c = z
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;---------------------------------------------------------------------
;---------------------------------------------------------------------
;---------------------------------------------------------------------
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
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "bck_x"
command = /B,x
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
;time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1


[Command]
name = "back_z"
command = /B,z
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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


[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
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
name = "pop";Required (do not remove)
command = D+y
time = 1




;ai shit------------------------------------------------------------------

[Command]
name = "CPU1"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU2"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU3"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU4"
command = U, D, B, F, a, b, c
time = 0



[Command]
name = "CPU5"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU6"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU7"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU8"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU9"
command = U, D, B, F, a, b, c
time = 0



[Command]
name = "CPU10"
command = U, D, B, F, a, b, c
time = 0

[Command]
name = "CPU11"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU12"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU13"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU14"
command = U, D, B, F, a, b, c
time = 0



[Command]
name = "CPU15"
command = U, D, B, F, a, b, c
time = 0

[Command]
name = "CPU16"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU17"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU18"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "CPU19"
command = U, D, B, F, a, b, c
time = 0



[Command]
name = "CPU20"
command = U, D, B, F, a, b, c
time = 0


[Command]
name = "holdc"
command = /c
time = 1


;-| Special+Super Motions |------------------------------------------------------

;[Command]
;name = "par"
;command = B+y

[Command]
name = "harakiri"
command = D, D, D

;[Command]
;name = "icemode"
;command = F, B, y

;[Command]
;name = "iceblock"
;command = F, B, x

[Command]
name = "polarblast"
command = B, F, z

[Command]
name = "pillar"
command = D, F, y


[Command]
name = "groundice"
command = D, F, x

[Command]
name = "tele"
command = F, B, b

[Command]
name = "freeze"
command = D, F, b

[Command]
name = "runfreeze"
command = B, F, x

[Command]
name = "iceshaker"
command = D, B, x

[Command]
name = "roll"
command = y+x

[Command]
name = "recroll"
command = a+b


[Command]
name = "iceclone"
command = D, B, y

[Command]
name = "coldsholder"
command = B, F, a

[Command]
name = "slide"
command = D, B, a





;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -1];dont remove dipshit

[State -1, mkd punch]
type = ChangeState
value = 301
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
triggerall = var(59) != 1
triggerall = var(54)=1
;triggerall = p2statetype !=A
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
trigger1 = ctrl = 1
;triggerall = p2bodydist x <= 15


; Stand Block
[state -1 ]
type = changestate
trigger1=ctrl
triggerall = p2stateno !=33557
triggerall = command = "c" && command !="holddown" && statetype = S && stateno !=120 && var(59)!=1
triggerall = command !="holdfwd" 
;triggerall = command !="holdback"
;triggerall = stateno!=20
value = 120

[state -1 ]
type = changestate
trigger1=ctrl
triggerall = p2stateno !=33557
triggerall = command = "c" && command = "holddown" && statetype = C && stateno !=120 && var(59)!=1
triggerall = command !="holdfwd" 
;triggerall = command !="holdback"
value = 120

[State -1, lights out fatality]  ;lights out
type = changestate
value = 33448
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = p2stateno = 33557
triggerall = p2bodydist x <= 25
triggerall = NumExplod(780) != 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, polar blast fatality]  ;polar blast fat
type = changestate
value = 33440
triggerall = var(59) != 1
triggerall = command = "c"
Triggerall = command = "holdback"
triggerall = p2stateno = 33557
;triggerall = p2bodydist x <= 25
triggerall = NumExplod(780) != 1
trigger1 = statetype = S
triggerall = p2name != "Pneophen's real cool guy"
triggerall = p4name != "Pneophen's real cool guy"
triggerall = p2name != "Pneophen's guy who uses lightning"
triggerall = p4name != "Pneophen's guy who uses lightning"
triggerall = p2name != "Pneophen's bliggity blurgh"
triggerall = p4name != "Pneophen's bliggity blurgh"
triggerall = p2name != "Clark Steel"
triggerall = p4name != "Clark Steel"
triggerall = p2name != "Yashiro Nanakase"
triggerall = p4name != "Yashiro Nanakase"
triggerall = p2name != "Chomper"
triggerall = p4name != "Chomper"
triggerall = p2name != "Cloud"
triggerall = p4name != "Cloud"
triggerall = p2name != "Old School Mario"
triggerall = p4name != "Old School Mario"
triggerall = p2name != "Master Hand"
triggerall = p4name != "Master Hand"
triggerall = p2name != "Psycho Shredder[S]"
triggerall = p4name != "Psycho Shredder[S]"
triggerall = p2name != "Shang Tsung MK1"
triggerall = p4name != "Shang Tsung MK1"
triggerall = p2name != "SuperLuigi"
triggerall = p4name != "SuperLuigi"
triggerall = p2name != "Tam Tam"
triggerall = p4name != "Tam Tam"
triggerall = p2name != "Tommy white ranger"
triggerall = p4name != "Tommy white ranger"
triggerall = p2name != "Marvel vs. Capcom's WarMachine"
triggerall = p4name != "Marvel vs. Capcom's WarMachine"
triggerall = p2name != "Ralf Jones"
triggerall = p4name != "Ralf Jones"
triggerall = p2name != "RYUJI YAMAZAKI"
triggerall = p4name != "RYUJI YAMAZAKI"
trigger1 = ctrl


;-----------------------------------------------------------------------


[State -1, break]
type = changestate
value = 9146
triggerall = var(59) != 1
triggerall = var(43) != 1
triggerall = var(43) = 0
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno != 1944
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = command = "z" && command = "holdfwd"
triggerall = NumExplod(780) != 1
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411



[State -1, break2]
type = changestate
value = 1334
triggerall = var(59) != 1
triggerall = var(44) != 1
triggerall = var(44) = 0
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno != 1944
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = command = "z" && command = "holdfwd"
triggerall = NumExplod(780) != 1
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411


[State -1, break3]
type = changestate
value = 1335
triggerall = var(59) != 1
triggerall = var(45) != 1
triggerall = var(45) = 0
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno != 1944
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = command = "z" && command = "holdfwd"
triggerall = NumExplod(780) != 1
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411




;---------------------------------------------------------------------------
[State -1, cold sholder]
type = changestate
value = 9147
triggerall = var(59) != 1
triggerall = command = "coldsholder"
triggerall = p2stateno != 33557
triggerall = power >= 2000
;triggerall = NumExplod(780) != 1
triggerall = NumExplod(1450) != 1
trigger1 = statetype = S
trigger1 = ctrl
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, ground ice]
type = changestate
value = 2468
triggerall = var(59) != 1
triggerall = power >= 5000
triggerall = command = "groundice"
triggerall = p2stateno != 4002
triggerall = p2stateno != 4003
triggerall = p2stateno != 4004
triggerall = p2stateno != 33557
triggerall = NumExplod(780) != 1
triggerall = numhelper(20159)!=1
trigger1 = statetype = S
trigger1 = ctrl
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945




;---------------------------------------------------------------------------
;[State -1, pillar]
;type = Changestate
;value = 14455
;triggerall = command = "pillar"
;trigger1 = ctrl = 1
;triggerall = var(59) != 1
;triggerall = p2stateno !=4002
;triggerall = p2stateno !=4003
;triggerall = p2stateno !=4006
;triggerall = p2stateno != 5110
;triggerall = p2stateno != 5120
;triggerall = p2stateno != 5050
;triggerall = p2stateno != 4004
;triggerall = p2stateno != 5120
;triggerall = p2stateno != 11603
;triggerall = p2stateno != 33557
;triggerall = NumExplod(780) != 1
;triggerall = p2statetype !=A
;trigger1 = statetype != A


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; par

[State -1, par]
type = changestate
value = 7005
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = p2stateno != 33557
triggerall = p2stateno !=4666
triggerall = p2stateno != 1944
triggerall = NumExplod(780) != 1
trigger1 = statetype = S 
trigger1 = ctrl
trigger1 = stateno = 0 || stateno = 20 || stateno = 150 || stateno = 151 ||stateno = 130 || stateno = 140
triggerall = numexplod(1349)!=1

[State -1, par]
type = changestate
value = 7007
triggerall = var(59) != 1
triggerall = var(54) = 1
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = p2stateno != 33557
triggerall = p2stateno !=4666
triggerall = p2stateno != 1944
triggerall = NumExplod(780) != 1
trigger1 = statetype = S 
trigger1 = ctrl
trigger1 = stateno = 0 || stateno = 20 || stateno = 150 || stateno = 151 ||stateno = 130 || stateno = 140
triggerall = numexplod(1349)!=1















;---------------------------------------------------------------------------
[State -1, throw]
type = Changestate
value = 6200
triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = command = "b"
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
triggerall = p2stateno !=4003
triggerall = p2stateno !=4006
triggerall = NumExplod(780) != 1
triggerall = p2stateno != 33557
;triggerall = FrontEdgeBodyDist < !100
triggerall = frontedgedist >= 40
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945


;---------------------------------------------------------------------------

;[State -1, ice mode]
;type = Changestate
;value = 1943
;triggerall = command = "icemode"
;triggerall = p2stateno !=4003
;triggerall = NumExplod(780) != 1
;triggerall = power >= 4000
;triggerall = var(59) != 1
;trigger1 = ctrl
;trigger1 = statetype = S
;triggerall = p2stateno != 5110
;triggerall = p2stateno != 5120
;triggerall = p2stateno != 33557
;triggerall = p2stateno !=1943
;triggerall = p2stateno !=1944
;triggerall = p2stateno !=1945
;triggerall = p2name != "Sub-Zero by Gary Fisher"


;[State -1, ice block]
;type = Changestate
;value = 1543;1945
;triggerall = command = "iceblock"
;;riggerall = p2stateno !=4003
;triggerall = NumExplod(780) != 1
;triggerall = power >= 8000
;triggerall = var(59) != 1
;trigger1 = ctrl
;trigger1 = statetype = S
;triggerall = p2stateno != 5110
;triggerall = p2stateno != 5120
;triggerall = p2stateno != 33557
;triggerall = stateno = 0
;trigger1 = p2stateno = 0 || p2stateno = 52 || p2stateno = 11 || p2stateno = 12 || p2stateno = 20 || p2stateno = 100 ||p2stateno = 130 || p2stateno = 140 || p2stateno = 1021 || p2stateno = 1005
;triggerall = p2stateno !=6017
;triggerall = p2stateno !=1943
;triggerall = p2stateno !=1944
;triggerall = p2stateno !=1945
;triggerall = p2name != "Sub-Zero by Gary Fisher"

;---------------------------------------------------------------------------

[State -1, polar blast super]
type = Changestate
value = 1944
triggerall = command = "polarblast"
triggerall = p2stateno !=4003
triggerall = NumExplod(780) != 1
triggerall = power >= 7000
triggerall = var(59) != 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = p2stateno != 33557
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945

;---------------------------------------------------------------------------
[State -1, run freeze]
type = Changestate
value = 9170
triggerall = command = "runfreeze"
triggerall = p2stateno !=4003
triggerall = power >= 4000
triggerall = var(59) != 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno != 5110
triggerall = NumExplod(780) != 1
triggerall = p2stateno != 5120
triggerall = p2stateno != 5030
triggerall = p2stateno != 5035
triggerall = p2stateno != 5050
triggerall = p2stateno != 33557
triggerall = p2stateno != 1337
triggerall = p2stateno != 1338
triggerall = p2stateno != 6169
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945


;---------------------------------------------------------------------------

[State -1, freeze]
type = Changestate
value = 11543
triggerall = command = "freeze"
triggerall = p2stateno !=4003
triggerall = p2stateno != 33557
triggerall = NumExplod(780) != 1
triggerall = var(59) != 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945



[State -1, air freeze]
type = Changestate
value = 11500
triggerall = command = "freeze"
triggerall = p2stateno !=4003
triggerall = p2stateno != 33557
triggerall = NumExplod(780) != 1
triggerall = var(59) != 1
trigger1 = ctrl
trigger1 = statetype = A
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945


;---------------------------------------------------------------------------
[State -1, mk slide]
type = Changestate
value = 11505
triggerall = command = "slide"
triggerall = NumExplod(780) != 1
triggerall = p2stateno != 33557
triggerall = p2stateno != 2021
triggerall = p2stateno != 6169
triggerall = NumExplod(1950) != 1
triggerall = var(59) != 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945



;---------------------------------------------------------------------------

[State - 1, dodge roll]
type = ChangeState
value = 6168
triggerall = command = "roll"
triggerall = p2stateno != 33557
triggerall = NumExplod(780) != 1
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "holdfwd"
triggerall = command = "z"
triggerall = power >= 1
triggerall = numexplod(3131)!=1
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, back hop]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ice shaker]
type = Changestate
value = 6202
triggerall = command = "iceshaker"
trigger1 = ctrl = 1
triggerall = var(59) != 1
triggerall = NumExplod(780) != 1
triggerall = power >= 3000
triggerall = p2stateno !=4003
triggerall = p2stateno != 33557
trigger1 = statetype = S
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945


;---------------------------------------------------------------------------

[State -1, combo punch 1]
type = ChangeState
value = 1990
triggerall = command = "y"
trigger1 = statetype = S
triggerall = var(59) != 1
triggerall = p2statetype !=A
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
trigger1 = ctrl = 1
triggerall = p2bodydist x <= 15




;---------------------------------------------------------------------------

[State -1, ice clone]
type = ChangeState
value = 1542
triggerall = var(59) != 1
triggerall = command = "iceclone"
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=4003
triggerall = numhelper(2506)!=1
triggerall = numhelper(2507)!=1
triggerall = p2stateno != 33557
trigger1 = statetype = S
trigger1 = ctrl
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945


[State -1, air ice clone]
type = ChangeState
value = 7543
triggerall = var(59) != 1
triggerall = command = "iceclone"
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=4003
triggerall = numhelper(2506)!=1
triggerall = numhelper(2507)!=1
triggerall = p2stateno != 33557
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = ctrl
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945


;---------------------------------------------------------------------------

;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = var(59) != 1
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, RoundHouse]
type = Changestate
value = 239
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, Sweep]
type = Changestate
value = 242
triggerall = var(59) != 1
;triggerall = Var(14) = 0
trigger1 = command = "a"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl; = 1

;---------------------------------------------------------------------------


[State -1, hp 1]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = Time > 7


[State -1, hp 2]
type = ChangeState
triggerall = var(59) != 1
value = 211
triggerall = command = "y"
trigger1 = stateno = 210
trigger1 = Time > 7

;---------------------------------------------------------------------------

[State -1, high kick combo starter]
type = Changestate
value = 1994
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = p2bodydist x <= 10
trigger1 = statetype = S
triggerall = p2statetype !=A
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
trigger1 = ctrl = 1
;trigger2 = stateno = 1991 && movecontact


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

[State -1, lp 1]
type = ChangeState
triggerall = var(59) != 1
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 241
trigger2 = Time > 8

[State -1, lp 2]
type = ChangeState
value = 241
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = stateno = 240
trigger1 = Time > 7

;---------------------------------------------------------------------------

[State -1, high kick]
type = ChangeState
triggerall = var(59) != 1
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, uppercut]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------


[State -1, crouching lp]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


[State -1, crouching lk]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 400
trigger2 = time > 7

;----------------------------------------------------------------------------

[State -1, crouching hk]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 430
trigger2 = time > 7

;---------------------------------------------------------------------------
[State -1, lk]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

[State -1, Jump straight Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "a"
;triggerall = p2statetype = A
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Kick 2 (classic mk jumpkick)

[State -1, classic Jump Kick]
type = ChangeState
value = 641
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = anim = 42 || anim = 43
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


[State -1, Jump Kick 1b]
type = ChangeState
triggerall = var(59) != 1
value = 641
triggerall = command = "a"
;triggerall = p2statetype = A
trigger1 = statetype = A
trigger1 = p2statetype = S
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking












;Jump Kick 2 (classic mk jumpkick)

[State -1, Jump Kick]
type = ChangeState
value = 642
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = anim = 41
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Air blocking



;---------------------------------------------------------------------------
;Jump high Punch

[State -1, Jump hp]
type = ChangeState
value = 612
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump low Punch air juggle

[State -1, Jump lp juggle]
type = ChangeState
value = 663;610
triggerall = var(59) != 1
triggerall = command = "b"
;triggerall = p2stateno = 5030 || p2stateno = 5035 || p2stateno = 5050 || p2stateno = 50
trigger1 = statetype = A
triggerall = p2statetype = A
trigger1 = ctrl




















;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------

;ai


[State -1, Activate AI]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
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
v = 59
value = 1

[State -1, uppercut]
type = ChangeState
value = 410
triggerall = movetype !=H
triggerall = movetype !=A
triggerall = var(59) = 1
triggerall = var(54)!=1
triggerall = p2statetype = A
triggerall = Numhelper(10133) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = p2movetype !=H
trigger1 = p2BodyDist X = [8,12]
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = stateno !=99441
triggerall = stateno !=99446
triggerall = stateno !=9439
triggerall = stateno !=14455
triggerall = stateno !=6017
triggerall = stateno !=1542
triggerall = stateno !=14456
triggerall = stateno !=45469
triggerall = stateno !=242
triggerall = stateno !=1994
triggerall = stateno !=2007
triggerall = stateno !=410
triggerall = stateno !=1200
triggerall = stateno !=99441
triggerall = stateno !=2019
triggerall = stateno !=195
triggerall = stateno !=239
triggerall = stateno !=9146
triggerall = stateno !=1159
triggerall = stateno !=668
triggerall = stateno !=1543
triggerall = stateno !=11542
triggerall = stateno !=3489
triggerall = stateno !=3488
triggerall = stateno !=6168
triggerall = stateno !=105
triggerall = stateno !=666
triggerall = stateno !=4547
triggerall = stateno !=1334
triggerall = stateno !=1335
triggerall = stateno !=1343
triggerall = stateno !=11543
triggerall = stateno !=33445
triggerall = stateno !=33448
triggerall = stateno !=33558
triggerall = stateno !=7005
triggerall = stateno !=4120
triggerall = stateno !=9147
triggerall = stateno !=3015
triggerall = stateno !=6200
triggerall = stateno !=9940
triggerall = stateno !=33440
triggerall = stateno != 410
triggerall = stateno != 411
triggerall = p2life != 0
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4

;[State -1, ai stunner] ;stun
;type = changestate
;value = 33558
;triggerall = var(59) = 1
;triggerall = p2bodydist x <= 10
;triggerall = p2life  < 700
;triggerall = p2stateno != 33557
;triggerall = p2stateno != 99446
;triggerall = p2stateno != 99440
;triggerall = p2stateno != 99441
;triggerall = p2stateno != 33558
;triggerall = p2stateno != 4119
;triggerall = p2stateno != 4118
;triggerall = p2stateno != 6173
;triggerall = p2stateno != 6169
;triggerall = p2stateno != 4120
;triggerall = p2stateno !=1943
;triggerall = p2stateno !=1944
;triggerall = p2stateno !=1945
;triggerall = p2stateno !=6200
;triggerall = p2stateno !=6201
;triggerall = p2stateno !=6202
;triggerall = p2stateno != 668
;triggerall = p2stateno != 669
;triggerall = p2stateno != 11501
;triggerall = p2stateno != 6169
;triggerall = matchover != 1
;triggerall = numhelper(10139) !=1
;triggerall = numhelper(10133) !=1
;triggerall = numhelper(10159) !=1
;triggerall = numhelper(2506) !=1
;triggerall = numhelper(2507) !=1
;triggerall = numhelper(10138) !=1
;triggerall = numhelper(14456) !=1
;triggerall = numhelper(20159) !=1
;triggerall = numhelper(20150) !=1
;triggerall = numhelper(10129) !=1
;triggerall = p2stateno !=4120
;triggerall = p2stateno !=3015
;triggerall = p2stateno !=3014
;triggerall = p2stateno !=6121
;triggerall = p2life != 0
;triggerall = roundno >= 3
;trigger1 = statetype = S
;triggerall = NumExplod(780) != 1
;trigger1 = p2statetype != A || p2statetype = C || p2statetype = S
;trigger1 = ctrl
;triggerall = roundstate !=3
;triggerall = matchover = 0
;triggerall = teammode = single


[State -1, ai breaker]
type = changestate
value = 9146
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno !=4118
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 666
triggerall = p2stateno != 667
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 430
triggerall = p2life != 0
triggerall = movetype = H
triggerall = statetype != A
triggerall = p2bodydist x = [0,25]
triggerall = p2statetype !=A
trigger1 = ctrl = 0
triggerall = Var(59)=1
triggerall = Var(32)>2
triggerall = statetype = S || statetype = C
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = var(43) != 1
triggerall = var(43) = 0



[State -1, ai breaker]
type = changestate
value = 1334
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno !=4118
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 666
triggerall = p2stateno != 667
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 430
triggerall = p2life != 0
triggerall = movetype = H
triggerall = statetype != A
triggerall = p2bodydist x = [0,25]
triggerall = p2statetype !=A
trigger1 = ctrl = 0
triggerall = Var(59)=1
triggerall = Var(32)>2
triggerall = statetype = S || statetype = C
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = var(44) != 1
triggerall = var(44) = 0



[State -1, ai breaker]
type = changestate
value = 1335
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno !=4118
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 666
triggerall = p2stateno != 667
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 430
triggerall = p2life != 0
triggerall = movetype = H
triggerall = statetype != A
triggerall = p2bodydist x = [0,25]
triggerall = p2statetype !=A
trigger1 = ctrl = 0
triggerall = Var(59)=1
triggerall = Var(32)>2
triggerall = statetype = S || statetype = C
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = var(45) != 1
triggerall = var(45) = 0







[State -1, ai parry]
type = changestate
value = 7005
triggerall = var(59) = 1
triggerall = p2stateno != 33557
triggerall = p2stateno !=4666
triggerall = p2stateno !=6202
triggerall = stateno != 6168
triggerall = p2stateno != 4119
triggerall = p2stateno != 4118
triggerall = p2stateno != 6173
triggerall = p2stateno != 6169
triggerall = p2bodydist x = [0,60]
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = p2statetype != C
triggerall = p2movetype = A
triggerall = p2statetype !=A
trigger1 = NumExplod(780) != 1
trigger1 = statetype = S
triggerall = NumExplod(780) != 1
trigger1 = ctrl
trigger1 = stateno = 0 || stateno = 20 || stateno = 150 || stateno = 151 ||stateno = 130 || stateno = 140
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=1945
triggerall = p2stateno !=1947
triggerall = numexplod(780) != 1
triggerall = roundstate !=3
triggerall = matchover = 0
triggerall = numexplod(1349)!=1
triggerall = p2stateno !=5120





[State - 1, ai dodge roll]
type = ChangeState
value = 6168
triggerall = p2movetype = A
triggerall = stateno != 7005
triggerall = p2bodydist x = [61,252]
triggerall = p2stateno != 33557
triggerall = var(59) = 1
triggerall = statetype !=A
triggerall = NumExplod(780) != 1
trigger1 = statetype = S
triggerall = p2life !=0
triggerall = life !=0
trigger1 = NumExplod(780) = 1
trigger1 = ctrl
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = roundstate !=3


[State -1, ai freeze]
type = Changestate
value = 11543
triggerall = p2stateno !=4003
triggerall = p2stateno !=4004
triggerall = p2stateno !=1338
triggerall = p2stateno !=6338
triggerall = p2bodydist x = [121,150]
triggerall = NumExplod(780) != 1
triggerall = var(59) = 1
triggerall = p2statetype = S
triggerall = p2stateno != 33557
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 11543
triggerall = p2stateno != 11603
triggerall = p2stateno != 6200
triggerall = p2stateno !=6173
triggerall = p2stateno !=4119
triggerall = p2stateno !=4118
triggerall = p2stateno !=4120
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = roundstate !=3

[State -1, ai ground ice]
type = changestate
value = 2468
triggerall = var(59) = 1
triggerall = p2bodydist x = [151,180]
triggerall = p2stateno != 4002
triggerall = p2stateno != 4003
triggerall = p2stateno != 4004
triggerall = p2stateno != 33557
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11468
triggerall = p2stateno != 6172
triggerall = p2stateno != 6169
triggerall = p2name !="Sub-Zero By Gary Fisher" && p2stateno !=2468
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=6173
triggerall = p2stateno !=4119
triggerall = p2stateno !=4118
triggerall = p2stateno !=4120
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = p2stateno !=1200
triggerall = p2statetype = S
triggerall = p2statetype != A
triggerall = NumExplod(780) != 1
triggerall = numhelper(20159)!=1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = roundstate !=3


[State -1, ai air freeze]
type = Changestate
value = 11500
triggerall = p2stateno !=4003
triggerall = p2bodydist x = [120,150]
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = stateno = 640 && movecontact
triggerall = NumExplod(780) != 1
triggerall = p2stateno != 33557
triggerall = p2stateno != 11500
triggerall = p2stateno != 6172
triggerall = p2stateno != 6169
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = statetype = A
triggerall = p2statetype = A
triggerall = roundstate !=3


[State -1, ai run freeze]
type = Changestate
value = 9170
triggerall = p2bodydist x = [200,300]
triggerall = p2stateno !=4003
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno != 5110
triggerall = NumExplod(780) != 1
triggerall = p2stateno != 5120
triggerall = p2stateno != 5030
triggerall = p2stateno != 5035
triggerall = p2stateno != 5050
triggerall = p2stateno != 33557
triggerall = p2stateno != 4119
triggerall = p2stateno != 4118
triggerall = p2stateno != 9170
triggerall = p2stateno != 6172
triggerall = p2stateno != 6173
triggerall = p2stateno != 6169
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=4120
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = roundstate !=3
triggerall = p2stateno != 1337
triggerall = p2stateno != 1338
triggerall = p2stateno != 14456
triggerall = p2stateno != 9439
triggerall = p2movetype !=H
triggerall = NumExplod(1950) != 1


[State -1, ai ice shaker]
type = Changestate
value = 6202
triggerall = p2bodydist x = [60,120]
triggerall = p2movetype != H
triggerall = p2statetype = A
trigger1 = ctrl = 1
triggerall = var(59) = 1
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=4003
triggerall = p2stateno != 33557
triggerall = p2stateno != 6202
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
trigger1 = statetype = S
triggerall = roundstate !=3
triggerall = matchover = 0

[State -1, ai ice clone]
type = ChangeState
value = 1542
triggerall = var(59) = 1
triggerall = p2stateno = 100
triggerall = p2stateno = 101
triggerall = p2stateno = 102
triggerall = p2bodydist x = [111,300]
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=4003
triggerall = numhelper(2506)!=1
triggerall = numhelper(2507)!=1
triggerall = p2stateno != 33557
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = roundstate !=3
triggerall = matchover = 0

[State -1, ai air ice clone]
type = ChangeState
value = 7543
triggerall = var(59) = 1
triggerall = p2bodydist x = [111,115]
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=4003
triggerall = numhelper(2506)!=1
triggerall = numhelper(2507)!=1
triggerall = p2stateno != 33557
trigger1 = statetype = A
trigger1 = statetype != S
triggerall = p2statetype = A
trigger1 = ctrl = 1
triggerall = roundstate !=3
triggerall = matchover = 0





[State -1, ai punch]
type = ChangeState
value = 1990
trigger1 = statetype = S
triggerall = var(59) = 1
trigger1 = ctrl = 1
triggerall = p2life !=0
;triggerall = NumExplod(780) != 1
triggerall = p2bodydist x <= 10
triggerall = p2statetype !=C
triggerall = p2statetype !=A
triggerall = p2statetype = S
triggerall = p2stateno !=33448
triggerall = p2stateno != 1990
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 6172
triggerall = p2stateno != 6169
triggerall = p2stateno !=11603
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4119
triggerall = p2stateno !=4118
triggerall = p2stateno !=4120
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = roundstate !=3
triggerall = matchover = 0

[State -1, ai punch 2]
type = ChangeState
value = 1991
triggerall = var(59) = 1
trigger1 = stateno = 1990 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557

[State -1, ai combo crouch lp]
type = ChangeState
value = 400
triggerall = var(59) = 1
trigger1 = stateno = 1991 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557

[State -1, ai lk combo kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
trigger1 = stateno = 400 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557

[State -1, ai combo uppercut]
type = ChangeState
value = 1993
triggerall = var(59) = 1
trigger1 = stateno = 430 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557



[State -1, ai kick 1]
type = ChangeState
value = 1994
trigger1 = statetype = S
triggerall = var(59) = 1
trigger1 = ctrl = 1
triggerall = p2bodydist x <= 14
triggerall = p2stateno != 6169
triggerall = p2life !=0
triggerall = p2statetype !=C
triggerall = p2statetype !=A
triggerall = p2statetype = S
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno != 6172
triggerall = p2stateno != 6169
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno !=11603
triggerall = p2stateno != 1943
triggerall = p2stateno != 1994
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=6173
triggerall = p2stateno !=4119
triggerall = p2stateno !=4118
triggerall = p2stateno !=4120
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = roundstate !=3
triggerall = matchover = 0

[State -1, ai kick 2]
type = ChangeState
value = 1995
triggerall = var(59) = 1
trigger1 = stateno = 1994 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = matchover = 0

[State -1, ai kick 3]
type = ChangeState
value = 1996
triggerall = var(59) = 1
trigger1 = stateno = 1995 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = matchover = 0

[State -1, ai kick 4]
type = ChangeState
value = 6200
triggerall = var(59) = 1
trigger1 = stateno = 1996 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = matchover = 0



[State -1, ai tech roll]
type = changestate
value = 5220
triggerall = var(59) = 1
trigger1 = stateno = 5110
;trigger2 = stateno = 5120
triggerall = p2bodydist x = [0,399]
triggerall = statetype != A
triggerall = life !=0
triggerall = p2statetype = A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = roundstate !=3
triggerall = p2stateno !=6171
triggerall = p2stateno !=5120
triggerall = p2stateno !=8810

[State -1, ai wakeup]
type = changestate
value = 6169
triggerall = var(59) = 1
trigger1 = stateno = 5110
;trigger2 = stateno != 5120
triggerall = NumExplod(780) != 1
triggerall = p2bodydist x = [0,399]
triggerall = life !=0
triggerall = statetype != A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 1943
triggerall = p2stateno != 1944
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = roundstate !=3
triggerall = matchover = 0
triggerall = p2stateno !=5120
triggerall = p2stateno !=8810


[State -1, ai wakeup sweep]
type = changestate
value = 6171
triggerall = var(59) = 1
trigger1 = stateno = 6169
triggerall = p2bodydist x = [0,5]
triggerall = statetype != A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = roundstate !=3
triggerall = matchover = 0




[State -1, ai polar blast super]
type = Changestate
value = 1944
triggerall = p2stateno !=4003
triggerall = NumExplod(780) != 1
triggerall = power = [5000,6000]
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = p2stateno != 33557
triggerall = p2stateno != 1943
triggerall = p2stateno != 1944
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 6169
triggerall = p2stateno != 4119
triggerall = p2stateno != 6172
triggerall = p2stateno != 1944
triggerall = p2stateno != 5150
triggerall = matchover = 0










[State -1, ai mk3 fat]  ;mk3k fat
type = changestate
value = 33448
triggerall = var(59) = 1
triggerall = p2life  < 700
triggerall = p2stateno = 33557 && time = 20
triggerall = p2bodydist x <= 25
triggerall = roundno >= 3
trigger1 = statetype = S
triggerall = numhelper(10139) !=1
triggerall = numhelper(10133) !=1
triggerall = numhelper(10159) !=1
triggerall = numhelper(2506) !=1
triggerall = numhelper(2507) !=1
triggerall = numhelper(10138) !=1
triggerall = numhelper(14456) !=1
triggerall = numhelper(20159) !=1
triggerall = numhelper(20150) !=1
triggerall = numhelper(10129) !=1
trigger1 = ctrl
triggerall = roundstate !=3


[state -1, ai polar blast fatality]
type = changestate
value = 33440
triggerall = var(59) = 1
triggerall = p2life  < 700
triggerall = p2stateno = 33557 && time = 20
;triggerall = p2bodydist x <= 25
triggerall = NumExplod(780) != 1
triggerall = roundno >= 3
trigger1 = statetype = S
triggerall = p2name != "Pneophen's real cool guy"
triggerall = p4name != "Pneophen's real cool guy"
triggerall = p2name != "Pneophen's guy who uses lightning"
triggerall = p4name != "Pneophen's guy who uses lightning"
triggerall = p2name != "Pneophen's bliggity blurgh"
triggerall = p4name != "Pneophen's bliggity blurgh"
triggerall = p2name != "Clark Steel"
triggerall = p4name != "Clark Steel"
triggerall = p2name != "Yashiro Nanakase"
triggerall = p4name != "Yashiro Nanakase"
triggerall = p2name != "Chomper"
triggerall = p4name != "Chomper"
triggerall = p2name != "Cloud"
triggerall = p4name != "Cloud"
triggerall = p2name != "Old School Mario"
triggerall = p4name != "Old School Mario"
triggerall = p2name != "Master Hand"
triggerall = p4name != "Master Hand"
triggerall = p2name != "Psycho Shredder[S]"
triggerall = p4name != "Psycho Shredder[S]"
triggerall = p2name != "Shang Tsung MK1"
triggerall = p4name != "Shang Tsung MK1"
triggerall = p2name != "SuperLuigi"
triggerall = p4name != "SuperLuigi"
triggerall = p2name != "Tam Tam"
triggerall = p4name != "Tam Tam"
triggerall = p2name != "Tommy white ranger"
triggerall = p4name != "Tommy white ranger"
triggerall = p2name != "Marvel vs. Capcom's WarMachine"
triggerall = p4name != "Marvel vs. Capcom's WarMachine"
triggerall = p2name != "Ralf Jones"
triggerall = p4name != "Ralf Jones"
triggerall = p2name != "RYUJI YAMAZAKI"
triggerall = p4name != "RYUJI YAMAZAKI"
triggerall = numhelper(10139) !=1
triggerall = numhelper(10133) !=1
triggerall = numhelper(10159) !=1
triggerall = numhelper(2506) !=1
triggerall = numhelper(2507) !=1
triggerall = numhelper(10138) !=1
triggerall = numhelper(14456) !=1
triggerall = numhelper(20159) !=1
triggerall = numhelper(20150) !=1
triggerall = numhelper(10129) !=1
trigger1 = ctrl












[State -1, ai cold sholder]
type = changestate
value = 9147
triggerall = var(59) = 1
triggerall = p2bodydist x = [20, 90]
triggerall = p2stateno != 9147
triggerall = p2stateno != 33557
;triggerall = p2movetype != H
triggerall = p2stateno != 6169
triggerall = p2stateno != 6170
triggerall = p2stateno != 6172
triggerall = p2stateno != 4119
triggerall = p2stateno != 4118
triggerall = p2stateno != 1030
triggerall = p2stateno != 1051
triggerall = p2stateno != 1040
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945
triggerall = p2stateno !=6338
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2life != 0
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 6168
;triggerall = NumExplod(780) != 1
triggerall = NumExplod(1344) != 1
triggerall = NumExplod(1450) != 1
trigger1 = statetype = S
trigger1 = ctrl
triggerall = matchover = 0

[State -1, ai cold sholder 2 frozen]
type = changestate
value = 9147
triggerall = var(59) = 1
triggerall = p2bodydist x = [0, 150]
triggerall = p2stateno != 9147
triggerall = p2stateno = 4003
triggerall = p2stateno != 33557
triggerall = p2movetype != H
triggerall = p2stateno != 6169
triggerall = p2stateno != 6170
triggerall = p2stateno != 6172
triggerall = p2stateno != 4119
triggerall = p2stateno != 4118
triggerall = p2stateno != 1030
triggerall = p2stateno != 1051
triggerall = p2stateno != 1040
triggerall = p2stateno != 1943
triggerall = p2stateno != 1944
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2life != 0
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 6168
triggerall = NumExplod(780) != 1
trigger1 = statetype = S
trigger1 = ctrl
triggerall = matchover = 0



[State -1, AI Never Stand]
type = ChangeState
value = 20
triggerall = Var(59) = 1
triggerall = random >= 298 && random < 299 || random >= 998 && random <= 999
triggerall = ctrl = 1
triggerall = P2Stateno != 33557
triggerall = p2statetype = A
trigger1 = p2bodydist X > 300 && p2bodydist X < 400







;----------------------------------
;style change
;----------------------------------

[state -2, classic to hapkido]
type = changestate
trigger1 = var(54) = 2
trigger1 = numexplod(55)!=1
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = statetype !=A
trigger1 = command = "start"
value = 290
ctrl=1
;triggerall = numhelper(10133)!=1
triggerall = numhelper(8012)!=1
triggerall = numhelper(4012)!=1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block





[state -2, hapkido to classic]
type = changestate
trigger1 = var(54) = 1
trigger1 = numexplod(55)!=1
trigger1 = ctrl = 1
trigger1 = command = "start"
trigger1 = statetype = S
triggerall = statetype !=A
value = 291
ctrl=1
;triggerall = numhelper(10133)!=1
triggerall = numhelper(8012)!=1
triggerall = numhelper(4012)!=1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
