;===============================================================================
;									 SPECIALS
;===============================================================================

;----------------------------------------------------------------------------------
; Rolling Buckler
[Statedef 1000]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1000
sprpriority = 2
velset = 0,0
poweradd= 72 * !var(30)
juggle = 0;HAH
facep2 = 1

[State 1000, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
var(22) = ifElse(random%2=0,1,2)
[State 1000, VarSet]
type = VarSet
trigger1 = Time = 0
var(11) = ifElse(!Var(22),28,29)
[State 1000, VarSet]
type = VarAdd
trigger1 = Time > 0
trigger1 = Var(11)
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
trigger1 = Anim = 1000 && AnimTime = 0
anim = 1002
ID = 1001
bindtime = -1
removetime = -1
scale = (.5*(Const(size.xscale))),(.5*(Const(size.yscale)))
ownpal = 1
ignorehitpause = 1
removeongethit = 1
sprpriority = 3
persistent = 0

[State 1020, StateTypeSet]
type = StateTypeSet
triggerall = Anim = 1000
trigger1 = AnimTime = 0
movetype = A

[State 1020, 1]
type = ChangeAnim
triggerall = Anim = 1000
trigger1 = AnimTime = 0
value = 1003+Var(22)

[State 1020, 2]
type = VelSet
trigger1 = (Anim = [1003,1005]) && AnimElemTime(1) >= 0
x = (Vel X)+(1*Const(size.Xscale))
persistent = 1

[State 1020, VelSet]
type = VelSet
triggerall = (Anim = [1003,1005])
trigger1 = Vel X >= 9+(Var(22)*2)
x = 9+(Var(22)*2)*Const(size.Xscale)

[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = !MoveContact
attr = S, SA
damage = ceil(ifElse(fvar(10)*63 < 7, 7, fvar(10)*63)),ceil(ifElse((fvar(10)*63/8) < 7, 7, (fvar(10)*63/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 26
ground.hittime	= 26
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 26
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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

[State 1000, ChangeState]
type = ChangeState
triggerall = Time > 1
trigger1 = MoveContact = 1
value = 1406

[State 1000, ChangeState]
type = ChangeState
trigger1 = Var(11) = 0
value = 1305

[State 1000, RemoveExplod]
type = RemoveExplod
triggerall = Time > 1
trigger1 = MoveContact = 1
ID = 1001
ignorehitpause = 1

;----------------------------------------------------------------------------------
; Neko Punch
[Statedef 1025]
type = S
movetype = A
physics = N;S
ctrl = 0
anim = 1035
sprpriority = 2
poweradd = 72 * !var(30)
juggle = 0

[State 1012, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S8,24
channel = 0
persistent = 0

[State 1025, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1025, VelSet]
type = VelSet
trigger1 = !Time
x = 5.125
[State 1025, VelAdd]
type = VelAdd
trigger1 = Time
x = ifElse(Vel X <= 0,0,-0.25)

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 1025, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, SA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 2)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
; Rolling Uppercut (Light)
[Statedef 1005]
type = A
movetype = A
physics = S
ctrl = 0
anim = 1010
sprpriority = 2
velset = 0,0
poweradd = 72 * !var(30)
juggle = 0

[State 1015, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8,0
channel = 0
persistent = 0

[State 1015, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1015, VelSet]
type = VelSet
trigger1 = Anim = 1010 && AnimElem = 2
x = 6*(5.0/4.0)*Const(Size.XScale)
y = -4*(5.0/4.0)*Const(Size.YScale)
[State 1015, VelAdd]
type = VelAdd
trigger1 = Anim = 1010 && AnimElemTime(2) > 0 || Anim = 1016
x = ifElse(Vel X <= 0,0,-0.34375*(25.0/16.0))*Const(Size.XScale)
y = .5*(25.0/16.0)*Const(Size.YScale)
[State 1015, VelSet]
type = VelSet
trigger1 = Time > 3 && Vel X <= 0
x = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2 || AnimElem = 3
attr = A, SA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Heavy
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -3,-12.3125*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -3,-12.3125*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1015
persistent = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 180*4/5)
trigger1 = AnimElem = 4
attr = A, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
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
air.velocity = -4,-4.921875*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1015
persistent = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1010 && AnimElem = 5
movetype = I

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1010 && AnimTime = 0
value = 1016

[State 1005, ChangeState]
type = ChangeState
triggerall = Anim = 1016
trigger1 = Pos Y + Vel Y >= 0
value = 1305;50

;----------------------------------------------------------------------------------
; Rolling Uppercut (Medium)
[Statedef 1010]
type = A
movetype = A
physics = S
ctrl = 0
anim = 1015
sprpriority = 2
velset = 0,0
poweradd = 72 * !var(30)
juggle = 0

[State 1015, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8,0
channel = 0
persistent = 0

[State 1015, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1015, VelSet]
type = VelSet
trigger1 = Anim = 1015 && AnimElem = 2
x = 6*(5.0/4.0)*Const(Size.XScale)
y = -8*(5.0/4.0)*Const(Size.YScale)
[State 1015, VelAdd]
type = VelAdd
trigger1 = Anim = 1015 && AnimElemTime(2) > 0 || Anim = 1016
x = ifElse(Vel X <= 0,0,-0.34375*(25.0/16.0))*Const(Size.XScale)
y = .5*(25.0/16.0)*Const(Size.YScale)
[State 1015, VelSet]
type = VelSet
trigger1 = Time > 3 && Vel X <= 0
x = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2 || AnimElem = 3
attr = A, SA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Heavy
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -3,-12.3125*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -3,-12.3125*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1015
persistent = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 180*4/5)
trigger1 = AnimElem = 4
attr = A, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Up
fall.animtype = Up
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
ground.velocity = -4,-4.921875
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -4,-4.921875
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1015
persistent = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1015 && AnimTime = 0
value = 1016

[State 1005, ChangeState]
type = ChangeState
triggerall = Anim = 1016
trigger1 = Pos Y + Vel Y >= 0
value = 1305;50

;----------------------------------------------------------------------------------
; Rolling Uppercut (Heavy)
[Statedef 1015]
type = A
movetype = A
physics = S
ctrl = 0
anim = 1025
sprpriority = 2
velset = 0,0
poweradd = 72 * !var(30)
juggle = 0

[State 1005, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8,0
channel = 0
persistent = 0

[State 1005, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Anim = 1025 && AnimElem = 2
x = 7.5*(5.0/4.0)*Const(Size.XScale)
y = -10*(5.0/4.0)*Const(Size.YScale)
[State 1005, VelAdd]
type = VelAdd
trigger1 = Anim = 1025 && AnimElemTime(2) > 0 || Anim = 1016
x = ifElse(Vel X <= 0,0,-0.34375*(25.0/16.0))*Const(Size.XScale)
y = .5*(25.0/16.0)*Const(Size.YScale)
[State 1005, VelSet]
type = VelSet
trigger1 = Time > 3 && Vel X <= 0
x = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2 || AnimElem = 3
attr = A, SA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),ceil(ifElse((fvar(10)*28/8) < 7, 7, (fvar(10)*28/8)))
animtype = Heavy
air.animtype = Up
fall.animtype = Up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -3,-12.3125*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -3,-12.3125*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1015
persistent = 0

[State 1015, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 180*4/5)
trigger1 = AnimElem = 4
attr = A, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Up
fall.animtype = Up
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
ground.velocity = -4,-4.921875
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -4,-4.921875
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1015
persistent = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1025, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1025 && AnimTime = 0
value = 1016

[State 1005, ChangeState]
type = ChangeState
triggerall = Anim = 1016
trigger1 = Pos Y + Vel Y >= 0
value = 1305;50

;----------------------------------------------------------------------------------
; Sliding Kick
[Statedef 1035]
type = S
movetype = A
physics = N;S
ctrl = 0
anim = 1045
sprpriority = 2
poweradd = 72 * !var(30)
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
x = 5.125
[State 1035, VelAdd]
type = VelAdd
trigger1 = Time
x = ifElse(Vel X <= 0,0,-0.25)
[State 1035, VelSet]
type = VelSet
trigger1 = Time && Vel X <=0
x = 0

[State 102, Dust]
type = Helper
trigger1 = AnimElemTime(2) = 0
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1035, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
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
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Trip
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
; Cat Spike (Light)
[Statedef 1200]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1200
sprpriority = 2
velset = 0,0
juggle = 0
poweradd = 72 * !var(30)
facep2 = 1

[State 1000, VarSet]
type = VarSet
trigger1 = Time = 0
var(22) = 0

[State 1200, Ball]
type = Helper
trigger1 = !Time
ID = 8411
stateno = 1205
pos = (Ceil((Const(size.xscale))*8)),(Ceil((Const(size.yscale))*-30))
postype = p1
size.xscale = (Const(size.xscale))
size.yscale = (Const(size.yscale))
ownpal = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S200,2
channel = 5

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
movetype = I

[State 1200, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7
attr = S, SA
damage = ceil(ifElse(fvar(10)*112 < 7, 7, fvar(10)*112)),ceil(ifElse((fvar(10)*112/8) < 7, 7, (fvar(10)*112/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 8)
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
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1200

[State 1020, VelSet]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
x = 32*Const(Size.XScale)

[State 1020, VelSet]
type = PosAdd
trigger1 = AnimElemTime(13) = 0
x = 24*Const(Size.XScale)

[State 1020, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 4*(5.0/4.0)
[State 1020, VelSet]
type = VelAdd
trigger1 = AnimElemTime(7) > 0
x = -.03125*Const(Size.XScale)

[State 1020, VelSet]
type = VelSet
trigger1 = AnimElemTime(12) = 0
x = 0

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Cat Spike (Medium)
[Statedef 1210]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1210
sprpriority = 2
velset = 0,0
juggle = 0
poweradd = 72 * !var(30)
facep2 = 1

[State 1000, VarSet]
type = VarSet
trigger1 = Time = 0
var(22) = 1

[State 1220, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 1
statetype = A

[State 1020, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 4.5*(5.0/4.0)*Const(Size.XScale)
y = -3*(5.0/4.0)*Const(Size.YScale)

[State 1210, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
x = ifElse(Vel X <= 0, 0, -0.0078125)*(25.0/16.0)*Const(Size.XScale)
y = 0.25*(25.0/16.0)*Const(Size.YScale)

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S40,4
channel = 13
[State 40, Dust]
type = Helper
trigger1 = AnimElemTime(4) = 1
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = P1
ownpal = 1

[State 1210, Ball]
type = Helper;Explod
trigger1 = !Time
stateno = 1205
ID = 84112
pos = ceil(Const(Size.XScale)*8),ceil(Const(Size.YScale)*-32)
postype = p1
size.xscale = Const(Size.XScale)
size.yscale = Const(Size.YScale)
ownpal = 1

[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(9) >= 0
trigger2 = MoveContact
ID = 8411

[State 1210, Slice]
type = Explod
trigger1 = AnimElemTime(9) = 0
anim = 7005
pos = ceil(Const(Size.XScale)*6),ceil(Const(size.YScale)*34)
postype = p1
removetime = -2
bindtime = -1
scale = 0.5*Const(size.XScale), 0.5*Const(size.YScale)
sprpriority = 3
ownpal = 1

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S200,2
channel = 5

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 1210, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
trigger1 = AnimElem = 9 || AnimElem = 10
attr = A, SA
damage = ceil(ifElse(fvar(10)*119 < 7, 7, fvar(10)*119)),ceil(ifElse((fvar(10)*119/8) < 7, 7, (fvar(10)*119/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 8)
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
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 3

[State 1210, ChangeState]
type = ChangeState
triggerall = AnimElemTime(4) > 1
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; Cat Spike (Heavy)
[Statedef 1220]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1220
sprpriority = 2
velset = 0,0
juggle = 0
poweradd = 72 * !var(30)
facep2 = 1

[State 1000, VarSet]
type = VarSet
trigger1 = Time = 0
var(22) = 2

[State 1220, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
statetype = A

[State 1020, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 7.5*(5.0/4.0)*Const(Size.XScale)
y = -4*(5.0/4.0)*Const(Size.YScale)

[State 1020, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
x = ifElse(Vel X <= 0, 0, -0.03125)*(25.0/16.0)*Const(Size.XScale)
y = 0.25*(25.0/16.0)*Const(Size.YScale)

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S40,4
channel = 13
[State 40, Dust]
type = Helper
trigger1 = AnimElemTime(4) = 1
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = P1
ownpal = 1

[State 1220, Ball]
type = Helper
trigger1 = !Time
stateno = 1205
ID = 84113
pos = ceil(Const(Size.XScale)*8),ceil(Const(Size.YScale)*-32)
postype = p1
size.xscale = (Const(size.xscale))
size.yscale = (Const(size.yscale))
ownpal = 1

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S200,2
channel = 5

[State 1220, Slice]
type = Explod
trigger1 = AnimElemTime(9) = 0
anim = 7005
pos = ceil(Const(Size.XScale)*6),ceil(Const(Size.YScale)*34)
postype = p1
removetime = -2
bindtime = -1
scale = 0.5*Const(size.XScale), 0.5*Const(size.YScale)
sprpriority = 3
ownpal = 1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 1210, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
trigger1 = AnimElem = 9 || AnimElem = 10
attr = A, SA
damage = ceil(ifElse(fvar(10)*125 < 7, 7, fvar(10)*125)),ceil(ifElse((fvar(10)*125/8) < 7, 7, (fvar(10)*125/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 8)
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
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 3

[State 1220, ChangeState]
type = ChangeState
triggerall = AnimElemTime(4) > 1
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; Sand Splash
[Statedef 1100]
type = S
movetype = A
physics = S
poweradd = 72 * !var(30)
ctrl = 0
sprpriority = 2
velset = 0,0
juggle = 2
facep2 = 1

[State 1000, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
var(22) = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1100+10*Var(22)

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S200,4

[State 1100, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Sand"
ID = 1105
stateno = 1105
pos = ceil(28*Const(Size.Xscale)),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5*Const(Size.YScale)
size.yscale = 0.5*Const(Size.YScale)
persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Delta Kick
[Statedef 1300]
type = S
movetype = A
physics = S
poweradd= 72 * !var(30)
ctrl = 0
sprpriority = 2
velset = 0,0
juggle = 0
facep2 = 1

[State 1300, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
trigger1 = P2StateType = A
var(22) = ifElse((P2BodyDist X = [-24,8]), 0, ifElse((P2BodyDist X = [8,32]), 1, 2))
[State 1300, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
trigger1 = P2StateType != A
var(22) = ifElse((PrevStateNo = [200,499]), 1, random%3)

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1300+10*(Var(22)>0)

[State 1300, VelSet]
type = VelSet
triggerall = Anim = 1300 || Anim = 1310
trigger1 = AnimElemTime(3) = 0
y = -ifElse(Var(22)=2,11.5,8+Var(22))*Const(Size.YScale)*(5.0/4.0)

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
statetype = A
physics = N

[State 1300, VelAdd]
type = VelAdd
triggerall = AnimElemTime(3) > 1
trigger1 = !Var(22) && (Vel Y < 3.5)
trigger2 = Var(22)=1 && (Vel Y < 3)
trigger3 = Var(22)=2 && (Vel Y < 4.5)
y = .5625*(25.0/16.0);.8

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = Anim != 1301 && (AnimElem = 3 || AnimElem = 11)
trigger2 = Anim = 1301 && AnimElem = 2
value = S1,2
channel = 1

[State 40, Dust]
type = Helper
trigger1 = AnimElemTime(3) = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = P1
ownpal = 1

[State 1300, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim != 1301
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
attr = A, SA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),ceil(ifElse((fvar(10)*56/8) < 7, 7, (fvar(10)*56/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
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
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim != 1301
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
attr = A, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
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
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
ID = 1300

[State 1300, HitDef3]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 1301
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
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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

[State 1300, PlaySnd]
type = PlaySnd
triggerall = Anim != 1301
trigger1 = AnimElem = 10
value = S8,2
channel = 0

[State 1020, VelSet]
type = VelSet
trigger1 = Anim != 1301 && AnimElemTime(9) = 0
x = (3.5+(Var(22)*.5))*Const(Size.XScale)*(5.0/4.0)
y = (1.75+(Var(22)*.25))*Const(Size.YScale)*(5.0/4.0)

[State 1020, 3]
type = VelAdd
trigger1 = Anim != 1301 && AnimElemTime(9) > 0
trigger2 = Anim = 1301
x = (.34765625+(Var(22)*.05078125))*Const(Size.XScale)*(5.0/4.0)

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1301 && AnimElemTime(11) > 0 && NumTarget(1300)
value = 1301

[State 1300, ChangeState]
type = ChangeState
triggerall = AnimElemTime(3) > 0
trigger1 = Vel Y + Pos Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; Custom Land State
[Statedef 1305]
type	= S
physics = S
ctrl = 0
anim = 47
velset = 0,0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S200,5
channel=1
[State 52, Dust]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Rolling Scratch
[Statedef 1400]
type	= A
physics = N
movetype= A
anim = ifElse(Var(11),1400,1000)
ctrl = 0
velset = 0,0
poweradd = 72 * !Var(30)
facep2 = !Var(11)

[State 1400, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0 && PrevStateNo != StateNo
var(22) = random%2
[State 1400, Loop]
type = VarSet
trigger1 = !Var(11) && Time = 0
var(11) = var(22)
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
value = S200,5

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

[State 1400, VelSet]
type = VelSet
trigger1 = Anim = 1005 && AnimElemTime(1) = 1
x = 5*(5.0/4.0)
y = -15*Const(Size.YScale)*(5.0/4.0)
persistent = 0

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 1000 || Anim = 1400) && AnimTime = 0
value = 1005

[State 1400, VelAdd]
type = VelAdd
trigger1 = Anim = 1005
y = 1.25*Const(Size.YScale)*(25.0/16.0)

[State 1400, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
trigger1 = Anim = 1005
attr = A, SA
damage = ceil(ifElse(fvar(10)*(49+7*Var(22)) < 7, 7, fvar(10)*(49+7*Var(22)))),ceil(ifElse((fvar(10)*(49+7*Var(22))/8) < 7, 7, (fvar(10)*(49+7*Var(22))/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 24
ground.hittime	= 24
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 25
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
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
envshake.ampl = 3

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
triggerall = Time > 1
trigger1 = Var(50) = [1,2]
value = 1406
ignorehitpause = 0

[State 1400, ChangeAnim]
type = ChangeState
triggerall = Anim = 1005 && !MoveContact
trigger1 = Time > 6
trigger1 = Pos Y + Vel Y >= 0
value = ifElse(Var(11),stateNo,1305)

;----------------------------------------------------------------------------------
; Rolling Scratch Follow-Up
[Statedef 1405]
type	= A
physics = N
movetype= A
anim = 1405
ctrl = 0
poweradd = 0

[State 1405, VarSet]
type = VarSet
trigger1 = Time = 0
var(11) = 4

[State 1405, VelSet]
type = VelSet
trigger1 = Time = 0
x = 3.25*Const(Size.XScale)*(5.0/4.0);3.25 ;1.25, increased to prevent whiffing
y = -1.25*Const(Size.YScale)*(5.0/4.0)

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 9
movetype = I

[State 1405, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1405 && AnimElem = 2
trigger2 = Anim = 1406 && AnimElem = 1
value = S0,0
channel = 1

[State 1405, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1407 && AnimElem = 4
value = S0,2
channel = 1

[State 1405, VarAdd]
type = VarAdd
trigger1 = Time && AnimTime = 0
var(11) = -1

[State 1405, Anim]
type = ChangeAnim
triggerall = (Var(0)&8) > 0 && Var(11)>0
trigger1 = Anim = 1405 && AnimTime = 0
value = 1406
[State 1405, Anim]
type = ChangeAnim
triggerall = (Var(0)&8) > 0 && Var(11)>0
trigger1 = Anim = 1406 && AnimTime = 0
value = 1405
elem = 2
[State 1405, Anim]
type = ChangeAnim
triggerall = Anim != 1407
trigger1 = !Var(11)
trigger2 = (Var(0)&8) = 0 && AnimTime = 0
value = 1407

[State 1405, VelSet]
type = VelSet
trigger1 = Var(11) < 4
trigger1 = Anim = 1405 && AnimElemTime(2) = 0
trigger2 = Anim = 1406 && AnimElemTime(1) = 0
x = 3.25*Const(Size.XScale)*(4.0/3.0);3.25 ;1.25, increased to prevent whiffing
y = -1.25*Const(Size.YScale)*(4.0/3.0)

[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 1405
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !NumTarget(1405)
attr = A, SA
damage = ceil(ifElse(fvar(10)*14 < 7, 7, fvar(10)*14)),ceil(ifElse((fvar(10)*14/8) < 7, 7, (fvar(10)*14/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 6)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -5.49
guard.velocity = -5.49
guard.ctrltime = 16
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30) * PrevStateNo != 2400,36 * !Var(30) * PrevStateNo != 2400
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
envshake.ampl = 3
persistent = 1
ID = 1405
[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 1406
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2 && !NumTarget(1406)
attr = A, SA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),ceil(ifElse((fvar(10)*21/8) < 7, 7, (fvar(10)*21/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-7)
hitsound = S0,-1 | (var(28) := 6)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -5.49
guard.velocity = -5.49
guard.ctrltime = 16
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30) * PrevStateNo != 2400,36 * !Var(30) * PrevStateNo != 2400
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
envshake.ampl = 3
persistent = 1
ID = 1406

[State 1000, 4]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim = 1407
trigger1 = AnimElem = 4
attr = A, SA
damage = ceil(ifElse(fvar(10)*42 < 7, 7, fvar(10)*42)),ceil(ifElse((fvar(10)*42/8) < 7, 7, (fvar(10)*42/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8016)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 24
ground.hittime	= 24
ground.velocity = -2.96875,-7.53125
guard.velocity = -5.49
guard.ctrltime = 24
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51),144,72) * !Var(30) * PrevStateNo != 2400,36 * !Var(30) * PrevStateNo != 2400
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
envshake.ampl = 3
persistent = 1

[State 640, Play Anim]
type = ChangeAnim
triggerall = NumTarget(1405)
triggerall = Anim = 1405
triggerall = AnimElemTime(4) >= 0
trigger1 = HitPauseTime > 0
value = 1405
elem = 4
ignorehitpause = 1
[State 640, Play Anim]
type = ChangeAnim
triggerall = NumTarget(1406)
triggerall = Anim = 1406
triggerall = AnimElemTime(3) >= 0
trigger1 = HitPauseTime > 0
value = 1406
elem = 3
ignorehitpause = 1

[State 1405, Buffer]
type = VarSet
triggerall = numHelper(10372)
triggerall = (var(0)&8) > 0
trigger1 = !Time
trigger2 = (helper(10372), var(1)&903) = 0
var(0) = var(0)^8
[State 1405, Buffer]
type = VarAdd
triggerall = (var(0)&8) = 0
trigger1 = (helper(10372), var(1)&903) > 0
trigger2 = AILevel
var(0) = 8
ignorehitpause = 1

[State 1405, Gravity]
type = VelAdd
triggerall = Time > 0
trigger1 = Var(11) = 4
trigger1 = Anim = 1405 && Time > 0
trigger2 = Var(11) < 4
trigger2 = Anim = 1405 && AnimElemTime(2) > 0
trigger3 = Anim = 1406 && AnimElemTime(1) > 0
trigger4 = Anim = 1407
y = 0.46875*Const(Size.YScale)*(25.0/16.0)
ignorehitpause = 0

[State 1405, ChangeState]
type = ChangeState
triggerall = Time > 1
trigger1 = MoveGuarded = 1
value = 1406

[State 1405, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; Hit Off
[Statedef 1406]
type	= A
physics = N
movetype= I
anim = 1016
ctrl = 0

[State 1015, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001
ignorehitpause = 1

[State 1000, VelSet]
type = VelSet
trigger1 = !Time && ((PrevStateNo = [1000,1099]) || (PrevStateNo = 2000) || (PrevStateNo = 3000))
x = -.25*(Var(50)=1);1.25+(Var(50)=2)
y = -12

[State 1420, VelSet]
type = VelSet
trigger1 = !Time && PrevStateNo = [1400,1421]
trigger2 = !Time && PrevStateNo = 2400
x = -3.25*Const(Size.XScale)
y = -13.125

[State 920, 0]
type = VelAdd
trigger1 = PrevStateNo != [1400,1421]
trigger1 = PrevStateNo != 2400
y = 0.875;1.1666666666666666666666666666667;.5625
[State 920, 0]
type = VelAdd
trigger1 = PrevStateNo = [1400,1421]
trigger2 = PrevStateNo = 2400
y = 1.1666666666666666666666666666667;.5625

[State 50, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;----------------------------------------------------------------------------------
; Hellcat
[Statedef 1500]
type	= S
physics = N
movetype= A
ctrl = 0
velset = 0,0

[State 1400, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
var(22) = ifElse(P2BodyDist X <= ceil(63*Const(Size.XScale))-Const(Size.Ground.Front), 2, ifElse(P2BodyDist X <= ceil((72-Const(Size.Ground.Front))*Const(Size.XScale)), 1, 0))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1500+10*Var(22)

[State 1500, 1]
type = HitDef
triggerall = !Var(30)
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = P2StateNo != 40
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**2)) != 0
trigger1 = AnimElem = 2
attr = S, ST
hitflag = M-
priority = 3, Miss
sparkno = -1
getpower = 0,0
p1facing = 1
p2facing = 1
p1stateno = 1501
p2stateno = 1502
guard.dist = 0
fall = 1
givepower = 0,0

[State 1500, 1]
type = HitDef
triggerall = Var(30)
triggerall = P2StateNo != [150,155]
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**2)) != 0
trigger1 = AnimElem = 2
attr = S, ST
hitflag = M
priority = 3, Miss
sparkno = -1
getpower = 0,0
p1facing = 1
p2facing = 1
p1stateno = 1501
p2stateno = 1502
guard.dist = 0
fall = 1
givepower = 0,0

[State 1500, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 1500, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
; Hellcat (P1)
[Statedef 1501]
type	= S
physics = N
movetype= A
anim = 1540
poweradd = 0
ctrl = 0

[State 1501, SprPriority]
type = SprPriority
triggerall = Anim = 1540
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
value = 0
[State 1501, SprPriority]
type = SprPriority
triggerall = Anim = 1540
trigger1 = AnimElem = 1
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
value = 2

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 0, PlayerPush]
type = ScreenBound
trigger1 = Anim = 1540
value = 0
movecamera = 0,0

[State 1501, PlaySnd]
type = PlaySnd
triggerall = Anim = 1540
trigger1 = AnimElemTime(1) = 0
value = S800,0
channel = 2

[State 832, Bind 1]
type = BindtoTarget
triggerall = Anim = 1540
trigger1 = AnimElemTime(1) = 0
time = 4
pos = ceil(54*Const(Size.XScale)),0,Foot
[State 832, Bind 2]
type = BindtoTarget
triggerall = Anim = 1540
trigger1 = AnimElemTime(2) = 0
time = 5
pos = 0,0, Foot
[State 1501, Bind 5]
type = BindtoTarget
triggerall = Anim = 1540
trigger1 = AnimElemTime(3) = 0
time = 1
pos = 0,ceil(-40*Const(Size.YScale)),Foot

[State 1501, Bind 5]
type = BindtoTarget
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) >= -.8
triggerall = Anim = 1540
trigger1 = AnimElemTime(4) = 0
time = 1
pos = 0,target,Const(Size.Mid.Pos.Y),Foot

[State 1501, PosFreeze]
type = VelSet
triggerall = Anim = 1540
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(10) > 0 && AnimElemTime(11) < 0
trigger3 = AnimElemTime(16) > 0 && AnimElemTime(17) < 0
x = 0
y = 0
[State 1501, PosFreeze]
type = PosFreeze
triggerall = Anim = 1540
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(10) > 0 && AnimElemTime(11) < 0
trigger3 = AnimElemTime(16) > 0 && AnimElemTime(17) < 0
value = 1
persistent = 1

[State 1501, VelSet]
type = VelSet
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) < -.8
triggerall = Anim = 1540
trigger1 = AnimElemTime(5) = 0
x = facing*((target,Pos X+(target,Const(Size.Mid.Pos.X)*target,facing))-Pos X)/11.0
y = (target, Const(Size.Mid.Pos.Y)+40)/11.0
ignorehitpause = 1
[State 1501, VelSet]
type = VelSet
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) < -.8
triggerall = Anim = 1540
trigger1 = AnimElemTime(11) = 0
x = facing*((target,Pos X+(target,Const(Size.Head.Pos.X)*target,facing))-Pos X)/12.0
y = ((target,Pos Y+target,Const(Size.Head.Pos.Y)+14)-Pos Y)/12.0
ignorehitpause = 1
[State 1501, VelSet]
type = VelSet
triggerall = (target,Const(Size.Head.Pos.Y)/60.0) < -.8
triggerall = Anim = 1540
trigger1 = AnimElemTime(17) = 0
x = facing*(target,Pos X-Pos X)/11.0
y = (-60-Pos Y)/12.0
ignorehitpause = 1

[State 1501, VelSet]
type = VelSet
trigger1 = Anim = 1540 && AnimTime = 0
x = 0
y = 0

[State 1501, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1540 && AnimTime = 0
value = 1550

[State 1501, PosSet]
type = PosSet
trigger1 = Anim = 1550 && AnimElemTime(1) = 0
y = 0

[State 1501, PosSet]
type = PosAdd
trigger1 = Anim = 1550 && AnimElemTime(1) = 0
x = 100*Const(Size.Xscale)

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
triggerall = Anim = 1540
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
value = S3,8
channel = 2
[State -2, Sparks]
type = Helper
triggerall = Anim = 1540
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(10) = 0
trigger3 = AnimElemTime(16) = 0
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
triggerall = Anim = 1540
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(10) = 0
trigger3 = AnimElemTime(16) = 0
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


[State 3001, VarAdd]
type = VarAdd
triggerall = Anim = 1540
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
var(51) = 1
[State 1501, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Anim = 1540
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
value = floor(ifElse((-21*FVar(10))>-7,-7,(-21*FVar(10))))
kill = 0

[State 1501, PlaySnd]
type = PlaySnd
triggerall = Anim = 1550
trigger1 = AnimElem = 4
value = S8,9
channel=0

[State 1501, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Anim = 1550
trigger1 = AnimElem = 4
value = floor(ifElse((-70*FVar(10))>-7,-7,(-70*FVar(10))))

[State 1501, PowerAdd]
type = PowerAdd
triggerall = Anim = 1550
trigger1 = AnimElem = 4 && !Var(30)
value = 72
[State 1501, TargetPowerAdd]
type = TargetPowerAdd
triggerall = Anim = 1550
trigger1 = AnimElem = 4
value = 36

[State 1501, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1305
ctrl = 1

;------------------------
; Hellcat (P2)
[Statedef 1502]
type	= A
physics = N
movetype= H
sprpriority = 1
ctrl = 0

[State 1502, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1502, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1555
[State 1502, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time && Name = "Gill" && AuthorName = "GM" && Facing = -1
value = 1560

[State 1502, Felicia]
type = ChangeAnim2
triggerall = AuthorName = "Jesuszilla" && (Name = "Felicia_LG" || Name = "cvsfelicia" || Name = "Felicia")
trigger1 = Anim = 1555
trigger1 = AnimTime = 0
value = 1558
[State 1502, Down]
type = ChangeAnim2
triggerall = Anim = 1555
triggerall = AnimTime = 0
trigger1 = Name = "Felicia" || Name = "Felicia MvC2 Style by MGBenz"
trigger2 = Name = "Zabel" || Name = "Zabel Zarock" || Name = "cvszabel" || Name = "Raptor" || Name = "Lord Raptor"
trigger3 = Name = "Rapter" || Name = "Lord Rapter" || Name = "L Raptor" || Name = "L Rapter" || Name = "L. Raptor" || Name = "L. Rapter"; OK
trigger4 = (Name = "Demitri" && Enemy, AuthorName != "Bad Darkness") || Name = "Demitri Maximoff" || Name = "Demitri Maximov" || Name = "Demitri(DS)" || Name = "cvsdemitri"
trigger5 = Name = "Anakaris" || Name = "cvsanakaris" || Name = "Anakaris By Third"
trigger6 = Name = "Victor"
trigger7 = Name = "Sasquatch"
value = 1559
[State 1502, Gill]
type = ChangeAnim2
trigger1 = Anim = 1560
trigger1 = AnimTime = 0
value = 1557
[State 1502, Normal]
type = ChangeAnim2
trigger1 = Anim = 1555
trigger1 = AnimTime = 0
value = 1556

[State 1502, Turn]
type = Turn
trigger1 = Anim = [1556,1557]
trigger1 = AnimElemTime(3) = 0
trigger2 = Anim = [1558,1559]
trigger2 = AnimElemTime(4) = 0

[State 1502, VelSet]
type = VelSet
trigger1 = Anim = [1556,1557]
trigger1 = AnimElemTime(3) = 0
trigger2 = Anim = [1558,1559]
trigger2 = AnimElemTime(4) = 0
x = 4*(5.0/4.0)*(5.0/6.0)
y = -8.7074890136719*(5.0/4.0)
persistent = 0
[State 1502, VelAdd]
type = VelAdd
trigger1 = Anim = [1556,1557]
trigger1 = AnimElemTime(3) > 0
trigger2 = Anim = [1558,1559]
trigger2 = AnimElemTime(4) > 0
y = 0.4353637695313*(25.0/16.0)

[State 2502, ChangeState]
type = SelfState
trigger1 = (Anim = [1556,1559]) && AnimElemTime(3) >= 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100
ctrl = 0

;----------------------------------------------------------------------------------
; Toy Touch
[Statedef 1600]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1600
sprpriority = 2
velset = 0,0
juggle = 0
poweradd = 72 * !var(30)
facep2 = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,2
channel = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S8,14
channel = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = C, SA
hitflag = FD
guardflag =
damage = ceil(ifElse(fvar(10)*42 < 7, 7, fvar(10)*42)),0
priority = 6, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
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
getpower = ifElse(!Var(51),144,72) * !Var(30),36 * !Var(30)
givepower = 36,36
p2stateno = 3880

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Zero Counter (Delta Kick)
[Statedef 2900]
type = S
physics = N
movetype = A
anim = 1300
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0

[State 1300, VarSet]
type = VarSet
trigger1 = Time = 0
var(22) = 0

[State 1300, VelSet]
type = VelSet
triggerall = Anim = 1300 || Anim = 1310
trigger1 = AnimElemTime(3) = 0
y = -ifElse(Var(22)=2,11.5,8+Var(22))*Const(Size.YScale)*(5.0/4.0)

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
statetype = A
physics = N

[State 1300, VelAdd]
type = VelAdd
triggerall = AnimElemTime(3) > 1
trigger1 = !Var(22) && (Vel Y < 3.5)
trigger2 = Var(22)=1 && (Vel Y < 3)
trigger3 = Var(22)=2 && (Vel Y < 4.5)
y = .5625*(25.0/16.0);.8

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = Anim != 1301 && (AnimElem = 3 || AnimElem = 11)
trigger2 = Anim = 1301 && AnimElem = 2
value = S1,2
channel = 1

[State 40, Dust]
type = Helper
trigger1 = AnimElemTime(3) = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = P1
ownpal = 1

[State 1300, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim != 1301
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(9) < 0
attr = A, SA
damage = ceil(ifElse(fvar(10)*42 < 7, 7, fvar(10)*42)),ceil(ifElse((fvar(10)*42/8) < 7, 7, (fvar(10)*42/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -3,-5.890625*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -3,-5.890625*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = 0.328125*(25.0/16.0)
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

[State 1300, HitDef2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = e||(fvar(18) := 256*(NumTarget>0))
triggerall = Anim != 1301
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
attr = A, SA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime	= 20
ground.velocity = -3,-5.890625*(5.0/4.0)
guard.velocity = -12.52
guard.ctrltime = 20
air.type = Low
air.velocity = -3,-5.890625*(5.0/4.0)
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 36,36
yaccel = 0.328125*(25.0/16.0)
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

[State 1300, PlaySnd]
type = PlaySnd
triggerall = Anim != 1301
trigger1 = AnimElem = 10
value = S8,2
channel = 0

[State 1020, VelSet]
type = VelSet
trigger1 = Anim != 1301 && AnimElemTime(9) = 0
x = (3.5+(Var(22)*.5))*Const(Size.XScale)*(5.0/4.0)
y = (1.75+(Var(22)*.25))*Const(Size.YScale)*(5.0/4.0)

[State 1020, 3]
type = VelAdd
trigger1 = Anim != 1301 && AnimElemTime(9) > 0
trigger2 = Anim = 1301
x = (.34765625+(Var(22)*.05078125))*Const(Size.XScale)*(5.0/4.0)

[State 1300, ChangeState]
type = ChangeState
triggerall = AnimElemTime(3) > 0
trigger1 = Vel Y + Pos Y >= 0
value = 1305
