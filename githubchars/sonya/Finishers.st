[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 1200, chg]
type = changeanim
trigger1 = time = 20
value = 3000

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Helper
trigger1 = animelem = 12
stateno = 3003
name = "fireball"
postype = p1
pos = 0,0
sprpriority = 10
keyctrl = 0
ownpal = 0
under = 1

[State 1000, 7]
type = ChangeState
trigger1 = P2StateNo = 3002
value = 0
ctrl = 1

[Statedef 3002]     ;p2
type    = S
movetype= H
physics = S

[State 9251,misil]
type = explod
trigger1 = time = 0
anim = F50
postype = p1
pos = 0,0
sprpriority = 2

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 10
V = 26
value = 1

[State 5, Vel XY]
type = veladd
trigger1 = Time > 10
trigger1 = time < 72
X = -1.5

[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

[State 45, fff]
type = LifeSet
trigger1 = time = 50
value = 0

[State 1200, sound]
type = playsnd
trigger1 = time = 5
value = 4,1

[State 1200, chau]
type = posset
trigger1 = time = 99
X = 50

[State 45, 34fff]
type = Selfstate
trigger1 = time = 100
value = 5150

[Statedef 3003]
type    = S
movetype= A
anim = 3001
ctrl = 0
velset = 1, -5.5

[State 0]
type = velset
trigger1 = time = 25
x = -10
y = 1

[State 0]
type = velset
trigger1 = time = 40
x = 8
y = 10 - (p2bodydist X)*0.02

;trigger2 = p2bodydist X < 150

[State 0]
type = veladd
trigger1 = time > 40
x = 0.4
y = 0.5 - (p2bodydist X)*0.001


[State 2020, hit]
type = HitDef
trigger1 = time > 40
hitflag = M
attr = S, NA
damage    = 9999, 9999
sparkno = -1
p2stateno = 3002
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 2020, des]
type = destroyself
trigger1 = pos x > 320
trigger2 = pos y > 240