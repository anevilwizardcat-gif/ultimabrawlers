;===============================================================================
;									EX ATTACKS
;===============================================================================

;----------------------------------------------------------------------------------
; Dancing Flash
[Statedef 3000]
type	= S
physics = N
movetype= A
ctrl = 0
velset = 0,0
facep2 = 1
poweradd = -1000
anim = 3000

[State 3000, VarSet]
type = Null
triggerall = Time = 0
trigger1 = e||(var(30) := 0)
trigger1 = e||(var(31) := 0)

[State 3000, SuperPause FX]
type = Helper
triggerall = (var(0)&64) > 0
trigger1 = Time = 6
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-32*Const(size.xscale)),ceil(-67*Const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, Unguardable]
type = VarSet
triggerall = (var(0)&64) > 0
trigger1 = Time = 0 && numEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(48) = 12

[State 3000, EX FX]
type = Explod
trigger1 = !Time && (var(0)&64) = 0
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(-32*Const(size.xscale)),ceil(-67*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = (var(0)&64) > 0
trigger1 = Time = 6
time = 43
moveTime = 0
p2DefMul = 1
unHittable = 1
anim = -1
sound = S3000,0
darken = 0

[State 3000, EX Startup Sound]
type = PlaySnd
trigger1 = !Time && (var(0)&64) = 0
value = S2000,0
channel = 13

[State 0, VarSet]
type = VarSet
trigger1 = !Time && (var(0)&64) = 0
var(12) = 1

[State 1020, Width]
type = Width
trigger1 = Anim = 1005
value = -3,-3

[State 3000, PosAdd]
type = PosAdd
trigger1 = Anim = 3000 && AnimElemTime(5) = 0
x = 32*Const(size.XScale)

[State 1000, Explod]
type = Explod
trigger1 = Anim = 3000 && AnimTime = 0
anim = 1001
ID = 1001
bindtime = -1
removetime = -1
scale = (.5*(Const(size.xscale))),(.5*(Const(size.yscale)))
ownpal = 1
ignorehitpause = 1
removeongethit = 1
sprpriority = 3
persistent = 0

[State 3000, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 1005

[State 3000, PlaySnd]
type = PlaySnd
triggerall = Anim = 1005
trigger1 = AnimElemTime(1) = 0
value = S200,0
persistent = 0

[State 1020, 2]
type = VelSet
trigger1 = Time = 9
x = 5*Const(Size.XScale)*(5.0/4.0)

[State 1020, 2]
type = VelSet
trigger1 = Time > 9
x = ((Vel X)+.75)*Const(Size.XScale)*(5.0/4.0)
persistent = 1

[State 1020, VelSet]
type = VelSet
triggerall = Anim = 1005
trigger1 = Vel X >= 13.5*Const(Size.XScale)*(5.0/4.0)
x = 13.5*Const(Size.XScale)*(5.0/4.0)

[State 3000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = Anim = 1005 && !NumTarget(9)
attr = S, HA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 32
ground.hittime	= 32
ground.velocity = 0
guard.velocity = -12.52
guard.hittime = 20
guard.ctrltime = 20
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
ID = 9
persistent = 0
p1facing = 1
p2facing = 1
kill = 0

[State 3000, TargetState]
type = TargetState
triggerall = Anim = 1005 && numTarget(9)
trigger1 = MoveHit && P2MoveType = H
value = 3805

[State 3001, TargetBind]
type = BindToTarget
triggerall = Anim = 1005 && numTarget(9)
trigger1 = MoveHit && P2MoveType = H
pos = 56,0, Foot
time = 1

[State 3000, ChangeState]
type = ChangeState
triggerall = Anim = 1005
triggerall = NumTarget(9)
triggerall = P2BodyDist X <= 56
triggerall = target, StateNo = 3805
trigger1 = MoveHit
value = 3001

[State 3000, ChangeState]
type = ChangeState
triggerall = Anim = 1005
trigger1 = MoveContact && !MoveHit
value = 1406

[State 3000, VelSet]
type = VelSet
trigger1 = Time = 42 && !MoveContact
x = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = Time = 42 && !MoveContact
value = 1305

;-----------------
; P1
[Statedef 3001]
type = S
physics = N
movetype = A
anim = 3010
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1020, Width]
type = Width
trigger1 = 1
edge = 30,30

[State 3003, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 1001
ignorehitpause = 1

[State 3003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3003, TargetBind]
type = TargetBind
trigger1 = Time = 0
pos = 40,0

[State 3001, PlaySnd]
type = PlaySnd
triggerall = e||(var(28) := 8)
trigger1 = Anim = 3010 && AnimElem = 6
trigger2 = Anim = 3011 && AnimElem = 4
trigger3 = Anim = 3012 && AnimElem = 3
trigger4 = Anim = 3013 && AnimElem = 4
value = S0,0
channel = 1
[State 3001, PlaySnd]
type = PlaySnd
triggerall = e||(var(28) := 5)
trigger1 = Anim = 3014 && AnimElem = 3
value = S1,0
channel = 1
[State 3001, PlaySnd]
type = PlaySnd
triggerall = e||(var(28) := 8)
trigger1 = Anim = 3015 && AnimElem = 3
value = S0,1
channel = 1
[State 3001, PlaySnd]
type = PlaySnd
triggerall = e||(var(28) := 5)
trigger1 = Anim = 3016 && AnimElem = 4
value = S1,1
channel = 1
[State 3001, PlaySnd]
type = PlaySnd
triggerall = e||(var(28) := 5)
trigger1 = Anim = 3017 && AnimElem = 3
value = S1,2
channel = 1

[State 3001, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = Anim = 3010
trigger2 = Anim = 3011
trigger3 = Anim = 3012
trigger4 = Anim = 3013
attr = S, HA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-20),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 14
ground.hittime	= 14
ground.velocity = 0
guard.velocity = 0
guard.ctrltime = 14
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
kill = 0

[State 3001, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = Anim = 3015
attr = S, HA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-20),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 14
ground.hittime	= 14
ground.velocity = 0
guard.velocity = 0
guard.ctrltime = 14
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
kill = 0

[State 3001, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = Anim = 3014
attr = S, HA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2,8
sparkno = -1 | (var(7) := 8014)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-20),(var(27):=-84)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 14
ground.hittime	= 14
ground.velocity = 0
guard.velocity = 0
guard.ctrltime = 14
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
kill = 0

[State 3001, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = Anim = 3016
attr = S, HA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2,11
sparkno = -1 | (var(7) := 8014)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-20),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 12
ground.hittime	= 12
ground.velocity = 0
guard.velocity = 0
guard.ctrltime = 12
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
kill = 0

[State 255, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Anim = 3017
attr = S, HA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2,11
sparkno = -1 | (var(7) := 8014)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12
ground.hittime	= 12
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 12
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
fall = 1
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
kill = 0

[State 3003, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3017 && AnimTime = 0
value = 3040

[State 3003, ChangeAnim]
type = ChangeAnim
triggerall = (Var(0)&32) > 0
trigger1 = Anim = 3040 && AnimElemTime(7) >= 0
value = 3041

[State 3003, PlaySnd]
type = PlaySnd
triggerall = Anim = 3040
trigger1 = AnimElemTime(1) = 1
value = S8,20
persistent = 0
channel = 0

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3041 && AnimElemTime(7) = 0
value = S8,1
channel = 0

[State 3003, VelSet]
type = VelSet
triggerall = Anim = 3040
trigger1 = AnimElemTime(2) = 0
x = 8*Const(Size.XScale)*(5.0/4.0)
y = -11*Const(Size.YScale)*(5.0/4.0)

[State 1005, VelAdd]
type = VelAdd
trigger1 = Anim = 3040 && AnimElemTime(2) > 0
trigger2 = Anim = 3041 && AnimElemTime(13) > 0
x = ifElse(Vel X <= 0,0,-0.34375)*Const(Size.XScale)*(25.0/16.0)
y = .5*Const(Size.YScale)*(25.0/16.0)
[State 1005, VelSet]
type = VelSet
trigger1 = Anim = 3040 && AnimElemTime(2) > 0 && Vel X <= 0
x = 0

[State 3003, HitDef]
type = HitDef
triggerall = Anim = 3040
trigger1 = AnimElem = 3
attr = A, HA
damage = ceil(ifElse(fvar(10)*63 < 7, 7, fvar(10)*63)),ceil(ifElse((fvar(10)*63/8) < 7, 7, (fvar(10)*63/8)))
animtype = Up
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12
ground.hittime	= 12
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 12
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
fall = 1
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
persistent = 0
kill = 0

[State 3003, HitDef]
type = HitDef
triggerall = Anim = 3040
trigger1 = AnimElem = 4 && (var(0)&32) = 0
attr = A, HA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),ceil(ifElse((fvar(10)*56/8) < 7, 7, (fvar(10)*56/8)))
animtype = Up
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12
ground.hittime	= 12
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 12
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .46875
fall = 1
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
persistent = 0
kill = 1

[State 3003, HitDef]
type = HitDef
triggerall = Anim = 3040
trigger1 = AnimElem = 4 && (var(0)&32) > 0
attr = A, HA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),ceil(ifElse((fvar(10)*56/8) < 7, 7, (fvar(10)*56/8)))
animtype = Up
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12
ground.hittime	= 12
ground.velocity = -1.5,-10.875
guard.velocity = -12.52
guard.ctrltime = 12
air.type = Low
air.velocity = -1.5,-10.875
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .5
fall = 1
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
persistent = 0
kill = 0

[State 3003, HitDef]
type = HitDef
triggerall = Anim = 3041
trigger1 = AnimElem = 11
attr = A, HA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Up
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 7,8
sparkno = -1 | (var(7) := 8017)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12
ground.hittime	= 12
ground.velocity = -12,16.125
guard.velocity = -12.52
guard.ctrltime = 12
air.type = Low
air.velocity = -12,16.125
airguard.velocity = -12,16.125
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = 0.125*(25.0/16.0)
fall = 1
air.fall = 1
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
fall.recover = 0
persistent = 0
kill = 1

[State 3001, ChangeAnim]
type = ChangeAnim
triggerall = Anim < 3017
trigger1 = MoveContact && AnimTime = 0
value = anim+1

[State 3001, MoveHitReset]
type = MoveHitReset
triggerall = Anim <= 3017
trigger1 = AnimElemTime(1) = 0

[State 255, Play Anim]
type = ChangeAnim
triggerall = HitPauseTime = [1,2]
trigger1 = Anim = 3010
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = Anim = 3012
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
value = anim
elem = ifElse(Anim=3010, 7, 4)
ignorehitpause = 1

[State 3003, VelSet]
type = VelSet
triggerall = Anim = 3041
trigger1 = AnimElemTime(13) < 0
x = 0
y = 0

[State 3001, ChangeState]
type = ChangeState
triggerall = Anim <= 3017
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3003, ChangeState]
type = ChangeState
triggerall = Pos Y + Vel Y >= 0
trigger1 = Anim = 3040 && AnimElemTime(6) > 0
trigger2 = Anim = 3041
value = 1305

;----------------------------------------------------------------------------------
; Please Help Me!
[Statedef 3100]
type	= S
physics = S
movetype= I
anim = 3100
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1
poweradd = -3000

[State 3000, VarSet]
type = Null
triggerall = Time = 0
trigger1 = e||(var(30) := 0)
trigger1 = e||(var(31) := 0)

[State 3100, VarSet]
type = VarSet
trigger1 = !Time
fvar(11) = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = S8,5
channel = 0

[State 3000, SuperPause FX]
type = Helper
triggerall = (var(0)&64) > 0
trigger1 = Time = 1
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,Ceil(-70*Const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, Unguardable]
type = VarSet
triggerall = (var(0)&64) > 0
trigger1 = Time = 0 && numEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(48) = 13

[State 3000, SuperPause]
type = SuperPause
triggerall = (var(0)&64) > 0
trigger1 = Time = 1
time = 43
moveTime = 0
p2DefMul = 1
unHittable = 1
anim = -1
sound = S3000,0
darken = 0

[State 3000, EX FX]
type = Explod
trigger1 = !Time && (var(0)&64) = 0
anim = 8210
sprPriority = 3
posType = p1
pos = 3,Ceil(-70*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3000, EX Startup Sound]
type = PlaySnd
trigger1 = !Time && (var(0)&64) = 0
value = S2000,0
channel = 13

[State 0, VarSet]
type = VarSet
trigger1 = !Time && (var(0)&64) = 0
var(12) = 1

[State 3100, Helper]
type = Helper
triggerall = !Var(22)
trigger1 = Time = 1
helpertype = Normal
name = "Pico"
ID = 3103
stateno = 3103
pos = -42,0
postype = Back
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3100, Helper]
type = Helper
triggerall = Var(22)
trigger1 = Time = 1
helpertype = Normal
name = "Nana,Mimi"
ID = 3106
stateno = 3106
pos = -48,ifElse(Var(22)=1,-120,-35)
postype = Back
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3100, ChangeAnim]
type = ChangeAnim
trigger1 = FVar(11)
value = 3101
persistent = 0

[State 3100, ChangeAnim]
type = ChangeAnim
trigger1 = FVar(11) = 2
value = 3102
persistent = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3102 && AnimElemTime(2) = 0
value = S8,11
channel = 0
persistent = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Anim= 3102 && AnimElemTime(20) = 0
value = S8,16
channel = 0

[State 3100, ChangeState]
type = ChangeState
triggerall = Time > 4
trigger1 = Anim != 3102 && !numHelper(3103) && !numHelper(3106)
trigger2 = Anim = 3102 && AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hit by Please Help Me!
[Statedef 3160]
type	= S
movetype= H
physics = N
velset = 0,0

[State 3160, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3103, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5000, 0]
type = PosSet
trigger1 = !Time
y = 0

[State 5000, 1]
type = ChangeAnim
trigger1 = !Time
value = 5000+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

;-------
[Statedef 3161]
type	= A
movetype= H
physics = N

[State 3161, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3161, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(7697)
value = 7697

[State 3161, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time && !SelfAnimExist(7697)
value = 3160

[State 3161, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 34
value = ifElse(SelfAnimExist(5061), 5061, 5050)

[State 0, VelSet]
type = VelSet
trigger1 = Time = 34
x = -4*(5.0/4.0)
y = -4.0625*(5.0/4.0)

[State 0, VelAdd]
type = VelAdd
trigger1 = Time > 34
y = 0.328125*(25.0/16.0)

[State 3161, ChangeState]
type = SelfState
trigger1 = Time > 34
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;----------------------------------------------------------------------------------
; Kitty the Helper
[Statedef 3500]
type	= S
physics = S
movetype= A
anim = 3500
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1
poweradd = -1000

[State 3000, VarSet]
type = Null
triggerall = Time = 0
trigger1 = e||(var(30) := 0)
trigger1 = e||(var(31) := 0)

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
triggerall = (var(0)&64) > 0
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-7*Const(size.xscale)),ceil(-24*Const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, Unguardable]
type = VarSet
triggerall = (var(0)&64) > 0
trigger1 = !Time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(48) = 2

[State 3000, SuperPause]
type = SuperPause
triggerall = (var(0)&64) > 0
trigger1 = Time = 0
time = 43
moveTime = 0
p2DefMul = 1
unHittable = 1
anim = -1
sound = S3000,0
darken = 0

[State 3000, EX FX]
type = Explod
trigger1 = !Time && (var(0)&64) = 0
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(-7*Const(size.xscale)),ceil(-24*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3000, EX Startup Sound]
type = PlaySnd
trigger1 = !Time && (var(0)&64) = 0
value = S2000,0
channel = 13

[State 0, VarSet]
type = VarSet
trigger1 = !Time && (var(0)&64) = 0
var(12) = 1

[State 3500, VarSet]
type = VarSet
trigger1 = AnimElemTime(7) < 0
var(3) = 420
[State 3500, VarSet]
type = VarAdd
trigger1 = !Time && (var(0)&32) = 0
var(0) = 32

[State 3500, EX]
type = VarSet
trigger1 = !Time
var(12) = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = S8,17
channel = 0

[State 3100, Helper]
type = Helper
trigger1 = !numHelper(3107)
helpertype = Normal
name = "Alto"
ID = 3107
stateno = 3600
pos = -32,0
postype = Back
facing = 1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Kitty the Helper (END)
[Statedef 3505]
type	= S
physics = S
movetype= I
anim = 3500
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3500, VarSet]
type = VarSet
trigger1 = !Time
var(3) = 0

[State 3500, VarSet]
type = VarAdd
trigger1 = !Time && (Var(0)&32) > 0
var(0) = -32

[State 3100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
