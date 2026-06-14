;===============================================================================
;									 NORMALS
;===============================================================================

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type	= S
movetype= A
physics = S
juggle	= 8
velset = 0,0
ctrl = 0
anim = 200
poweradd = 0
sprpriority = 2
facep2 = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 200, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = S, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8010)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-63)
hitsound = S0,-1 | (var(28) := 0)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch (close)
[Statedef 205]
type	= S
movetype= A
physics = S
juggle	= 8
velset = 0,0
ctrl = 0
anim = 205
poweradd = 0
sprpriority = 2
facep2 = 1

[State 205, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 200, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = S, NA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-63)
hitsound = S0,-1 | (var(28) := 6)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 255, Time Offset]
type = VarSet
triggerall = AnimElemTime(3) >= 0
trigger1 = MoveContact
var(9) = Time
ignorehitpause = 1
persistent = 0
[State 255, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = HitPauseTime = [1,9-(5-Var(9))]
value = anim
elem = 4
ignorehitpause = 1

[State 205, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
[Statedef 210]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2
facep2 = 1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 210, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch (close)
[Statedef 215]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 215
sprpriority = 2
facep2 = 1

[State 215, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 215, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 4
attr = S, NA
damage = ceil(ifElse(fvar(10)*63 < 7, 7, fvar(10)*63)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 215, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[Statedef 220]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2
facep2 = 1

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
value = S0,2
channel = 1

[State 220, PlaySnd]
type = PlaySnd
triggerall = Random%2
trigger1 = AnimElem = 3
value = S8,14

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 220, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = PrevStateNo != 301
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(6*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-63)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 3

[State 220, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = PrevStateNo != 301
trigger1 = AnimElem = 5
attr = S, NA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(7*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-63)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 3

[State 220, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = PrevStateNo != 301
trigger1 = AnimElem = 6
attr = S, NA
damage = ceil(ifElse(fvar(10)*42 < 7, 7, fvar(10)*42)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(7*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-63)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 3

[State 220, 3]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = PrevStateNo = 301
triggerall = !NumTarget(7)
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
attr = S, NA
damage = ceil(ifElse(fvar(10)*70 < 7, 7, fvar(10)*70)),0
animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(7*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-63)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
yaccel = 0.328125*(25.0/16.0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -5.98828125,-3.71875*(5.0/4.0)
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 17
air.velocity = -5.98828125,-3.71875*(5.0/4.0)
airguard.velocity = -6,-3
air.type = Low
air.hittime = 18 + 4*Var(21)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
fall = 1
air.fall = 1
fall.recover = !Var(30)
ID = 7

[State 220, Time Offset]
type = VarSet
triggerall = MoveContact = 1
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger2 = AnimElemTime(6) >= 0
var(9) = Time
ignorehitpause = 1
persistent = 1
[State 220, Play Anim 1]
type = ChangeAnim
triggerall = MoveContact = 1
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime = [1,7-(6-Var(9))]
value = anim
elem = 4
ignorehitpause = 1
[State 255, Play Anim 2]
type = ChangeAnim
triggerall = MoveContact = 1
triggerall = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime = [1,9-(12-Var(9))]
value = anim
elem = 7
ignorehitpause = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch (close)
[Statedef 225]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 2
facep2 = 1

[State 225, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,2
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 220, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*49 < 7, 7, fvar(10)*49)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 3

[State 220, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 4
attr = S, NA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 3

[State 220, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 5
attr = S, NA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-98)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 3

[State 220, Time Offset]
type = VarSet
triggerall = MoveContact = 1
trigger1 = AnimElemTime(5) >= 0
var(9) = Time
ignorehitpause = 1
persistent = 0
[State 220, Play Anim 1]
type = ChangeAnim
triggerall = MoveContact = 1
triggerall = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = HitPauseTime = [1,8-(10-Var(9))]
value = anim
elem = 6
ignorehitpause = 1

[State 225, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 0
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2
facep2 = 1

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 230, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-84)
hitsound = S0,-1 | (var(28) := 6)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick (close)
[Statedef 235]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 0
ctrl = 0
velset = 0,0
anim = 235
sprpriority = 2
facep2 = 1

[State 235, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 235, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = S, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8010)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 3)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 235, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2
facep2 = 1

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 240, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick (close)
[Statedef 245]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 2
facep2 = 1

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 245, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = S, NA
damage = ceil(ifElse(fvar(10)*63 < 7, 7, fvar(10)*63)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8010)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 4)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 245, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2
facep2 = 1

[State 250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
value = S1,2
channel = 1

[State 250, PlaySnd]
type = PlaySnd
triggerall = Random%2
trigger1 = AnimElem = 3
value = S8,0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 250, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*49 < 7, 7, fvar(10)*49)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8012)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-81)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 5
attr = S, NA
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick (close)
[Statedef 255]
type	= S
movetype= A
physics = S
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 2
facep2 = 1

[State 255, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,2
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 255, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = S, NA
damage = ceil(ifElse(fvar(10)*84 < 7, 7, fvar(10)*84)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8012)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-81)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 255, Time Offset]
type = VarSet
triggerall = AnimElemTime(3) >= 0
trigger1 = MoveContact = 1
var(9) = Time
ignorehitpause = 1
persistent = 0
[State 255, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime = [1,ceil(12*(2-(Var(30)>0))/2)-(8-Var(9))]
value = anim
elem = 4
ignorehitpause = 1

[State 255, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 0
ctrl = 0
anim = 400
sprpriority = 2
velset = 0,0
facep2 = 1

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 400, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = C, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-7)
hitsound = S0,-1 | (var(28) := 6)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch (VS)
[Statedef 410]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 410
sprpriority = 2
velset = 0,0
facep2 = 1

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 410, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = C, NA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch (VH)
[Statedef 415]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 415
sprpriority = 2
velset = 0,0
facep2 = 1

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = S0,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 410, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = C, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-35)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 6
attr = C, NA
damage = ceil(ifElse(fvar(10)*28 < 7, 7, fvar(10)*28)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 420
sprpriority = 2
velset = 0,0
facep2 = 1

[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0,2
channel=1
[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10)=0
value = S40,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
movetype = I

[State 220, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6
attr = C, NA
damage = ceil(ifElse(fvar(10)*77 < 7, 7, fvar(10)*28)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-56)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -12.52*(2-(Var(30)>0))/2
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
persistent = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = S40,2
channel=1
[State 52, Dust]
type = Explod
trigger1 = AnimElemTime(9) = 0
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 0
ctrl = 0
anim = 430
sprpriority = 2
velset = 0,0
facep2 = 1

[State 430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 430, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = C, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8010)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-7)
hitsound = S0,-1 | (var(28) := 3)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 440
sprpriority = 2
velset = 0,0
facep2 = 1

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 440, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2
attr = C, NA
damage = ceil(ifElse(fvar(10)*56 < 7, 7, fvar(10)*56)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8011)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 4)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 15 + 3*Var(21)
ground.hittime	= 15 + 3*Var(21)
ground.velocity = -8.11*(2-(Var(30)>0))/2
guard.velocity = -8.11*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type	= C
movetype= A
physics = C
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 450
sprpriority = 2
velset = 0,0
facep2 = 1

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,2
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 250, 2]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = C, NA
damage = ceil(ifElse(fvar(10)*63 < 7, 7, fvar(10)*63)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 5, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8012)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-21)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Trip
ground.slidetime = 18 + 4*Var(21)
ground.hittime	= 18 + 4*Var(21)
ground.velocity = -2.96875,-7.53125
guard.velocity = -12.52*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Trip
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
fall = 1
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 255, Time Offset]
type = VarSet
triggerall = AnimElemTime(3) >= 0
trigger1 = MoveContact = 1
var(9) = Time
ignorehitpause = 1
persistent = 0
[State 255, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime = [1,ceil(12*(2-(Var(30)>0))/2)-(6-Var(9))]
value = anim
elem = 4
ignorehitpause = 1

[State 450, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type	= A
movetype= A
physics = N
juggle	= 8
poweradd= 0
ctrl = 0
anim = 600
sprpriority = 2

[State 50, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 60, VelSet]
type = VelSet
trigger1 = Time = 0 && PrevStateNo = 60
x = 5*(4.0/3.0)*Const(Size.XScale)
[State 60, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && PrevStateNo = 60
value = S8,13
channel = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,0
channel=1

[State 600, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 6)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
persistent = 0

[State 102, 1]
type = VelAdd
trigger1 = PrevStateNo = 102
x = ifElse(Vel X <= 0, 0, -0.4375*(25.0/16.0))*Const(Size.XScale)
y = 0.46875*(25.0/16.0)*Const(Size.YScale)
[State 600, VelAdd]
type = VelAdd
trigger1 = PrevStateNo = 105
x = ifElse(Vel X >= 0, 0, 0.25*(25.0/16.0));*Const(Size.XScale) ; Analysis
y = 0.5*(25.0/16.0)*Const(Size.YScale)
[State 600, 2]
type = VelAdd
trigger1 = PrevStateNo != 102 && PrevStateNo != 105
y = const(movement.yaccel)

[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 50, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = !moveContact

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = ifElse(PrevStateNo=50,50,1305)

;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type	= A
movetype= A
physics = N
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 610
sprpriority = 2

[State 50, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 2

[State 60, VelSet]
type = VelSet
trigger1 = Time = 0 && PrevStateNo = 60
x = 5*(4.0/3.0)*Const(Size.XScale)
[State 60, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && PrevStateNo = 60
value = S8,13
channel = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = S0,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 610, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3
attr = A, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 3*Var(21)
ground.hittime	= 12 + 3*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 610

[State 610, 2]
type = HitDef
triggerall = P2StateNo != 5040 ;&& (Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 6
attr = A, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-14)
hitsound = S0,-1 | (var(28) := 7)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 3*Var(21)
ground.hittime	= 12 + 3*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 610

[State 102, 1]
type = VelAdd
trigger1 = PrevStateNo = 102
x = ifElse(Vel X <= 0, 0, -0.4375*(25.0/16.0))*Const(Size.XScale)
y = 0.46875*(25.0/16.0)*Const(Size.YScale)
[State 600, VelAdd]
type = VelAdd
trigger1 = PrevStateNo = 105
x = ifElse(Vel X >= 0, 0, 0.25*(25.0/16.0));*Const(Size.XScale) ; Analysis
y = 0.5*(25.0/16.0)*Const(Size.YScale)
[State 600, 2]
type = VelAdd
trigger1 = PrevStateNo != 102 && PrevStateNo != 105
y = const(movement.yaccel)

[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 50, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = !moveContact

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = ifElse(PrevStateNo=50,50,1305)

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type	= A
movetype= A
physics = N
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 620
sprpriority = 2

[State 50, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 4

[State 60, VelSet]
type = VelSet
trigger1 = Time = 0 && PrevStateNo = 60
x = 5*(4.0/3.0)*Const(Size.XScale)
[State 60, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && PrevStateNo = 60
value = S8,13
channel = 0

[State 620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0,2
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 620, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 4
attr = A, NA
damage = ceil(ifElse(fvar(10)*70 < 7, 7, fvar(10)*70)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8015)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-21)
hitsound = S0,-1 | (var(28) := 8)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 12 + 4*Var(21)
ground.hittime	= 12 + 4*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 102, 1]
type = VelAdd
trigger1 = PrevStateNo = 102
x = ifElse(Vel X <= 0, 0, -0.4375*(25.0/16.0))*Const(Size.XScale)
y = 0.46875*(25.0/16.0)*Const(Size.YScale)
[State 600, VelAdd]
type = VelAdd
trigger1 = PrevStateNo = 105
x = ifElse(Vel X >= 0, 0, 0.25*(25.0/16.0));*Const(Size.XScale) ; Analysis
y = 0.5*(25.0/16.0)*Const(Size.YScale)
[State 600, 2]
type = VelAdd
trigger1 = PrevStateNo != 102 && PrevStateNo != 105
y = const(movement.yaccel)

[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 50, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = !moveContact

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = ifElse(PrevStateNo=50,50,1305)

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type	= A
movetype= A
physics = N
juggle	= 8
poweradd= 0
ctrl = 0
anim = 630
sprpriority = 2

[State 50, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 8

[State 60, VelSet]
type = VelSet
trigger1 = Time = 0 && PrevStateNo = 60
x = 5*(4.0/3.0)*Const(Size.XScale)
[State 60, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && PrevStateNo = 60
value = S8,13
channel = 0

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,0
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 630, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
attr = A, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = ceil(8*(2-(Var(30)>0))/2),ceil(8*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8010)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-7)
hitsound = S0,-1 | (var(28) := 3)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 2*Var(21)
ground.hittime	= 12 + 2*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 12
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 72 * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
persistent = 0

[State 102, 1]
type = VelAdd
trigger1 = PrevStateNo = 102
x = ifElse(Vel X <= 0, 0, -0.4375*(25.0/16.0))*Const(Size.XScale)
y = 0.46875*(25.0/16.0)*Const(Size.YScale)
[State 600, VelAdd]
type = VelAdd
trigger1 = PrevStateNo = 105
x = ifElse(Vel X >= 0, 0, 0.25*(25.0/16.0));*Const(Size.XScale) ; Analysis
y = 0.5*(25.0/16.0)*Const(Size.YScale)
[State 600, 2]
type = VelAdd
trigger1 = PrevStateNo != 102 && PrevStateNo != 105
y = const(movement.yaccel)

[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 50, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = !moveContact

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = ifElse(PrevStateNo=50,50,1305)

;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type	= A
movetype= A
physics = N
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 640
sprpriority = 2

[State 50, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 16

[State 60, VelSet]
type = VelSet
trigger1 = Time = 0 && PrevStateNo = 60
x = 5*(4.0/3.0)*Const(Size.XScale)
[State 60, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && PrevStateNo = 60
value = S8,13
channel = 0

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,1
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 640, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, NA
damage = ceil(ifElse(fvar(10)*21 < 7, 7, fvar(10)*21)),0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ceil(10*(2-(Var(30)>0))/2),ceil(10*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8011)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-20),(var(27):=-7)
hitsound = S0,-1 | (var(28) := 4)
guardsound = S0,-1 | (var(29) := 0)
ground.type = High
ground.slidetime = 12 + 3*Var(21)
ground.hittime	= 12 + 3*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 15
air.type = High
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 144, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
persistent = 0
ID = 640

[State 220, Time Offset]
type = VarSet
triggerall = MoveContact = 1
trigger1 = AnimElemTime(3) >= 0
var(9) = Time
ignorehitpause = 1
persistent = 0
[State 220, Play Anim 1]
type = ChangeAnim
triggerall = MoveContact = 1
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = HitPauseTime = [1,10-(5-Var(8))]
value = Anim
elem = 4
ignorehitpause = 1
[State 650, Freeze]
type = PosFreeze
triggerall = NumTarget(640)
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = MoveContact = 1
value = 1

[State 102, 1]
type = VelAdd
trigger1 = PrevStateNo = 102
x = ifElse(Vel X <= 0, 0, -0.4375*(25.0/16.0))*Const(Size.XScale)
y = 0.46875*(25.0/16.0)*Const(Size.YScale)
[State 600, VelAdd]
type = VelAdd
trigger1 = PrevStateNo = 105
x = ifElse(Vel X >= 0, 0, 0.25*(25.0/16.0));*Const(Size.XScale) ; Analysis
y = 0.5*(25.0/16.0)*Const(Size.YScale)
[State 600, 2]
type = VelAdd
trigger1 = PrevStateNo != 102 && PrevStateNo != 105
y = const(movement.yaccel)

[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 50, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = !moveContact

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = ifElse(PrevStateNo=50,50,1305)

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type	= A
movetype= A
physics = N
juggle	= 8
poweradd= 18 * !var(30)
ctrl = 0
anim = 650
sprpriority = 2

[State 50, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 32

[State 60, VelSet]
type = VelSet
trigger1 = Time = 0 && PrevStateNo = 60
x = 5*(4.0/3.0)*Const(Size.XScale)
[State 60, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && PrevStateNo = 60
value = S8,13
channel = 0

[State 650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1,2
channel=1

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 650, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 4
attr = A, NA
damage = ceil(ifElse(fvar(10)*70 < 7, 7, fvar(10)*70)),0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = ceil(12*(2-(Var(30)>0))/2),ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8012)
guard.sparkno = -1 | (var(8) := 8000)
sparkxy = (var(26):=-10),(var(27):=-21)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 12 + 4*Var(21)
ground.hittime	= 12 + 4*Var(21)
ground.velocity = -5.49*(2-(Var(30)>0))/2
guard.velocity = -5.49*(2-(Var(30)>0))/2
guard.ctrltime = 18
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -6,-3
air.hittime = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifElse(!Var(51), 216, 72) * !Var(30),36 * !Var(30)
givepower = 36,36
yaccel = .46875
air.fall = 0
fall.recover = 0
forcenofall = !Var(30)
palfx.time = 12*var(21)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
ID = 650

[State 255, Time Offset]
type = VarSet
triggerall = AnimElemTime(4) >= 0
trigger1 = MoveContact = 1
var(9) = Time
ignorehitpause = 1
persistent = 0
[State 255, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime = [1,ceil(12*(2-(Var(30)>0))/2)-(8-Var(9))]
value = anim
elem = 5
ignorehitpause = 1
[State 650, Freeze]
type = PosFreeze
triggerall = NumTarget(650)
triggerall = AnimElemTime(4) >= 0
trigger1 = MoveContact = 1
value = 1

[State 102, 1]
type = VelAdd
trigger1 = PrevStateNo = 102
x = ifElse(Vel X <= 0, 0, -0.4375*(25.0/16.0))*Const(Size.XScale)
y = 0.46875*(25.0/16.0)*Const(Size.YScale)
[State 600, VelAdd]
type = VelAdd
trigger1 = PrevStateNo = 105
x = ifElse(Vel X >= 0, 0, 0.25*(25.0/16.0));*Const(Size.XScale) ; Analysis
y = 0.5*(25.0/16.0)*Const(Size.YScale)
[State 600, 2]
type = VelAdd
trigger1 = PrevStateNo != 102 && PrevStateNo != 105
y = const(movement.yaccel)

[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
triggerall = PrevStateNo != 102 && PrevStateNo != 105
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 50, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = !moveContact

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = ifElse(PrevStateNo=50,50,1305)

;---------------------------------------------------------------------------
; Throw Attempt
[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
poweradd = 18 * !var(30)
facep2 = 1

[State 800, 1]
type = HitDef
triggerall = numHelper(10372)
triggerall = P2StateType != A
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = P2StateNo != 40
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**0)) != 0
trigger1 = !Time
attr = S, NT
hitflag = M-
priority = 3, Miss
sparkno = -1 | (var(7) := 0)
guard.sparkno = -1 | (var(8) := 0)
p1facing = 1
p2facing = 1
p1stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),815,810)
p2stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),825,820)
guard.dist = 0
numhits = 0

[State 800, 1]
type = HitDef
triggerall = numHelper(10372)
triggerall = P2StateNo != [150,155]
triggerall = Var(30)
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**0)) != 0
trigger1 = AnimElem = 1
attr = S, NT
hitflag = MF
priority = 3, Miss
sparkno = -1 | (var(7) := 0)
guard.sparkno = -1 | (var(8) := 0)
p1facing = 1
p2facing = 1
p1stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),815,810)
p2stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),825,820)
guard.dist = 0
numhits = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S5000,0
channel = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 810]
type = S
movetype= A
physics = N
anim = 805
sprpriority = 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S800,0

[State 810, Tech Reset]
type = VarSet
trigger1 = Time = 0
fvar(2) = 0
[State 810, Tech (x+a) (P2)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 0
triggerall = target, ID = Enemy(0), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(0),AuthorName = "GM"
trigger2 = Enemy(0),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(0),AuthorName = "RajaaBoy"
trigger3 = Enemy(0),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(0),AuthorName = "muteki"
trigger4 = Enemy(0),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (x+a) (P4)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 1
triggerall = target, ID = Enemy(1), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(1),AuthorName = "GM"
trigger2 = Enemy(1),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(1),AuthorName = "RajaaBoy"
trigger3 = Enemy(1),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(1),AuthorName = "muteki"
trigger4 = Enemy(1),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (Heavies & Mediums)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)

trigger1 = numEnemy > 0
trigger1 = !(Enemy(0),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger1 = target, ID = Enemy(0), ID && cond(numHelper(10375), helper(10375), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))

trigger2 = numEnemy > 1
trigger2 = !(Enemy(1),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger2 = target, ID = Enemy(1), ID && cond(numHelper(10376), helper(10376), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))
fvar(2) = 1

[State 810, TargetBind]
type = TargetBind
triggerall = numTarget
trigger1 = Time < 7 && FVar(2)
pos = 40, 0
[State 810, TargetBind]
type = ChangeState
trigger1 = Time < 7 && FVar(2)
value = 890

[State 810, TargetDrop]
type = TargetDrop
trigger1 = NumTarget
trigger1 = target, Alive = 0

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 805 && !AnimTime
value = 806

; Thanks, Phantom.of.the.Server!!
[State 840, VarSet]
type = VarSet
trigger1 = Time = 0
var(17) = 41
[State 840, VarSet]
type = VarAdd
trigger1 = HitCount
var(17) = -1

[State 840, PUSH COIN TO LAG]
type = VarAdd
triggerall = Anim = 806
triggerall = NumTarget
trigger1 = target, Command = "a"
trigger2 = target, Command = "b"
trigger3 = target, Command = "c"
trigger4 = target, Command = "x"
trigger5 = target, Command = "y"
trigger6 = target, Command = "z"
trigger7 = target, Command = "start"
trigger8 = target, Command = "fwd"
trigger9 = target, Command = "down"
trigger10 = target, Command = "up"
trigger11 = target, Command = "back"
var(17) = -2

[State 840, VarSet]
type = VarSet
trigger1 = Time = 0
var(18) = 0
[State 840, PUSH START TO RICH]
type = VarAdd
triggerall = Anim = [806,807]
triggerall = numHelper(10372)
trigger1 = (helper(10372), var(0)&16256) > 0
trigger2 = (helper(10372), var(3)&240) > 0
var(18) = 1
[State 840, VarSet]
type = VarSet
trigger1 = Var(17)<0
var(18) = 0

[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 806
triggerall = Var(17) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(4) < 0
trigger1 = AnimElemTime(AnimElemNo(0)+1) >= -Var(18)
trigger1 = e||(var(18) := (var(18) + AnimElemTime(AnimElemNo(0)+1)))
value = 806
elem = AnimElemNo(0)+1
[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 806
triggerall = Var(17) > 0
trigger1 = AnimElemTime(4) > 0
trigger1 = AnimElemTime(4) >= (2-Var(18))
trigger1 = e||(var(18) := (var(18) + 2-AnimElemTime(4)))
value = 807
elem = 1
[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 807
triggerall = Var(17) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(5) < 0
trigger1 = AnimElemTime(AnimElemNo(0)+1) >= -Var(18)
trigger1 = e||(var(18) := (var(18) + AnimElemTime(AnimElemNo(0)+1)))
value = 807
elem = AnimElemNo(0)+1
[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 807
triggerall = Var(17) > 0
trigger1 = AnimElemTime(5) > 0
trigger1 = AnimElemTime(5) >= (6-Var(18))
trigger1 = e||(var(18) := (var(18) + 6-AnimElemTime(5)))
value = 806
elem = 1

[State 810, TargetState]
type = TargetState
trigger1 = !Time
value = 820

[State 810, TargetState]
type = TargetState
trigger1 = Anim = 805
trigger1 = AnimElem = 4
trigger2 = Anim = 807
trigger2 = AnimElem = 2
value = 821

[State 810, TargetState]
type = TargetState
trigger1 = Anim = 806
trigger1 = AnimElem = 4
value = 822

[State 810, Width]
type = Width
trigger1 = Anim = 805 && AnimElemTime(4) = 1
edge = 64,0

[State 810, Bind 1]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
trigger1 = AnimElem = 1
time = 4
pos = ceil(54*Const(Size.XScale)), 0, Foot
[State 810, Bind 2]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
trigger1 = AnimElem = 2
time = 5
pos = ceil(73*Const(Size.XScale)), 0, Foot
[State 810, Bind 3]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
trigger1 = AnimElem = 3
time = 4
pos = ceil(62*Const(Size.XScale)), 0, Foot

[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
trigger1 = !Target, Name = "THE JUGGERNAUT, BITCH!"
trigger1 = !Target, Name = "Juggernaut by Splode"
trigger1 = !Target, Name = "MvC2 Juggernaut By Kamekaze"
trigger1 = !(Target, Name = "Gill" && Target, AuthorName = "GM")
trigger1 = !(Target, AuthorName = "Warusaki3" && Target, Name = "cvsnakoruru")
trigger1 = !(Target, AuthorName = "Jesuszilla" && Target, Name = "cvsrockman")
trigger1 = AnimElem = 4
time = 3
pos = ceil(49*Const(Size.XScale)),ceil(72*Const(Size.YScale)),Head
[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
triggerall = AnimElem = 4
trigger1 = Target, AuthorName = "Warusaki3" && Target, Name = "cvsnakoruru"
trigger2 = Target, AuthorName = "Jesuszilla" && Target, Name = "cvsrockman"
time = 3
pos = ceil(63*Const(Size.XScale)),ceil(63*Const(Size.YScale)),Head
[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
trigger1 = (Target, Name = "THE JUGGERNAUT, BITCH!") || (Target, Name = "Juggernaut by Splode") || (Target, Name="MvC2 Juggernaut By Kamekaze")
trigger1 = AnimElem = 4
time = 3
pos = ceil(14*Const(Size.XScale)),ceil(48*Const(Size.YScale)),Head
[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 805
trigger1 = Target, Name = "Gill" && Target, AuthorName = "GM"
trigger1 = AnimElem = 4
time = 3
pos = ceil(58*Const(Size.XScale)),ceil(54*Const(Size.YScale)),Head ; Code a fucking proper head.pos, GM

[State -2, Sparks]
type = Helper
triggerall = Anim = [806,807]
trigger1 = AnimElemTime(3) = 0
stateno = 8015
ID = 8000
name = "Spark"
postype = P2
pos = (target,Const(Size.Head.Pos.x)),(target,Const(Size.Head.Pos.y))
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1
[State -3, Blood]
type = Helper
triggerall = Anim = [806,807]
trigger1 = AnimElemTime(3) = 0
ID = 8700
name = "BLOOD"
pos = (target,Const(Size.Head.Pos.x)),(target,Const(Size.Head.Pos.y))
postype = P2
stateno = ifElse(Anim=807,8700,8720)
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 65535
size.XScale = const(Size.XScale)
size.yscale = const(Size.Yscale)
facing = -1

[State 3001, VarAdd]
type = VarAdd
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
var(51) = 1
[State 3001, HitAdd]
type = HitAdd
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
value = 1

[State 810, Hurt]
type = TargetLifeAdd
triggerall = NumTarget
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
value = floor(ifElse((-14*FVar(10))>-7,-7,(-14*FVar(10))))
kill = 1

[State 810, Voice]
type = PlaySnd
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
value = S180,0
channel = 0
[State 810, PlaySnd]
type = PlaySnd
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
value = S3,8
channel = 2

[State 810, State End]
type = ChangeAnim
triggerall = Anim != 808
triggerall = HitCount
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = Var(17) <= 0
value = 808
[State 810, State End]
type = TargetState
trigger1 = Anim = 808 && AnimTime = 0
value = 823
[State 810, State End]
type = ChangeState
trigger1 = Anim = 808 && AnimTime = 0
trigger2 = !NumTarget
value = 850

;----------------------------------------------------------------------
[Statedef 815]
type = S
movetype= A
physics = N
anim = 815
sprpriority = 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S800,0

[State 810, Tech Reset]
type = VarSet
trigger1 = Time = 0
fvar(2) = 0
[State 810, Tech (x+a) (P2)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 0
triggerall = target, ID = Enemy(0), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(0),AuthorName = "GM"
trigger2 = Enemy(0),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(0),AuthorName = "RajaaBoy"
trigger3 = Enemy(0),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(0),AuthorName = "muteki"
trigger4 = Enemy(0),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (x+a) (P4)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 1
triggerall = target, ID = Enemy(1), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(1),AuthorName = "GM"
trigger2 = Enemy(1),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(1),AuthorName = "RajaaBoy"
trigger3 = Enemy(1),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(1),AuthorName = "muteki"
trigger4 = Enemy(1),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (Heavies & Mediums)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)

trigger1 = numEnemy > 0
trigger1 = !(Enemy(0),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger1 = target, ID = Enemy(0), ID && cond(numHelper(10375), helper(10375), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))

trigger2 = numEnemy > 1
trigger2 = !(Enemy(1),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger2 = target, ID = Enemy(1), ID && cond(numHelper(10376), helper(10376), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))
fvar(2) = 1

[State 810, TargetBind]
type = TargetBind
triggerall = numTarget
trigger1 = Time < 7 && FVar(2)
pos = 40, 0
[State 810, TargetBind]
type = ChangeState
trigger1 = Time < 7 && FVar(2)
value = 890

[State 810, TargetDrop]
type = TargetDrop
trigger1 = NumTarget
trigger1 = target, Alive = 0

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 815 && !AnimTime
value = 806

; Thanks, Phantom.of.the.Server!!
[State 840, VarSet]
type = VarSet
trigger1 = Time = 0
var(17) = 41
[State 840, VarSet]
type = VarAdd
trigger1 = HitCount
var(17) = -1

[State 840, PUSH COIN TO LAG]
type = VarAdd
triggerall = Anim = [806,807]
triggerall = NumTarget
trigger1 = target, Command = "a"
trigger2 = target, Command = "b"
trigger3 = target, Command = "c"
trigger4 = target, Command = "x"
trigger5 = target, Command = "y"
trigger6 = target, Command = "z"
trigger7 = target, Command = "start"
trigger8 = target, Command = "fwd"
trigger9 = target, Command = "down"
trigger10 = target, Command = "up"
trigger11 = target, Command = "back"
var(17) = -2

[State 840, VarSet]
type = VarSet
trigger1 = Time = 0
var(18) = 0
[State 840, PUSH START TO RICH]
type = VarAdd
triggerall = Anim = [806,807]
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
trigger4 = Command = "x"
trigger5 = Command = "y"
trigger6 = Command = "z"
trigger7 = Command = "start"
trigger8 = Command = "fwd"
trigger9 = Command = "down"
trigger10 = Command = "up"
trigger11 = Command = "back"
var(18) = 1
[State 840, VarSet]
type = VarSet
trigger1 = Var(17)<0
var(18) = 0

[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 806
triggerall = Var(17) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(4) < 0
trigger1 = AnimElemTime(AnimElemNo(0)+1) >= -Var(18)
trigger1 = e||(var(18) := (var(18) + AnimElemTime(AnimElemNo(0)+1)))
value = 806
elem = AnimElemNo(0)+1
[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 806
triggerall = Var(17) > 0
trigger1 = AnimElemTime(4) > 0
trigger1 = AnimElemTime(4) >= (2-Var(18))
trigger1 = e||(var(18) := (var(18) + 2-AnimElemTime(4)))
value = 807
elem = 1
[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 807
triggerall = Var(17) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(5) < 0
trigger1 = AnimElemTime(AnimElemNo(0)+1) >= -Var(18)
trigger1 = e||(var(18) := (var(18) + AnimElemTime(AnimElemNo(0)+1)))
value = 807
elem = AnimElemNo(0)+1
[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 807
triggerall = Var(17) > 0
trigger1 = AnimElemTime(5) > 0
trigger1 = AnimElemTime(5) >= (6-Var(18))
trigger1 = e||(var(18) := (var(18) + 6-AnimElemTime(5)))
value = 806
elem = 1

[State 810, TargetState]
type = TargetState
trigger1 = !Time
value = 825

[State 810, TargetState]
type = TargetState
trigger1 = Anim = 815
trigger1 = AnimElem = 6
trigger2 = Anim = 807
trigger2 = AnimElem = 2
value = 821

[State 810, TargetState]
type = TargetState
trigger1 = Anim = 806
trigger1 = AnimElem = 4
value = 822

[State 810, Width]
type = Width
trigger1 = Anim = 815 && AnimElemTime(4) = 0
edge = 64,0

[State 810, SprPriority]
type = SprPriority
trigger1 = 1
value = ifElse(Anim = 815 && AnimElemTime(4) >=0 && AnimElemTime(6) < 0, 0, 2)

[State 810, Turn]
type = Turn
triggerall = Anim = 815
trigger1 = AnimElemTime(4) = 0

[State 810, Bind 1]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = AnimElem = 1
time = 4
pos = ceil(54*Const(Size.XScale)), 0, Foot
[State 810, Bind 2]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = AnimElem = 2
time = 5
pos = ceil(73*Const(Size.XScale)), 0, Foot
[State 810, Bind 3]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
time = 2
pos = ceil(62*Const(Size.XScale)), 0, Foot
[State 810, Bind 3]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = AnimElem = 4
time = 1
pos = ceil(-7*Const(Size.XScale)), 0, Foot
[State 810, Bind 3]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = AnimElem = 5
time = 2
pos = ceil(-24*Const(Size.XScale)), 0, Foot

[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = !(Target, Name = "THE JUGGERNAUT, BITCH!")
trigger1 = !(Target, Name = "Juggernaut by Splode")
trigger1 = !(Target, Name = "MvC2 Juggernaut By Kamekaze")
trigger1 = !(Target, Name = "Gill" && Target, AuthorName = "GM")
trigger1 = !(Target, AuthorName = "Warusaki3" && Target, Name = "cvsnakoruru")
trigger1 = !(Target, AuthorName = "Jesuszilla" && Target, Name = "cvsrockman")
trigger1 = AnimElem = 7
time = 3
pos = ceil(49*Const(Size.XScale)),ceil(72*Const(Size.YScale)),Head
[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
triggerall = AnimElem = 7
trigger1 = Target, AuthorName = "Warusaki3" && Target, Name = "cvsnakoruru"
trigger2 = Target, AuthorName = "Jesuszilla" && Target, Name = "cvsrockman"
time = 3
pos = ceil(63*Const(Size.XScale)),ceil(63*Const(Size.YScale)),Head
[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = (Target, Name = "THE JUGGERNAUT, BITCH!") || (Target, Name = "Juggernaut by Splode") || (Target, Name="MvC2 Juggernaut By Kamekaze")
trigger1 = AnimElem = 7
time = 3
pos = ceil(14*Const(Size.XScale)),ceil(48*Const(Size.YScale)),Head
[State 810, Bind 4]
type = BindtoTarget
triggerall = NumTarget && Anim = 815
trigger1 = Target, Name = "Gill" && Target, AuthorName = "GM"
trigger1 = AnimElem = 7
time = 3
pos = ceil(58*Const(Size.XScale)),ceil(54*Const(Size.YScale)),Head ; Code a fucking proper head.pos, GM

[State -2, Sparks]
type = Helper
triggerall = Anim = [806,807]
trigger1 = AnimElemTime(3) = 0
stateno = 8015
ID = 8000
name = "Spark"
postype = P2
pos = (target,Const(Size.Head.Pos.x)),(target,Const(Size.Head.Pos.y))
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1
[State -3, Blood]
type = Helper
triggerall = Anim = [806,807]
trigger1 = AnimElemTime(3) = 0
ID = 8700
name = "BLOOD"
pos = (target,Const(Size.Head.Pos.x)),(target,Const(Size.Head.Pos.y))
postype = P2
stateno = ifElse(Anim=807,8700,8720)
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 65535
size.XScale = const(Size.XScale)
size.yscale = const(Size.Yscale)
facing = -1

[State 3001, VarAdd]
type = VarAdd
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
var(51) = 1
[State 3001, HitAdd]
type = HitAdd
triggerall = Anim = [806,807]
trigger1 = AnimElem = 3
value = 1

[State 810, Hurt]
type = TargetLifeAdd
triggerall = Anim = [806,807]
triggerall = NumTarget
trigger1 = AnimElem = 3
value = floor(ifElse((-14*FVar(10))>-7,-7,(-14*FVar(10))))
kill = 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Anim = [806,807]
trigger1 = AnimElem = 3
value = S180,0
channel = 0
[State 810, PlaySnd]
type = PlaySnd
trigger1 = Anim = [806,807]
trigger1 = AnimElem = 3
value = S3,6
channel = 2

[State 831, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = Anim = 808 && AnimTime = 0
value = 36

[State 810, State End]
type = ChangeAnim
triggerall = Anim != 808
triggerall = HitCount
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = Var(17) <= 0
value = 808
[State 810, State End]
type = TargetState
trigger1 = Anim = 808 && AnimTime = 0
value = 823
[State 810, State End]
type = ChangeState
trigger1 = Anim = 808 && AnimTime = 0
trigger2 = !NumTarget
value = 850

;----------------------------------------------------------------------
[Statedef 820]
type = S
movetype = H
physics = N
sprpriority = -1

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 820, 7]
type = ChangeState
trigger1 = !Alive
value = 823
ctrl = 0

;----------------------------------------------------------------------
; 5000,0
[Statedef 821]
type = S
movetype = H
physics = N
sprpriority = -1

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 821

[State 820, 7]
type = ChangeState
trigger1 = !Alive
value = 823
ctrl = 0

;----------------------------------------------------------------------
; 5000,10
[Statedef 822]
type = S
movetype = H
physics = N
sprpriority = -1

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 822

[State 820, 7]
type = ChangeState
trigger1 = !Alive
value = 823
ctrl = 0

;----------------------------------------------------------------------
; END
[Statedef 823]
type = A
movetype = H
physics = N
sprpriority = -1
ctrl = 0

[State 820, 2]
type = VelSet
trigger1 = !Time
x = -2*(5.0/4.0)*(5.0/6.0)
y = -5.59375*(5.0/4.0)

[State 820, 3]
type = VelAdd
trigger1 = Time
x = 0.0078125*(25.0/16.0)*(5.0/6.0)
y = 0.28125*(25.0/16.0)

[State 820, 7]
type = SelfState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0 	;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 823, EnvShake]
type = EnvShake
triggerall = Time
trigger1 = Vel Y + Pos Y >= 0
time = 20

[State 823, Land]
type = SelfState
triggerall = Time
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;----------------------------------------------------------------------
[Statedef 825]
type = S
movetype = H
physics = N
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 820, 1]
type = ChangeAnim2
trigger1 = !Time && Name = "Gill" && AuthorName = "GM" && Facing = -1
value = 823

[State 820, Turn]
type = Turn
trigger1 = Time = 10

;----------------------------------------------------------------------
; Jump Off
[Statedef 850]
type = A
physics = N
velset = 0,0
;facep2 = 1

[State 850, NHB]
type = NotHitBy
trigger1 = PrevStateNo = [810,815]
value = SCA

[State 850, CtrlSet]
type = CtrlSet
triggerall = Time = 2
trigger1 = PrevStateNo = 88
trigger2 = PrevStateNo = 89
value = 1

[State 88, Turn]
type = Turn
trigger1 = !Time && PrevStateNo = 89

[State 88, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoAirGuard

[State 850, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 13

[State 850, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = IfElse((PrevStateNo = [810,819]),880,881)

[State 850, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger1 = Anim = 880
value = S8,4

[State 850, 1]
type = VelSet
trigger1 = Time = 2
x = ifElse((PrevStateNo = [88,89]),4.25,-4)*(5.0/4.0)*Const(Size.XScale)
y = -9*(5.0/4.0)

[State 850, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = ifElse((PrevStateNo = [88,89]),1016,890)

[State 850, 3]
type = Gravity
trigger1 = Anim = 890 || Anim = 1016

[State 850, 4]
type = ChangeState
triggerall = Anim = 890 || Anim = 1016
trigger1 = Vel Y + Pos Y >= 0
value = 52

;---------------------------------------------------------------------------
; Land from Wall Cling
[Statedef 855]
type	= S
physics = S
ctrl = 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,0
channel=1

[State 52, AfterImageTime]
type = AfterImageTime
triggerall = !Var(30)
trigger1 = Time = 0
time = 0

[State 52, Turn]
type = ChangeState;Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0
value = 0 + 11*(command = "holddown")
ctrl = 1*(command = "holddown")

[State 52, X]
type = ChangeAnim
trigger1 = Time = 0
value = 47

[State 52, 6]
type = AssertSpecial
trigger1 = Time < 3
flag = NoWalk

[State 52, 3]
type = CtrlSet
trigger1 = !Time && P2Dist X >= 0
value = 1

[State 52, 4]
type = ChangeState
trigger1 = Time > 2
value = 0 + 11*(command = "holddown")
ctrl = 1

;---------------------------------------------------------------------------
; Throw 2
[Statedef 830]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
poweradd = 18 * !var(30)

[State 800, 1]
type = HitDef
triggerall = numHelper(10372)
triggerall = P2StateType != A
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = P2StateNo != 40
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**0)) != 0
trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
priority = 3, Miss
sparkno = -1 | (var(7) := 0)
guard.sparkno = -1 | (var(8) := 0)
p1facing = 1
p2facing = 1
p1stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),832,831)
p2stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),835,834)
guard.dist = 0
numhits = 0

[State 800, 1]
type = HitDef
triggerall = numHelper(10372)
triggerall = P2StateNo != [150,155]
triggerall = Var(30)
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**0)) != 0
trigger1 = AnimElem = 1
attr = S, NT
hitflag = MF
priority = 3, Miss
sparkno = -1 | (var(7) := 0)
guard.sparkno = -1 | (var(8) := 0)
p1facing = 1
p2facing = 1
p1stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),832,831)
p2stateno = ifElse(cond(!AILevel, (helper(10372), var(4)&68) != 0, cond(numHelper(247), ((abs(helper(247), var(10))%1000)%2) = 1, 0)),835,834)
guard.dist = 0
numhits = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S5000,0
channel = 0

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 831]
type = S
movetype= A
physics = N
anim = 831
sprpriority = 2

[State 831, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S800,0

[State 810, Tech Reset]
type = VarSet
trigger1 = Time = 0
fvar(2) = 0
[State 810, Tech (x+a) (P2)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 0
triggerall = target, ID = Enemy(0), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(0),AuthorName = "GM"
trigger2 = Enemy(0),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(0),AuthorName = "RajaaBoy"
trigger3 = Enemy(0),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(0),AuthorName = "muteki"
trigger4 = Enemy(0),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (x+a) (P4)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 1
triggerall = target, ID = Enemy(1), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(1),AuthorName = "GM"
trigger2 = Enemy(1),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(1),AuthorName = "RajaaBoy"
trigger3 = Enemy(1),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(1),AuthorName = "muteki"
trigger4 = Enemy(1),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (Heavies & Mediums)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)

trigger1 = numEnemy > 0
trigger1 = !(Enemy(0),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger1 = target, ID = Enemy(0), ID && cond(numHelper(10375), helper(10375), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))

trigger2 = numEnemy > 1
trigger2 = !(Enemy(1),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger2 = target, ID = Enemy(1), ID && cond(numHelper(10376), helper(10376), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))
fvar(2) = 1

[State 810, TargetBind]
type = TargetBind
triggerall = numTarget
trigger1 = Time < 7 && FVar(2)
pos = 40, 0
[State 810, TargetBind]
type = ChangeState
trigger1 = Time < 7 && FVar(2)
value = 890

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 831, Turn]
type = Turn
trigger1 = AnimElemTime(4) = 0

[State 831, SprPriority]
type = SprPriority
trigger1 = 1
value = ifElse(AnimElemTime(4) >= 0 && AnimElemTime(6) < 0, 0, 2)

[State 831, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
time = 4
pos = ceil(54*Const(Size.XScale)),0
[State 831, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
time = 5
pos = ceil(73*Const(Size.XScale)),0
[State 831, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
time = 2
pos = ceil(52*Const(Size.XScale)),0
[State 831, Bind 3]
type = TargetBind
trigger1 = AnimElem = 4
time = 2
pos = ceil(-7*Const(Size.XScale)),0
[State 831, Bind 3]
type = TargetBind
trigger1 = AnimElem = 5
time = 2
pos = ceil(14*Const(Size.XScale)),0
[State 831, Bind 4]
type = TargetBind
trigger1 = AnimElem = 6
time = 4
pos = ceil(30*Const(Size.XScale)),0
[State 831, Bind 5]
type = TargetBind
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
trigger3 = AnimElem = 15
time = 3
pos = ceil(3*Const(Size.XScale)),-ceil(44*Const(Size.YScale))
[State 831, Bind 6]
type = TargetBind
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
time = 3
pos = -ceil(39*Const(Size.XScale)),-ceil(36*Const(Size.YScale))
[State 831, Bind 7]
type = TargetBind
trigger1 = AnimElem = 9
trigger2 = AnimElem = 13
time = 3
pos = ceil(3*Const(Size.XScale)),-ceil(12*Const(Size.YScale))
[State 831, Bind 8]
type = TargetBind
trigger1 = AnimElem = 10
trigger2 = AnimElem = 14
time = 3
pos = ceil(39*Const(Size.XScale)),-ceil(36*Const(Size.YScale))
[State 831, Bind 9]
type = TargetBind
trigger1 = AnimElem = 16
time = 1
pos = -ceil(93*Const(Size.XScale)),-ceil(70*Const(Size.YScale))

[State 831, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = -6*(5.0/4.0)*Const(Size.XScale)
y = -4*(5.0/4.0)*Const(Size.YScale)

[State 831, PosSet]
type = PosSet
trigger1 = AnimElem = 16
y = 0

[State 831, Gravity]
type = VelAdd
trigger1 = AnimElemTime(7) > 0
y = .25*(25.0/16.0)*Const(Size.YScale)

[State 831, VelSet2]
type = VelSet
trigger1 = AnimElemTime(7) > 0
trigger1 = Vel Y + Pos Y >= 0
x = 0
y = 0

[State 832, HitAdd]
type = HitAdd
trigger1 = AnimElem = 16
value = 1

[State 832, VarAdd]
type = VarAdd
trigger1 = AnimElem = 16
var(51) = 1
ignorehitpause = 1

[State 832, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(16) = 0
value = S5100,0
[State 5950, Dust]
type=explod
trigger1= AnimElemTime(16) = 0
anim=8105
sprpriority=-3
postype=p1
pos=-8,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 832, Width]
type = Width
trigger1 = AnimElemTime(16) = 0
edge = 76,76

[State 832, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(16) = 1
value = S8,9
channel = 0

[State 832, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(16) = 1
value = floor(ifElse((-91*FVar(10))>-7,-7,(-91*FVar(10))))
[State 831, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 16
value = 36

[State 831, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1305
ctrl = 1

;----------------------------------------------------------------------
[Statedef 832]
type = S
movetype= A
physics = N
sprpriority = 1
anim = 830

[State 831, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S800,0

[State 810, Tech Reset]
type = VarSet
trigger1 = Time = 0
fvar(2) = 0
[State 810, Tech (x+a) (P2)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 0
triggerall = target, ID = Enemy(0), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(0),AuthorName = "GM"
trigger2 = Enemy(0),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(0),AuthorName = "RajaaBoy"
trigger3 = Enemy(0),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(0),AuthorName = "muteki"
trigger4 = Enemy(0),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (x+a) (P4)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)
triggerall = numEnemy > 1
triggerall = target, ID = Enemy(1), ID
triggerall = target, cond(command = "x" && command = "a", 1, 0)
trigger1 = Enemy(1),AuthorName = "GM"
trigger2 = Enemy(1),cond(Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu", 1, 0)
trigger3 = Enemy(1),AuthorName = "RajaaBoy"
trigger3 = Enemy(1),cond(selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0)
trigger4 = Enemy(1),AuthorName = "muteki"
trigger4 = Enemy(1),cond(Name = "sean" || Name = "chun-li", 1, 0)
trigger5 = Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0)
trigger6 = Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0)
trigger7 = Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0)
fvar(2) = 1
[State 810, Tech (Heavies & Mediums)]
type = VarSet
triggerall = NumTarget
triggerall = Time < 7 && !FVar(2)

trigger1 = numEnemy > 0
trigger1 = !(Enemy(0),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger1 = !(Enemy(0),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger1 = target, ID = Enemy(0), ID && cond(numHelper(10375), helper(10375), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))

trigger2 = numEnemy > 1
trigger2 = !(Enemy(1),cond(AuthorName = "GM" && (Name = "Alex" || Name = "Gill" || Name = "Gouki" || Name = "Hugo" || Name = "Ibuki" || Name = "Ken" || Name = "Ryu"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "RajaaBoy" && selfanimexist(-2147483647) && selfanimexist(2147483647), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "muteki" && (Name = "sean" || Name = "chun-li"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Jesuszilla" && FVar(17) = 5, 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Mr. I" && (Name = "Gouken SSF4" || Name = "Cody SSF4" || Name = "Rufus SSF4" || Name = "Seth USF4"), 1, 0))
trigger2 = !(Enemy(1),cond(AuthorName = "Kamekaze" && ((Name = "Kame-Groove Dudley" && Var(59)<10) || Name = "Sagat" || Name = "K-Yang" || Name = "K-Mike Bison"), 1, 0))
trigger2 = target, ID = Enemy(1), ID && cond(numHelper(10376), helper(10376), sysvar(0), target, cond((command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c"), 1, 0))
fvar(2) = 1

[State 810, TargetBind]
type = TargetBind
triggerall = numTarget
trigger1 = Time < 7 && FVar(2)
pos = 40, 0
[State 810, TargetBind]
type = ChangeState
trigger1 = Time < 7 && FVar(2)
value = 890

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 831, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
time = 4
pos = ceil(54*Const(Size.XScale)),0
[State 831, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
time = 5
pos = ceil(73*Const(Size.XScale)),0
[State 831, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
time = 4
pos = ceil(52*Const(Size.XScale)),0
[State 831, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
time = 6
pos = ceil(30*Const(Size.XScale)),0
[State 831, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
time = 3
pos = ceil(3*Const(Size.XScale)),-ceil(44*Const(Size.YScale))
[State 831, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
time = 3
pos = -ceil(39*Const(Size.XScale)),-ceil(36*Const(Size.YScale))
[State 831, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
time = 3
pos = ceil(3*Const(Size.XScale)),-ceil(12*Const(Size.YScale))
[State 831, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
time = 3
pos = ceil(39*Const(Size.XScale)),-ceil(36*Const(Size.YScale))
[State 831, Bind 9]
type = TargetBind
trigger1 = AnimElem = 14
time = 1
pos = -ceil(93*Const(Size.XScale)),-ceil(70*Const(Size.YScale))

[State 831, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = -6*(5.0/4.0)*Const(Size.XScale)
y = -4*(5.0/4.0)*Const(Size.YScale)

[State 831, PosSet]
type = PosSet
trigger1 = AnimElem = 14
y = 0

[State 831, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = .25*(25.0/16.0)*Const(Size.YScale)

[State 831, VelSet2]
type = VelSet
trigger1 = Vel Y + Pos Y >= 0
x = 0
y = 0

[State 832, HitAdd]
type = HitAdd
trigger1 = AnimElem = 14
value = 1

[State 832, VarAdd]
type = VarAdd
trigger1 = AnimElem = 14
var(51) = 1
ignorehitpause = 1

[State 832, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(14) = 1
value = S8,9
channel = 0

[State 832, Width]
type = Width
trigger1 = AnimElemTime(14) = 0
edge = 76,76

[State 832, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(14) = 0
value = S5100,0
[State 5950, Dust]
type=explod
trigger1= AnimElemTime(14) = 0
anim=8105
sprpriority=-3
postype=p1
pos=-8,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 832, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(14) = 1
value = ceil(ifElse((-91*FVar(10))>-7,-7,(-91*FVar(10))))
[State 831, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 14
value = 36

[State 832, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 832, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;52
ctrl = 1

;----------------------------------------------------------------------
[Statedef 834]
type = A
movetype = H
physics = N
sprpriority = 1

[State 834, Turn]
type = Turn
trigger1 = Time = 11

[State 834, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 835

[State 834, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 0
x = 1.99609375*(5.0/4.0)*(5.0/6.0)
y = -6.09375*(5.0/4.0)

[State 834, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) > 0
x = 0.00390625*(25.0/16.0)*(5.0/6.0)
y = 0.28125*(25.0/16.0)

[State 816, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 816, EnvShake]
type = EnvShake
triggerall = AnimElemTime(14) > 0
trigger1 = Vel Y + Pos Y >= 0
time = 20

[State 5050, 6]
type = SelfState
triggerall = AnimElemTime(14) > 0
trigger1 = Vel Y + Pos Y >= 0
value = 5100 ;HIT_BOUNCE

;----------------------------------------------------------------------
[Statedef 835]
type = A
movetype = H
physics = N
sprpriority = -1

[State 835, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 835

[State 834, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 0
x = 1.99609375*(5.0/4.0)*(5.0/6.0)
y = -6.09375*(5.0/4.0)

[State 834, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) > 0
x = 0.00390625*(25.0/16.0)*(5.0/6.0)
y = 0.28125*(25.0/16.0)

[State 816, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 816, EnvShake]
type = EnvShake
triggerall = AnimElemTime(14) > 0
trigger1 = Vel Y + Pos Y >= 0
time = 20

[State 5050, 6]
type = SelfState
triggerall = AnimElemTime(14) > 0
trigger1 = Vel Y + Pos Y >= 0
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; Air Throw
[Statedef 860]
type	= A
movetype = A
physics = N
juggle = 0
ctrl = 0
poweradd = 0

[State 860, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(Vel X<0,841,840)
elem = cond(AnimElemTime(6) >= 0, 1, AnimElemNo(0)+1)

[State 860, StateTypeSet] ; Just to be safe
type = StateTypeSet
trigger1 = Time > 0
movetype = I

[State 860, 1]
type = HitDef
triggerall = !Var(30)
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**1)) != 0
trigger1 = Time = 0
attr = A, NT
hitflag = A-
priority = 3, Miss
sparkno = -1 | (var(7) := 0)
guard.sparkno = -1 | (var(8) := 0)
p1facing = 1
p2facing = 1
p1stateno = 861
p2stateno = 862
guard.dist = 0
numhits = 0

[State 860, 1]
type = HitDef
triggerall = Var(30)
triggerall = P2StateNo != [150,155]
triggerall = numHelper(247)
triggerall = (helper(247), var(49)&(2**1)) != 0
trigger1 = Time = 0
attr = A, NT
hitflag = AF
priority = 3, Miss
sparkno = -1 | (var(7) := 0)
guard.sparkno = -1 | (var(8) := 0)
p1facing = 1
p2facing = 1
p1stateno = 861
p2stateno = 862
guard.dist = 0
numhits = 0

[State 900, 2]
type = ChangeState
trigger1 = Time > 0
value = prevStateNo
ctrl = 1

;----------------------------------------------------------------------
[Statedef 861]
type = A
movetype= A
physics = N
anim = 842
sprpriority = 1
velset = 0,0

[State 861, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S800,0
[State 861, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = S8,2

[State 861, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 861, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
time = -1
pos = ceil(27*Const(Size.XScale)),-ceil(50*Const(Size.YScale))
[State 861, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
time = -1
pos = ceil(25*Const(Size.XScale)),-ceil(59*Const(Size.YScale))
[State 861, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
time = -1
pos = ceil(2*Const(Size.XScale)),-ceil(50*Const(Size.YScale))
[State 861, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
time = -1
pos = -ceil(16*Const(Size.XScale)),-ceil(67*Const(Size.YScale))
[State 861, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
time = -1
pos = ceil(3*Const(Size.XScale)),-ceil(81*Const(Size.YScale))
[State 861, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
time = -1
pos = -ceil(43*Const(Size.XScale)),-ceil(73*Const(Size.YScale))
[State 861, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
time = -1
pos = -ceil(43*Const(Size.XScale)),-ceil(86*Const(Size.YScale))
[State 861, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
time = -1
pos = -ceil(41*Const(Size.XScale)),-ceil(79*Const(Size.YScale))
[State 861, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
time = 1
pos = -ceil(2*Const(Size.XScale)),-ceil(90*Const(Size.YScale))
[State 861, Bind 11]
type = TargetBind
trigger1 = AnimElem = 12
time = 1
pos = ceil(32*Const(Size.XScale)),-ceil(85*Const(Size.YScale))

[State 861, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 0
x = 2*(5.0/4.0)
[State 861, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) > 0
y = .5625*(25.0/16.0)

[State 832, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(14) = 0
value = floor(ifElse((-70*FVar(10))>-7,-7,(-70*FVar(10))))
[State 831, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 14
value = 35

[State 861, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;----------------------------------------------------------------------
[Statedef 862]
type = A
movetype = H
physics = N
sprpriority = -1
velset = 0,0

[State 862, ScreenBound]
type = ScreenBound
trigger1 = Time < 35
value = 1
movecamera = 0,0

[State 834, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 843

[State 834, VelSet]
type = VelSet
trigger1 = Time = 34
x = -9.8359375*(5.0/4.0)*(5.0/6.0)
y = -6.4375*(5.0/4.0)
[State 835, VelAdd]
type = VelAdd
trigger1 = Time > 34
x = ifElse(Vel X >= 0, 0, 0.1640625)*(25.0/16.0)*(5.0/6.0)
y = 0.5625*(25.0/16.0)

[State 816, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5050, 6]
type = SelfState
triggerall = Time > 34
trigger1 = Vel Y + Pos Y >= 0
value = 5100 ;HIT_BOUNCE
