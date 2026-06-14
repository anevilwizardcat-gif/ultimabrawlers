; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================< BLOOD SPARKS >=============================
;--- CONTROLLER ---
[Statedef 7050]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 5
[State 7050, Var]
type = varset
trigger1 = !time
var(11) = parent, var(11)
ignorehitpause = 1
[State 7050, Reset]
type = parentvarset
trigger1 = !time
trigger1 = playerIDexist(parent, ID)
var(11) = 0
ignorehitpause = 1

[State 7050, drop]
type = helper
trigger1 = var(11) > 0
helpertype = normal
stateno = 7051
ID = 7050
name = "Drop"
postype = p1
facing = -1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
ignorehitpause = 1
[State 7050, drop]
type = helper
trigger1 = var(11) > 0 && random < 500
helpertype = normal
stateno = 7051
ID = 7050
name = "Drop"
postype = p1
facing = -1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
ignorehitpause = 1

[State 7050, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7050, End]
type = destroyself
trigger1 = !var(11) || time >= 1 || root, numhelper >= 24


;--- < DROP > ---
[Statedef 7051]
physics = N
velset = 0, 0
anim = 7051
sprpriority = 3
[State 7051, Accel]
type = gravity
trigger1 = 1
[State 7051, Vel]
type = velset
trigger1 = !time
x = 4 + (random / 250.0)
y = -4 -(random / 250.0)

[State 7051, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 128

[State 7051, End]
type = destroyself
trigger1 = frontedgedist < -40
value = 7052
[State 7051, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -5
value = 7052


[Statedef 7052]
physics = N
velset = 0, 0
anim = 7052
sprpriority = -2
[State 7052, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 7052, Pos]
type = posset
trigger1 = 1
y = 0

[State 7052, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
[State 7052, Trans]
type = trans
trigger1 = animelemtime(4) < 0
trans = addalpha
alpha = 256, 128
[State 7052, fadeout]
type = trans
trigger1 = animelemtime(4) = [0, 20]
trans = addalpha
alpha = ceil(256 -12.8 * animelemtime(4)), ceil(128 + 6.4 * animelemtime(4))
[State 7052, End]
type = destroyself
trigger1 = !animtime
value = 7052


;========================< SOUL FIST >=============================
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 4.5, 4))
y = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1005, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 1005, bat]
type = explod
trigger1 = !numexplod(1008)
anim = 1008
ID = 1008
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
ignorehitpause = 1
scale = 1, 1
[State 1005, bat]
type = modifyexplod
trigger1 = numexplod(1008)
ID = 1008
postype = p1
facing = 1

[State 1005, particles]
type = explod
trigger1 = 1
vel = -1 + (random < 500), 0
accel = 0, 0.05
anim = 1009
sprpriority = 3
postype = p1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(69 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 4
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
air.velocity = -4 * !numhelper(775), -4
air.fall = 1
fall.recover = 1
fall.recovertime = 31
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(40)), 36 * !(root, var(40))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1005, End]
type = changestate
trigger1 = var(1) >= ifelse(var(10) = 3, 60, ifelse(var(10) = 2, 50, 40))
trigger2 = (facing = 1 && pos x > 160) || (facing = -1 && pos x < -160)
value = 1007
ignorehitpause = 1
[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1

[Statedef 1006]
type = A
physics = N
movetype = I
anim = 1006
velset = 0, 0
ctrl = 0
sprpriority = 4

[State 1006, removebat]
type = removeexplod
trigger1 = numexplod(1008)
ID = 1008
ignorehitpause = 1
[State 1006, bats]
type = helper
trigger1 = !numexplod(1008)
helpertype = normal
stateno = 6110
ID = 6110
name = "Bat"
postype = p1
size.xscale = 1
size.yscale = 1
persistent = 0
ownpal = 1
[State 1006, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, Vel]
type = velset
trigger1 = pos y >= -10
x = 0
y = 0
[State 1006, Vel]
type = posset
trigger1 = pos y >= -10
y = -10
[State 1006, End]
type = destroyself
trigger1 = !animtime

[Statedef 1007]
type = A
physics = N
movetype = I
anim = 1007
velset = 0.5 * vel x, 0.5 * vel y
ctrl = 0
sprpriority = 4
[State 1007, removebat]
type = removeexplod
trigger1 = numexplod(1008)
ID = 1008
[State 1007, bats]
type = helper
trigger1 = !numexplod(1008)
helpertype = normal
stateno = 6110
ID = 6110
name = "Bat"
postype = p1
persistent = 0
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 1007, Shrink]
type = angledraw
trigger1 = 1
scale = const(size.xscale) -time * (const(size.xscale) / 15), const(size.yscale) -time * (const(size.yscale) / 15)
[State 1007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1007, Vel]
type = velset
trigger1 = pos y >= -10
x = 0
y = 0
[State 1007, Vel]
type = posset
trigger1 = pos y >= -10
y = -10
[State 1007, End]
type = destroyself
triggerall = !numexplod(1008)
trigger1 = time >= 15
trigger2 = frontedgedist < -50 || backedgedist < 0


;========================< MID -AIR SOUL FIST >=============================
[Statedef 1055]
type = A
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 5

[State 1055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1055, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1055, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1055, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1055, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 1055, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 4.3, ifelse(var(10) = 2, 3.6, 2.9))
y = ifelse(var(10) = 3, 3, ifelse(var(10) = 2, 2.5, 2))

[State 1055, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1055, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 1055, bat]
type = explod
trigger1 = !numexplod(1008)
anim = 1058
ID = 1008
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
ignorehitpause = 1
scale = 1, 1
[State 1055, bat]
type = modifyexplod
trigger1 = numexplod(1008)
ID = 1008
postype = p1
facing = 1

[State 1055, particles]
type = explod
trigger1 = 1
vel = -1 + (random < 500), -.5 + (random < 500)
accel = 0, 0.05
anim = 1009
sprpriority = 3
postype = p1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1055, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1055, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = A, SP
damage = ceil(69 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 4
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
air.velocity = -4 * !numhelper(775), -4
down.velocity = 0, 0
down.hittime = 20
air.fall = 1
fall.recover = 1
fall.recovertime = 35
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(40)), 36 * !(root, var(40))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 1055, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1055, End]
type = changestate
trigger1 = var(1) >= ifelse(var(10) = 3, 60, ifelse(var(10) = 2, 50, 40))
trigger2 = (facing = 1 && pos x > 160) || (facing = -1 && pos x < -160) || pos y >= -20
value = 1007
ignorehitpause = 1
[State 1055, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1


;========================< EX SOUL FIST >=============================
[Statedef 1015]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
sprpriority = 4
juggle = 5

[State 1015, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1015, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1015, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1015, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1015, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 1015, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 6
y = 0
[State 1015, Vel]
type = velset
trigger1 = vel y > 0 && pos y >= -20
y = 0
[State 1015, Vel]
type = posset
trigger1 = vel y > 0 && pos y >= -20
y = -20

[State 1015, Turn]
type = turn
trigger1 = p2dist x < 0
persistent = 0
[State 1015, bat]
type = modifyexplod
trigger1 = numexplod(1008)
ID = 1008
postype = p1
facing = 1

[State 1015, Vel]
type = veladd
trigger1 = vel x < 6 && p2dist x >= 0
x = 0.2
[State 1015, Vel]
type = veladd
trigger1 = vel x > -6 && p2dist x < 0
x = -.2
[State 1015, Vel]
type = veladd
trigger1 = vel y < 6 && (enemynear, statetype = S || enemynear, statetype = A) && pos y < (enemynear, pos y + enemynear, const(size.mid.pos.y))
y = 0.2
[State 1015, Vel]
type = veladd
trigger1 = vel y > -6 && (enemynear, statetype = S || enemynear, statetype = A) && pos y > (enemynear, pos y + enemynear, const(size.mid.pos.y))
y = -.2
[State 1015, Vel]
type = veladd
trigger1 = vel y < 6 && (enemynear, statetype = C) && pos y < (enemynear, pos y + (enemynear, const(size.mid.pos.y) / 2.0))
y = 0.2
[State 1015, Vel]
type = veladd
trigger1 = vel y > -6 && (enemynear, statetype = C) && pos y > (enemynear, pos y + (enemynear, const(size.mid.pos.y) / 2))
y = -.2
[State 1015, Vel]
type = veladd
trigger1 = vel y < 6 && (enemynear, statetype = L) && pos y < -10
y = 0.2
[State 1015, Vel]
type = veladd
trigger1 = vel y > -6 && (enemynear, statetype = L) && pos y > -10
y = -.2

[State 1015, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1015, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 1015, bat]
type = explod
trigger1 = !numexplod(1008)
anim = 1008
ID = 1008
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
ignorehitpause = 1
scale = 1, 1

[State 1015, particles]
type = explod
trigger1 = 1
vel = -1 + (random < 500), 0
accel = 0, 0.05
anim = 1009
sprpriority = 3
postype = p1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1015, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1015, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(86 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 4
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
air.velocity = -4 * !numhelper(775), -4
down.velocity = 0, 0
down.hittime = 20
air.fall = 1
fall.recover = 1
fall.recovertime = 31
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 1015, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1015, End]
type = changestate
trigger1 = var(1) >= 90
trigger2 = root, movetype = H
value = 1007
ignorehitpause = 1
[State 1015, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1


;========================< EX AIR SOUL FIST >=============================
[Statedef 1065]
type = A
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 5

[State 1065, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1065, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1065, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1065, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1065, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 1065, Vel]
type = velset
trigger1 = !time
x = 5
y = 3.5
[State 1065, Vel]
type = velset
trigger1 = vel y > 0 && pos y >= -20
y = 0
[State 1065, Vel]
type = posset
trigger1 = vel y > 0 && pos y >= -20
y = -20

[State 1065, Turn]
type = turn
trigger1 = p2dist x < 0
persistent = 0
[State 1065, bat]
type = modifyexplod
trigger1 = numexplod(1008)
ID = 1008
postype = p1
facing = 1

[State 1065, Vel]
type = veladd
trigger1 = vel x < 6 && p2dist x >= 0
x = 0.2
[State 1065, Vel]
type = veladd
trigger1 = vel x > -6 && p2dist x < 0
x = -.2
[State 1065, Vel]
type = veladd
trigger1 = vel y < 6 && (enemynear, statetype = S || enemynear, statetype = A) && pos y < (enemynear, pos y + enemynear, const(size.mid.pos.y))
y = 0.2
[State 1065, Vel]
type = veladd
trigger1 = vel y > -6 && (enemynear, statetype = S || enemynear, statetype = A) && pos y > (enemynear, pos y + enemynear, const(size.mid.pos.y))
y = -.2
[State 1065, Vel]
type = veladd
trigger1 = vel y < 6 && (enemynear, statetype = C) && pos y < (enemynear, pos y + (enemynear, const(size.mid.pos.y) / 2.0))
y = 0.2
[State 1065, Vel]
type = veladd
trigger1 = vel y > -6 && (enemynear, statetype = C) && pos y > (enemynear, pos y + (enemynear, const(size.mid.pos.y) / 2.0))
y = -.2
[State 1065, Vel]
type = veladd
trigger1 = vel y < 6 && (enemynear, statetype = L) && pos y < -10
y = 0.2
[State 1065, Vel]
type = veladd
trigger1 = vel y > -6 && (enemynear, statetype = L) && pos y > -10
y = -.2

[State 1065, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1065, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 1065, bat]
type = explod
trigger1 = !numexplod(1008)
anim = 1008
ID = 1008
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
ignorehitpause = 1
scale = 1, 1

[State 1065, particles]
type = explod
trigger1 = 1
vel = -1 + (random < 500), 0
accel = 0, 0.05
anim = 1009
sprpriority = 3
postype = p1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1065, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1065, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = A, SP
damage = ceil(86 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 4
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
air.velocity = -4 * !numhelper(775), -4
down.velocity = 0, 0
down.hittime = 20
air.fall = 1
fall.recover = 1
fall.recovertime = 35
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 1065, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1065, End]
type = changestate
trigger1 = var(1) >= 90
trigger2 = root, movetype = H
value = 1007
ignorehitpause = 1
[State 1065, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1


;========================< SOUL PHOENIX >=============================
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 5

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 3, 3005, 3006)
ignorehitpause = 1
[State 3005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3005

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 1, 9)
y = 0

[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3005, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 3005, skull]
type = explod
trigger1 = !numexplod(3008)
anim = 3008
ID = 3008
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
ignorehitpause = 1
[State 3005, skull]
type = modifyexplod
trigger1 = numexplod(3008)
ID = 3008
postype = p1
facing = 1

[State 3005, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 4
postype = p1
pos = 5, 0
random = 20, 20
vel = -.2, -.33
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(56 * (root, fvar(12))), 7
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 6 * (var(2) < 3), 8
sparkno = -1
sparkxy = 0, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), -4
ground.cornerpush.veloff = 0
air.velocity = -4 * !numhelper(775), -4
guard.velocity = -12.97
fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.color = 0
palfx.sinadd = 80, 20, 0, 8
palfx.mul = 512, 192, 96
palfx.time = 32
sprpriority = 4
yaccel = 0.5
forcestand = 1

[State 3005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

ignorehitpause = 1
[State 3005, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 3005, End]
type = changestate
trigger1 = var(1) > 60
trigger2 = (facing = 1 && pos x > 180) || (facing = -1 && pos x < -180)
value = 3007
ignorehitpause = 1
[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 3, 3005, 3006)
ignorehitpause = 1

[Statedef 3006]
type = A
physics = N
movetype = I
anim = 3006
velset = 0, 0
ctrl = 0
sprpriority = 4
[State 3006, removeskull]
type = removeexplod
trigger1 = numexplod(3008)
ID = 3008
[State 3006, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 3006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3006, Vel]
type = velset
trigger1 = pos y >= -10
x = 0
y = 0
[State 3006, Vel]
type = posset
trigger1 = pos y >= -10
y = -10
[State 3006, End]
type = destroyself
trigger1 = !animtime

[Statedef 3007]
type = A
physics = N
movetype = I
anim = 3007
velset = 0.5 * vel x, 0.5 * vel y
ctrl = 0
sprpriority = 4
[State 3007, removeskull]
type = removeexplod
trigger1 = numexplod(3008)
ID = 3008
[State 3007, Shrink]
type = angledraw
trigger1 = 1
scale = const(size.xscale) -time * (const(size.xscale) / 15), const(size.yscale) -time * (const(size.yscale) / 15)
[State 3007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3007, Vel]
type = velset
trigger1 = pos y >= -10
x = 0
y = 0
[State 3007, Vel]
type = posset
trigger1 = pos y >= -10
y = -10
[State 3007, End]
type = destroyself
trigger1 = time >= 15
trigger2 = frontedgedist < -50 || backedgedist < 0
trigger2 = !numexplod(3008)


;========================< MID -AIR SOUL PHOENIX >=============================
[Statedef 3055]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 3, 3055, 3006)
ignorehitpause = 1
[State 3055, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3055, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3005

[State 3055, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3055, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3055, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 3055, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 1, 7.4)
y = ifelse((time < 2 && var(2) > 1), 1, 5.2)

[State 3055, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3055, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 3055, skull]
type = explod
trigger1 = !numexplod(3008)
anim = 3058
ID = 3008
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
removeongethit = 1
ignorehitpause = 1
scale = 1, 1
[State 3055, skull]
type = modifyexplod
trigger1 = numexplod(3008)
ID = 3008
postype = p1
facing = 1

[State 3055, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 4
postype = p1
pos = 5, 5
random = 20, 20
vel = -.2, -.33
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1

[State 3055, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
channel = 1
persistent = 0
ignorehitpause = 1

[State 3055, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = A, HP
damage = ceil(56 * (root, fvar(12))), 7
animtype = Back
hitflag = MAFD
guardflag = M
pausetime = 6 * (var(2) < 3), 8
sparkno = -1
sparkxy = 0, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), -4
ground.cornerpush.veloff = 0
air.velocity = -4 * !numhelper(775), -4
down.velocity = 0, 0
down.hittime = 20
guard.velocity = -12.97
fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.color = 0
palfx.sinadd = 80, 20, 0, 8
palfx.mul = 512, 192, 96
palfx.time = 32
sprpriority = 4
yaccel = 0.5
forcestand = 1

[State 3055, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 3055, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 3055, End]
type = changestate
trigger1 = var(1) > 60
trigger2 = (facing = 1 && pos x > 180) || (facing = -1 && pos x < -180) || pos y >= -20
value = 3007
ignorehitpause = 1
[State 3055, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 3, 3055, 3006)
ignorehitpause = 1


;========================< FINISHING SHOWER >=============================
[Statedef 3305]
type = S
physics = N
movetype = A
anim = 3305
ctrl = 0
velset = 0, 0
sprpriority = 3
juggle = 5

[State 3305, Pos]
type = varset
trigger1 = !time
fvar(0) = -20 -(random / 28.6)
ignorehitpause = 1

[State 3305, Bind]
type = bindtoroot
trigger1 = time < 6
pos = fvar(0), 1.65 * fvar(0)
facing = 1
ignorehitpause = 1

[State 3305, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3306
ignorehitpause = 1
[State 3305, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3305, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 3305, movehitvar]
type = varset
triggerall = !var(3)
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger2 = numhelper(3305)
trigger2 = helper(3305), var(3)
var(3) = 1
ignorehitpause = 1

[State 3305, sprpriorityvar]
type = varset
trigger1 = !time
var(0) = ifelse(random < 667, 3, -1)
ignorehitpause = 1
[State 3305, sprpriority]
type = sprpriority
trigger1 = 1
value = var(0)

[State 3305, Snd]
type = playsnd
trigger1 = time = 6
value = 5, 6

[State 3305, Vel]
type = velset
trigger1 = time = 6
x = 10
y = (1.65 * fvar(0) + 65) / 8.0
[State 3305, Vel]
type = velmul
trigger1 = vel y > 0 && pos y > -10
y = 0.75

[State 3305, Vel]
type = veladd
trigger1 = vel y < 2 && numenemy
trigger1 = (enemynear, statetype = S || enemynear, statetype = A) && pos y < (enemynear, pos y + enemynear, const(size.mid.pos.y))
y = 0.2
[State 3305, Vel]
type = veladd
trigger1 = vel y > -2 && numenemy
trigger1 = (enemynear, statetype = S || enemynear, statetype = A) && pos y > (enemynear, pos y + enemynear, const(size.mid.pos.y))
y = -.2
[State 3305, Vel]
type = veladd
trigger1 = vel y < 2 && numenemy
trigger1 = (enemynear, statetype = C) && pos y < (enemynear, pos y + (enemynear, const(size.mid.pos.y) / 2))
y = 0.2
[State 3305, Vel]
type = veladd
trigger1 = vel y > -2 && numenemy
trigger1 = (enemynear, statetype = C) && pos y > (enemynear, pos y + (enemynear, const(size.mid.pos.y) / 2))
y = -.2
[State 3305, Vel]
type = veladd
trigger1 = vel y < 2 && numenemy
trigger1 = (enemynear, statetype = L) && pos y < -10
y = 0.2
[State 3305, Vel]
type = veladd
trigger1 = vel y > -2 && numenemy
trigger1 = (enemynear, statetype = L) && pos y > -10
y = -.2

[State 3305, Vel]
type = velset
trigger1 = time < 6
x = 0
y = 0

[State 3305, Jet]
type = explod
trigger1 = time >= 6 && !numexplod(3306)
anim = 3306
ID = 3306
sprpriority = (var(0) + 1)
postype = p1
pos = -12, 0
bindtime = -1
removetime = -1
scale = 0.5, 0.5
ownpal = 1
[State 3305, Shot]
type = explod
trigger1 = time = 5
anim = 3307
ID = 3307
sprpriority = (var(0) + 1)
postype = p1
pos = -15, 0
scale = 0.5, 0.5
ownpal = 1
[State 3305, Trail]
type = explod
trigger1 = time >= 7; && !(time % 2)
anim = 3308 + (vel y >= 1.5) + (vel y >= 3) + (vel y <= -1.5) + (vel y <= -3)
ID = 3308
sprpriority = (var(0) + 1)
postype = p1
pos = -15, 0
vfacing = ifelse(vel y <= 0, 1, -1)
scale = 0.5, 0.5
ownpal = 1

[State 3305, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 3305, Hit High]
type = hitdef
trigger1 = time >= 10
priority = 4, Hit
attr = S, HP
damage = ceil(18 * (root, fvar(12))), 2
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
guard.pausetime = 0, 10
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
air.velocity = -3 * !numhelper(775), -3
down.velocity = -3 * !numhelper(775), -3
guard.velocity = -12.97 * !numhelper(775)
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = var(0)
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 3305, Hit Low]
type = hitdef
trigger1 = time >= 10 && random < 500
priority = 4, Hit
attr = S, HP
damage = ceil(18 * (root, fvar(12))), 2
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
guard.pausetime = 0, 10
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
air.velocity = -3 * !numhelper(775), -3
down.velocity = -3 * !numhelper(775), -3
guard.velocity = -12.97 * !numhelper(775)
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = var(0)
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 3305, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 330
supermovetime = 330

[State 3305, End]
type = changestate
trigger1 = (pos x != [-240, 240]) || time > 120
trigger2 = movecontact || movereversed
trigger3 = time < 6
trigger3 = root, movetype = H
value = 3306
ignorehitpause = 1


;--- Disappear ---
[Statedef 3306]
type = A
physics = N
movetype = I
anim = 3305
ctrl = 0
sprpriority = 4

[State 3306, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 3306, removejet]
type = removeexplod
trigger1 = numexplod(3306)
ID = 3306
ignorehitpause = 1

[State 3305, Fade]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17 * time), ceil(17 * time)
[State 3306, End]
type = changestate
trigger1 = time >= 15
value = 3307


;--- Wait ---
[Statedef 3307]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0

[State 3307, End]
type = destroyself
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target, time <= 1 && !(target, hitshakeover)


;===================< DARKNESS ILLUSION DOUBLE >===================
[Statedef 4005]
type = A
physics = N
movetype = A
anim = 4001
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 4005, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA, AA, AP, AT
ignorehitpause = 1
[State 4005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4005
ignorehitpause = 1
[State 4005, Push]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4005, Assert]
type = assertspecial
trigger1 = !time
flag = invisible
[State 4005, fadein]
type = trans
trigger1 = anim = 4001 && animelemtime(7) < 0
trans = addalpha
alpha = ceil(5.7 * animelemtime(1)), ceil(256 -5.7 * animelemtime(1))

[State 4005, Anim]
type = changeanim
triggerall = (root, stateno = 4001) && (root, anim = [4001, 4002])
trigger1 = anim != (root, anim)
trigger2 = animelemno(0) != (root, animelemno(0))
value = root, anim
elem = root, animelemno(0)

[State 4005, Pos]
type = posset
trigger1 = root, numtarget
x = root, pos x + 2 * (root, p2dist x * root, facing)
[State 4005, Pos]
type = bindtoroot
trigger1 = !(root, numtarget) && root, anim = 4001
pos = 120, 0
facing = -1
time = 1

[State 4005, Pos]
type = posset
trigger1 = 1
y = root, pos y
[State 4005, Turn]
type = turn
trigger1 = facing = (root, facing)

[State 4005, hithighgr]
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
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 0
air.type = Low
air.velocity = 0, -1.5
getpower = 0
givepower = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
kill = ifelse((animelem = 8), 0, (numtarget != numenemy))

[State 4005, hitlowgr]
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
hitsound = -1
guardsound = -1
ground.type = Low
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 0
air.type = Low
air.velocity = 0, ifelse((animelem = 39), -3, -1.5)
getpower = 0
givepower = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
kill = (numtarget != numenemy)

[State 4005, hitupgr]
type = hitdef
trigger1 = anim = 4001 && animelem = 42
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
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, -12
air.type = Low
air.velocity = 0, -12
getpower = 0
givepower = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.velocity = 0
fall = 1
fall.recover = 0
kill = (numtarget != numenemy)
forcestand = 1

[State 4005, hitmidair]
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
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, -5
air.type = High
air.velocity = 0, ifelse((animelem = 25), -4, -1.5)
getpower = 0
givepower = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.velocity = 0
fall = 1
fall.recover = 0
kill = (numtarget != numenemy)
forcestand = 1

[State 4005, hitfinal]
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
hitsound = -1
guardsound = -1
ground.type = Trip
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 4
air.type = Trip
air.velocity = 0, 9
getpower = 0
givepower = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.velocity = 0
fall = 1
fall.recover = 0
forcestand = 1

[State 4005, FX]
type = explod
trigger1 = anim = 4001 && animelem = 46
anim = 4010
sprpriority = 4
postype = p1
pos = -10, -60
scale = 0.75, 0.75
removeongethit = 1
ownpal = 1
[State 4005, FX]
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

[State 4005, End]
type = destroyself
trigger1 = !ishelper(4005) || root, stateno != 4001
[State 4005, End]
type = changestate
trigger1 = anim = 4002 && animelemtime(36) >= 0
value = 4006

[Statedef 4006]
type = A
physics = N
sprpriority = 1
[State 4006, Fade]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -8.5 * time), ceil(8.5 * time)
[State 4006, bats]
type = helper
trigger1 = time && !(time % 6)
helpertype = normal
stateno = 6110
ID = 6110
name = "Bat"
postype = p1
pos = 0, -55
[State 4006, Accel]
type = gravity
trigger1 = 1
[State 4006, End]
type = destroyself
trigger1 = time >= 30 || pos y >= 0


;========================< ETERNAL SLUMBER >=============================
;--- PROJECTILE ---
[Statedef 4105]
type = S
physics = N
movetype = A
anim = 4105
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 4105, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4106
ignorehitpause = 1
[State 4105, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 4105, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 4105, Vel]
type = velset
trigger1 = 1
x = 3.33
y = 2 * sin(time / 8.0)
;y = 2.5 * cos(time / 10.0)

[State 4105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 4105, sprpriority]
type = sprpriority
trigger1 = 1
value = 4

[State 4105, particles]
type = explod
trigger1 = 1
vel = -1 + (random < 500), 0
accel = 0, 0.05
anim = 4109
sprpriority = 4
postype = p1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 4105, pulse]
type = angledraw
trigger1 = 1
scale = ((0.75 + .25 * cos(time / 5.0)) * const(size.xscale)), ((0.75 + .25 * cos(time / 5.0)) * const(size.yscale))
[State 4105, Trans]
type = trans
trigger1 = 1
trans = add1

[State 4105, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 4105, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(20 * (root, fvar(12))), 5
animtype = Hard
fall.animtype = Hard
hitflag = MAF
pausetime = 0, 12
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
guard.velocity = -12.97
fall = 1
fall.recover = 0
getpower = 0
givepower = 0
sprpriority = 4
kill = 0
yaccel = 0.5
forcestand = 1

[State 4105, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 410
supermovetime = 410

[State 4105, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 4105, Bindstate]
type = changestate
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = (target, stateno = 5000) || (target, stateno = 5010) || (target, stateno = 5020) 
value = 4107
ignorehitpause = 1

[State 4105, End]
type = changestate
trigger1 = movecontact || movereversed
trigger2 = pos x != [ -240, 240]
trigger3 = root, stateno != 4100
value = 4106
ignorehitpause = 1


[Statedef 4106]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 4

[State 4106, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 4106, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 4106, Shrink]
type = angledraw
trigger1 = 1
scale = const(size.xscale) -time * (const(size.xscale) / 20), const(size.yscale) -time * (const(size.yscale) / 20)
[State 4106, Trans]
type = trans
trigger1 = 1
trans = add1
[State 4106, End]
type = destroyself
trigger1 = time >= 20
trigger2 = pos x != [ -200, 200]


;--- BINDING ---
[Statedef 4107]
type = S
movetype = A
physics = N
anim = 9741
sprpriority = 4
velset = 0, 0
ctrl = 0

[State 4107, throw]
type = targetstate
trigger1 = numtarget && time >= 1
value = 1114101
ignorehitpause = 1
persistent = 0
[State 4107, throw]
type = targetfacing
trigger1 = numtarget && time >= 1
value = -1
ignorehitpause = 1
persistent = 0

[State 4107, Turn]
type = turn
trigger1 = (facing != root, facing)
[State 4107, throw]
type = targetfacing
trigger1 = numtarget && time >= 1
value = -1
ignorehitpause = 1
persistent = 0

[State 4107, Var]
type = varset
trigger1 = numtarget
var(11) = target, const(size.head.pos.x)
[State 4107, Var]
type = varset
trigger1 = numtarget
var(12) = target, const(size.head.pos.y)

[State 4107, Bind 2]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(2) >= 0 && root, animelemtime(4) < 0
pos = 40, 0
[State 4107, Bind 3]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(6) < 0
pos = 6, -72
[State 4107, Bind 4]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(8) < 0
pos = 45, -70
[State 4107, Bind 5]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(10) < 0
pos = 40, 0
[State 4107, Bind 6]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(10) >= 0 && root, animelemtime(12) < 0
pos = 11, -44
[State 4107, Bind 7]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(12) >= 0 && root, animelemtime(14) < 0
pos = 0, 0
[State 4107, Bind 8]
type = bindtoroot
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(14) >= 0 && root, animelemtime(16) < 0
pos = 6, -104
[State 4107, pos 9]
type = posset
trigger1 = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(16) >= 0
x = 80 * facing
y = 0
[State 4107, Bindtarget]
type = targetbind
trigger1 = numtarget
trigger1 = target, anim = 1114101 && target, animelemtime(2) >= 0 && target, animelemtime(18) < 0
pos = 0, -1

[State 4107, hitdamage]
type = targetlifeadd
triggerall = numtarget && root, stateno = 4101 && root, anim = 4101
trigger1 = (root, animelem = 3) || (root, animelem = 5) || (root, animelem = 7) || (root, animelem = 9)
trigger2 = (root, animelem = 11) || (root, animelem = 13) || (root, animelem = 15) || (root, animelem = 17)
value = -ceil(40 * (root, fvar(12)))
kill = (root, animelem = 17)
[State 4107, givepower]
type = targetpoweradd
triggerall = numtarget && root, stateno = 4101 && root, anim = 4101
trigger1 = (root, animelem = 3) || (root, animelem = 5) || (root, animelem = 7) || (root, animelem = 9)
trigger2 = (root, animelem = 11) || (root, animelem = 13) || (root, animelem = 15) || (root, animelem = 17)
value = 36

[State 4107, End]
type = targetstate
trigger1 = numtarget
trigger1 = target, anim = 1114101 && target, animelemtime(19) >= 60
trigger2 = (root, stateno != [4100, 4102])
value = 1114102
[State 4107, End]
type = destroyself
trigger1 = !numtarget


;--- TARGET ---
[Statedef 1114101]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 1114101, ishelper]
type = selfstate
trigger1 = ishelper
value = prevstateno

[State 1114101, Anim]
type = changeanim2
trigger1 = !time
value = 1114101
[State 4101, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0
[State 1111114101, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0 && animelemtime(18) < 0
value = 5
[State 1111114101, spr]
type = sprpriority
trigger1 = animelemtime(18) >= 0
value = 0
[State 1111114101, palfx]
type = palfx
trigger1 = animelemtime(2) >= 0 && animelemtime(18) < 0
time = 2
mul = 0, 0, 0

[Statedef 1114102]
type = L
movetype = H
physics = C
velset = 0, 0
sprpriority = 0
[State 1114102, Pos]
type = posset
trigger1 = 1
y = 0
[State 1114102, End]
type = selfstate
trigger1 = 1
value = ifelse(alive, 5120, 5150)


;========================< CURTAIN >=============================
[Statedef 4110]
physics = N
anim = 4110
sprpriority = 5

[State 4110, posvar]
type = varset
trigger1 = !time
fvar(0) = -160
[State 4110, posvar]
type = varset
trigger1 = anim = 4110 && animelemtime(2) >= 0
trigger1 = anim = 4111 && animelemtime(2) < 0
fvar(0) = 0
[State 4110, posvar]
type = varadd
trigger1 = anim = 4110 && animelemtime(2) < 0
fvar(0) = 5.33
[State 4110, posvar]
type = varadd
trigger1 = anim = 4111 && animelemtime(2) >= 0
fvar(0) = -5.33

[State 4110, Bind]
type = posset
trigger1 = 1
x = fvar(0) * facing
y = ceil(pos y -screenpos y)
[State 4110, Anim]
type = changeanim
trigger1 = anim = 4110 && animelemtime(3) > 4 && (root, stateno != 4101)
value = 4111

[State 4110, palfx]
type = bgpalfx
trigger1 = anim = 4110 && animelemtime(1) < 30
time = 2
mul = 256 -ceil(animelemtime(1) * 8.53), 256 -ceil(animelemtime(1) * 8.53), 256 -ceil(animelemtime(1) * 8.53)
[State 4110, palfx]
type = bgpalfx
trigger1 = anim = 4110 && animelemtime(1) >= 30
time = 2
mul = 0, 0, 0
[State 4110, palfx]
type = bgpalfx
trigger1 = anim = 4111 && animelemtime(1) < 30
time = 2
mul = ceil(animelemtime(1) * 8.53), ceil(animelemtime(1) * 8.53), ceil(animelemtime(1) * 8.53)

[State 4110, Snd]
type = playsnd
trigger1 = anim = 4110
value = 5, 7
channel = 3
persistent = 0
[State 4110, Snd]
type = playsnd
trigger1 = anim = 4111
value = 5, 7
channel = 3
persistent = 0
[State 4110, palfx]
type = palfx
triggerall = root, stateno = 4101 && root, anim = 4101
trigger1 = root, animelemtime(3) = -1
trigger2 = root, animelemtime(5) = -1
trigger3 = root, animelemtime(7) = -1
trigger4 = root, animelemtime(9) = -1
trigger5 = root, animelemtime(11) = -1
trigger6 = root, animelemtime(13) = -1
trigger7 = root, animelemtime(15) = -1
trigger8 = root, animelemtime(17) = -1
time = 5
add = 255, 255, 255

[State 4110, End]
type = destroyself
trigger1 = anim = 4111 && backedgedist < -25 || frontedgedist < -25


;========================< THROW CLAW >=============================
[Statedef 825]
physics = N
velset = 0, 0
anim = 825
sprpriority = 2
[State 825, Bind]
type = bindtoroot
trigger1 = root, stateno = 820 && root, anim = 820 && root, animelemtime(9) < 0
pos = 105, -65
[State 825, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 825, Pos]
type = posset
trigger1 = 1
y = -65
[State 825, Vel]
type = velset
trigger1 = 1
x = 12

[State 825, jet]
type = explod
trigger1 = !time
anim = 3306
ID = 3306
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 825, jet]
type = removeexplod
trigger1 = !(root, numtarget); || (root, var(0) = 823)
trigger2 = ifelse((root, stateno = 820 && root, anim = 820), root, animelemtime(9) >= 0, 1)
trigger2 = frontedgedist <= 0
ID = 3306
[State 825, End]
type = changestate
trigger1 = !(root, numtarget); || (root, var(0) = 823)
trigger2 = ifelse((root, stateno = 820 && root, anim = 820), root, animelemtime(9) >= 0, 1)
trigger2 = frontedgedist <= 0
value = 6110


;========================< SOUL PHOENIX DOME >=============================
[Statedef 3003]
physics = N
velset = 0, 0
anim = 9741
[State 3003, Fade]
type = palfx
trigger1 = !time
time = 20
sinadd = -255, -255, -255, 80
[State 3003, FX]
type = explod
trigger1 = !time
anim = 3003
ID = 3003
sprpriority = 3
postype = p1
facing = 1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 3003, FX]
type = explod
trigger1 = !time
anim = 3003
ID = 3003
sprpriority = 3
postype = p1
facing = -1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 3003, Shrink]
type = modifyexplod
trigger1 = 1
ID = 3003
scale = 0.4 + (0.013 * time), 0.4 + (0.013 * time)
[State 3003, End]
type = removeexplod
trigger1 = time >= 15
[State 3003, End]
type = destroyself
trigger1 = time >= 15


;========================< FINISHING SHOWER DUST >=============================
[Statedef 3303]
physics = N
anim = 6010
sprpriority = 2
[State 3303, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3303, Turn]
type = turn
trigger1 = facing = (root, facing)
[State 3303, Bind]
type = posset
trigger1 = 1
x = ceil(root, pos x)
y = 0
[State 3303, End]
type = destroyself
trigger1 = root, stateno != 3300 || root, anim != 3300


;========================< DRILL >=============================
[Statedef 3405]
physics = N
velset = 0, 0
anim = 3405
sprpriority = 3
[State 3405, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3405, Pos]
type = bindtoroot
trigger1 = 1
pos = 76, -43
[State 3405, facing]
type = turn
trigger1 = facing != root, facing
[State 3405, Snd]
type = playsnd
trigger1 = !time
value = 5, 12
channel = 0

[State 3405, Shadows]
type = afterimage
trigger1 = 0;!time
time = 999
timegap = 1
framegap = 1
length = 12
palcontrast = 128, 128, 256
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add

[State 3405, Snd]
type = stopsnd
trigger1 = (root, stateno != 3401) || (root, anim != 3402)
trigger2 = (root, anim = 3402) && (root, animelemtime(3) < 0)
channel = 0
[State 3405, End]
type = destroyself
trigger1 = (root, stateno != 3401) || (root, anim != 3402)
trigger2 = (root, anim = 3402) && (root, animelemtime(3) < 0)


;========================< HOLE >=============================
[Statedef 6005]
physics = N
velset = 0, 0
anim = 6005
sprpriority = -5
[State 6005, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 6005, Fade]
type = trans
trigger1 = root, animelemtime(13) >= 0
trans = addalpha
alpha = ceil(256 -10.2 * root, animelemtime(13)), ceil(10.2 * root, animelemtime(13))
[State 6005, End]
type = destroyself
trigger1 = root, stateno != 191
trigger2 = root, stateno = 191 && root, animelemtime(13) >= 25


;========================< WALK DUST >=============================
[Statedef 6010]
physics = N
velset = 0, 0
anim = 6010
sprpriority = 2
[State 6010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 6010, Pos]
type = bindtoroot
trigger1 = 1
[State 6010, facing]
type = turn
trigger1 = facing != root, facing
[State 6010, Anim]
type = changeanim
trigger1 = anim != 6010 && root, anim = 20
value = 6010
[State 6010, Anim]
type = changeanim
trigger1 = anim != 6011 && root, anim = 21
value = 6011
[State 6010, End]
type = destroyself
trigger1 = root, stateno != 20


;========================< JETS >=============================
[Statedef 6020]
physics = N
velset = 0, 0
anim = 6020
sprpriority = 2
[State 6020, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 6020, Pos]
type = bindtoroot
trigger1 = 1
[State 6020, facing]
type = turn
trigger1 = facing != root, facing
[State 6020, Snd]
type = playsnd
trigger1 = !time
value = 0, 110
channel = 0
[State 6020, sndpos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State 6020, Anim]
type = changeanim
trigger1 = anim != 6020 && root, anim = 100
value = 6020
[State 6020, Anim]
type = changeanim
trigger1 = anim != 6021 && root, anim = 105
value = 6021
[State 6020, Anim]
type = changeanim
trigger1 = anim != 6022
trigger1 = root, anim = 110 || root, anim = 4001
value = 6022
[State 6020, Anim]
type = changeanim
trigger1 = anim != 6023 && root, anim = 115
value = 6023
[State 6020, Anim]
type = changeanim
trigger1 = anim != 6025 && (root, anim = 3400 || root, anim = 4000)
value = 6025

[State 6020, Shadows]
type = afterimage
trigger1 = !time
time = 999
timegap = 1
framegap = 1
length = 12
palcontrast = 128, 256, 128
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add
[State 6020, Snd]
type = stopsnd
trigger1 = (root, stateno != [100, 105]) && (root, stateno != [3400, 3401]) && (root, stateno != [4000, 4001])
trigger2 = root, anim != 100 && root, anim != 105 && root, anim != 110 && root, anim != 115 && root, anim != 3400 && (root, anim != [4000, 4001])
trigger3 = root, anim = 4001 && root, animelemtime(56) < 0
channel = 0
[State 6020, End]
type = destroyself
trigger1 = (root, stateno != [100, 105]) && (root, stateno != [3400, 3401]) && (root, stateno != [4000, 4001])
trigger2 = root, anim != 100 && root, anim != 105 && root, anim != 110 && root, anim != 115 && root, anim != 3400 && (root, anim != [4000, 4001])
trigger3 = root, anim = 4001 && root, animelemtime(56) < 0


;--- VECTOR DRAIN ---
[Statedef 6026]
physics = N
velset = 0, 0
anim = 6026
sprpriority = 2
[State 6026, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 6026, Pos]
type = bindtoroot
trigger1 = 1
[State 6026, Snd]
type = playsnd
trigger1 = !time
value = 0, 110
channel = 0
[State 6026, sndpos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
[State 6026, Anim]
type = changeanim
trigger1 = anim != 6026 && root, anim = 1302
value = 6026
[State 6026, Anim]
type = changeanim
trigger1 = anim != 6027 && root, anim = 1303
value = 6027
[State 6026, Shadows]
type = afterimage
trigger1 = !time
time = 999
timegap = 1
framegap = 1
length = 12
palcontrast = 128, 256, 128
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add
[State 6026, Snd]
type = stopsnd
trigger1 = (root, stateno != 1301 && root, stateno != 1321) || (root, anim != [1302, 1303])
channel = 0
[State 6026, End]
type = destroyself
trigger1 = (root, stateno != 1301 && root, stateno != 1321) || (root, anim != [1302, 1303])


;--- VALKYRIE TURN ---
[Statedef 6028]
physics = N
velset = 0, 0
anim = 6028
sprpriority = 2
[State 6028, Pos]
type = bindtoroot
trigger1 = root, stateno = 3400
pos = -40, -70
[State 6028, Anim]
type = changeanim
trigger1 = root, stateno = 3400
value = 6028
elem = 1
[State 6028, Snd]
type = playsnd
trigger1 = !time
value = 5, 14
channel = 0
[State 6028, sndpos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
[State 6028, Scale]
type = angledraw
trigger1 = 1
scale = (backedgedist + 160) / 32.0, 1
[State 6028, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 6028, End]
type = destroyself
trigger1 = !animtime


;========================< BATS >=============================
;--- WALK ---
[Statedef 6100]
physics = N
anim = 6100
velset = 0, 0
ctrl = 0

[State 6100, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)

[State 6100, Vel];to trigger sprpriority only
type = velset
trigger1 = 1
x = ifelse((sin(time / 5.0) < 0), -.001, 0.001)
[State 6100, Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = -5 + 25 * cos(time / 5.0), -50 + 35 * cos(time / 17.5)
[State 6100, Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = -5 -25 * cos(time / 5.0), -50 -35 * cos(time / 17.5)

[State 6100, spr]
type = sprpriority
trigger1 = var(0) = 1
value = ifelse(vel x >= 0, 2, -1)
[State 6100, spr]
type = sprpriority
trigger1 = var(0) = 2
value = ifelse(vel x <= 0, 2, -2)
[State 6100, End]
type = destroyself
trigger1 = root, stateno != 20 || root, movetype = H


;--- LOSE by TIME ---
[Statedef 6104]
physics = N
anim = 6100
sprpriority = 2
ctrl = 0
[State 6104, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)
[State 6104, Vel]
type = velset
trigger1 = 1
x = ifelse(var(0) = 1, -.25, 0.25)
y = -.5
[State 6104, End]
type = destroyself
trigger1 = root, stateno != 170


;--- LIE DOWN ---
[Statedef 6105]
physics = N
anim = 6101
velset = 0, 0
sprpriority = 2
ctrl = 0

[State 6105, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)
[State 6105, Turn]
type = turn
trigger1 = var(0) = 2 && facing != root, facing

[State 6105, varx]
type = varset
trigger1 = root, stateno != 5120
fvar(1) = 0
[State 6105, vary]
type = varset
trigger1 = root, stateno != 5120
fvar(2) = 0

[State 6105, varx]
type = varadd
trigger1 = var(0) = 1 && root, stateno = 5120
fvar(1) = -1.47
[State 6105, vary]
type = varadd
trigger1 = var(0) = 1 && root, stateno = 5120
fvar(2) = -1.16

[State 6105, varx]
type = varadd
trigger1 = var(0) = 2 && root, stateno = 5120
fvar(1) = 5
[State 6105, vary]
type = varadd
trigger1 = var(0) = 2 && root, stateno = 5120
fvar(2) = -6.33

[State 6105, varx]
type = varadd
trigger1 = var(0) = 3 && root, stateno = 5120
fvar(1) = 0.4
[State 6105, vary]
type = varadd
trigger1 = var(0) = 3 && root, stateno = 5120
fvar(2) = -0.5

[State 6100, varx]
type = varadd
trigger1 = var(0) = 4 && root, stateno = 5120
fvar(1) = -.6
[State 6100, vary]
type = varadd
trigger1 = var(0) = 4 && root, stateno = 5120
fvar(2) = -0.73

[State 6105, Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = 2 + fvar(1), -16 + fvar(2)
[State 6105, Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = -64 + fvar(1), -18 + fvar(2)
[State 6105, Bind]
type = bindtoroot
trigger1 = var(0) = 3
pos = -24 + fvar(1), -36 + fvar(2)
[State 6105, Bind]
type = bindtoroot
trigger1 = var(0) = 4
pos = -7 + fvar(1), -43 + fvar(2)

[State 6105, End]
type = destroyself
trigger1 = root, stateno != 5110 && root, stateno != 5120 && root, stateno != 5150
trigger2 = var(0) = 2 && root, stateno = 5120 && root, animelemtime(5) >= 0


;--- INTRO 1 ---
[Statedef 6106]
physics = N
anim = 6100
velset = 0, 0
sprpriority = 2
ctrl = 0

[State 6106, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)

[State 6100, varx]
type = varset
trigger1 = root, animelemtime(13) < 0
fvar(1) = 0
[State 6100, vary]
type = varset
trigger1 = root, animelemtime(13) < 0
fvar(2) = 0

[State 6106, varx]
type = varadd
trigger1 = var(0) = 1 && (root, animelemtime(13) = [0, 25])
fvar(1) = -.16
[State 6106, vary]
type = varadd
trigger1 = var(0) = 1 && (root, animelemtime(13) = [0, 25])
fvar(2) = -2.04

[State 6106, varx]
type = varadd
trigger1 = var(0) = 2 && (root, animelemtime(13) = [0, 25])
fvar(1) = -1.08
[State 6106, vary]
type = varadd
trigger1 = var(0) = 2 && (root, animelemtime(13) = [0, 25])
fvar(2) = -1.4

[State 6106, varx]
type = varadd
trigger1 = var(0) = 3 && (root, animelemtime(13) = [0, 25])
fvar(1) = -1.32
[State 6106, vary]
type = varadd
trigger1 = var(0) = 3 && (root, animelemtime(13) = [0, 25])
fvar(2) = -3.7

[State 6106, varx]
type = varadd
trigger1 = var(0) = 4 && (root, animelemtime(13) = [0, 25])
fvar(1) = 0.84
[State 6106, vary]
type = varadd
trigger1 = var(0) = 4 && (root, animelemtime(13) = [0, 25])
fvar(2) = -1.72

[State 6106, varx]
type = varadd
trigger1 = var(0) = 5 && (root, animelemtime(13) = [0, 25])
fvar(1) = -.04
[State 6106, vary]
type = varadd
trigger1 = var(0) = 5 && (root, animelemtime(13) = [0, 25])
fvar(2) = -.8

[State 6106, varx]
type = varadd
trigger1 = var(0) = 6 && (root, animelemtime(13) = [0, 25])
fvar(1) = -.56
[State 6106, vary]
type = varadd
trigger1 = var(0) = 6 && (root, animelemtime(13) = [0, 25])
fvar(2) = -3.4

[State 6106, Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = -23 + fvar(1), 1 + fvar(2)
[State 6106, Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = 0 + fvar(1), 4 + fvar(2)
[State 6106, Bind]
type = bindtoroot
trigger1 = var(0) = 3
pos = 23 + fvar(1), 1 + fvar(2)
[State 6106, Bind]
type = bindtoroot
trigger1 = var(0) = 4
pos = -19 + fvar(1), -7 + fvar(2)
[State 6106, Bind]
type = bindtoroot
trigger1 = var(0) = 5
pos = 0 + fvar(1), -10 + fvar(2)
[State 6106, Bind]
type = bindtoroot
trigger1 = var(0) = 6
pos = 19 + fvar(1), -7 + fvar(2)

[State 6106, spr]
type = sprpriority
trigger1 = 1
value = ifelse(var(0) >= 4, -1, 1)
pos = 2 + fvar(1), -16 + fvar(2)
[State 6106, End]
type = destroyself
trigger1 = root, stateno != 191 || root, movetype = H
trigger2 = root, stateno = 191 && root, animelemtime(14) >= 0


;--- WIN 1 ---
[Statedef 6107]
physics = N
anim = 6100
velset = 0, 0
sprpriority = 0
ctrl = 0

[State 6107, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)

[State 6107, Vel]
type = velset
trigger1 = !time && (var(0) % 2) = 1
x = ifelse(var(0) = 1, -.75, ifelse(var(0) = 3, -1.25, ifelse(var(0) = 5, -1.25, -.5)))
y = ifelse(var(0) = 1, -.75, ifelse(var(0) = 3, -1, ifelse(var(0) = 5, -1.25, -1.5)))
[State 6107, Vel]
type = velset
trigger1 = !time && !(var(0) % 2)
x = ifelse(var(0) = 2, -.75, ifelse(var(0) = 4, -1.25, ifelse(var(0) = 6, -1.25, -.5)))
y = ifelse(var(0) = 2, 0.75, ifelse(var(0) = 4, 1, ifelse(var(0) = 6, 1.25, 1.5)))

[State 6107, Vel]
type = veladd
trigger1 = root, animelemtime(2) < 0 && (var(0) % 2) = 1 && vel y < 1.5
y = 0.033
[State 6107, Vel]
type = veladd
trigger1 = root, animelemtime(2) < 0 && !(var(0) % 2) && vel y > -1.5
y = -.033

[State 6107, Vel]
type = velset
trigger1 = root, animelemtime(2) >= 0
trigger1 = (var(0) = 1 || var(0) = 2 || var(0) = 5 || var(0) = 6)
x = cos(time / 20.0)
y = -cos((time + 10) / 20.0)
[State 6107, Vel]
type = velset
trigger1 = root, animelemtime(2) >= 0
trigger1 = (var(0) = 3 || var(0) = 4 || var(0) = 7 || var(0) = 8)
x = -cos(time / 20.0)
y = cos((time + 10) / 20.0)

[State 6107, Vel]
type = velmul
trigger1 = vel y > 0 && pos y > -10
y = 0.8
[State 6107, End]
type = destroyself
trigger1 = root, stateno != 181 || root, movetype = H


;--- POWER CHARGE ---
[Statedef 6108]
physics = N
anim = 6100
velset = 0, 0
ctrl = 0

[State 6108, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)

[State 6108, Vel];to trigger sprpriority only
type = velset
trigger1 = 1
x = ifelse((sin(time / 5.0) < 0), -.001, 0.001)
[State 6108, Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = -5 + 25 * cos(time / 5.0), -50 + 35 * cos(time / 17.5)
[State 6108, Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = -5 -25 * cos(time / 5.0), -50 -35 * cos(time / 17.5)
[State 6108, Bind]
type = bindtoroot
trigger1 = var(0) = 3
pos = -5 + 25 * cos(time / 5.0), -50 -35 * cos(time / 17.5)
[State 6108, Bind]
type = bindtoroot
trigger1 = var(0) = 4
pos = -5 -25 * cos(time / 5.0), -50 + 35 * cos(time / 17.5)

[State 6108, spr]
type = sprpriority
trigger1 = var(0) = 1 || var(0) = 3
value = ifelse(vel x >= 0, 2, -1)
[State 6108, spr]
type = sprpriority
trigger1 = var(0) = 2 || var(0) = 4
value = ifelse(vel x <= 0, 2, -2)
[State 6108, End]
type = destroyself
trigger1 = root, stateno != 740 || root, anim != 740 || root, movetype = H


;--- WIN COSTUME ---
[Statedef 6109]
physics = N
anim = 6100
velset = 0, 0
sprpriority = 0
ctrl = 0

[State 6109, ID]
type = varset
trigger1 = !time && (ishelper(6101) || ishelper(6102) || ishelper(6103) || ishelper(6104))
var(0) = ifelse(ishelper(6101), 1, ifelse(ishelper(6102), 2, ifelse(ishelper(6103), 3, 4)))

[State 6109, Vel]
type = velset
trigger1 = !time
x = ifelse(var(0) = 1, -.33, ifelse(var(0) = 2, -.66, ifelse(var(0) = 3, -1, -.5)))
y = ifelse(var(0) = 1, -.4, ifelse(var(0) = 2, -.1, ifelse(var(0) = 3, 0.2, 0.5)))

[State 6109, Vel]
type = veladd
trigger1 = time < 60 && vel y > -1
y = -.025
[State 6109, Vel]
type = velset
trigger1 = time >= 60 && (var(0) = 1 || var(0) = 3)
x = cos(time / 20.0)
y = -cos((time + 10) / 20.0)
[State 6109, Vel]
type = velset
trigger1 = time >= 60 && (var(0) = 2 || var(0) = 4)
x = -cos(time / 20.0)
y = cos((time + 10) / 20.0)

[State 6109, Vel]
type = velmul
trigger1 = vel y > 0 && pos y > -10
y = 0.8
[State 6109, End]
type = destroyself
trigger1 = root, stateno != 189 || root, movetype = H


;--- RETURN TO MORRIGAN ---
[Statedef 6110]
physics = N
anim = 6100
velset = -7.5 + (random / 66.7), -7.5 + (random / 66.7)
sprpriority = 1
ctrl = 0

[State 6110, Snd]
type = playsnd
trigger1 = time = 5
value = 6, (random < 500)

[State 6110, Vel]
type = velset
trigger1 = !time && prevstateno = 825
x = -1
y = -5
[State 6110, Vel]
type = velset
trigger1 = !time && playerIDexist(parent, ID)
trigger1 = (parent, stateno = [1005, 1055])
x = 3 + (random / 500.0)
y = -3 + (random / 167.0)
[State 6110, Vel]
type = velset
trigger1 = !time && playerIDexist(parent, ID)
trigger1 = (parent, stateno = [3005, 3007])
x = 5 + (random / 333.0)
y = -5 + (random / 100.0)

[State 6110, Vel]
type = veladd
trigger1 = time > 10 && vel x < ifelse(rootdist x < 25, 2.5, 5) && rootdist x >= 0
x = ifelse((rootdist y = [0, 160]), 0.5, 0.25)
[State 6110, Vel]
type = veladd
trigger1 = time > 10 && vel x > ifelse(rootdist x > -25, -2.5, -5) && rootdist x < 0
x = ifelse((rootdist y = [0, 160]), -.5, -.25)
[State 6110, Vel]
type = veladd
trigger1 = time > 10 && root, statetype != C && vel y < ifelse((rootdist y < 80 && rootdist y > 40), 2.5, 5) && rootdist y >= 65
trigger2 = time > 10 && root, statetype = C && vel y < ifelse((rootdist y < 50 && rootdist y > 0), 2.5, 5) && rootdist y >= 25
y = ifelse((rootdist x = [ -80, 80]), 0.5, 0.25)
[State 6110, Vel]
type = veladd
trigger1 = time > 10 && root, statetype != C && vel y > ifelse((rootdist y < 80 && rootdist y > 40), -2.5, -5) && rootdist y < 65
trigger2 = time > 10 && root, statetype = C && vel y > ifelse((rootdist y < 50 && rootdist y > 0), -2.5, -5) && rootdist y < 25
y = ifelse((rootdist x = [ -80, 80]), -.5, -.25)


[State 6110, Vel]
type = velset
trigger1 = vel y > 0 && pos y > -5
y = 0

[State 6110, Turn]
type = turn
trigger1 = vel x < 0

[State 6110, End]
type = destroyself
trigger1 = root, statetype != C && (rootdist x = [ -10, 10]) && (rootdist y = [55, 75])
trigger2 = root, statetype = C && (rootdist x = [ -10, 10]) && (rootdist y = [15, 35])


;--- VIUDA NEGRA ---
[Statedef 6111]
physics = N
anim = 6100
velset = 0, 0
ctrl = 0

[State 6111, ID]
type = varset
trigger1 = !time
var(0) = root, var(48)

[State 6111, Bind]
type = posset
trigger1 = var(0) = 1
x = (enemynear, pos x) -31 * facing
y = (enemynear, pos y) -85
[State 6111, Bind]
type = posset
trigger1 = var(0) = 2
x = (enemynear, pos x) -32 * facing
y = (enemynear, pos y) -40
[State 6111, Bind]
type = posset
trigger1 = var(0) = 3
x = (enemynear, pos x) -18 * facing
y = (enemynear, pos y) -42
[State 6111, Bind]
type = posset
trigger1 = var(0) = 4
x = (enemynear, pos x) -5 * facing
y = (enemynear, pos y) -43
[State 6111, Bind]
type = posset
trigger1 = var(0) = 5
x = (enemynear, pos x) + 1 * facing
y = (enemynear, pos y) -45

[State 6111, spr]
type = sprpriority
trigger1 = 1
value = ifelse(var(0) = 4, -1, 2)
[State 6111, End]
type = changestate
trigger1 = !numenemy || roundstate >= 2
trigger2 = numenemy
trigger2 = enemy, stateno = 1942 && enemy, anim != 1942
value = 6110


;========================< JUMP DUST >=============================
[Statedef 7100]
physics = N
velset = 0, 0
anim = 9741
[State 7100, Bind]
type = bindtoroot
trigger1 = time
[State 7100, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 7101
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
[State 7100, End]
type = destroyself
trigger1 = time >= 7


;========================< FIRE >=============================
;--- RED ---
[Statedef 7180]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H || enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 120


;========================< SUPER CHARGE >=============================
[Statedef 7500]
physics = N
velset = 0, 0
anim = 9741

[State 7500, Lv1]
type = bgpalfx
trigger1 = time <= 10 && root, var(10) = 5
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -floor(25.6 * time), 256 -floor(25.6 * time), 256
color = 256 -floor(25.6 * time)
[State 7500, Lv1]
type = bgpalfx
trigger1 = (time = [11, 39]) && root, var(10) = 5
time = 1
mul = 0, 0, 256
color = 0
[State 7500, Lv1]
type = bgpalfx
trigger1 = time >= 40 && root, var(10) = 5
time = 1
mul = ceil(51.2 * (time -40)), ceil(51.2 * (time -40)), 256
color = floor(51.2 * (time -40))

[State 7500, Lv2]
type = bgpalfx
trigger1 = time <= 15 && root, var(10) = 6
time = 1
add = 256 -ceil(17.07 * time), 256 -ceil(17.07 * time), 256 -ceil(17.07 * time)
mul = 256 -floor(17.07 * time), 256 -floor(17.07 * time), 256
color = 256 -floor(17.07 * time)
[State 7500, Lv2]
type = bgpalfx
trigger1 = (time = [16, 47]) && root, var(10) = 6
time = 1
mul = 0, 0, 256
color = 0
[State 7500, Lv2]
type = bgpalfx
trigger1 = time >= 48 && root, var(10) = 6
time = 1
mul = ceil(51.2 * (time -48)), ceil(51.2 * (time -48)), 256
color = floor(51.2 * (time -48))

[State 7500, Lv3]
type = bgpalfx
trigger1 = time <= 20 && root, var(10) = 7
time = 1
add = 256 -ceil(12.8 * time), 256 -ceil(12.8 * time), 256 -ceil(12.8 * time)
mul = 256 -floor(12.8 * time), 256 -floor(12.8 * time), 256 -floor(12.8 * time)
color = 256 -floor(12.8 * time)
[State 7500, Lv3]
type = bgpalfx
trigger1 = (time = [21, 54]) && root, var(10) = 7
time = 1
mul = 0, 0, 0
color = 0
[State 7500, Lv3]
type = bgpalfx
trigger1 = time >= 55 && root, var(10) = 7
time = 1
mul = ceil(51.2 * (time -55)), ceil(51.2 * (time -55)), ceil(51.2 * (time -55))
color = floor(51.2 * (time -55))

[State 7500, Spiral]
type = helper
trigger1 = !time && root, var(10) >= 6
helpertype = normal
stateno = 7509
ID = 7509
name = "Super Charge Spiral"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 7500, Main]
type = explod
trigger1 = !time
anim = 7500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1
[State 7500, Large Circle]
type = explod
trigger1 = !time
anim = 7501
ID = 7501
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Portrait]
type = explod
trigger1 = time = 1 && root, var(10) = 7
anim = 7510
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
sprpriority = -16
bindtime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = !time
anim = 7502
ID = 75021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 7
anim = 7502
ID = 75022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 14
anim = 7502
ID = 75023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 21
anim = 7502
ID = 75024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 28
anim = 7502
ID = 75025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(10) = 5
ID = 7500
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(10) = 6
ID = 7500
scale = 1.5 -(0.0283 * time), 1.5 -(0.0283 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(10) = 7
ID = 7500
scale = 1.5 -(0.025 * time), 1.5 -(0.025 * time)

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7501)
ID = 7501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time < 8
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5
trans = addalpha
alpha = (32 * time), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && (time = [8, 50])
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time >= 50
ID = 7510
postype = back
pos = 160 -(20 * (time -50)), floor((1.3333333 * gameheight / gamewidth) * 120) + (20 * (time -50))
scale = 0.5 + (0.25 * (time -50)), 0.5 + (0.25 * (time -50))
trans = addalpha
alpha = 256 -ceil(25.6 * (time -50)), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75021)
ID = 75021
scale = 0.25 + (0.0375 * time), 0.25 + (0.0375 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75022)
ID = 75022
scale = 0.25 + (0.0375 * (time -7)), 0.25 + (0.0375 * (time -7))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75023)
ID = 75023
scale = 0.25 + (0.0375 * (time -14)), 0.25 + (0.0375 * (time -14))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75024)
ID = 75024
scale = 0.25 + (0.0375 * (time -21)), 0.25 + (0.0375 * (time -21))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75025)
ID = 75025
scale = 0.25 + (0.0375 * (time -28)), 0.25 + (0.0375 * (time -28))

[State 7500, Safety]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
[State 7500, No bars]
type = assertspecial
trigger1 = root, var(10) = 7
flag = nobardisplay
flag2 = noFG

[State 7500, Safety]
type = removeexplod
trigger1 = root, var(10) = 5 && time >= 43
trigger2 = root, var(10) = 6 && time >= 53
trigger3 = time >= 60
[State 7500, End]
type = destroyself
trigger1 = root, var(10) = 5 && time >= 45
trigger2 = root, var(10) = 6 && time >= 53
trigger3 = time >= 60


;--- Spiral ---
[Statedef 7509]
physics = N
anim = 7509
sprpriority = 5
[State 7509, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, Spin]
type = angleset
trigger1 = !time
value = -15 * (random % 24)
[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -15

[State 7509, Angle]
type = angledraw
trigger1 = root, var(10) = 6
scale = 1 -(time / 53.0), 1 -(time / 53.0)
[State 7509, Trans]
type = trans
trigger1 = root, var(10) = 6
trans = addalpha
alpha = floor(4.83 * time), 256

[State 7509, Angle]
type = angledraw
trigger1 = root, var(10) = 7
scale = 1 -(time / 60.0), 1 -(time / 60.0)
[State 7509, Trans]
type = trans
trigger1 = root, var(10) = 7
trans = addalpha
alpha = floor(4.267 * time), 256

[State 7509, End]
type = destroyself
trigger1 = root, var(10) = 6 && time >= 53
trigger2 = time >= 60


;========================< POWER CHARGE >=============================
;--- MAIN FX ---
[Statedef 7240]
type = S
anim = 7240
velset = 0, 0
ctrl = 0

[State 7240, Bind]
type = bindtoroot
trigger1 = (root, stateno = 740) && (root, anim = 740)
pos = -4, 0
[State 7240, Snd]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 7240, Aura]
type = explod
trigger1 = !numexplod(7242)
ID = 7242
anim = 7242
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7242) && (root, power < 3000)
ID = 7242
scale = 0.5, 0.1 + .4 * (root, power / 3000.0)
[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7242) && (root, power >= 3000)
ID = 7242
scale = 0.5, 0.5

[State 7240, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7240, End]
type = stopsnd
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)
channel = 0
[State 7240, End]
type = removeexplod
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)
[State 7240, End]
type = destroyself
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)


;--- PARTICLES ---
[Statedef 7243]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 7243, Bind]
type = bindtoroot
trigger1 = !(time % 4)
pos = ceil(-80 + (random / 6.25)), ceil(9 -(random / 6.25))

[State 7243, Particle]
type = explod
trigger1 = (time % 4) = 1
anim = 7243
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -0) / 16.0), ((rootdist y -71) / 16.0)
scale = ifelse(random < 500, 0.5, -.5), ifelse(random < 500, 0.5, -.5)
removetime = 16
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7243, End]
type = removeexplod
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)
[State 7243, End]
type = destroyself
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)


;========================< ZERO COUNTER CHARGE >=============================
[Statedef 7250]
physics = N
velset = 0, 0
anim = 9741

[State 7250, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 20
add = -255, -128, -64
sinadd = 255, 128, 64, 80
persistent = 0
[State 7250, palfx]
type = palfx
trigger1 = !time
time = 20
sinadd = -255, -255, -255, 80

[State 7250, thunder]
type = explod
trigger1 = !time
anim = 7250
ID = 7250
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
removetime = -2
supermovetime = 30
ownpal = 1
[State 7250, Circle]
type = explod
trigger1 = !time
anim = 7251
ID = 7251
sprpriority = 5
postype = p1
removetime = 20
supermovetime = 30

[State 7250, Shrink]
type = modifyexplod
trigger1 = numexplod(7251)
ID = 7251
scale = 0.2 + (0.09 * time), 0.2 + (0.09 * time)
[State 7250, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7250, End]
type = destroyself
trigger1 = time >= 20


;========================< ORIGINAL COMBO CHARGE >=============================
[Statedef 7260]
physics = N
velset = 0, 0
anim = 9741

[State 7260, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 30
add = -255, -255, -128
sinadd = 255, 255, 128, 120
[State 7260, palfx]
type = palfx
trigger1 = time = 20
time = 11
sinadd = -255, -255, -255, 40
persistent = 0

[State 7260, main]
type = explod
trigger1 = !time
anim = 7260
ID = 7260
sprpriority = 5
postype = p1
removetime = 20
supermovetime = 300
[State 7260, sphere]
type = explod
trigger1 = !time
anim = 7500
ID = 7261
sprpriority = 5
postype = p1
removetime = -1
supermovetime = 300
[State 7260, Circle]
type = explod
trigger1 = time = 20
anim = 7501
ID = 7262
sprpriority = 5
postype = p1
removetime = -1
supermovetime = 300

[State 7260, shrinkcircle]
type = modifyexplod
trigger1 = 1
ID = 7260
scale = 2 -(0.1 * time), 2 -(0.1 * time)
[State 7260, shrinkcircle]
type = modifyexplod
trigger1 = 1
ID = 7261
scale = 0.017 * time, 0.017 * time
[State 7260, shrinkcircle]
type = modifyexplod
trigger1 = time >= 20
ID = 7262
scale = 0.1 + (0.1 * (time -20)), 0.1 + (0.1 * (time -20))

[State 7260, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7260, bound]
type = screenbound
trigger1 = 1
value = 0
[State 7260, Safety]
type = removeexplod
trigger1 = time >= 30
[State 6110, End]
type = destroyself
trigger1 = time >= 30


;========================< DARK FORCE CHARGE >=============================
[Statedef 7270]
physics = N
velset = 0, 0
anim = 9741

[State 7270, palfx]
type = palfx
trigger1 = time = 15
time = 30
sinadd = -255, -255, -255, 120
persistent = 0

[State 7270, bat]
type = explod
trigger1 = !time
anim = 7270
ID = 7270
sprpriority = -5
postype = left
pos = 160, 120
bindtime = -1
ownpal = 1
[State 7270, main]
type = explod
trigger1 = !time
anim = 7260
ID = 7271
sprpriority = 5
postype = p1
bindtime = -1
ownpal = 1
removetime = 15
[State 7270, Circle]
type = explod
trigger1 = time = 15
anim = 7272
ID = 7272
sprpriority = 5
postype = p1
bindtime = -1
[State 7270, Circle]
type = explod
trigger1 = time = 15
anim = 7273
ID = 7272
sprpriority = -1
postype = p1
bindtime = -1

[State 7270, shrinkbat]
type = modifyexplod
trigger1 = time < 10
ID = 7270
scale = 5 -(0.4 * time), 5 -(0.4 * time)
[State 7270, shrinkcircle]
type = modifyexplod
trigger1 = time >= 10
ID = 7270
scale = 1, 1
[State 7270, shrinkcircle]
type = modifyexplod
trigger1 = 1
ID = 7271
scale = 3 -(0.2 * time), 3 -(0.2 * time)
[State 7270, shrinkcircle]
type = modifyexplod
trigger1 = 1
ID = 7272
scale = 0.09 * (time -15), 0.015 * (time -15)

[State 7270, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7270, Bind]
type = bindtoroot
trigger1 = 1
pos = -1, -65
[State 7270, Safety]
type = removeexplod
trigger1 = time >= 45
[State 6110, End]
type = destroyself
trigger1 = time >= 45


;========================< COUNTER F.X. >=============================
[Statedef 7400]
type = A
physics = N
anim = 9741

[State 7400, superchargebgpalfx]
type = allpalfx
trigger1 = !time
time = 8
add = 255, 255, 255
sinadd = -255, -255, -255, 32

[State 7400, slow]
type = pause
trigger1 = time < 8
time = 1

[State 7400, End]
type = destroyself
trigger1 = time >= 8


;========================< SUPER FINISH >=============================
[Statedef 7600]
type = A
velset = 0, 0
anim = 9741
[State 7600, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 7600, Snd]
type = playsnd
trigger1 = !time
value = 7, 7
channel = 1

[State 7600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 7600, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 7600, MvC]
type = explod
trigger1 = !time
anim = 7601
ID = 7601
ontop = 1
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Fade]
type = modifyexplod
trigger1 = numexplod(7601)
ID = 7601
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 7600, Circle]
type = explod
trigger1 = !time
anim = 7600
ID = 7600
sprpriority = -255
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Scale]
type = modifyexplod
trigger1 = numexplod(7600)
ID = 7600
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 7600, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 7600, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
flag3 = globalnoshadow

[State 7600, End]
type = destroyself
trigger1 = roundstate < 3


;========================< CAMERA CONTROL >=============================
[Statedef 7650]
physics = N
velset = 0, 0
anim = 9741
[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 7650, End]
type = destroyself
trigger1 = roundstate = 2
