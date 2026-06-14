;===============================================================================
;									ES ATTACKS
;===============================================================================

;----------------------------------------------------------------------------------
; ES Rolling Buckler
[Statedef 2000]
type = S
movetype = I
physics = N
ctrl = 0
anim = 2000
sprpriority = 2
velset = 0,0
poweradd = -1000
juggle = 0
facep2 = 1

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(-32*Const(size.xscale)),ceil(-67*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 2
[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(13) = 0
[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(10) = 1
[State 1000, VarSet]
type = VarSet
trigger1 = Time = 0
var(11) = 29
[State 1000, VarSet]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(11)
var(11) = -1
ignorehitpause = 0

[State 1020, Width]
type = Width
trigger1 = Anim = 1005
value = -3,-3

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
value = S200,0

[State 1000, Explod]
type = Explod
trigger1 = Anim = 2000 && AnimTime = 0
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

[State 1020, 1]
type = ChangeAnim
triggerall = Anim = 2000
trigger1 = AnimTime = 0
value = 1005

[State 1020, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1005
movetype = A

[State 1020, 2]
type = VelAdd
trigger1 = Anim = 1005 && AnimElemTime(1) >= 0
x = 1.5*Const(Size.XScale)*(5.0/4.0)
persistent = 1

[State 1020, VelSet]
type = VelSet
triggerall = Anim = 1005
trigger1 = Vel X >= 15.5*Const(Size.XScale)*(5.0/4.0)
x = 15.5*Const(Size.XScale)*(5.0/4.0)

[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
trigger1 = Var(13) < 3
attr = S, SA
damage = ceil(ifElse(fvar(10)*42 < 7, 7, fvar(10)*42)),ceil(ifElse((fvar(10)*42/8) < 7, 7, (fvar(10)*42/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 24
ground.hittime	= 24
ground.velocity = -5.49
guard.velocity = -5.49
guard.ctrltime = 24
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2,-6
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

[State 2000, VarAdd]
type = VarAdd
trigger1 = MoveContact = 1 || MoveReversed = 1
var(13) = 1

[State 1000, ChangeState]
type = ChangeState
triggerall = MoveContact = 1 || MoveReversed = 1
trigger1 = Var(13) > 3
trigger2 = !Enemy, Alive
value = 1406

[State 1000, ChangeState]
type = ChangeState
trigger1 = Time && !var(11)
value = 1305

[State 1000, ChangeState]
type = ChangeState
triggerall = AILevel
trigger1 = Anim = 1005 && MoveContact = 1
value = ifElse((target, StateType = S && MoveGuarded = 1), 2030, 2020)
[State 1000, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = Anim = 1005
trigger1 = Var(11) = [1,2]
	trigger1 = (Random%4 = 0)
trigger2 = P2StateType = A
trigger2 = P2BodyDist X <= 48 && P2BodyDist Y < -56
value = 2010

;----------------------------------------------------------------------------------
; ES Rolling Uppercut
[Statedef 2010]
type = A
movetype = A
physics = N
ctrl = 0
anim = 2010
sprpriority = 2
velset = 0,0
poweradd = 0
juggle = 0

[State 1005, PlaySnd]
type = PlaySnd
trigger1 = Anim = 2010 && AnimElemTime(2) = 0
value = S8,20
persistent = 0

[State 1005, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Anim = 2010 && AnimElemTime(2) = 0
x = 9*Const(Size.XScale)*(5.0/4.0)
y = -12*Const(Size.YScale)*(5.0/4.0)

[State 1005, VelAdd]
type = VelAdd
trigger1 = Time > 2
x = ifElse(Vel X <= 0,0,-0.34375)*Const(Size.XScale)*(25.0/16.0)
y = .5*Const(Size.YScale)*(25.0/16.0)

[State 1015, VelSet]
type = VelSet
trigger1 = Time > 3 && Vel X <= 0
x = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 180*4/5*(NumTarget>0))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -3,-12.3125*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -3,-12.3125*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = .6875*(25.0/16.0)
fall = 1
air.fall = 1
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
ID = 3
[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 180*4/5*(NumTarget>0))
trigger1 = AnimElem = 4
attr = A, SA
damage = ceil(ifElse(fvar(10)*49 < 7, 7, fvar(10)*49)),ceil(ifElse((fvar(10)*49/8) < 7, 7, (fvar(10)*49/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -4,-4.921875*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -4,-4.921875
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = 0.46875
fall = 1
air.fall = 1
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0
ID = 3

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1025, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 2010 && AnimTime = 0
value = 1016

[State 1005, ChangeState]
type = ChangeState
triggerall = Anim = 1016
trigger1 = Pos Y + Vel Y >= 0
value = 1305;50

;----------------------------------------------------------------------------------
; ES Neko Punch
[Statedef 2020]
type = S
movetype = A
physics = N
ctrl = 0
anim = 2020
sprpriority = 2
poweradd = 0
juggle = 0

[State 1012, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8,1
channel = 0

[State 1035, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 9
value = S0,2
channel = 1
[State 52, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(11) = 0
value = S40,0
channel=1

[State 1025, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1025, VelSet]
type = VelSet
trigger1 = !Time
x = 7.25*Const(Size.XScale)*(5.0/4.0)
[State 1025, VelAdd]
type = VelAdd
trigger1 = Time > 1
x = ifElse(Vel X <= 0,0,-0.25)*Const(Size.XScale)*(25.0/16.0)
[State 1025, VelSet]
type = VelSet
trigger1 = Time > 0 && Vel X <=0
x = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 10
movetype = I

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, SA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 2)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 9
attr = S, SA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 16
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1025, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; ES Sliding Kick
[Statedef 2030]
type = S
movetype = A
physics = N
ctrl = 0
anim = 2030
sprpriority = 2
poweradd = 0
juggle = 0

[State 1035, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,0
persistent = 0

[State 1035, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,2
channel = 1

[State 1035, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1035, VelSet]
type = VelSet
trigger1 = !Time
x = 4.125*Const(Size.XScale)*(5.0/4.0)
[State 1035, VelAdd]
type = VelAdd
trigger1 = Time > 1
x = ifElse(Vel X <= 0,0,-0.25)*Const(Size.XScale)*(25.0/16.0)
[State 1035, VelSet]
type = VelSet
trigger1 = Time > 0 && Vel X <=0
x = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, SA
damage = ceil(ifElse(fvar(10)*49 < 7, 7, fvar(10)*49)),ceil(ifElse((fvar(10)*49/8) < 7, 7, (fvar(10)*49/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Trip
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Trip
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0

[State 1035, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; ES Sand Splash
[Statedef 2100]
type = S
movetype = A
physics = N
ctrl = 0
anim = 2100
sprpriority = 2
velset = 0,0
poweradd = -1000
juggle = 0
facep2 = 1

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(4*Const(size.xscale)),ceil(-51*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 2

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S180,0
channel = 0
[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S200,4

[State 1100, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Sand"
ID = 2105
stateno = 2105
pos = ceil(28*Const(Size.Xscale)),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.XScale = 0.5*Const(size.XScale)
size.yscale = 0.5*Const(size.yscale)
persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; ES Cat Spike
[Statedef 2200]
type = S
movetype = A
physics = N
ctrl = 0
anim = 2200
sprpriority = 2
velset = 0,0
poweradd = -1000
juggle = 0
facep2 = 1

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(Const(Size.XScale)*8),ceil(Const(Size.YScale)*-32)
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 1220, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
statetype = A

[State 1020, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 1*(5.0/4.0)*Const(Size.XScale)
y = -7*(5.0/4.0)*Const(Size.YScale)

[State 1020, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = .25*(25.0/16.0)*Const(Size.YScale)

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S40,4
channel = 13
[State 40, Dust]
type = Helper
trigger1 = AnimElemTime(4) = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = P1
ownpal = 1

[State 1220, Ball]
type = Helper
trigger1 = !Time
stateno = 1205
ID = 2250
pos = ceil(Const(Size.XScale)*8),ceil(Const(Size.YScale)*-32)
postype = p1
size.xscale = Const(Size.XScale)
size.yscale = Const(Size.YScale)
ownpal = 1

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = S8,1
channel = 0

[State 1220, Slice]
type = null;Explod
trigger1 = AnimElemTime(9) = 0
anim = 7005
pos = (Ceil((Const(size.XScale))*6)),(Ceil((Const(size.yscale))*34))
postype = p1
removetime = -2
bindtime = -1
scale = (Const(size.XScale)),(Const(size.yscale))
ownpal = 1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 16
movetype = I

[State 1220, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 15
attr = A, SA
damage = ceil(ifElse(fvar(10)*91 < 7, 7, fvar(10)*91)),ceil(ifElse((fvar(10)*91/8) < 7, 7, (fvar(10)*91/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = High
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0

[State 1220, ChangeState]
type = ChangeState
triggerall = AnimElemTime(4) > 1
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; ES Delta Kick
[Statedef 2300]
type = S
movetype = A
physics = N
ctrl = 0
anim = 2300
sprpriority = 2
velset = 0,0
poweradd = -1000
juggle = 0
facep2 = 1

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(Const(Size.XScale)*-10),ceil(Const(Size.YScale)*-57)
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 1300, VelSet]
type = VelSet
triggerall = Anim = 2300
trigger1 = AnimElemTime(3) = 0
x = 0
y = -14*(5.0/4.0)

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 2300
trigger1 = AnimElemTime(3) = 0
statetype = A
physics = N

[State 1300, VelAdd]
type = VelAdd
triggerall = Anim = 2300
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(9) < 0
y = 0.96875*(25.0/16.0)

[State 1300, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 2300
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(9) < 0
attr = A, SA
damage = ceil(ifElse(fvar(10)*84 < 7, 7, fvar(10)*84)),ceil(ifElse((fvar(10)*84/8) < 7, 7, (fvar(10)*84/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -12.52
guard.velocity = -12.52
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0

[State 1300, HitDef2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 2300
trigger1 = AnimElemTime(11) >= 0
attr = A, SA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -12.52
guard.velocity = -12.52
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0

[State 1300, HitDef3]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 2301
trigger1 = AnimElem = 2
attr = A, SA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -12.52
guard.velocity = -12.52
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1300, HitDef3]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 2301
trigger1 = AnimElem = 6 || AnimElem = 10
attr = A, SA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -12.52
guard.velocity = -12.52
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef3]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 2301
trigger1 = AnimElem = 4 || AnimElem = 8
attr = A, SA
damage = ceil(ifElse(fvar(10)*14 < 7, 7, fvar(10)*14)),ceil(ifElse((fvar(10)*14/8) < 7, 7, (fvar(10)*14/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -12.52
guard.velocity = -12.52
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
fall.recover = 0
palFX.time = 12 * var(21)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = Anim = 2300
trigger1 = AnimElemTime(10) = 0
value = S8,18

[State 1020, VelSet]
type = VelSet
trigger1 = Anim = 2300 && AnimElemTime(9) = 0
x = 4*(5.0/4.0)
y = 1.875*(5.0/4.0)

[State 1020, 3]
type = VelAdd
trigger1 = Anim = 2300 && AnimElemTime(9) > 0 || Anim = 2301
x = 0.44921875*(25.0/16.0)

[State 1020,4]
type = VelAdd
trigger1 = Anim = 2300 && AnimElemTime(9) > 0 || Anim = 2301
trigger1 = Vel Y < 3.75*(5.0/4.0)
y = 0.2265625*(25.0/16.0)
[State 1020,4]
type = VelSet
trigger1 = Anim = 2300 && AnimElemTime(9) > 0 || Anim = 2301
trigger1 = Vel Y >= 3.75*(5.0/4.0)
y = 3.75*(5.0/4.0)

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 2300 && AnimElemTime(11) > 0 && MoveContact = 1
value = 2301

[State 1300, ChangeState]
type = ChangeState
triggerall = StateType = A
trigger1 = Vel Y + Pos Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; ES Rolling Scratch
[Statedef 2400]
type	= A
physics = N
movetype= A
anim = ifElse(Var(11),1400,1000)
ctrl = 0
velset = 0,0
facep2 = !Var(11)

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(-32*Const(size.xscale)),ceil(-67*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time && Anim = 1000
var(13) = 0
[State 2000, VarSet]
type = VarSet
trigger1 = !Time && Anim = 1000
var(10) = 1
[State 2000, PowerAdd]
type = PowerAdd
trigger1 = !Time && Anim = 1000
value= -1000

[State 1400, Loop]
type = VarSet
trigger1 = !Var(11) && Time = 0
var(11) = 3
[State 1400, Loop]
type = VarAdd
trigger1 = !Time && PrevStateNo = StateNo
var(11) = -1

[State 1410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1000 && AnimTime = 0
value = S200,0
channel = 1
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1400 && !Time
value = S40,0

[State 1400, VelSet]
type = VelSet
trigger1 = (Anim = 1000 || Anim = 1400) && AnimTime = 0
x = 5*(4.0/3.0) ; Again, ain't Turbo a bitch?
y = -15*Const(Size.YScale)*(4.0/3.0)
persistent = 0

[State 52, Dust]
type = Explod
trigger1 = Anim = 1400 && AnimElemTime(1) = 0
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 40, Dust]
type = Helper
trigger1 = (Anim = 1000 || Anim = 1400) && AnimTime = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = P1
ownpal = 1

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 1000 || Anim = 1400) && AnimTime = 0
value = 1005

[State 1400, VelAdd]
type = VelAdd
trigger1 = Anim = 1005
y = 1.25*Const(Size.YScale)*(16.0/9.0)

[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = Var(3) < 3
triggerall = Anim = 1005
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4)>=0 && AnimElemTime(5) < 0
trigger3 = AnimElemTime(6)>=0 && AnimElemTime(7) < 0
trigger4 = AnimElemTime(8)>=0
attr = A, SA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 24
ground.hittime	= 24
ground.velocity = -5.49
guard.velocity = -5.49
guard.ctrltime = 24
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2,-6
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
[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
triggerall = Var(3) < 3
triggerall = Anim = 1005
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(2) < 0
trigger2 = AnimElemTime(3)>=0 && AnimElemTime(4) < 0
trigger3 = AnimElemTime(5)>=0 && AnimElemTime(6) < 0
trigger4 = AnimElemTime(7)>=0 && AnimElemTime(8) < 0
damage = ceil(ifElse(fvar(10)*42 < 7, 7, fvar(10)*42)),ceil(ifElse((fvar(10)*42/8) < 7, 7, (fvar(10)*42/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 24
ground.hittime	= 24
ground.velocity = -5.49
guard.velocity = -5.49
guard.ctrltime = 24
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2,-6
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
persistent = 1

[State 2000, VarAdd]
type = VarAdd
trigger1 = MoveContact = 1 || MoveReversed = 1
var(13) = 1

[State 1400, Buffer]
type = VarSet
triggerall = Time > 7
triggerall = Var(50) = [1,2]
triggerall = numHelper(10372)
trigger1 = (helper(10372), Var(0)&903) != 0
var(46) = 1405
ignorehitpause = 1

[State 1400, ChangeState]
type = ChangeState
triggerall = Time > 7
trigger1 = Var(46) >= 0
value = Var(46)
ignorehitpause = 1
ctrl = 0

[State 1400, ChangeState]
type = ChangeState
triggerall = MoveContact = 1 || MoveReversed = 1
trigger1 = Var(13) > 3
trigger2 = !Enemy, Alive
value = 1406;50
ignorehitpause = 0

[State 1400, ChangeAnim]
type = ChangeState
triggerall = Anim = 1005
trigger1 = Time > 6
trigger1 = Pos Y + Vel Y >= 0
value = ifElse(Var(11),stateNo,1305)

;----------------------------------------------------------------------------------
; ES Hellcat
[Statedef 2500]
type	= S
physics = N
movetype= A
anim = 2500
ctrl = 0
velset = 0,0
poweradd = -1000

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(Const(Size.XScale)*36),ceil(Const(Size.YScale)*-58)
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 1500, 1]
type = HitDef
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = P2StateNo != 40
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**3)) != 0
trigger1 = AnimElem = 2
attr = S, ST
hitflag = M-
priority = 3, Miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 2501
p2stateno = 2502
guard.dist = 0
fall = 1

[State 1500, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 2

[State 1500, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
; ES Hellcat (P1)
[Statedef 2501]
type	= S
physics = N
movetype= A
anim = 2501
poweradd = 0
ctrl = 0

[State 1501, SprPriority]
type = SprPriority
triggerall = Anim = 2501
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
value = 0
[State 1501, SprPriority]
type = SprPriority
triggerall = Anim = 2501
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
trigger3 = AnimElem = 20
value = 2

[State 1501, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1501, PlayerPush]
type = ScreenBound
trigger1 = Anim = 2501
value = 0
movecamera = 0,0
[State 1501, Width]
type = Width
trigger1 = Anim = 1550 && AnimElemTime(4) > 0
edge = 30,0

[State 1501, PlaySnd]
type = PlaySnd
triggerall = Anim = 2501
trigger1 = AnimElemTime(1) = 0
value = S800,0

[State 832, Bind 1]
type = BindtoTarget
triggerall = Anim = 2501
trigger1 = AnimElemTime(1) = 0
time = 5
pos = ceil(33*Const(Size.XScale)),0,Foot
[State 832, Bind 1]
type = BindtoTarget
triggerall = Anim = 2501
trigger1 = AnimElemTime(2) = 0
time = 6
pos = ceil(54*Const(Size.XScale)),0,Foot
[State 832, Bind 2]
type = BindtoTarget
triggerall = Anim = 2501
trigger1 = AnimElemTime(3) = 0
time = 3
pos = 0,0,Foot
[State 1501, Bind 5]
type = BindtoTarget
triggerall = Anim = 2501
trigger1 = AnimElemTime(4) = 0
time = 2
pos = 0,ceil(-40*Const(Size.YScale)),Foot

[State 1501, Bind 5]
type = BindtoTarget
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) >= -.8
triggerall = Anim = 2501
trigger1 = AnimElemTime(5) = 0
time = 1
pos = 0,target,Const(Size.Mid.Pos.Y),Foot

[State 1501, VelSet]
type = VelSet
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) < -.8
triggerall = Anim = 2501
trigger1 = AnimElemTime(6) = 0
x = facing*((target,Pos X+(target,Const(Size.Mid.Pos.X)*target,facing))-Pos X)/19.0
y = (target, Const(Size.Mid.Pos.Y)+40)/19.0
ignorehitpause = 1
[State 1501, VelSet]
type = VelSet
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) < -.8
triggerall = Anim = 2501
trigger1 = AnimElemTime(18) = 0
x = facing*((target,Pos X+(target,Const(Size.Head.Pos.X)*target,facing))-Pos X)/20.0
y = ((target,Pos Y+target,Const(Size.Head.Pos.Y)+14)-Pos Y)/20.0
ignorehitpause = 1
[State 1501, VelSet]
type = VelSet
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) < -.8
triggerall = Anim = 2501
trigger1 = AnimElemTime(36) = 0
x = facing*(target,Pos X-Pos X)/9.0
y = (-60-Pos Y)/9.0
ignorehitpause = 1

[State 1501, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0
y = 0

[State 1501, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 2501
trigger1 = AnimTime = 0
value = 1550

[State 1501, PosSet]
type = PosSet
trigger1 = Anim = 1550 && AnimElemTime(1) = 0
y = 0

[State 1501, PosSet]
type = PosAdd
trigger1 = Anim = 1550 && AnimElemTime(1) = 0
x = 100*Const(Size.XScale)

[State 1501, TargetBind]
type = TargetBind
triggerall = Anim = 1550
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
time = 1
pos = ceil(-81*Const(Size.XScale)),ceil(-65*Const(Size.YScale))
persistent = 1
[State 1501, TargetBind]
type = TargetBind
triggerall = Anim = 1550
trigger1 = AnimElem = 2
time = 1
pos = ceil(-34*Const(Size.XScale)),ceil(-78*Const(Size.YScale))
[State 1501, TargetBind]
type = TargetBind
triggerall = Anim = 1550
trigger1 = AnimElem = 3
time = 1
pos = ceil(3*Const(Size.XScale)),ceil(-80*Const(Size.YScale))
[State 1501, TargetBind]
type = TargetBind
triggerall = Anim = 1550
trigger1 = AnimElem = 4
time = 1
pos = ceil(36*Const(Size.XScale)),ceil(-21*Const(Size.YScale))

[State 1501, PlaySnd]
type = PlaySnd
triggerall = Anim = 2501
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 23
trigger5 = AnimElem = 29
trigger6 = AnimElem = 35
value = S3,8
channel=1
[State -2, Sparks]
type = Helper
triggerall = Anim = 2501
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(11) = 0
trigger3 = AnimElemTime(16) = 0
trigger4 = AnimElemTime(23) = 0
trigger5 = AnimElemTime(29) = 0
trigger6 = AnimElemTime(35) = 0
stateno = 8016
ID = 8000
name = "Spark"
postype = P1
pos = 0,0
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -3, Blood]
type = Helper
triggerall = Anim = 2501
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(11) = 0
trigger3 = AnimElemTime(16) = 0
trigger4 = AnimElemTime(23) = 0
trigger5 = AnimElemTime(29) = 0
trigger6 = AnimElemTime(35) = 0
ID = 8700
name = "BLOOD"
pos = 0,0
postype = P1
stateno = 8700
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
size.XScale = 1
size.yscale = 1
facing = 1

[State 1501, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Anim = 2501
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 23
trigger5 = AnimElem = 29
trigger6 = AnimElem = 35
value = floor(ifElse((-14*FVar(10))>-7,-7,(-14*FVar(10))))
kill = 0

[State 1501, TargetLifeAdd]
type = PlaySnd
triggerall = Anim = 1550
trigger1 = AnimElem = 4
value = S8,9
channel=0

[State 2501, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Anim = 1550
trigger1 = AnimElem = 4
value = floor(ifElse((-84*FVar(10))>-7,-7,(-84*FVar(10))))

[State 2501, TargetPowerAdd]
type = TargetPowerAdd
triggerall = Anim = 1550
trigger1 = AnimElem = 4
value = 36

[State 2501, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1305
ctrl = 1

;------------------------
; ES Hellcat (P2)
[Statedef 2502]
type	= A
physics = N
movetype= H
sprpriority = 1
ctrl = 0
velset = 0,0

[State 2502, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 2502, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2550
[State 2502, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time && Name = "Gill" && AuthorName = "GM" && Facing = -1
value = 2560

[State 1502, Gill]
type = ChangeAnim2
triggerall = Name = "Gill" && AuthorName = "GM"
trigger1 = Anim = 2550
trigger1 = AnimTime = 0
value = 1561
[State 1502, Down]
type = ChangeAnim2
triggerall = Anim = 2550
triggerall = AnimTime = 0
trigger1 = Name = "Felicia" || Name = "Felicia MvC2 Style by MGBenz"
trigger2 = Name = "Zabel" || Name = "Zabel Zarock" || Name = "cvszabel" || Name = "Raptor" || Name = "Lord Raptor"
trigger2 = Name = "Rapter" || Name = "Lord Rapter" || Name = "L Raptor" || Name = "L Rapter" || Name = "L. Raptor" || Name = "L. Rapter" ; OK
trigger3 = (Name = "Demitri" && Enemy, AuthorName != "Bad Darkness") || Name = "Demitri Maximoff" || Name = "Demitri Maximov" || Name = "Demitri(DS)"
trigger4 = Name = "Anakaris" || Name = "cvsanakaris" || Name = "Anakaris By Third"
trigger5 = Name = "Victor"
trigger6 = Name = "Sasquatch"
value = 1559
[State 1502, Felicia]
type = ChangeAnim2
triggerall = AuthorName = "Jesuszilla" && (Name = "Felicia_LG" || Name = "cvsfelicia")
trigger1 = Anim = 2550
trigger1 = AnimTime = 0
value = 1558
[State 1502, Gill]
type = ChangeAnim2
trigger1 = Anim = 2560
trigger1 = AnimTime = 0
value = 1557
[State 1502, Normal]
type = ChangeAnim2
triggerall = !(AuthorName = "Jesuszilla" && Name = "Felicia_LG" && Name = "cvsfelicia")
triggerall = Name != "Felicia" && Name != "Felicia MvC2 Style by MGBenz"
triggerall = Name != "Zabel" && Name != "Zabel Zarock" && Name != "cvszabel" && Name != "Raptor" && Name != "Lord Raptor"
triggerall = Name != "Rapter" && Name != "Lord Rapter" && Name != "L Raptor" && Name != "L Rapter" && Name != "L. Raptor" && Name != "L. Rapter" ; OK
triggerall = !(Name = "Demitri" && Enemy, AuthorName != "Bad Darkness") && Name != "Demitri Maximoff" && Name != "Demitri Maximov" && Name != "Demitri(DS)"
triggerall = Name != "Anakaris" && Name != "cvsanakaris" && Name != "Anakaris By Third"
triggerall = Name != "Victor"
triggerall = Name != "Sasquatch"
triggerall = !(Name = "Gill" && AuthorName = "GM")
trigger1 = Anim = 2550
trigger1 = AnimTime = 0
value = 1556

[State 1502, Turn]
type = Turn
trigger1 = Anim = 1561 || Anim = [1556,1557]
trigger1 = AnimElemTime(3) = 0
trigger2 = Anim = [1558,1559]
trigger2 = AnimElemTime(4) = 0



[State 0, VelSet]
type = VelSet
trigger1 = Anim = 1561 || Anim = [1556,1557]
trigger1 = AnimElemTime(3) = 0
trigger2 = Anim = [1558,1559]
trigger2 = AnimElemTime(4) = 0
x = 4.46875
y = -11.40625
[State 1502, VelAdd]
type = VelAdd
trigger1 = Anim = 1561 || Anim = [1556,1557]
trigger1 = AnimElemTime(3) > 0
trigger2 = Anim = [1558,1559]
trigger2 = AnimElemTime(4) > 0
x = ifElse(vel X <= 0, 0, -0.04167)
y = 0.79167

[State 1502, ChangeState]
type = SelfState
trigger1 = (Anim = 1561 || (Anim = [1556,1559])) && AnimElemTime(4) >= 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100
ctrl = 0

;----------------------------------------------------------------------------------
; ES Toy Touch
[Statedef 2600]
type = S
movetype = A
physics = N
ctrl = 0
anim = 2600
sprpriority = 2
velset = 0,0
poweradd = -1000
juggle = 0
facep2 = 1

[State 3000, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(4*Const(size.xscale)),ceil(-51*Const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && (var(0)&16) > 0
value = S2000,0
channel = 13

[State 2000, VarSet]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
value = S8,14
channel = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 16
movetype = I

[State 0, Rat 1]
type = Explod
trigger1 = !Time
anim = 1918
ID = 1918
pos = ceil(44*Const(Size.XScale)),0
postype = p1
removetime = -2
scale = const(Size.XScale),const(Size.Yscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
[State 0, Rat 2]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 1919
ID = 1918
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.XScale),const(Size.Yscale)
sprpriority = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
attr = C, SA
hitflag = FD
guardflag =
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
priority = 6, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-7)
hitsound = S0,-1 | (var(28) := 2)
guardsound = S0,-1 | (var(29) := 0)
down.velocity = 0,0
down.hittime = 18
down.bounce = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
givepower = 36,36
p2stateno = 3880

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1