[Statedef 1000];rosa
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 19

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 7
projanim = 1000
projhitanim = 1001
projremanim = 1001
offset = 69*const(size.xscale), -90*const(size.xscale)
velocity = 6, 0 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 190, 95
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,21
guardsound = S4,21
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .5
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------
[StateDef 1100];bicicleta
type    = S;A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004
velset = 0,0

[State 1100, aAccelsal]
type = Velset
trigger1 = time = 5
X = 3
Y = -8;7

[State 1100, aAccelsal]
type = VelAdd
trigger1 = !movecontact
trigger1 = time > 5
X = 3
Y = 0.23

[State 1100, aAccelsal]
type = Veladd
trigger1 = !movecontact
trigger1 = time > 30
Y = 0.12


[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 5, 13

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
;trigger1 = time < 25
trigger1 = pos Y > -90
attr = S, NA
;animtype = Light 
;air.animtype = Back
damage = 150,70;18,6
guardflag = HL
hitflag = HAF
p1stateno = 1101
p2stateno = 1110
priority = 2, Hit       ;Attack priority: 0 (least) to 7 (most), 4 default
;pausetime = 2,2        ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
;numhits = -1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
;ground.velocity = -1,-5              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
;air.velocity = -1, -5.6
;airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
yaccel = .45
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = time > 7
trigger1 = pos Y > 0;AnimTime = 0
ctrl = 1
value = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = moveguarded
value = 1104

;--------------------------------------------
[StateDef 1110];p2stateno
type    = A
movetype= H
physics = S
ctrl = 0
anim = 21238
velset = -2,-3

[state 1000,ply]
type = playsnd
trigger1 = (time % 10) = 1
value = 3,(2 + (random%2)*6)

[State 820, 4351]
type = posadd
trigger1 = time =  0
X = (p2bodydist X) -6
y = p2bodydist Y

[State 820, 4351]
type = Velset
Trigger1 = p2stateno = 1102
x = -1
y = 0

[State 820, 4351]
type = Veladd;set
Trigger1 = p2stateno = 1103
x = -2
y = 0.4

[State 821, 4] ;Hit ground
type = SelfState
Trigger1 = p2stateno = 1103
value = 5050 
;---------------------------
[StateDef 1101];p1stateno
type    = A
movetype= A
physics = S
velset = 0,-3

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1;pos Y > -110;time < 32;animelem <= 10
X = 2

;[State 1100, aAccelsal]
;type = Velset
;trigger1 = time > 31
;X = 1
;Y = 0

[state 1000,ply]
type = playsnd
trigger1 = animelem = 6
trigger2 = animelem = 9
trigger3 = animelem = 12
trigger4 = animelem = 16
value = F5,1

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos y < -110;animelem = 17
value = 1102
;---------------------------
[StateDef 1102];quieto en y
type    = A
movetype= A
physics = S
velset = 1,0

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
y=0.1

[state 1000,ply]
type = playsnd
trigger1 = animelem = 17
value = F5,1

[State 1000, BounceOff]
type = ChangeState
trigger1 = animelem = 18;pos Y > 0
;ctrl = 1
value = 1103
;-------------------
[StateDef 1103];bajando
type    = A
movetype= A
physics = S
velset = 0,3.3

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
Y = 0.2

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos Y > 0
ctrl = 1
value = 0
;--------------------
[StateDef 1104];bloqueado
type    = A
movetype= A
physics = S
velset = 0,-1.5

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
Y = 0.1
X = -0.4

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos Y > 0
ctrl = 1
value = 0
;--------------
[StateDef 1200]
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 900


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 29
trigger1 = Time > 10
x = 10

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 1
trigger2 = Animelem  = 2
y = -12

[State 1100, aAcce]
type = VelSet
trigger1 = Animelem  = 3
y = 0

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 7
trigger2 = Animelem  = 8
y = 6

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 17

[State 1100, aAcce]
type = VelSet
trigger1 = movecontact
X = 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 256, 132
guardflag = HLMF
hitflag = AHLMF
pausetime = 2,0;20,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-4
air.velocity = -3,-4
air.hittime = 17  
fall = 1
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1201

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------
[Statedef 1201]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;--------------------------------------------
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 125
sprpriority = 4

[State 1000, gibber]
type = PlaySnd
trigger1 = animelem = 6
value = 4, 11

[State 1000, gibbersds]
type = sprpriority
trigger1 = 1
value = 5


[State 800, 1]
type = HitDef
Trigger1 = animelem = 7
pausetime = 0,0
attr = S, ST          ;Attributes
hitflag = HAFD
guardflag = M          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 330
sparkno = -1          ;No spark
guard.sparkno = -1
hitsound = 5,14
guardsound = 5,14
guard.slidetime = 5
guard.ctrltime = 2 
guard.velocity = -2
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p2stateno = 1301       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
yaccel = .5
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 810, Bind 7]
type = TargetBind
trigger1 = movehit = 1
pos = 60, 0

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

;-------------
[Statedef 1301]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 126
sprpriority = -2

;[State 9010, 0.1]
;type = Sprpriority
;trigger1 = animtime = 0
;value  >= 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 126

;[State 820, 435E1]
;type = velset
;Trigger1 = animtime = 0
;Y = -.3

;[State 820, 4435E1]
;type = velSET
;Trigger1 = animtime = 0
;X = -1

[State 820, 4351]
type = VelAdd
Trigger1 = time >= 22
Trigger1 = time <= 25
x = -2
;y = -.3 

;[State 820, 4351]
;type = VelAdd
;Trigger1 = Animtime = 0
;y = 5 
;x = -5

;[State 810, nd]
;type = TURN
;trigger1 = aNIMtime =  0

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = animtime =  0
value = 5050 ;Hit ground
;-------------------------

[Statedef 1500]
type    = S
physics = S

[State 0, LifeAdd]
type = LifeAdd
trigger1 = var(10) = 1
value = Life

[State 0, LifeAdd]
type = LifeAdd
trigger1 = var(10) = 0
value = -Life/2

[State 0]
type = ChangeState
trigger1 = var(10) = 1
value = 1501

[State 0]
type = ChangeState
trigger1 = var(10) = 0
value = 1502

;-------------------------
[Statedef 1501]; Mode on
type    = S
physics = S

[State 0]
type = VarSet
trigger1 = 1
v = 10
value = 0

;-------------------------
[Statedef 1502]; Mode off
type    = S
physics = S

[State 0]
type = VarSet
trigger1 = 1
v = 10
value = 1

;-------------------------

[Statedef 1600]
type    = S
physics = S
juggle  = 2
velset = 0,0
anim = 1006
ctrl = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = AnimElem = 3
value = 15

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
triggerall = command != "sp6"
value = 0
ctrl = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
triggerall = command = "sp6"
value = 1600

;-------------------------
[StateDef 1700]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
velset = 0,0,0
anim = 1008
;sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 6

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
trigger1 = stateno != 621
;triggerall = p2life > 10
;triggerall = p2life >= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1009
projhitanim = 1009
projremanim = 1009
offset = 50*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 6, 5 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 190, 95
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 8
fall.recover = 0
yaccel = .45
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1701

; Drop
[Statedef 1701]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 2244
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3

