; _________________________________________________
;| Blanka by KarmaCharmeleon			 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<DIRECT LIGHTNING>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 13, -45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 0
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 1

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 10

[State 3000, VelSet]
type = VelSet
trigger1 = Time = 70 || FrontEdgeBodyDist < 5
x = 0

[State 3000, Electric Thunder (FX)]
type = Explod
trigger1 = AnimElemTime(2) = 2
anim = 3005
ID = 3005
sprPriority = 4
bindtime = -1
removeTime = -1
posType = P1
pos = 0, -30
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3000, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(15) = 0
anim = 3007 + Random % 3
ID = 3007
sprPriority = 2
bindtime = 1
posType = P1
pos = 0, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
ID = 3000
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 168 < 7, 7, fvar(11) * 168)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 12
guard.pauseTime = 6, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 8
ground.slideTime = 8
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -3.75, -6.93359375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.75, -6.93359375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 24), var(36) := -50
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3000, Shock Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3000, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 3002
ctrl = 1

[State 3000, End]
type = ChangeState
trigger1 = Time = 70 || FrontEdgeBodyDist < 5
value = 3001



;Landing
[StateDef 3001]
type = S
anim = ifElse(PrevStateNo = 3000, 3001, 3003)
physics = N
moveType = I
velSet = 0,0

[State 3001, Electric Thunder End (FX)]
type = Explod
trigger1 = PrevStateNo = 3000 && !Time
anim = 3006
ID = 3006
sprPriority = 4
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3001, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3001, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3001, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 3001, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Hit
[StateDef 3002]
type = A
physics = N
moveType = I
anim = 3002
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 3002, Electric Thunder End (FX)]
type = Explod
trigger1 = !Time
anim = 3006
ID = 3006
sprPriority = 4
bindtime = -1
posType = P1
pos = 0, -30
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3002, VelSet]
type = VelSet
trigger1 = !Time
x = -3.125
y = -11.25

[State 3002, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 1
y = 0.78125

[State 3002, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3001



;========================<MAX DIRECT LIGHTNING>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 13, -45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 0
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 1

[State 3050, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 12.5

[State 3050, VelSet]
type = VelSet
trigger1 = Time = 70 || FrontEdgeBodyDist < 5
x = 0

[State 3050, Electric Thunder (FX)]
type = Explod
trigger1 = AnimElemTime(2) = 2
anim = 3005
ID = 3005
sprPriority = 4
bindtime = -1
removeTime = -1
posType = P1
pos = 0, -30
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3050, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(15) = 0
anim = 3007 + Random % 3
ID = 3007
sprPriority = 2
bindtime = 1
posType = P1
pos = 0, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
ID = 3050
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 252 < 7, 7, fvar(11) * 252)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 12
guard.pauseTime = 6, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 8
ground.slideTime = 8
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -3.75, -6.93359375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.75, -6.93359375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 24), var(36) := -50
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3050, Shock Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3050, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 3002
ctrl = 1

[State 3050, End]
type = ChangeState
trigger1 = Time = 70 || FrontEdgeBodyDist < 5
value = 3001



;========================<GROUND SHAVE ROLLING>=============================
;First Part
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 13, -45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100, 0
channel = 0

[State 3100, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(3) >= 0
trigger1 = (GameTime % 6) = 0
value = 1, 3
channel = 4

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
y = -7.5

[State 3100, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 1.025390625

[State 3100, VelSet]
type = VelSet
trigger1 = Pos Y + Vel Y >= 0 && AnimElemTime(3) > 0
y = 0

[State 3100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
trigger1 = !MoveGuarded && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 8
ground.slideTime = 8
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -3.0517578125, -8.33984375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.0517578125, -8.33984375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -27
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3100, End]
type = ChangeState
trigger1 = Time = 133
value = 3101
ctrl = 1

[State 3100, End]
type = ChangeState
triggerAll = vel Y = 0 && AnimElemTime(3) > 0
trigger1 = command != "holda" && !var(10)
trigger2 = command != "holdb" && var(10) = 1
trigger3 = command != "holdc" && var(10) = 2
value = 3101
ctrl = 1


;Second Part
[StateDef 3101]
type = S
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 3101, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
var(15) = 0
ignoreHitPause = 1

[State 3101, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 3101, VelSet]
type = VelSet
trigger1 = !Time
x = 8.75

[State 3101, VelSet]
type = VelAdd
trigger1 = Time > 0
x = -0.078125

[State 3101, Woosh]
type = PlaySnd
trigger1 = (GameTime % 6) = 0
value = 1, 3
channel = 4

[State 3101, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
ID = 3101
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 73 < 7, 7, fvar(11) * 73)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 8
ground.slideTime = 8
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5, -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -27
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3101, Alternate Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger2 = MoveGuarded = 1
trigger3 = MoveReversed = 1
var(12) = 1

[State 3101, End]
type = ChangeState
trigger1 = var(12) = 2
value = 3102
ctrl = 1

[State 3101, End]
type = ChangeState
trigger1 = Time = 20 || FrontEdgeBodyDist < 5
value = 3105
ctrl = 1



;Hit
[StateDef 3102]
type = A
physics = N
moveType = I
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 3102, Woosh]
type = PlaySnd
trigger1 = (GameTime % 6) = 0
value = 1, 3
channel = 4

[State 3102, VelSet]
type = VelSet
trigger1 = !Time
x = -3.125
y = -11.25

[State 3102, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 1
y = 0.78125

[State 3102, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3103



;Landing
[StateDef 3103]
type = S
anim = 3105
physics = N
moveType = I
velSet = 0,0

[State 3103, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3103, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3103, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 3103, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Landing
[StateDef 3105]
type = S
anim = 3105
physics = N
moveType = I
velSet = 0,0

[State 3105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX GROUND SHAVE ROLLING>=============================
;First Part
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a+b" || command = "rlsa+b"), 2, ifElse((command = "a+c" || command = "rlsa+c"), 1, 0))
var(10) = ifElse(((NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000235) && NumExplod(90000245))), 2, ifElse(((NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000235) && NumExplod(90000250))), 1, 0))

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 13, -45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100, 0
channel = 0

[State 3150, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(3) >= 0
trigger1 = (GameTime % 6) = 0
value = 1, 3
channel = 4

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 0.625
y = -10

[State 3150, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 1.025390625

[State 3150, VelSet]
type = VelSet
trigger1 = Pos Y + Vel Y >= 0 && AnimElemTime(3) > 0
x = 0
y = 0

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
trigger1 = !MoveGuarded && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 90 < 7, 7, fvar(11) * 90)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 8
ground.slideTime = 8
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -3.81469726563, -8.33984375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.0517578125, -8.33984375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -27
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3151, End]
type = ChangeState
trigger1 = Time = 138
value = 3151
ctrl = 1

[State 3151, End]
type = ChangeState
triggerAll = vel Y = 0 && AnimElemTime(3) > 0
trigger1 = (command != "holda" || command != "holdb") && var(10) = 2
trigger2 = (command != "holda" || command != "holdc") && var(10) = 1
trigger3 = (command != "holdb" || command != "holdc") && !var(10)
value = 3151
ctrl = 1


;Second Part
[StateDef 3151]
type = S
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 3151, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
var(15) = 0
ignoreHitPause = 1

[State 3151, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3151, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3151, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 3151, VelSet]
type = VelSet
trigger1 = !Time
x = 11.25

[State 3151, VelSet]
type = VelAdd
trigger1 = Time > 0
x = -0.078125

[State 3151, Woosh]
type = PlaySnd
trigger1 = (GameTime % 6) = 0
value = 1, 3
channel = 4

[State 3151, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
ID = 3101
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 73 < 7, 7, fvar(11) * 73)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 5
guard.pauseTime = 4, 5
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 8
ground.slideTime = 8
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5, -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -27
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3151, Alternate Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger2 = MoveGuarded = 1
trigger3 = MoveReversed = 1
var(12) = 1

[State 3151, End]
type = ChangeState
trigger1 = var(12) = 3
value = 3102
ctrl = 1

[State 3151, End]
type = ChangeState
trigger1 = Time = 30 || FrontEdgeBodyDist < 5
value = 3105
ctrl = 1



;========================<SHOUT OF EARTH (ANTI-AIR)>=============================
;Startup
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = Time < 51
time = 1
value = SCA

[State 3300, NotHitBy]
type= NotHitBy
trigger1= 1
value = , AP
time = 1

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 13, -45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElemTime(8) = 29
value = 3000, 0
channel = 1

[State 3300, Electricity]
type = PlaySnd
trigger1 = AnimElemTime(8) = 29
value = 1000, 0
channel = 15
loop = 1

[State 3300, Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(8) = 29
anim = 3307
ID = 3307
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 5, 5
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3300, End]
type = ChangeState
trigger1 = Time = 81
value = 3301
ctrl = 1

[State 3300, End]
type = ChangeState
triggerAll = !AnimTime
trigger1 = command != "holdx"
trigger2 = command != "holdy"
trigger3 = command != "holdz"
value = 3301



;Release
[StateDef 3301]
type = S
physics = N
moveType = A
anim = 3301
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 3301, NotHitByProjectiles]
type= NotHitBy
trigger1= AnimElemTime(18) < 0
value = , AP
time = 1

[State 3301, Voice]
type = PlaySnd
trigger1 = !Time
value = 3300, 0
channel = 1

[State 3301, Electricity]
type = PlaySnd
trigger1 = !Time
value = 3000, 1

[State 3301, Shout of Earth (Aura FX)]
type = Explod
trigger1 = !Time
anim = 3305
ID = 3305
sprPriority = -1
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3301, Shout of Earth (Aura FX)]
type = Explod
trigger1 = !Time
anim = 3310
ID = 3310
sprPriority = 4
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3301, Remove Shout of Earth (Aura FX)]
type = RemoveExplod
trigger1 = AnimElemTime(21) = 0
ID = 3305

[State 3301, Remove Shout of Earth (Aura FX)]
type = RemoveExplod
trigger1 = AnimElemTime(21) = 0
ID = 3310

[State 3301, Vanishing Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(21) = 0
anim = 3306
ID = 3306
sprPriority = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3301, Vanishing Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(21) = 0
anim = 3311
ID = 3311
sprPriority = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3301, Shout of Earth (Aura FX)]
type = Explod
trigger1 = !Time
anim = 3315
ID = 3315
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.45, 0.45
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3301, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 9 || var(20))
trigger1 = AnimElemTime(1) >= 0  && AnimElemTime(18) < 0
attr = S, SA
hitFlag = AF
guardFlag = 
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 4, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 16
guard.pauseTime = 0, 16
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X >= 0, -3.75, 3.75), -6.93359375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = ifElse(P2Dist X >= 0, -3.75, 3.75), -6.93359375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3301, Shock Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHOUT OF EARTH (ANTI-GROUND)>=============================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3350
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = Time < 51
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 13, -45
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3350, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3350, Voice]
type = PlaySnd
trigger1 = AnimElemTime(8) = 1
value = 3000, 0
channel = 1

[State 3350, Electricity]
type = PlaySnd
trigger1 = AnimElemTime(8) = 1
value = 1000, 0
channel = 15
loop = 1

[State 3350, StopSnd]
type = StopSnd
trigger1 = AnimElemTime(11) = 0
channel = 15
ignorehitpause = 1

[State 3350, Voice]
type = PlaySnd
trigger1 = AnimElemTime(18) = 0
value = 3300, 0
channel = 1

[State 3350, Electricity]
type = PlaySnd
trigger1 = AnimElemTime(18) = 0
value = 3000, 1

[State 3350, Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(8) = 1
anim = 3307
ID = 3307
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 5, 5
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(10) = 0
anim = 3007 + Random % 3
ID = 3337
sprPriority = 2
bindtime = 1
posType = P1
pos = 80, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(10) = 0
anim = 3007 + Random % 3
ID = 3337
sprPriority = 2
bindtime = 1
posType = P1
pos = 160, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(10) = 0
anim = 3007 + Random % 3
ID = 3337
sprPriority = 2
bindtime = 1
posType = P1
pos = 240, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(10) = 0
anim = 3007 + Random % 3
ID = 3337
sprPriority = 2
bindtime = 1
posType = P1
pos = -80, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(10) = 0
anim = 3007 + Random % 3
ID = 3337
sprPriority = 2
bindtime = 1
posType = P1
pos = -160, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Electric Thunder (FX 2-4)]
type = Explod
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(10) = 0
anim = 3007 + Random % 3
ID = 3337
sprPriority = 2
bindtime = 1
posType = P1
pos = -240, 0
scale = 1, 1
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Remove Shout of Earth (Aura FX)]
type = RemoveExplod
trigger1 = AnimElemTime(11) = 0
ID = 3307

[State 3350, Vanishing Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(11) = 0
anim = 3308
ID = 3308
sprPriority = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(11) = 0
anim = 3305
ID = 3305
sprPriority = -1
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(12) = 0
anim = 3310
ID = 3357
sprPriority = 4
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Remove Shout of Earth (Aura FX)]
type = RemoveExplod
trigger1 = AnimElemTime(46) = 0
ID = 3357

[State 3301, Vanishing Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(46) = 0
anim = 3311
ID = 3358
sprPriority = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(12) = 0
anim = 3355
ID = 3355
sprPriority = 3
bindtime = -1
posType = P1
pos = -50, -25
scale = 0.35, 0.33
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(12) = 0
anim = 3356
ID = 3356
sprPriority = 3
bindtime = -1
posType = P1
pos = 50, -25
scale = 0.35, 0.33
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, Remove Shout of Earth (Aura FX)]
type = RemoveExplod
trigger1 = AnimElemTime(46) = 0
ID = 3305

[State 3350, Vanishing Shout of Earth (Aura FX)]
type = Explod
trigger1 = AnimElemTime(46) = 0
anim = 3306
ID = 3306
sprPriority = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.55, 0.55
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 3350, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = var(12) < 6
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
ID = 3350
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 4, fvar(11) * 84)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 16
guard.pauseTime = 0, 16
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -1
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 5)), var(36) := ceil(P2Dist y - 45)
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3350, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
triggerAll = var(12) < 6
trigger1 = AnimElemTime(18) >= 0  && AnimElemTime(46) < 0
ID = 3350
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 4, fvar(11) * 63)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 16
guard.pauseTime = 0, 16
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X >= 0, -3.75, 3.75), -6.93359375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = ifElse(P2Dist X >= 0, -3.75, 3.75), -6.93359375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3350, Shock Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3350, Alternate Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger2 = MoveGuarded = 1
trigger3 = MoveReversed = 1
var(12) = 1

[State 3350, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1