; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;===================================< EX SPECIAL STATES >======================================
;============================================================================================

;======================< SOUL FIST >=============================
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 1
facep2 = 1

[State 1010, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1010, FX]
type = explod
trigger1 = !time
anim = 1004
ID = 1004
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1

[State 1010, SoulFist]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1015
ID = 1015
name = "EX Soul Fist"
postype = p1
pos = 6, -50
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 1010, snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 13
channel = 0
[State 1010, snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 0

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< MID -AIR SOUL FIST >=============================
[Statedef 1060]
type = A
physics = N
movetype = A
anim = 1050
ctrl = 0
velset = ifelse(vel x < 0, -1, ifelse(vel x > 0, 1, 0)), ifelse(vel y < 0, -1, 1)
poweradd = -500
sprpriority = 1

[State 1060, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1060, width]
type = width
trigger1 = (animelemtime(4) >= 0 && animelemtime(9) < 0)
player = 16, 0

[State 1060, FX]
type = explod
trigger1 = animelem = 4
anim = 1054
ID = 1054
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1

[State 1060, SoulFist]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1065
ID = 1065
name = "EX Soul Fist"
postype = p1
pos = 60, -48
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 1060, Vel]
type = velset
trigger1 = animelem = 6
x = -3
y = -6
[State 1060, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0
physics = A

[State 1060, snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 13
channel = 0
[State 1060, snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 0


;======================< SHADOW BLADE >=============================
[Statedef 1110]
type = S
physics = S
movetype = A
anim = 1110
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = 7
facep2 = 1
sprpriority = 1

[State 1110, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1110, nothitby]
type = nothitby
trigger1 = anim = 1100 && animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1110, Vel]
type = velset
trigger1 = anim = 1110 && animelem = 4
x = 11
y = -12
[State 1110, Vel]
type = velmul
trigger1 = vel y < 0
x = 0.95
[State 1110, Vel]
type = velset
trigger1 = anim = 1101
x = 0

[State 1110, snd]
type = playsnd
trigger1 = anim = 1110 && animelem = 4
value = 0, 41
[State 1110, dust]
type = helper
trigger1 = anim = 1110 && animelem = 4
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1110, snd]
type = playsnd
trigger1 = anim = 1110 && animelem = 2
value = 4, 12
channel = 0
ignorehitpause = 1
persistent = 0

[State 1110, hit]
type = hitdef
trigger1 = (animelem = 2 || animelem = 3) && anim = 1110
trigger1 = var(11) := 1 && var(12) := ifelse((animelem = 2), -35, -60)
attr = S, SA
damage = 32, 7
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 2), -35, -60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), -10
air.type = Low
air.velocity = -4 * !numhelper(775), -10
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.5
forcestand = 1

[State 1110, hit2]
type = hitdef
trigger1 = animelem = 4 && anim = 1110
trigger1 = var(11) := 1 && var(12) := -100
attr = A, SA
damage = 83, 7
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -100
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4 * !numhelper(775), -10
air.type = Low
air.velocity = -4 * !numhelper(775), -10
ground.cornerpush.veloff = 0
guard.velocity = -12.97
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = -8 * !numhelper(775), -1.5
forcestand = 1

[State 1110, statetype]
type = statetypeset
trigger1 = anim = 1110 && animelemtime(4) >= 0
statetype = A
physics = A
[State 1110, Anim]
type = changeanim
trigger1 = anim = 1110 && animelemtime(4) > 0 && vel y > -1
value = 1101
[State 1110, turn]
type = turn
trigger1 = anim = 1101
persistent = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1101
movetype = I


;======================< VECTOR DRAIN >=============================
[Statedef 1320]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 1300
poweradd = -500
sprpriority = 1
facep2 = 1

[State 1320, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1320, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4
x = ifelse((animelem = 3), 25, 15)

[State 1320, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 1320, hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !var(38)
trigger1 = p2dist x >= 0 && p2bodydist x <= 36
attr = S, ST
hitflag = M-
priority = 7, Miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1321
fall = 1
fall.recover = 0
ID = 1320

[State 1320, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 1
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 1320, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 1321]
type = A
physics = N
movetype = A
anim = 1301
ctrl = 0
velset = 0, 0
sprpriority = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 1306

[State 1321, assert]
type = assertspecial
trigger1 = 1
flag = noautoturn
[State 1321, width]
type = width
trigger1 = 1
edge = 30, 0
[State 1321, Vel]
type = velmul
trigger1 = vel x
x = 0.97
[State 1321, jet]
type = helper
trigger1 = (anim = [1302, 1303]) && !numhelper(6020)
helpertype = normal
stateno = 6026
ID = 6020
name = "Jets"
postype = p1
ownpal = 1
[State 1321, dust]
type = explod
trigger1 = anim = 1302
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
pos = -54, -ceil(pos y)
scale = 0.5, 0.5
ownpal = 1
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 1321, grabsnd]
type = playsnd
trigger1 = !time
value = 0, 800
[State 1321, Anim]
type = changeanim
trigger1 = anim = 1301 && !animtime
value = 1302
[State 1321, throw]
type = targetstate
trigger1 = anim = 1302
value = 1307
persistent = 0

[State 1321, Vel]
type = velset
trigger1 = anim = 1302 && animelem = 1
x = 5.5
y = -8
[State 1321, Vel]
type = velmul
trigger1 = anim = 1302
y = 0.97
[State 1321, snd]
type = playsnd
trigger1 = anim = 1302
value = 4, 3
channel = 0
persistent = 0

[State 1321, Anim]
type = changeanim
trigger1 = anim = 1302 && vel y >= -1
value = 1303
[State 1321, throw]
type = targetstate
trigger1 = anim = 1303
value = 1308
persistent = 0
[State 1321, snd]
type = playsnd
trigger1 = anim = 1303
value = 4, 11
channel = 0
persistent = 0
[State 1321, spin]
type = playsnd
trigger1 = anim = 1303 && (animelem = 4 || animelem = 6 || animelem = 8)
value = 1, 6
channel = 1
[State 1321, spiral]
type = explod
trigger1 = anim = 1303 && animelem = 5
anim = 1315
ID = 1315
sprpriority = 2
postype = p1
facing = -1
bindtime = -1
ownpal = 1

[State 1321, Vel]
type = velset
trigger1 = anim = 1303 && animelem = 1
x = -7
y = -14
[State 1321, Vel]
type = veladd
trigger1 = anim = 1303
y = 0.75

[State 1321, bind 1]
type = targetbind
trigger1 = anim = 1301 && animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 59, -71
[State 1321, bind 2]
type = targetbind
trigger1 = anim = 1301 && animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 64, -76
[State 1321, bind 3]
type = targetbind
trigger1 = anim = 1301 && animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 60, -76

[State 1321, bind 1322]
type = targetbind
trigger1 = anim = 1302
pos = 42, -81

[State 1321, bind 1]
type = targetbind
trigger1 = anim = 1303 && animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 42, -81
[State 1321, bind 2]
type = targetbind
trigger1 = anim = 1303 && animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 25, -95
[State 1321, bind 3]
type = targetbind
trigger1 = anim = 1303 && animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 2, -98
[State 1321, bind 4]
type = targetbind
trigger1 = anim = 1303 && animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -23, -90
[State 1321, bind 5]
type = targetbind
trigger1 = anim = 1303 && animelemtime(5) >= 0 && animelemtime(6) < 0
pos = -37, -74
[State 1321, bind 6]
type = targetbind
trigger1 = anim = 1303 && animelemtime(6) >= 0 && animelemtime(7) < 0
trigger2 = anim = 1303 && animelemtime(9) >= 4
pos = 2, -38
[State 1321, bind 7]
type = targetbind
trigger1 = anim = 1303 && animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 48, -41
[State 1321, bind 8]
type = targetbind
trigger1 = anim = 1303 && animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 2, -44
[State 1321, bind 9]
type = targetbind
trigger1 = anim = 1303 && animelemtime(9) >= 0 && animelemtime(9) < 4
pos = -46, -41

[State 1321, End]
type = changestate
trigger1 = anim = 1303 && vel y > 0 && pos y >= -ceil(vel y)
value = 1325


;--- HIT FLOOR ---
[Statedef 1325]
type = A
physics = N
movetype = A
anim = 1305
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 1325, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0
[State 1325, Vel]
type = velset
trigger1 = animelemtime(2) < 0
x = 0
y = 0

[State 1325, assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 1325, throw]
type = targetstate
trigger1 = !time
value = 1310
[State 1325, hurt]
type = targetlifeadd
trigger1 = !time
value = -ceil(165 * fvar(12))
[State 1325, bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 48, 0

[State 1325, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 60
ampl = 6
[State 1325, snd]
type = playsnd
trigger1 = !time
value = 5, 2
[State 1325, dust]
type = explod
trigger1 = !time
anim = 7120
ID = 7120
sprpriority = -2
postype = p2
pos = 0, 0
ownpal = 1
scale = 1, 1

[State 1325, Vel]
type = velset
trigger1 = animelem = 2
x = -4
y = -6
[State 1325, sts]
type = statetypeset
trigger1 = animelemtime(2) >= 0
physics = A
