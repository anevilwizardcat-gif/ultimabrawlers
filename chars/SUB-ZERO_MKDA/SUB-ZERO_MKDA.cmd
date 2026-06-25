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
;   name = "some_name"
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
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
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
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted


;-------------------------------------------------------------
;Reptile MK3U by chuchoryu
;-------------------------------------------------------------
;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B,F,B,F,c,z
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B,F,B,F,x,a
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B,F,B,F,x,b
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,B,F,x,c
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B,F,B,F,y,a
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,B,F,B,F,y,b
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,B,F,y,c
time = 0

[Command]
name = "CPU28"
command = U,U,D,D,B,F,B,F,z,a
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B,F,B,F,z,b
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B,F,B,F,z,c
time = 0

[Command]
name = "CPU31"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0

[Command]
name = "Cannon"
command = ~F, DF, D, DB, B, F
time = 30

;************* -ALITY COMMANDS****************
[Command]
name = "FATALITY_1"
command = ~B, F+y;~B, F, D+z
[Command]
name = "FATALITY_1"
command = B, F, y;B, F, D, z


[Command]
name = "FRIENDSHIP"
command = D,D
time = 30


[Command]
name = "Brutal"
command = y
time = 30



[Command]
name = "Animal"
command = a
time = 30

[Command]
name = "HeartRip"
command = b
time = 30

[Command]
name = "Laser"
command = c
time = 30

;************* SPECIALS COMMANDS**************
[command]
name = "Freeze"
command = ~D, F, x



[command]
name = "Slide"
command = ~D,B, b
time = 30
[command]
name = "Slide"
command = D,B, b
time = 30



[Command]
name = "iceshaker"
command = D, B, x
[Command]
name = "iceshaker"
command = D, B, x


;************ THROW COMMANDS******************
[Command]
name = "Throw"
command = c

[Command]
name = "Release"
command = ~c

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

;******************VARIOUS COMMANDS***************
[Command]
name = "Guarding"
command = /z
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1
[Command]
name = "start"
command = s
time = 1
[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1
[Command]
name = "TF"
command = F
time = 10
[Command]
name = "BB"
command = B, B
time = 10
[Command]
name = "recovery"
command = a+b
time = 1
[Command]
name = "run"
Command = c
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;****************************************************
;***                 STATE ENTRY                  ***
;****************************************************
[Statedef -1]
;AI Activation
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 50
value = 1

;===========================================================================
;=================================<A.I.>====================================
;===========================================================================


[State -1, goushoryuuken]
type=changestate
value=351
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 333, 200)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<500
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<500
trigger5= stateno=0 && prevstateno=5120 && time<=1
trigger5= ctrl && (p2bodydist x=[-40,40]) && random<500
trigger6= ctrl && (p2bodydist x=[-30,30])
trigger6= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<250

[State -1, ashurasenkuu]
type=changestate
value=351
triggerall = Var(50) = 1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= ctrl
trigger1= enemynear,movetype=A && (p2bodydist x=[-90,90])
trigger1= (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger1= random<ifelse((enemy,hitdefattr=SC,AT),500,250)
trigger1= var(10):=2

[State -1, roll/dodge]
type=changestate
value=ifelse(random<250,6202,11543)
triggerall = Var(50) = 1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && random<50
trigger1= (enemynear,movetype=A) && (enemynear,hitdefattr=SCA,AA)
trigger1= (p2bodydist x=[40,120]) && (enemynear,animtime<=-28)

[State -1, tenmashurettou]
type=changestate
value=351
triggerall = Var(50) = 1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && (p2bodydist x=[-60,60])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && random<200

[State -1, Guard]
type=changestate
value=120
triggerall = Var(50) = 1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= roundstate=2 && statetype=S
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, run/dash]
type=changestate
value=100
triggerall = Var(50) = 1 && numenemy
trigger1= statetype=S && roundstate=2
trigger1= ctrl && (stateno!=[100,105])
trigger1= !inguarddist && (p2bodydist x=[60,100]) && random<100

[State -1, Jump]
type=changestate
value=40
triggerall = Var(50) = 1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

;[State -1, Throw]
;type=changestate
;value=800
;triggerall= var(59)>=1 && numenemy
;triggerall= roundstate=2 && statetype=S
;triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
;triggerall= (p2bodydist x=[0,20]) && p2dist y=0 
;trigger1= ctrl && random<100
;trigger2= ctrl && (p2stateno=[120,140]) && random<750

[State -1, SHP]
type=changestate
value=210
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<25 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger2= p2bodydist x<=50 && movehit && random<250

[State -1, SHK]
type=changestate
value=220
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x=0 && movehit && random<250

[State -1, SMP2]
type=changestate
value=210
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,0]) && p2statetype=C && !(enemynear,hitfall)
triggerall= ((p2stateno!=[120,155]) || p2stateno=131 || p2stateno=152 || p2stateno=153) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random < 100

[State -1, SMK2]
type=changestate
value=210
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,0]) && p2statetype=C && !(enemynear,hitfall)
triggerall= ((p2stateno!=[120,155]) || p2stateno=131 || p2stateno=152 || p2stateno=153) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random < 50

[State -1, SMP]
type=changestate
value=210
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=230 || stateno=240 || stateno=400)
trigger1= p2bodydist x<=16 && movehit && random<250

[State -1, SMK]
type=changestate
value=220
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=16 && movehit && random<250

[State -1, SLP]
type=changestate
value=200
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, SLK]
type=changestate
value=230
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=230)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHP]
type=changestate
value=420
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHK]
type=changestate
value=450
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=A && p2stateno!=5120
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=30 && (movecontact=[1,4]) && random<250

[State -1, CMP]
type=changestate
value=410
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=210 || stateno=230 || stateno=250)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CMK]
type=changestate
value=420
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CLP]
type=changestate
value=400
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, CLK]
type=changestate
value=430
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,36]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= ctrl
trigger1= random<100 || (p2stateno=130 || p2stateno=150 || p2stateno=151) || p2stateno=5110
trigger2= (stateno=200 || stateno=230 || stateno=240) && time>=5 && random<50

[State -1, AHP]
type=changestate
value=420
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, AHK]
type=changestate
value=450
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, TKK]
type=changestate
value=360
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= vel x>0 && (vel y=[-3,3])
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50])
trigger1= ctrl && random<25
trigger2= stateno=220 && animelemtime(3)>=2 && random<50

[State -1, AMP]
type=changestate
value=610
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, AMK]
type=changestate
value=640
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[-50,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, ALP]
type=changestate
value=600
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, ALK]
type=changestate
value=630
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, tatsumakizankuukyaku]
type=changestate
value=11543
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,90]) && (p2dist y=[-90,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=210 || stateno=220 || stateno=240)
trigger1= movehit && (p2bodydist x=[0,30]) && random<250
trigger2= stateno=250
trigger2= movehit && (p2bodydist x=[0,60]) && random<250

[State -1, hyakkishuu]
type=changestate
value=360
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2dist y=[-160,-80]) && p2statetype!=L
triggerall= !(enemynear,ctrl) && p2movetype=H && (enemynear,stateno!=[120,155])
trigger1= ctrl && random<10

[State -1, gouhadouken]
type=changestate
value=351
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1000) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=100 && random<100
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[40,80]) && random<100

[State -1, shakunetsuhadouken]
type=changestate
value=11543
triggerall = Var(50) = 1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1000) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=120 && random<50
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250)
trigger2= movehit && (p2bodydist x=[0,25]) && random<50

[State -1, AI Brutality]
type = changestate
value = 3333
triggerall = Var(50) = 1
triggerall = random >= 300 && random < 449
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 35

[State -1, AI Friendship]
type = ChangeState
value = 7625
triggerall = Var(50) = 1
triggerall = random >= 450 && random < 599
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2stateno = 9010
trigger1 = p2life < 10
trigger1 = P2statetype = S

;***************Skelerip Fatality************************
[State -1,  Fatality #1]
type = ChangeState
value = 3333
triggerall = command = "FATALITY_1"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X > 10 && p2bodydist X < 60

;*************Eye Laser Fatality*************************
[State -1, Eye Laser Fatality]
type = NULL;ChangeState
value = 3380
triggerall = command = "Laser"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X > 40 && p2bodydist X < 220

;****************Brutality**************************
[State -1, Brutality]
type = NULL;ChangeState
value = 7620
triggerall = command = "Brutal"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 35

;***************Friendship***********************
[State -1, Friendship]
type = ChangeState
value = 7625
triggerall = command = "FRIENDSHIP"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2stateno = 9010
trigger1 = p2life < 10
trigger1 = P2statetype = S

;************Animality***************************
[State -1, Animality]
type = NULL;ChangeState
value = 7690
triggerall = command = "Animal"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2stateno = 9010
trigger1 = p2life < 10
trigger1 = p2bodydist X > 100
trigger1 = P2statetype = S

;*******************Supers************************
[State -1, E]
type = Changestate
value = 11543
triggerall = command = "Freeze"
triggerall = p2stateno !=4003
triggerall = p2stateno != 33557
triggerall = NumExplod(780) != 1
;triggerall = var(59) != 1
trigger1 = ctrl
trigger1 = statetype = S
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945

;SLIDE
[State -1, SLIDE]
type = ChangeState
value = 351
triggerall = var(50) != 1
triggerall = command = "Slide"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SLIDE]
type = Changestate
value = 6202
triggerall = command = "iceshaker"
trigger1 = ctrl = 1
triggerall = var(50) = 0
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=4003
triggerall = p2stateno != 33557
trigger1 = statetype = S
triggerall = p2stateno !=1943
triggerall = p2stateno !=1944
triggerall = p2stateno !=1945

;---------------------------------------------------------------------------
; Guarding
[State -1, Guarding]
type = ChangeState
value = 120
trigger1 = command = "Guarding"
triggerall = var(50) != 1
triggerall = stateno != 120
triggerall = stateno != 140
triggerall = ctrl
triggerall = statetype = S || statetype = C

;************ RUN ***********************
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(50) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(50) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;***********Throw*******************
[State -1]
type = NULL;changestate
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = p2bodydist X < 10
triggerall = statetype = S
trigger1 = ctrl = 1

;**********************KOMBO FEVER!**********************
;---------------------------------------------------------------------------
;Dial Hacha
[State -1]
type = ChangeState
value = 216
triggerall = command = "y" && p2bodydist X < 20 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact

;***********SLP RIGHT (starter)******************
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl = 1

;***********SHP RIGHT (starter)******************
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact

;***********ROUNDHOUSE KICK************
[State -1]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact

;************SLK************************
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl = 1

;***********SHK*************************
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact

;*******************CLP*****************
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = Command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;*************UPPERCUT*****************
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = Command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1

;*******************CLK*****************
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"||command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1

;*****************SWEEP*****************
[State -1]
type = Changestate
value = 450
trigger1 = command = "a"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;**************DIVING PUNCH*************
[State -1]
type = ChangeState
value = 620
trigger1 = command = "x"||command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602

;***************DROPKICK*****************
[State -1]
type = ChangeState
value = 650
trigger1 = command = "a"||command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602

;---------------------------------------------------------------------------
;Dial Patada alta 1
[State -1]
type = ChangeState
value = 236
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = p2bodydist X < 20 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 237 && movecontact

;Dial Patada alta 1
[State -1]
type = ChangeState
value = 237
triggerall = command = "a"
triggerall = p2bodydist X < 20 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 217 && movecontact

;Dial Patada roudhouse
[State -1]
type = ChangeState
value = 239
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = p2bodydist X < 20 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 236 && movecontact
