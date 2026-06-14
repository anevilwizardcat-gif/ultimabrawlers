; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================< SUPER STATES >========================================
;============================================================================================

;======================< SOUL PHOENIX >=============================
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = -1000 * !var(40)
sprpriority = 1
facep2 = 1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0
[State 3000, Super Pause FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -68, -63
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3000, Super Pause]
type = superpause
trigger1 = animelem = 2
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 2
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
time = 1
value = SCA

[State 3000, FX]
type = explod
trigger1 = animelem = 3
anim = 3004
ID = 3004
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 3000, Dust]
type = explod
trigger1 = animelem = 5
vel = 0, 0
anim = 7106
ID = 7106
sprpriority = 3
postype = p1
pos = -15, 0
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3000, SoulFist]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 3005
ID = 3005
name = "Soul Phoenix"
postype = p1
pos = 6, -50
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1
[State 3000, dome]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 3003
ID = 3003
name = "Dome"
postype = p1
pos = -30, 0
ownpal = 1
pausemovetime = 255
supermovetime = 255

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 17
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 13

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< MID -AIR SOUL PHOENIX >=============================
[Statedef 3050]
type = A
physics = N
movetype = A
anim = 3050
ctrl = 0
velset = 0, 0
poweradd = -1000 * !var(40)
sprpriority = 1

[State 3050, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0
[State 3050, Super Pause FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -13, -85
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3050, Super Pause]
type = superpause
trigger1 = animelem = 3
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 3
fvar(5) = 0

[State 3050, NHB]
type = nothitby
trigger1 = animelemtime(6) < -1
time = 1
value = SCA
[State 3050, width]
type = width
trigger1 = (animelemtime(4) >= 0 && animelemtime(9) < 0)
value = 16, 0

[State 3050, FX]
type = explod
trigger1 = animelem = 4
anim = 1054
ID = 1054
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1

[State 3050, SoulFist]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 3055
ID = 3055
name = "Soul Phoenix"
postype = p1
pos = 60, -48
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 3050, Vel]
type = velset
trigger1 = animelem = 6
x = -3
y = -6
[State 3050, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0
physics = A

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 17
channel = 0
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 13


;======================< CARDINAL BLADE >=============================
[Statedef 3100]
type = S
physics = S
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
poweradd = -1000 * !var(40)
juggle = ifelse((prevstateno = [1000, 4999]), 0, 6)
facep2 = 1
sprpriority = 1

[State 3100, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelemtime(1) = 2
value = 4, 0
channel = 0
[State 3100, Super Pause FX]
type = helper
trigger1 = anim = 3100 && animelemtime(1) = 2
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -25, -35
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3100, Super Pause]
type = superpause
trigger1 = anim = 3100 && animelemtime(1) = 2
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = anim = 3100 && animelemtime(1) = 2
fvar(5) = 0

[State 3100, NHB]
type = nothitby
trigger1 = anim = 3100 && animelemtime(4) < 0
time = 1
value = SCA

[State 3100, Vel]
type = velset
trigger1 = anim = 3100 && animelem = 8
x = 9
y = -12
[State 3100, Vel]
type = velmul
trigger1 = vel y < 0
x = 0.95
[State 3100, Vel]
type = velset
trigger1 = anim = 1101
x = 0

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelem = 8
value = 0, 41
[State 3100, Dust]
type = helper
trigger1 = anim = 3100 && animelem = 8
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelem = 3
value = 4, 16
channel = 0
ignorehitpause = 1
persistent = 0

[State 3100, Hit]
type = hitdef
trigger1 = (animelem = 2 || animelem = 3) && anim = 3100
trigger1 = var(11) := 1 && var(12) := ifelse((animelem = 2), -35, -60)
attr = S, HA
damage = 25, 5
animtype = Back
guardflag = M
hitflag = MAFD
priority = 4, Hit
pausetime = 3, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 2), -35, -60)
hitsound = sifelse(hitcount, -1, 2), 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), -8.75
air.type = Low
air.velocity = -4 * !numhelper(775), -8.75
down.hittime = 20
down.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
fall.animtype = Medium
forcestand = 1

[State 3100, hit2]
type = hitdef
trigger1 = (animelem = 4 || animelem = 6 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11) && anim = 3100
trigger1 = var(11) := 1 && var(12) := -100
attr = A, HA
damage = 25, 5
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse((animelem = 11), 15, 3), ifelse((animelem = 11), 15, 3)
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -100
hitsound = sifelse(hitcount, -1, 2), 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), -8.75
air.type = Low
air.velocity = -4 * !numhelper(775), -8.75
down.velocity = -4 * !numhelper(775), -8.75
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
forcestand = 1

[State 3100, hitsound]
type = playsnd
trigger1 = hitcount && movehit = 1
trigger1 = hitpausetime = ifelse((animelemtime(11) >= 0), 14, 2)
value = 2, 9
channel = 2
ignorehitpause = 1

[State 3100, statetype]
type = statetypeset
trigger1 = anim = 3100 && animelemtime(4) >= 0
statetype = A
physics = N
[State 3100, statetype]
type = statetypeset
trigger1 = anim = 3100 && animelemtime(8) >= 0
statetype = A
physics = A
[State 3100, Anim]
type = changeanim
trigger1 = anim = 3100 && animelemtime(11) >= 2 && vel y > -1
value = 1101
[State 3100, posfix]
type = posadd
trigger1 = anim = 1101
x = 24
y = -24
persistent = 0
[State 3100, Turn]
type = turn
trigger1 = anim = 1101
persistent = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1101
movetype = I


;======================< FINISHING SHOWER >=============================
[Statedef 3300]
type = S
physics = S
movetype = A
anim = 3300
ctrl = 0
velset = 0, 0
poweradd = -2000
facep2 = 1
sprpriority = 1

[State 3300, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 3300, Snd]
type = playsnd
trigger1 = !time
value = 5, 10
[State 3300, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 0
channel = 0
[State 3300, Super Pause FX]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -43, -68
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3300, Super Pause]
type = superpause
trigger1 = animelem = 5
time = 53
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 5
fvar(5) = 0

[State 3300, NHB]
type = nothitby
trigger1 = animelemtime(5) <= 0
time = 1
value = SCA

[State 3300, Vel]
type = velset
trigger1 = animelem = 2
x = -0.25
y = -0.25
[State 3300, Vel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.0025;200

[State 3300, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 3300, Dust]
type = helper
trigger1 = animelemtime(5) > 0 && !numhelper(3303)
helpertype = normal
stateno = 3303
ID = 3303
name = "F.S. Dust"
postype = p1
pos = 0, -ceil(pos y)
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
persistent = 0
supermovetime = 9999

[State 3300, Snd]
type = playsnd
trigger1 = animelemtime(5) = 5
value = 4, 3
channel = 0

[State 3300, bullets]
type = helper
trigger1 = animelemtime(5) > 0 && animelemtime(5) < 200 && !(time % 6)
helpertype = normal
stateno = 3305
ID = 3305
name = "Bullet"
postype = p1
ownpal = 1

[State 3300, statetype]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N
[State 3300, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;======================< VALKYRIE TURN >=============================
[Statedef 3400]
type = A
physics = N
movetype = I
anim = 3400
ctrl = 0
velset = 0, 0
poweradd = -1000 * !var(40)
sprpriority = 2
facep2 = 1

[State 3400, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3400, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -39, -70
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3400, Super Pause]
type = superpause
trigger1 = !time
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3400, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA
[State 3400, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3400, bound]
type = screenbound
trigger1 = time > 12
value = 0
movecamera = 0, 0

[State 3400, Pos]
type = posset
trigger1 = pos y >= 0
y = 0
[State 3400, Vel]
type = velset
trigger1 = time = 1
x = (-80 -(pos x * facing)) / 5.0
y = -pos y / 5.0
[State 3400, Vel]
type = velset
trigger1 = time = [6, 12]
x = 0
y = 0
[State 3400, Vel]
type = velset
trigger1 = time = 12
x = 15
y = 0
[State 3400, Snd]
type = playsnd
trigger1 = time = 12
value = 4, 14
channel = 0
persistent = 0

[State 3400, jet]
type = helper
trigger1 = time && !numhelper(6020)
helpertype = normal
stateno = 6020
ID = 6020
name = "Jets"
postype = p1
ownpal = 1
[State 3400, jet]
type = helper
trigger1 = time >= 12 && !numhelper(6028)
helpertype = normal
stateno = 6028
ID = 6028
name = "Jet Trail"
postype = p1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
[State 3400, particles]
type = explod
trigger1 = 1
vel = -1 + (random / 1000.0), 0
accel = 0, 0.05
anim = 3407
sprpriority = 3
postype = p1
pos = -45, -70
random = 20, 20
scale = 0.5, 0.5
ignorehitpause = 1

[State 3400, End]
type = changestate
trigger1 = time > 12 && frontedgedist <= -60
trigger2 = time >= 60
value = 3401


;--- RETURN ---
[Statedef 3401]
type = A
physics = N
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
juggle = ifelse((prevstateno = [1000, 4999]), 0, 6)
sprpriority = 1

[State 3401, NHB]
type = nothitby
trigger1 = anim = 3400
time = 1
value = SCA
[State 3401, Push]
type = playerpush
trigger1 = anim = 3400
value = 0

[State 3401, bound]
type = screenbound
trigger1 = facing = 1 && pos x < 0
trigger2 = facing = -1 && pos x > 0
value = 0
movecamera = 0, 1

[State 3401, Turn]
type = turn
trigger1 = !time

[State 3401, Pos]
type = posset
trigger1 = time <= 10
x = (-200 -50 * sin(time / 3.33)) * facing
[State 3401, Vel]
type = velset
trigger1 = !time && !AIlevel
y = ifelse(command = "holdup", -10, ifelse(command = "holddown", -2, -6))
[State 3401, Vel]
type = velset
trigger1 = !time && AIlevel
y = ifelse(p2dist y <= -90, -10, ifelse(p2dist y <= -30, -6, -2))

[State 3401, Vel]
type = velset
trigger1 = time = 10
x = 6
y = -1.5
[State 3401, Accel]
type = veladd
trigger1 = time >= 10
y = 0.15

[State 3401, Anim]
type = changeanim
trigger1 = time >= 10 && anim != 3402 && anim != 49
trigger1 = command = "holdx" || command = "holdy" || command = "holdz" || command = "holda" || command = "holdb" || command = "holdc"
value = 3402
[State 3401, drill]
type = helper
trigger1 = anim = 3402 && animelemtime(3) >= 0 && !numhelper(3405)
helpertype = normal
stateno = 3405
ID = 3405
name = "Drill"
postype = p1
pos = 76, -43
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3401, Hit]
type = hitdef
trigger1 = anim = 3402 && hitcount <= 13
trigger1 = !((movecontact + movereversed) % 3)
trigger1 = var(11) := 1 && var(12) := -43
attr = A, HA
damage = 18, 7
animtype = Hard
air.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 12
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -43
hitsound = sifelse(hitcount, -1, 2), 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), 0
air.type = Low
air.velocity = -2 * !numhelper(775), -3
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 12
envshake.freq = 120
envshake.ampl = 4
yaccel = 0.5
forcestand = 1

[State 3300, hitsound]
type = playsnd
trigger1 = hitcount && movehit = 1
trigger1 = hitpausetime = 6
value = 2, 9
channel = 2
ignorehitpause = 1

[State 3401, End]
type = changeanim
trigger1 = vel y > 0 && pos y >= 10
value = 49

[State 3401, Vel]
type = velset
trigger1 = anim = 49
x = 0
y = 0
[State 3401, Pos]
type = posset
trigger1 = anim = 49
y = 0

[State 3401, statetype]
type = statetypeset
trigger1 = anim = 49
statetype = S
physics = S

[State 3401, Snd]
type = playsnd
trigger1 = anim = 49
value = 0, 52
persistent = 0

[State 3401, Dust]
type = explod
trigger1 = anim = 49
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 3401, End]
type = changestate
trigger1 = anim = 49 && !animtime
value = 0
ctrl = 1


;======================< DARKNESS ILLUSION >=============================
[Statedef 4000]
type = A
physics = N
movetype = A
anim = 4000
ctrl = 0
velset = 0, 0
poweradd = -3000
juggle = 15
facep2 = 1
sprpriority = 1

[State 4000, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 10
channel = 0
volume = 200
[State 4000, Super Pause FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = 20, -73
ownpal = 1
persistent = 0
supermovetime = 9999
[State 4000, Super Pause]
type = superpause
trigger1 = animelem = 3
time = 60
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 3
fvar(5) = 0

[State 4000, NHB]
type = nothitby
trigger1 = time < 8
time = 1
value = SCA

[State 4000, Vel]
type = velset
trigger1 = animelem = 3
x = 7.5
[State 4000, jet]
type = helper
trigger1 = animelemtime(3) > 0 && !numhelper(6020)
helpertype = normal
stateno = 6020
ID = 6020
name = "Jets"
postype = p1
ownpal = 1

[State 4000, Hit]
type = hitdef
trigger1 = animelemtime(3) = 1
trigger1 = !movecontact && !movereversed
attr = S, HA
damage = 0, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -60
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10 * !numhelper(775), 0
air.type = Low
air.velocity = -5 * !numhelper(775), -5
getpower = 0
givepower = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 0
forcestand = 1
kill = 0
yaccel = 0.5

[State 4000, p1state]
type = changestate
trigger1 = movehit || movereversed
value = 4001
[State 4000, p2state]
type = targetstate
trigger1 = movehit && numtarget
trigger1 = (target, stateno = 5000) || (target, stateno = 5010) || (target, stateno = 5020)
value = 1114001

[State 4000, guarded]
type = changestate
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0 && moveguarded
value = 4004
ignorehitpause = 1
[State 4000, End]
type = changestate
trigger1 = time >= 43
value = 4003


;--- PLAYER ---
[Statedef 4001]
type = S
physics = N
movetype = A
anim = 4001
ctrl = 0
velset = 0, 0
sprpriority = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 1114001
[State Throw]
type = targetfacing
trigger1 = !time
value = -1

[State 4001, double]
type = helper
trigger1 = anim = 4001 || (anim = 4002 && animelemtime(30) < 0)
trigger1 = !numhelper(4005)
helpertype = normal
stateno = 4005
ID = 4005
name = "Darkness Illusion"
postype = p1
persistent = 0

[State 4001, Push]
type = playerpush
trigger1 = anim = 4001
trigger2 = anim = 4002 && animelemtime(32) < 0
value = 0
[State 4001, nothitby]
type = nothitby
trigger1 = anim = 4001 && animelemtime(9) < 0
value = SCA
time = 1

[State 4001, Bind]
type = targetbind
trigger1 = anim = 4001 && animelemtime(41) < 0
pos = 60, 0
[State 4001, Bind]
type = targetbind
trigger1 = anim = 4002 && numtarget && animelemtime(25) < 0
pos = 60, -55 -(target, const(size.mid.pos.y))
ID = 4002

[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && animelem = 47
value = 3, 0
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4002 && animelem = 30
value = 4, 6

[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && (animelem = 8 || animelem = 14)
trigger2 = anim = 4002 && animelem = 9
value = 1, 2
channel = 1
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && animelem = 18
value = 1, 3
channel = 1
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && animelem = 11
trigger2 = anim = 4002 && animelem = 4
value = 1, 5
channel = 1
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && (animelem = 27 || animelem = 36)
trigger2 = anim = 4002 && (animelem = 15 || animelem = 24)
channel = 1
value = 1, 6
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4002 && animelem = 20
channel = 1
value = 1, 8
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4002 && animelem = 20
value = 5, 5
channel = 1
[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && (animelem = 47)
trigger2 = anim = 4002 && (animelem = 31)
value = 1, 9
channel = 1

[State 4001, hithighgr]
type = hitdef
trigger1 = anim = 4001
trigger1 = animelem = 8 || animelem = 14 || animelem = 19 || animelem = 36 || animelem = 37
attr = S, HA
damage = 18, 3
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 8 || animelem = 14), -83, ifelse((animelem = 19), -62, ifelse((animelem = 36), -78, -58)))
hitsound = s2, ifelse((animelem = 8 || animelem = 14), 2, ifelse((animelem = 19), 3, 6))
guardsound = s2, 0
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 0
air.type = Low
air.velocity = 0, -1.5
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
kill = ifelse((animelem = 8), 0, (numtarget != numenemy))
yaccel = 0.5

[State 4001, hitlowgr]
type = hitdef
trigger1 = anim = 4001
trigger1 = animelem = 11 || animelem = 28 || animelem = 38 || animelem = 39
attr = S, HA
damage = 18, 3
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 11), -29, ifelse((animelem = 28), -54, ifelse((animelem = 38), -30, -72)))
hitsound = s2, ifelse((animelem = 11), 5, 6)
guardsound = s2, 0
ground.type = Low
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 0
air.type = Low
air.velocity = 0, ifelse((animelem = 39), -3, -1.5)
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
kill = (numtarget != numenemy)
yaccel = 0.5

[State 4001, hitupgr]
type = hitdef
trigger1 = anim = 4001 && animelem = 48
attr = S, HA
damage = 18, 3
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -58
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, -13.5
air.type = Low
air.velocity = 0, -12
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 8
fall = 1
fall.recover = 0
kill = (numtarget != numenemy)
forcestand = 1

[State 4001, hitmidair]
type = hitdef
trigger1 = anim = 4002
trigger1 = animelem = 4 || animelem = 9 || animelem = 15 || animelem = 20 || animelem = 25
attr = A, HA
damage = 18, 3
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 4), -42, ifelse((animelem = 9), -40, ifelse((animelem = 15), -45, ifelse((animelem = 20), -50, -54))))
hitsound = s2, ifelse((animelem = 4), 5, ifelse((animelem = 9 || animelem = 20), 3, 6))
guardsound = s2, 0
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, -5
air.type = High
air.velocity = 0, ifelse((animelem = 25), -4, -2.5)
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
kill = (numtarget != numenemy)
yaccel = 0.5
forcestand = 1

[State 4001, hitfinal]
type = hitdef
trigger1 = anim = 4002 && animelem = 32
attr = A, HA
damage = 18, 3
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 4
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 4), -42, ifelse((animelem = 9), -40, ifelse((animelem = 15), -45, ifelse((animelem = 20), -50, -54))))
hitsound = s2, 3
guardsound = s2, 0
ground.type = Trip
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 4
air.type = Trip
air.velocity = 0, 9
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 8
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 4001, Vel]
type = velset
trigger1 = anim = 4001 && animelem = 56
y = -9
[State 4001, jet]
type = helper
trigger1 = anim = 4001 && animelemtime(56) >= 0 && !numhelper(6020)
helpertype = normal
stateno = 6020
ID = 6020
name = "Jets"
postype = p1
ownpal = 1

[State 4001, Snd]
type = playsnd
trigger1 = anim = 4001 && animelem = 56
value = 0, 41
[State 4001, Dust]
type = helper
trigger1 = anim = 4001 && animelem = 56
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 4001, FX]
type = explod
trigger1 = anim = 4001 && animelem = 46
anim = 4010
sprpriority = 4
postype = p1
pos = -10, -60
scale = 0.75, 0.75
removeongethit = 1
ownpal = 1
[State 4001, FX]
type = explod
trigger1 = anim = 4002 && animelem = 31
anim = 4010
sprpriority = 4
postype = p1
pos = -10, -60
scale = -.75, -.75
bindtime = -1
removeongethit = 1
ownpal = 1

[State 4001, Anim]
type = changeanim
trigger1 = anim = 4001 && animelemtime(56) >= 0 && numtarget
trigger1 = pos y <= -60 && (pos y -(target, pos y) = [ -50, 50])
value = 4002

[State 4001, Vel]
type = velmul
trigger1 = anim = 4002 && animelemtime(3) < 0
y = 0.75
[State 4001, Vel]
type = velset
trigger1 = anim = 4002 && animelemtime(3) >= 0 && animelemtime(36) < 0
y = ifelse(pos y <= -20, 0.1, 0)
[State 4001, Turn]
type = turn
trigger1 = anim = 4002 && animelem = 29
[State 4001, Vel]
type = velset
trigger1 = anim = 4002 && animelem = 29
x = 2

[State 4001, statetype]
type = statetypeset
triggerall = anim = 4001
trigger1 = animelemtime(36) < 0
trigger1 = animelemtime(40) >= 0 && animelemtime(46) < 0
trigger2 = animelemtime(53) >= 0 && animelemtime(56) < 0
statetype = S
physics = S
[State 4001, statetype]
type = statetypeset
triggerall = anim = 4001
trigger1 = animelemtime(36) >= 0 && animelemtime(40) < 0
trigger2 = animelemtime(46) >= 0 && animelemtime(53) < 0
trigger3 = animelemtime(56) >= 0
statetype = A
physics = N
[State 4001, statetype]
type = statetypeset
trigger1 = anim = 4002 && animelemtime(36) >= 0
statetype = A
physics = A
[State 4001, notarget]
type = changestate
trigger1 = (anim = 4001 && animelemtime(56) >= 0) && pos y < -120 && !numtarget
value = 4003


;--- DIZZY TARGET ---
[Statedef 1114001]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
[State 1114001, Anim]
type = changeanim
trigger1 = !time
value = 5300
[State 1114001, Pos]
type = posset
trigger1 = !time
y = 0
[State 1114001, fall]
type = hitfallset
trigger1 = 1
value = 0
[State Safety]
type = selfstate
trigger1 = time >= 180
value = 0
ctrl = 1


;--- NO TARGET ---
[Statedef 4003]
type = A
physics = A
movetype = I
anim = 4003
ctrl = 0
[State 4003, afterimageoff]
type = afterimagetime
trigger1 = !time
time = 0


;--- JUMP BACK ---
[Statedef 4004]
type = A
physics = A
movetype = I
anim = 43
ctrl = 0
velset = const(velocity.jump.back.x), const(velocity.jump.y)
[State 4004, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
[State 4004, Snd]
type = playsnd
trigger1 = !time
value = 0, 40


;======================< ETERNAL SLUMBER >=============================
[Statedef 4100]
type = S
physics = S
movetype = A
anim = 4100
ctrl = 0
velset = 0, 0
poweradd = -3000
sprpriority = 1
facep2 = 1

[State 4100, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7

[State 4100, Super Pause FX]
type = helper
trigger1 = animelemtime(3) = 5
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -14, -77
ownpal = 1
persistent = 0
supermovetime = 9999
[State 4100, Super Pause]
type = superpause
trigger1 = animelemtime(3) = 5
time = 60
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelemtime(3) = 5
fvar(5) = 0

[State 4100, NHB]
type = nothitby
trigger1 = animelemtime(5) < -1
time = 1
value = SCA

[State 4100, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 8
[State 4100, heart]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 4105
ID = 4105
name = "Eternal Slumber"
postype = p1
pos = 33, -74
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 4100, batexplods]
type = explod
trigger1 = animelem = 2
anim = 6100
ID = 4100
postype = p1
pos = 20, -71
sprpriority = 0
[State 4100, batexplods]
type = explod
trigger1 = animelem = 2
anim = 6100
ID = 4100
postype = p1
pos = 28, -44
sprpriority = 0
[State 4100, batexplods]
type = explod
trigger1 = animelem = 2
anim = 6100
ID = 4100
postype = p1
pos = -11, -18
sprpriority = 2
[State 4100, batexplods]
type = explod
trigger1 = animelem = 2
anim = 6100
ID = 4100
postype = p1
pos = 1, -19
sprpriority = 2
[State 4100, batexplods]
type = explod
trigger1 = animelem = 2
anim = 6100
ID = 4100
postype = p1
pos = 11, -17
sprpriority = 2
[State 4100, batexplods]
type = explod
trigger1 = animelem = 2
anim = 6100
ID = 4100
postype = p1
pos = -26, -37
sprpriority = 2

[State 4100, batexplods]
type = modifyexplod
trigger1 = numexplod(4100)
ID = 4100
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime = 60
[State 4100, batexplods]
type = removeexplod
trigger1 = animelemtime(9) >= 0 && numexplod(4100)
ID = 4100

[State 4100, wait]
type = changeanim
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0 && numhelper(4105)
trigger1 = helper(4105), stateno = 4105
value = 4100
elem = 8
[State 4100, success]
type = changestate
trigger1 = animelemtime(5) >= 0 && animelemtime(9) < 0 && numhelper(4105)
trigger1 = helper(4105), var(3) && helper(4105), stateno = 4107 && helper(4105), time >= 1
value = 4101
ignorehitpause = 1

[State 4100, Snd]
type = playsnd
trigger1 = animelem = 10
value = 4, 9
channel = 0
[State 4100, statetype]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
[State 4100, imageoff]
type = afterimagetime
trigger1 = animelemtime(9) >= 0
time = 0

[State 4100, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 4101]
type = S
physics = N
movetype = A
anim = 4101
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 4101, batexplods]
type = removeexplod
trigger1 = animelemtime(2) >= 0 && numexplod(4100)
ID = 4100
[State 4101, Push]
type = playerpush
trigger1 = 1
value = 0
[State 4101, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 4101, imageoff]
type = afterimagetime
trigger1 = animelemtime(2) >= 0
time = 0
[State 4101, spr]
type = sprpriority
trigger1 = 1
value = 1
[State 4101, Camera]
type = screenbound
trigger1 = animelemtime(12) >= 0 && animelemtime(14) < 0
value = 1
movecamera = 1, 0

[State 4101, curtain]
type = helper
trigger1 = !time
helpertype = normal
stateno = 4110
ID = 4110
name = "Curtain"
postype = p1
facing = 1
ownpal = 1
[State 4101, curtain]
type = helper
trigger1 = !time
helpertype = normal
stateno = 4110
ID = 4110
name = "Curtain"
postype = p1
facing = -1
ownpal = 1

[State 4101, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 15
channel = 0
[State 4101, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 9

[State 4101, Pos]
type = posset
trigger1 = animelemtime(2) >= 0
x = 0
y = 0
[State 4101, Pos]
type = posset
trigger1 = numhelper(4105) && animelemtime(12) >= 0 && animelemtime(14) < 0
x = helper(4105), var(11)
y = helper(4105), var(12)

[State 4101, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0
value = 5
[State 4101, palfx]
type = palfx
trigger1 = animelemtime(2) >= 0
time = 2
mul = 0, 0, 0

[State 4101, End]
type = changestate
trigger1 = !animtime
value = 4102
ctrl = 1


;--- END ---
[Statedef 4102]
type = S
physics = N
movetype = I
anim = 4102
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 4102, Snd]
type = playsnd
trigger1 = !time
value = 4, 20
channel = 0
[State 4102, Pos]
type = posset
trigger1 = pos y
y = 0
[State 4102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
