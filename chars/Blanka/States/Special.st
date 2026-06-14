; _________________________________________________
;| Blanka by KarmaCharmeleon			 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<ELECTRIC THUNDER>=============================
;Startup
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Tap Punch Buffer Set]
type = VarSet
trigger1 = !Time && !AILevel
var(46) = ifElse(NumExplod(90000220) || NumExplod(90000225), 8, ifElse(NumExplod(90000210) || NumExplod(90000215), 10, 12))

[State 1000, Electric Thunder (FX)]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 1005
ID = 1005
sprPriority = 4
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 1000, Electricity]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 0
channel = 15
loop = 1

[State 1000, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9 && var(10) = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 112, ifElse(var(10), 105, 98)) < 7, 4, fvar(11) * ifElse(var(10) = 2, 112, ifElse(var(10), 105, 98)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X >= 0, -5, 5), -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = ifElse(P2Dist X >= 0, -10.52, 10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(P2Dist X >= 0, -5, 5), -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -42
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1000, Shock Particles]
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

[State 1000, ChangeState]
type = ChangeState
triggerAll = var(46) > 0
trigger1 = !AnimTime
value = 1001

[State 1000, End]
type = ChangeState
trigger1 = var(46) <= 0
trigger1 = !AnimTime
value = 1002



;Looping
[StateDef 1001]
type = S
physics = N
moveType = A
anim = 1001
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1001, Button Detect]
type = VarSet
trigger1 = !Time
var(11) = var(10)

[State 1001, Button Detect]
type = VarSet
trigger1 = !AILevel
;;command = "x" || command = "y" || command = "z"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
;;ifElse(command = "x", 2, ifElse(command = "y", 1, 0))
var(11) = ifElse(NumExplod(90000220), 2, ifElse(NumExplod(90000210), 1, 0))

[State 1001, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1021, ifElse(var(10) = 1, 1011, 1001))

[State 1001, Loop]
type = ChangeAnim
triggerAll = var(46) > 0
trigger1 = !AnimTime
value = ifElse(var(11) = 2, 1021, ifElse(var(11) = 1, 1011, 1001))
elem = 1

[State 1001, Voice]
type = PlaySnd
trigger1 = (GameTime % 50) = 0
value = 4, 2
channel = 0

[State 1001, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && var(10) != 2
trigger2 = AnimElem = 4 && var(10) = 1
trigger3 = AnimElem = 1 && var(10) = 2
trigger4 = AnimElem = 3 && var(10) = 2
trigger5 = AnimElem = 5 && var(10) = 2
trigger6 = AnimElem = 7 && var(10) = 2
trigger7 = AnimElem = 9 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 112, ifElse(var(10), 105, 98)) < 7, 4, fvar(11) * ifElse(var(10) = 2, 112, ifElse(var(10), 105, 98)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X >= 0, -5, 5), -7.6904296875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(P2Dist X >= 0, -10.52, 10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(P2Dist X >= 0, -5, 5), -7.6904296875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -42
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1001, Shock Particles]
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

[State 1001, End]
type = ChangeState
trigger1 = var(46) <= 0
trigger1 = !AnimTime
value = 1002



;End
[StateDef 1002]
type = S
physics = N
moveType = I
anim = 1002
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1002, Electric Thunder End (FX)]
type = Explod
trigger1 = !Time
anim = 1006
ID = 1006
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 1002, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX ELECTRIC THUNDER>=============================
;Startup
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 13

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 8, -40
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Tap Punch Buffer Set]
type = VarSet
trigger1 = !Time && !AILevel
var(46) = ifElse(NumExplod(90000220) || NumExplod(90000225), 8, ifElse(NumExplod(90000210) || NumExplod(90000215), 10, 12))

[State 1030, Electric Thunder (FX)]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 1005
ID = 1035
sprPriority = 4
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 1030, Electricity]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 0
channel = 2
loop = 1

[State 1030, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 147 < 7, 4, fvar(11) * 147)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X >= 0, -5, 5), -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = ifElse(P2Dist X >= 0, -10.52, 10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(P2Dist X >= 0, -5, 5), -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -42
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1030, ChangeState]
type = ChangeState
triggerAll = var(46) > 0
trigger1 = !AnimTime
value = 1031

[State 1030, End]
type = ChangeState
trigger1 = var(46) <= 0
trigger1 = !AnimTime
value = 1032



;Looping
[StateDef 1031]
type = S
physics = N
moveType = A
anim = 1021
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1031, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 10

[State 1031, Loop]
type = ChangeAnim
triggerAll = var(46) > 0
trigger1 = !AnimTime
value = 1021
elem = 1

[State 1031, Voice]
type = PlaySnd
trigger1 = (GameTime % 50) = 0
value = 4, 2
channel = 0

[State 1031, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 147 < 7, 4, fvar(11) * 147)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X >= 0, -5, 5), -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = ifElse(P2Dist X >= 0, -10.52, 10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(P2Dist X >= 0, -5, 5), -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -42
palFX.time = 59
palFX.mul = 192, 192, 192
palFX.sinAdd = 128, 128, 128, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1031, End]
type = ChangeState
trigger1 = var(46) <= 0
trigger1 = !AnimTime
value = 1032



;End
[StateDef 1032]
type = S
physics = N
moveType = I
anim = 1032
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1032, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 2
ignorehitpause = 1

[State 1032, Electric Thunder End (FX)]
type = Explod
trigger1 = !Time
anim = 1006
ID = 1036
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
removeOnGetHit = 0
ignoreHitPause = 0
ownPal = 1

[State 1032, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<ROLLING ATTACK>=============================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500 || NumTarget(325)), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 2, 12.5, ifElse(var(10) = 1, 10, 7.5))

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 9 && !var(10)
trigger2 = AnimElem = 13 && var(10) = 1
trigger3 = AnimElem = 21 && var(10) = 2
x = 0

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(10) < 0  && !var(10)
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0  && var(10) = 1
trigger3 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0  && var(10) = 2
stateType = A
physics = N

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 2
channel = 0

[State 1100, Woosh]
type = PlaySnd
trigger1 = !var(10)
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(10) < 0 
trigger1 = TimeMod = 6, 0
trigger2 = var(10) = 1
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0 
trigger2 = TimeMod = 6, 0
trigger3 = var(10) = 2
trigger3 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0 
trigger3 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10), 91, 84)) < 7, 4, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10), 91, 84)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(22) >= 0 && var(10) = 2
moveType = I

[State 1100, StateTypeSet: Land, Physics: Standing]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(22) >= 0 && var(10) = 2
stateType = S
physics = N

[State 1100, PosSet]
type = PosSet
trigger1 = AnimElem = 10 && !var(10)
trigger2 = AnimElem = 14 && var(10) = 1
trigger3 = AnimElem = 22 && var(10) = 2
y = 0

[State 1100, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 10 && !var(10)
trigger2 = AnimElem = 14 && var(10) = 1
trigger3 = AnimElem = 22 && var(10) = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1100, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 10 && !var(10)
trigger2 = AnimElem = 14 && var(10) = 1
trigger3 = AnimElem = 22 && var(10) = 2
value = 52,0
channel = 3

[State 1100, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1101
ctrl = 1

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Hit
[StateDef 1101]
type = A
physics = N
moveType = I
anim = 1101
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1101, Woosh]
type = PlaySnd
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1101, VelSet]
type = VelSet
trigger1 = !Time
x = -3.125
y = -11.25

[State 1101, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.78125

[State 1101, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1102


;Landing
[StateDef 1102]
type = S
anim = 1102
physics = N
moveType = I
velSet = 0,0

[State 1102, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1102, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1102, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 1102, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX ROLLING ATTACK>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1120
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 35

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 20, -35
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1130, NotHitByProjectiles]
type= NotHitBy
trigger1= AnimElemTime(3) >= 0 && AnimElemTime(21) < 0
value = , AP
time = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 15

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 0

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0
stateType = A
physics = N

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 2
channel = 0

[State 1130, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0 
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 4, fvar(11) * 112)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(22) >= 0
moveType = I

[State 1130, StateTypeSet: Land, Physics: Standing]
type = StateTypeSet
trigger1 = AnimElemTime(22) >= 0
stateType = S
physics = N

[State 1130, PosSet]
type = PosSet
trigger1 = AnimElem = 22
y = 0

[State 1130, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 22
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 22
value = 52,0
channel = 3

[State 1130, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1101
ctrl = 1

[State 1130, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<BACKSTEP ROLL>=============================
;Startup
[StateDef 1200]
type = S
physics = N
moveType = I
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0
channel = 0

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -6.015625
y = -3.75

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0
x = 0.234375
y = 0.68359375

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 1
stateType = A
physics = N

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



[StateDef 1201]
type = S
physics = N
moveType = A
anim = 1201
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1201, Button Detect]
type = VarSet
trigger1 = !Time
var(11) = var(10)

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(11) = 2, 1221, ifElse(var(10) = 1, 1211, 1201))

[State 1201, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
pos = -25, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 1201, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 40, 0

[State 1201, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1201, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(11) = 2, 11.25, ifElse(var(11) = 1, 9.0625, 6.875))
y = ifElse(var(11) = 2, -12.5, ifElse(var(11) = 1, -10, -7.5))

[State 1201, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
x = ifElse(var(11) = 2, -0.234375, ifElse(var(11) = 1, -0.185546875, -0.13671875))
y = ifElse(var(11) = 2, 0.9033203125, ifElse(var(11) = 1, 0.76904296875, 0.634765625))

[State 1201, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
stateType = A
physics = N

[State 1201, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(6) >= 0
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10), 98, 91)) < 7, 4, fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10), 98, 91)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1201, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1101
ctrl = 1

[State 1201, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1202


;Landing
[StateDef 1202]
type = S
anim = 1202
physics = N
moveType = I
velSet = 0,0

[State 1202, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1202, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1202, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 1202, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Hit
[StateDef 1203]
type = A
physics = N
moveType = I
anim = 1101
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1203, VelSet]
type = VelSet
trigger1 = !Time
x = -2.5
y = -5.625

[State 1203, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
x = 0.01953125
y = 0.48828125

[State 1203, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1202



;========================<EX BACKSTEP ROLL>=============================
;Startup
[StateDef 1230]
type = S
physics = N
moveType = I
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 200

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -5, -65
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1230, NotHitBy]
type= NotHitBy
trigger1= AnimElemTime(3) < 0
value = SCA
time = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0
channel = 0

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -6.015625*1.25
y = -3.75*1.25

[State 1230, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0
x = 0.234375*1.25
y = 0.68359375*1.25*1.25

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 1
stateType = A
physics = N

[State 1230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1231



[StateDef 1231]
type = S
physics = N
moveType = A
anim = 1221
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1231, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1231, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
pos = -25, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1231, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 1231, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 40, 0

[State 1231, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1231, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13.4375
y = -15

[State 1231, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
x = -0.283203125
y = 1.03759765625

[State 1231, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
stateType = A
physics = N

[State 1231, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(6) >= 0
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1231, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 4, fvar(11) * 126)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -6.15234375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1231, EX Flash]
type = VarSet
trigger1 = pos y > -vel y
trigger2 = MoveContact || MoveReversed
var(25) = 0

[State 1231, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1101
ctrl = 1

[State 1231, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1202



;========================<VERTICAL ROLL>=============================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500 || NumTarget(325)), 2, 1)

[State 1300, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 40, 0

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 2, 23.75, ifElse(var(10) = 1, 14.21875, 4.6875))
y = ifElse(var(10) = 2, -17.5, ifElse(var(10) = 1, -14.0625, -10.625))

[State 1300, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(7) <= 3 && !var(10)
trigger2 = AnimElemTime(3) > 0 && AnimElemTime(7) <= 2 && var(10) = 1
trigger3 = AnimElemTime(3) > 0 && AnimElemTime(7) <= 1 && var(10) = 2
x = ifElse(var(10) = 2, -1.25, ifElse(var(10) = 1, -0.78125, -0.3125))
y = ifElse(var(10) = 2, 1.416015625, ifElse(var(10) = 1, 1.0986328125, 0.78125))

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0
y = 0

[State 1300, VelSet]
type = VelAdd
trigger1 = AnimElemTime(15) > 2
y = 0.68359375

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
stateType = A
physics = N

[State 1300, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0 
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10), 91, 84)) < 7, 4, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10), 91, 84)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1101
ctrl = 1

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1102



;========================<EX VERTICAL ROLL>=============================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 20, -35
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 40, 0

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1330, NotHitByProjectiles]
type= NotHitBy
trigger1= AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
value = , AP
time = 1

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 18.984375
y = -15.78125

[State 1330, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(7) <= 3
x = -1.015625
y = 1.25732421875

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0
y = 0

[State 1330, VelSet]
type = VelAdd
trigger1 = AnimElemTime(15) > 2
y = 0.8544921875

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
stateType = A
physics = N

[State 1330, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0 
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 4, fvar(11) * 105)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1101
ctrl = 1

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1102



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 40, 0

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 14.21875
y = -14.0625

[State 2900, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(7) <= 2
x = -0.78125
y = 1.0986328125

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0
y = 0

[State 2900, VelSet]
type = VelAdd
trigger1 = AnimElemTime(15) > 2
y = 0.68359375

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
ID = 2900
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 16
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -45
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 2901
ctrl = 1

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2902



;Hit
[StateDef 2901]
type = A
physics = N
moveType = I
anim = 1101
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 2901, Woosh]
type = PlaySnd
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 2901, VelSet]
type = VelSet
trigger1 = !Time
x = -3.125
y = -11.25

[State 2901, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.78125

[State 2901, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2902



;Landing
[StateDef 2902]
type = S
anim = 47
physics = N
moveType = I
velSet = 0,0

[State 2902, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2902, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2902, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 2902, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -8
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
