;-------------------------------------------------------------------------------
; Screen Helper
[Statedef 91]
type	= S
velset = 0,0
anim = 1
sprpriority = 2

[State 91, PosSet]
type = PosSet
trigger1 = 1
x = cond(IsHelper(90), -(GameWidth/2.0), (GameWidth/2.0))
y = Pos Y

[State 91, Screenbound]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[State 91, Screenbound]
type = Destroyself
trigger1 = root, stateNo != [88,89]

;----------------------------------------------------------------------------------
; Sand
[Statedef 1105]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 1105, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = 1101+Var(22)

[State 1105, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
[State 1105, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = stateno+1
time = -1
ignorehitpause = 1

[State 1105, Explod]
type = Explod
trigger1 = Time = 1
anim = 1105
ID = 600
pos = 0,0
postype = p1
removetime = -2;ifElse(!Var(22),12,18)
bindtime = 1
vel = 0,0
accel = 0,0
scale = Const(Size.XScale),Const(Size.YScale)
ownpal = 0
sprpriority = 5
persistent = 0
[State 1105, Explod]
type = Explod
trigger1 = Time = 3 && Var(22)
anim = 1105
ID = 601
pos = Ceil(Const(size.xscale)*32),Ceil(Const(size.Yscale)*-12)
postype = p1
removetime = -2
bindtime = 1
vel = 0,0
accel = 0,0
scale = Const(Size.XScale),Const(Size.YScale)
ownpal = 0
sprpriority = 4
persistent = 0
[State 1105, Explod]
type = Explod
trigger1 = Time = 5 && Var(22)=2
anim = 1105
ID = 602
pos = Ceil(Const(size.xscale)*64),Ceil(Const(size.Yscale)*-24)
postype = p1
removetime = -2
bindtime = 1
vel = 0,0
accel = 0,0
scale = Const(Size.XScale),Const(Size.YScale)
ownpal = 0
sprpriority = 3
persistent = 0
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = (root, StateNo != 1100) || Time = 0
ID = 600
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = (root, StateNo != 1100) || Time = 0
ID = 601
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = (root, StateNo != 1100) || Time = 0
ID = 602

[State 1105, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(49) = 7+Var(22)

[State 1105, Projectile]
type = Hitdef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = !Time
attr = , SA ; IT WORKS! I AM ONE CAN SHORT OF A SIX PACK!
damage = ceil(ifElse(fvar(10)*(70+(7*Var(22))) < 7, 7, fvar(10)*(70+(7*Var(22))))),ceil(ifElse((fvar(10)*(70+(7*Var(22)))/8) < 7, 7, (fvar(10)*(70+(7*Var(22)))/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,ceil(12*(2-(Var(30)>0))/2)
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2.96875,-7.53125
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
ID = 1005

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 1105, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0 ;&& parent, Anim = 1120
trigger2 = (parent, StateNo != 1100)
trigger3 = (parent, movetype = H)
trigger4 = MoveReversed

;----------------------------------------------------------------------------------
; DEAD SAND
[Statedef 1106]
type = ScreenBound
movetype = AssertSpecial
physics = Null
ctrl = 0
anim = 1

[State 1106, DestroySelf]
type = DestroySelf
trigger1 = Time

;----------------------------------------------------------------------------------
; Ball
[Statedef 1205]
type = A
movetype = I
physics = N
poweradd = 0
ctrl = 0
sprpriority = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY	;
;飛び道具を跳ね返し行動設定			   ;
;by Vans								;
;GUIDE: 								;
;FOR PROJECTILE / 飛び道具で 		   ;
;sysvar(0) = 131072 					;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE	;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !Time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !Time
sysvar(1) = 1207

[State 0, VarSet]
type = VarSet
trigger1 = root, MoveType = H
var(1) = 1
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = isHelper(2250)
movetype = A
[State 1200, priority]
type = SprPriority
trigger1 = 1
value = isHelper(2250)*3

[State 1200, BindToParent]
type = BindToParent
triggerall = parent, StateNo = 1200
trigger1 = ParentDist X >= (Ceil((Const(size.xscale))*78))
pos = (Ceil((Const(size.xscale))*78)),(Ceil((Const(size.yscale))*-49))
facing = 1
time = 1

[State 1200, Ball]
type = ChangeAnim
trigger1 = !Time
value = 1205

[State 1200, VarSet]
type = VarSet
trigger1 = 1
fvar(0) = (Ceil((Const(size.xscale))*ifElse(IsHelper(8411),8,ifElse(IsHelper(84112),7.25,8.5))))

[State 1200, VelSet]
type = VelSet
triggerall = !IsHelper(2250)
trigger1 = Anim = 1205 && !Time
x = (FVar(0) + (root, FVar(3)*root, Var(12)))
y = (Ceil((Const(size.yscale))*ifElse(IsHelper(8411),-3.75,ifElse(IsHelper(84112),-4.75,-7.5))))

[State 1200, VelAdd]
type = VelAdd
triggerall = !IsHelper(2250)
triggerall = Anim != 1206
trigger1 = Time > 3
y = .47

[State 1200, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = 1206

[State 1200, Pop]
type = ChangeAnim
trigger1 = root, Anim = 1200
trigger1 = root, AnimElemTime(6) = 0
trigger2 = root, Anim = 1210 || root, Anim = 1220
trigger2 = root, AnimElemTime(9) >= 0
trigger3 = prevStateNo = 1205
trigger4 = MoveContact = 1
value = 1206
persistent = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Anim = 1206
x = 0
y = 0

[State 1200, PosFreeze]
type = PosFreeze
trigger1 = Anim = 1206
value = 1

[State 1200, ES - Start]
type = VelSet
triggerall = isHelper(2250)
triggerall = !Var(0)
trigger1 = Anim = 1205 && Time = 1
x = 2*(5.0/4.0)*Const(Size.XScale)
y = -7.5*(5.0/4.0)*Const(Size.YScale)
;x = 2.15
;y = -8.4;-7

[State 2250, ES - Start]
type = VelAdd
triggerall = isHelper(2250)
triggerall = Anim != 1206
trigger1 = !Var(0)
trigger1 = Time = [2,30] ;|| Time > 33
trigger2 = Var(1)
y = 0.1875*(25.0/16.0)*Const(Size.YScale);.25

[State 2250, ES - Attack]
type = VelAdd
triggerall = isHelper(2250)
triggerall = Anim != 1206
triggerall = !Var(1)
trigger1 = !Var(0) && Time > 30
trigger2 = Var(0)
y = 0.25*(25.0/16.0)*Const(Size.YScale);.5

[State 2250, ES - Attack]
type = VelSet
triggerall = root, StateNo = 2200
triggerall = isHelper(2250)
triggerall = Anim != 1206
triggerall = !Var(1)
trigger1 = Time = 30;var(0)
x = 6*(5.0/4.0)*Const(Size.XScale)
y = 7*(5.0/4.0)*Const(Size.YScale)

[State 1205, NotHitBy]
type = NotHitBy
trigger1 = !isHelper(2250) || MoveType = I
value = SCA
[State 1205, HitBy]
type = HitBy
trigger1 = isHelper(2250) && MoveType = A
value = SCA,AP

[State 2250, HitOverride]
type = HitOverride
trigger1 = isHelper(2250) && MoveType = A
attr = SCA,AA,AP,AT
slot = 0
stateno = stateNo
time = 1
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1206 && isHelper(2250)
value = S200,2
channel = 5
persistent = 0

[State 1105, Projectile]
type = HitDef
triggerall = Time > 29 || prevStateNo = 1206
triggerall = !MoveContact
triggerall = isHelper(2250)
triggerall = !NumTarget(sysvar(0))
trigger1 = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
attr = A, SP
damage = ceil(ifElse(fvar(10)*125 < 7, 7, fvar(10)*125)),ceil(ifElse((fvar(10)*125/8) < 7, 7, (fvar(10)*125/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,12
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 5)
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
persistent = 0
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY	;
;飛び道具を跳ね返し行動設定			   ;
;by Vans								;
;GUIDE: 								;
;FOR PROJECTILE / 飛び道具で 		   ;
;sysvar(0) = 131072 					;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE	;
;=======================================;
ID = sysvar(0)
;=======================================;

[State 1100, ParentVarSet]
type = ParentVarSet
trigger1 = MoveContact = 1
fvar(18) = 256*(NumTarget>0)

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 1200, DestroySelf]
type = DestroySelf
trigger1 = Anim = 1206 && AnimTime = 0
trigger2 = BackEdgeBodyDist <= -40
trigger3 = FrontEdgeBodyDist <= -40
;trigger1 = root, Anim = 1200
;trigger1 = root, AnimElemTime(6) = 0
;trigger2 = root, Anim = 1210 || root, Anim = 1220
;trigger2 = root, AnimElemTime(9) >= 0

;----------------------------------------------------------------------------------
; Ball Bounce
[Statedef 1206]
type = A
movetype = I
physics = N
poweradd = 0
ctrl = 0
sprpriority = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = isHelper(2250) && !Time
var(0) = 1

[State 1206, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1206, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1207+isHelper(2250)

[State 1206, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S200,1
;persistent = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Anim = 1207 || Var(1)
trigger1 = AnimElemTime(2) = 0
x = 2*(5.0/4.0)*Const(Size.XScale)
y = -2.4375*(5.0/4.0)*Const(Size.YScale)
[State 1200, VelSet]
type = VelAdd
trigger1 = Anim = 1207 || Var(1)
trigger1 = AnimElemTime(2) > 0
y = 0.0625*(25.0/16.0)*Const(Size.YScale)

[State 1200, VelSet]
type = VelSet
triggerall = !Var(1)
trigger1 = Anim = 1208
trigger1 = AnimElemTime(2) = 0
x = 6*(5.0/4.0)*Const(Size.XScale)
y = -6.375*(5.0/4.0)*Const(Size.YScale)
;x = 7.7143
;y = -9.75
[State 1200, VelSet]
type = VelAdd
triggerall = Anim = 1208 && !Var(1)
trigger1 = AnimElemTime(2) > 0
y = .25*(25.0/16.0)*Const(Size.YScale)

[State 1206, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = prevStateNo

;----------------------------------------------------------------------------------
; Ball (Reflected)
[Statedef 1207]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
sprpriority = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(13) := root,FVar(13))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
ignorehitpause = 1

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY	;
;飛び道具を跳ね返し行動設定			   ;
;by Vans								;
;GUIDE: 								;
;FOR PROJECTILE / 飛び道具で 		   ;
;sysvar(0) = 131072 					;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE	;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !Time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !Time
sysvar(1) = 1207

[State 1207, Turn]
type = Turn
trigger1 = Time = 0 && prevStateNo != 1206

[State 2250, ES - Attack]
type = VelSet
trigger1 = Time = 0 && prevStateNo != 1206
x = 6*(5.0/4.0)*Const(Size.XScale)
y = 7*(5.0/4.0)*Const(Size.YScale)

[State 0, VarSet]
type = VarSet
trigger1 = root, MoveType = H
var(1) = 1
ignorehitpause = 1
persistent = 0

[State 1200, priority]
type = SprPriority
trigger1 = 1
value = 3

[State 1200, Ball]
type = ChangeAnim
trigger1 = !Time
value = 1205

[State 1200, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = 1206

[State 1200, Pop]
type = ChangeAnim
trigger1 = prevStateNo = 1207
trigger2 = MoveContact = 1
value = 1206
persistent = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Anim = 1206
x = 0
y = 0

[State 1200, PosFreeze]
type = PosFreeze
trigger1 = Anim = 1206
value = 1

[State 1205, NotHitBy]
type = NotHitBy
trigger1 = MoveType = I
value = SCA
[State 1205, HitBy]
type = HitBy
trigger1 = MoveType = A
value = SCA,AP

[State 2250, HitOverride]
type = HitOverride
trigger1 = isHelper(2250) && MoveType = A
attr = SCA,AA,AP,AT
slot = 0
stateno = stateNo
time = 1
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1206
value = S200,2
channel = 5
persistent = 0

[State 1105, Projectile]
type = HitDef
triggerall = !MoveContact
triggerall = !NumTarget(sysvar(0))
trigger1 = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || P2StateType != A || P2MoveType != H)
attr = A, SP
damage = ceil(ifElse(fvar(10)*125 < 7, 7, fvar(10)*125)),ceil(ifElse((fvar(10)*125/8) < 7, 7, (fvar(10)*125/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,12
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-70)
hitsound = S0,-1 | (var(28) := 5)
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
persistent = 0
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY	;
;飛び道具を跳ね返し行動設定			   ;
;by Vans								;
;GUIDE: 								;
;FOR PROJECTILE / 飛び道具で 		   ;
;sysvar(0) = 131072 					;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE	;
;=======================================;
affectTeam = F
ID = sysvar(0)
;=======================================;

[State 1100, ParentVarSet]
type = ParentVarSet
trigger1 = MoveContact = 1
fvar(18) = 256*(NumTarget>0)

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded = 1
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
postype = P2
facing = -1
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 1200, DestroySelf]
type = DestroySelf
trigger1 = Anim = 1206 && AnimTime = 0
trigger2 = BackEdgeBodyDist <= -40
trigger3 = FrontEdgeBodyDist <= -40
;trigger1 = root, Anim = 1200
;trigger1 = root, AnimElemTime(6) = 0
;trigger2 = root, Anim = 1210 || root, Anim = 1220
;trigger2 = root, AnimElemTime(9) >= 0

;----------------------------------------------------------------------------------
; ES Sand (hit 1)
[Statedef 2105]
type = S
movetype = A
physics = N
ctrl = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 2109, Anim]
type = ChangeAnim
trigger1 = !Time && Anim != 1130
value = 1130

[State 1105, HitOverride]
type = HitOverride
trigger1 = 1
attr= SCA,AA,AP,AT
time = -1
stateno = stateNo
ignorehitpause = 1
[State 1105, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[State 1105, Explod]
type = Explod
trigger1 = Time = 0
anim = 1105
ID = 600
pos = Ceil(Const(size.xscale)*32),0
postype = p1
removetime = -2;ifElse(!Var(22),12,18)
bindtime = 1
vel = 0,0
accel = 0,0
scale = Const(Size.XScale),Const(Size.Yscale)
ownpal = 1
sprpriority = 5
persistent = 0
ignorehitpause = 0
[State 1105, Explod]
type = Explod
trigger1 = Time = 1
anim = 1105
ID = 601
pos = Ceil(Const(size.xscale)*64),Ceil(Const(size.Yscale)*-12)
postype = p1
removetime = -2
bindtime = 1
vel = 0,0
accel = 0,0
scale = Const(Size.XScale),Const(Size.Yscale)
ownpal = 1
sprpriority = 4
persistent = 0
ignorehitpause = 0
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = root, StateNo != 1100 && root, StateNo != 2100
ID = 600
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = root, StateNo != 1100 && root, StateNo != 2100
ID = 601

[State 1105, Projectile]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 1
attr = , SA ; IT WORKS! I AM ONE CAN SHORT OF A SIX PACK!
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,4
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2.96875,-7.53125
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
ID = 2105

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 2105, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = stateNo+1

;----------------
; ES Sand (hit 2)
[Statedef 2106]
type = S
movetype = A
physics = N
ctrl = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 2109, Anim]
type = ChangeAnim
trigger1 = !Time && Anim != 1136
value = 1133

[State 1105, VarSet]
type = VarSet
trigger1 = MoveContact
var(0) = 1

[State 1105, HitBy]
type = HitBy
trigger1 = !Var(0)
value = SCA,NP,SP,HP
time = -1
[State 1105, HitOverride]
type = HitOverride
trigger1 = 1
attr= SCA,AA,AP,AT
time = -1
stateno = stateNo
ignorehitpause = 1
[State 1105, HitBy]
type = NotHitBy
trigger1 = Var(0)
value = SCA
time = -1

[State 1105, Explod]
type = Explod
trigger1 = Time = 1
anim = 1105
ID = 602
pos = Ceil(Const(size.xscale)*104),Ceil(Const(size.Yscale)*-24)
postype = p1
removetime = -2
bindtime = 1
vel = 0,0
accel = 0,0
scale = Const(Size.XScale),Const(Size.Yscale)
ownpal = 1
sprpriority = 3
persistent = 0
ignorehitpause = 0
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = root, StateNo != 1100 && root, StateNo != 2100
ID = 600
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = root, StateNo != 1100 && root, StateNo != 2100
ID = 601
[State 1105, RemoveExplod]
type = RemoveExplod
trigger1 = root, StateNo != 1100 && root, StateNo != 2100
ID = 602

[State 1105, Projectile]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 1
attr = , SA ; IT WORKS! I AM ONE CAN SHORT OF A SIX PACK!
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,4
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2.96875,-7.53125
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
ID = 2106

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 2105, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = stateNo+1

;----------------
; ES Sand (hit 3)
[Statedef 2107]
type = S
movetype = A
physics = N
ctrl = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 2109, Anim]
type = ChangeAnim
trigger1 = !Time && Anim != 1137
value = 1134

[State 1105, VarSet]
type = VarSet
trigger1 = MoveContact
var(0) = 1

[State 1105, HitBy]
type = HitBy
trigger1 = !Var(0)
value = SCA,NP,SP,HP
time = -1
[State 1105, HitOverride]
type = HitOverride
trigger1 = 1
attr= SCA,AA,AP,AT
time = -1
stateno = stateNo
ignorehitpause = 1
[State 1105, HitBy]
type = NotHitBy
trigger1 = Var(0)
value = SCA
time = -1

[State 1105, Projectile]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 1
attr = , SA ; IT WORKS! I AM ONE CAN SHORT OF A SIX PACK!
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,4
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2.96875,-7.53125
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
ID = 2107

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 2105, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = stateNo+1

;----------------
; ES Sand (hit 4)
[Statedef 2108]
type = S
movetype = A
physics = N
ctrl = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 2109, Anim]
type = ChangeAnim
trigger1 = !Time && Anim != 1138
value = 1135

[State 1105, VarSet]
type = VarSet
trigger1 = MoveContact
var(0) = 1

[State 1105, HitBy]
type = HitBy
trigger1 = !Var(0)
value = SCA,NP,SP,HP
time = -1
[State 1105, HitOverride]
type = HitOverride
trigger1 = 1
attr= SCA,AA,AP,AT
time = -1
stateno = stateNo
ignorehitpause = 1
[State 1105, HitBy]
type = NotHitBy
trigger1 = Var(0)
value = SCA
time = -1

[State 1105, Projectile]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
triggerall = !MoveContact
trigger1 = AnimElem = 1
attr = , SA ; IT WORKS! I AM ONE CAN SHORT OF A SIX PACK!
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,4
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2.96875,-7.53125
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
ID = 2108

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 2105, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = stateNo+1

;----------------
; ES Sand (hit 5)
[Statedef 2109]
type = S
movetype = A
physics = N
ctrl = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 2109, Anim]
type = ChangeAnim
trigger1 = !Time && Anim != 1141
value = 1141

[State 1105, VarSet]
type = VarSet
trigger1 = MoveContact
var(0) = 1

[State 1105, HitBy]
type = HitBy
trigger1 = !Var(0)
value = SCA,NP,SP,HP
time = -1
[State 1105, HitOverride]
type = HitOverride
trigger1 = 1
attr= SCA,AA,AP,AT
time = -1
stateno = stateNo
ignorehitpause = 1
[State 1105, HitBy]
type = NotHitBy
trigger1 = Var(0)
value = SCA
time = -1

[State 1105, Projectile]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = AnimElem = 1
attr = , SA ; IT WORKS! I AM ONE CAN SHORT OF A SIX PACK!
damage = ceil(ifElse(fvar(10)*35 < 7, 7, fvar(10)*35)),ceil(ifElse((fvar(10)*35/8) < 7, 7, (fvar(10)*35/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,4
sparkno = -1 | (var(7) := 8013)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-49)
hitsound = S0,-1 | (var(28) := 5)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 16
ground.hittime	= 16
ground.velocity = -12.52
guard.velocity = -12.52
guard.ctrltime = 16
air.type = Low
air.velocity = -2.96875,-7.53125
airguard.velocity = -2.96875,-7.53125
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
ID = 2109

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = ifelse(((facing*((Target, Pos X)-Pos X))<0),ceil((facing*((Target, Pos X)-Pos X))+4),ceil((facing*((Target, Pos X)-Pos X))-12)),-21
postype = P1
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

;-----------------
; Pico
[Statedef 3103]
type	= S
physics = N
movetype= A
anim = 3103
ctrl = 0

[State 220, VarSet]
type = Null
trigger1 = e||(fvar(10) := root,FVar(10))
trigger1 = e||(fvar(18) := root,FVar(18))
trigger1 = e||(fvar(19) := root,FVar(19))
trigger1 = e|| (var(21) := root,Var(21))
trigger1 = e|| (var(22) := root,Var(22))
trigger1 = e|| (var(30) := root,Var(30))
trigger1 = e|| (var(31) := root,Var(31))
trigger1 = e|| (var(51) := root,Var(51))
trigger1 = e|| (var(59) := root,Var(59))
ignorehitpause = 1

[State 3103, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 0

[State 3103, VarAdd]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = P2MoveType != H
trigger2 = MoveGuarded = 1
trigger2 = !NumTarget
trigger3 = Parent, MoveType = H
var(1) = 1

[State 3103, TargetDrop]
type = TargetDrop
triggerall = NumTarget(3100)
trigger1 = Var(1)

[State 3103, VarSet]
type = VarSet
trigger1 = !Time
var(6) = 2

[State 3103, NotHitBy]
type = NotHitBy
triggerall = Var(1)
trigger1 = 1
value = SCA

[State 3103, HitOverRide]
type = HitOverRide
trigger1 = 1
stateno = 3150
attr = SCA,NP,SP,HP,NA,SA,HA

[State 3103, HitBy]
type = HitBy
trigger1 = !Var(1)
value = SCA,NP,SP,HP,NA,SA,HA

[State 3103, VelSet]
type = VelSet
trigger1 = !Time
x = 7*Const(Size.XScale)*(5.0/4.0)

[State 3103, StateTypeSet]
type = StateTypeSet
trigger1 = Var(1)
movetype = I

[State 3103, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H || (FVar(13) && (root, PrevStateNo = [3000,3999])))
triggerall = !NumHelper(3120) && !NumHelper(3130) && !NumHelper(3106)
trigger1 = !Var(1)
attr = ,SA
attr = A, SA
damage = 7,7
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,8
sparkno = -1 | (var(7) := 8014)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-28)
hitsound = S0,-1 | (var(28) := 2)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 10
ground.hittime	= 10
ground.velocity = 0
guard.velocity = 0
guard.ctrltime = 10
air.type = Low
air.velocity = 0,0
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
ID = 3100

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
triggerall = !MoveReversed
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P2
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
postype = P2
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, ParentVarSet]
type = Null
trigger1 = e||cond(MoveContact = 1, root, cond(1, (var(50) := cond(MoveHit = 1, 3, 2)), 0), 0)
trigger1 = e||cond(MoveHit = 1, root, cond(1, (var(51) := (var(51)+1)), 0), 0)
trigger1 = e||cond(MoveContact = 1, root, cond(1, (fvar(18) := (256*(NumTarget>0))), 0), 0)

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = FrontEdgeBodyDist < -20
value = S10,0
persistent = 0
ignorehitpause = 1

[State 3103, TargetState]
type = TargetState
trigger1 = MoveHit && P2MoveType = H
value = 3160

[State 3103, ChangeState]
type = ChangeState
triggerall = !Var(1)
triggerall = NumTarget(3100)
trigger1 = MoveHit && P2MoveType = H
value = 3104

[State 3103, ChangeState]
type = ChangeState
trigger1 = MoveGuarded
trigger2 = Parent, MoveType = H
trigger3 = Var(1)
value = 3150
ignorehitpause = 1

[State -2, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact = 1
ignorehitpause = 1

[State 3103, DestroySelf]
type = DestroySelf
triggerall = Time > 10
trigger1 = FrontEdgeBodyDist < -112

;-------
[Statedef 3104]
type	= S
physics = S
movetype= I
anim = 3104
ctrl = 0
velset = 0,0

[State 3104, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
fvar(11) = 1

[State 3104, VarSet]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 3104, Helper]
type = Helper
trigger1 = Time = 1
name = "Grace"
ID = 3130
stateno = 3130
pos = -50,-25
postype = Back
facing = 1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3104, Helper]
type = Helper
trigger1 = Time = 1
name = "Lucy"
ID = 3120
stateno = 3120
pos = 42,0
postype = Front
facing = -1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3104, Helper]
type = Helper
trigger1 = Time = 1
name = "Nana,Mimi"
ID = 3106
stateno = 3108
pos = -14,ceil((enemy, Const(Size.Head.Pos.Y))-100)
postype = P2
facing = -1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3104, BindToTarget]
type = BindToTarget
trigger1 = !Time
pos = floor(Const(size.XScale)*44),0

[State 3104, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3104, ChangeState]
type = ChangeState
trigger1 = Var(0) = 3 ;&& numHelper(3131) && numHelper (3109)
value = 3105

;-------
[Statedef 3105]
type	= S
physics = S
movetype= A
anim = 3105
ctrl = 0
velset = 0,0

[State 3105, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
fvar(11) = 2

[State 3105, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 4
trigger2 = Time = 13
trigger3 = Time = 22
trigger4 = Time = 31
trigger5 = Time = 40
trigger6 = Time = 49
trigger7 = Time = 58
trigger8 = Time = 67
trigger9 = Time = 76
trigger10 = Time = 5
trigger11 = Time = 14
trigger12 = Time = 21
trigger13 = Time = 29
trigger14 = Time = 37
trigger15 = Time = 45
trigger16 = Time = 53
trigger17 = Time = 61
trigger18 = Time = 69
trigger19 = Time = 77
trigger20 = Time = 3
trigger21 = Time = 7
trigger22 = Time = 11
trigger23 = Time = 15
trigger24 = Time = 19
trigger25 = Time = 23
trigger26 = Time = 27
trigger27 = Time = 32
;trigger28 = Time = 35
;trigger29 = Time = 39
trigger28 = Time = 50
value = -14
kill = 0
persistent = 1

[State 3105, TargetLifeAdd3]
type = TargetLifeAdd
trigger1 = Time = 85
value = -35
kill = 1
persistent = 1

[State 3105, HitAdd]
type = HitAdd
triggerall = Anim != 3103
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 30
trigger9 = AnimElem = 34
trigger10 = AnimElem = 38
value = 1

[State 3105, Explod]
type = Explod
triggerall = Anim != 3103
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 30
trigger9 = AnimElem = 34
trigger10 = AnimElem = 38
anim = 8220
pos = 30,-28
postype = p1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1
bindtime = 1
removeongethit = 1
ontop = 1

[State 40, Helper]
type = Helper
triggerall = Anim != 3103
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(20) = 0
trigger3 = AnimElemTime(30) = 0
id = 4000
name = "EXPLOSION"
pos =0,0
postype = p2
stateno = 4000
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 40, Helper]
type = Helper
trigger1 = Anim = 3103
id = 4000
name = "EXPLOSION"
pos =0,0
postype = p2
stateno = 4000
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3105, PlaySnd]
type = PlaySnd
triggerall = Anim != 3103
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 30
trigger9 = AnimElem = 34
trigger10 = AnimElem = 38
value = S3,2
channel = 1

[State 3105, Turn]
type = Turn
trigger1 = AnimTime = 0
persistent = 0

[State 3105, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 3161
persistent = 0

[State 3105, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 3103
persistent = 0

[State 3105, VelSet]
type = VelSet
trigger1 = Anim = 3103
x = 7

[State 3105, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -112

;-------
[Statedef 3111]
type	= S
physics = S
movetype= A
anim = 3103
ctrl = 0

[State 3120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3103, VarSet]
type = VarSet
trigger1 = !Time
var(6) = 2

[State 3103, VelSet]
type = VelSet
trigger1 = 1
x = ParentDist X/16

[State 3120, ParentVarAdd]
type = ParentVarAdd
trigger1 = ParentDist X <= 55
var(0) = 1
persistent = 0

[State 3120, BindToTarget]
type = BindToParent
trigger1 = ParentDist X <= 55
pos = floor(Const(size.XScale)*-55),-(Parent, Pos Y)

[State 3104, ChangeState]
type = ChangeState
trigger1 = parent, Var(0) = 3
trigger1 = parent, numHelper(3103)
trigger1 = parent, numHelper(3120)
trigger1 = parent, numHelper(3130)	;&& numHelper(3131) && numHelper (3109)
value = 3112

;-------
[Statedef 3112]
type	= S
physics = S
movetype= A
anim = 3105
ctrl = 0
velset = 0,0

[State 3120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3120, BindToTarget]
type = BindToParent
trigger1 = !Time
pos = floor(Const(size.XScale)*-55),-(Parent, Pos Y)

[State 3105, HitAdd]
type = HitAdd
triggerall = Anim = 3105
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 30
trigger9 = AnimElem = 34
trigger10 = AnimElem = 38
value = 1

[State 3105, Explod]
type = Explod
triggerall = Anim = 3105
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 30
trigger9 = AnimElem = 34
trigger10 = AnimElem = 38
anim = 8220
pos = 30,-28
postype = p1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1
bindtime = 1
removeongethit = 1
ontop = 1

[State 40, Helper]
type = Helper
triggerall = Anim = 3105
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(20) = 0
trigger3 = AnimElemTime(30) = 0
id = 4000
name = "EXPLOSION"
pos =0,0
postype = p2
stateno = 4000
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 40, Helper]
type = Helper
trigger1 = Anim = 3103
id = 4000
name = "EXPLOSION"
pos =0,0
postype = p2
stateno = 4000
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3105, PlaySnd]
type = PlaySnd
triggerall = Anim != 3103
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 30
trigger9 = AnimElem = 34
trigger10 = AnimElem = 38
value = S3,2
channel = 1

[State 3105, Turn]
type = Turn
trigger1 = AnimTime = 0
persistent = 0

[State 3105, TargetState]
type = TargetState
triggerall = Anim = 3105
trigger1 = AnimTime = 0
value = 3161
persistent = 0

[State 3105, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 3103
persistent = 0

[State 3105, VelSet]
type = VelSet
trigger1 = Anim = 3103
x = 7

[State 3105, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -112

;-----------------
; Pico (hurt)
[Statedef 3150]
type	= U
physics = S
movetype= I
ctrl = 0
anim = 3106

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3150, VelSet]
type = VelSet
trigger1 = Time > 0
x = -7*Const(Size.XScale)*(4.0/3.0)

[State 3150, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S10,0

[State 3150, DestroySelf]
type = DestroySelf
triggerall = Time > 10
trigger1 = FrontEdgeBodyDist < -112
trigger2 = BackEdgeBodyDist < -112

;-----------------
; Nana, Mimi
[Statedef 3106]
type	= A
physics = N
movetype= A
anim = 3110
ctrl = 0

[State 3106, VarSet]
type = VarSet
trigger1 = !Time
var(22) = root,var(22)

[State 3103, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 0

[State 3103, VarAdd]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = P2MoveType != H
trigger2 = MoveContact
trigger2 = !NumTarget
trigger3 = Parent, MoveType = H
var(1) = 1

[State 3103, TargetDrop]
type = targetdrop
triggerall = NumTarget(3100)
trigger1 = Var(1)

[State 3103, VarSet]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 3103, StateTypeSet]
type = StateTypeSet
trigger1 = Var(1)
movetype = I

[State 3103, VarSet]
type = VarSet
trigger1 = !Time
var(6) = 1

[State 3103, NotHitBy]
type = NotHitBy
triggerall = Var(1)
trigger1 = 1
value = SCA

[State 3103, HitOverRide]
type = HitOverRide
trigger1 = 1
stateno = 3151
attr = SAC,NP,SP,HP,NA,SA,HA

[State 3103, HitBy]
type = HitBy
trigger1 = !Var(1)
value = SAC,NP,SP,HP,NA,SA,HA

[State 3106, VelSet]
type = VelSet
trigger1 = !Time
x = 7*Const(Size.XScale)*(5.0/4.0)
y = ifElse(Var(22)=2,-5.28125,.5)*Const(Size.YScale)*(5.0/4.0)

[State 3106, Gravity]
type = VelAdd
trigger1 = Time
y = ifElse(Var(22)=2,0.21875,.25)*Const(Size.YScale)*(25.0/16.0)

[State 3103, VarSet]
type = VarSet
trigger1 = 1
fvar(18) = root, fvar(19)
ignorehitpause = 1
[State 3103, VarSet]
type = VarSet
trigger1 = 1
fvar(19) = root, fvar(19)
ignorehitpause = 1

[State 3106, HitDef]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H || (FVar(13) && (root, PrevStateNo = [3000,3999])))
triggerall = !NumHelper(3120) && !NumHelper(3130) && !NumHelper(3103)
trigger1 = !Var(1)
attr = ,SA
attr = A, SA
damage = 7,7
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,8
sparkno = -1 | (var(7) := 8014)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-28)
hitsound = S0,-1 | (var(28) := 2)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 10
ground.hittime	= 10
ground.velocity = 0
guard.velocity = 0
guard.ctrltime = 10
air.type = Low
air.velocity = 0,0
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
ID = 3100

[State 1100, ParentVarSet]
type = ParentVarSet
trigger1 = MoveContact = 1
fvar(18) = 256*(NumTarget>0)

[State -2, Hit Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
triggerall = !MoveReversed
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P2
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
postype = P2
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State 3106, TargetState]
type = TargetState
trigger1 = MoveHit = 1 && P2MoveType = H;&& NumTarget(3100)
value = 3160

[State 3106, ChangeState]
type = ChangeState
triggerall = !Var(1)
triggerall = NumTarget(3100)
trigger1 = MoveHit = 1 && P2MoveType = H
value = 3107

[State 3103, ChangeState]
type = ChangeState
trigger1 = Var(1)
trigger2 = MoveGuarded
value = 3151
ignorehitpause = 1

[State 3106, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = 3114

;-------
[Statedef 3107]
type	= A
physics = N
movetype= I
anim = 3112
ctrl = 0
velset = 0,0

[State 3104, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
fvar(11) = 1

[State 3107, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 3107, BindToTarget]
type = BindToTarget
trigger1 = Time = 1
pos = -14,0,Head

[State 3107, Helper]
type = Helper
trigger1 = Time = 1
name = "Pico"
ID = 3103
stateno = 3111
pos = -50,0
postype = Back
facing = 1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3107, Helper]
type = Helper
trigger1 = Time = 1
name = "Grace"
ID = 3130
stateno = 3130
pos = -50,-25
postype = Back
facing = 1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3104, Helper]
type = Helper
trigger1 = Time = 1
name = "Lucy"
ID = 3120
stateno = 3120
pos = 42,0
postype = Front
facing = -1
keyctrl = 0
ownpal = 1
size.XScale = Const(size.XScale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3107, ChangeState]
type = ChangeState
trigger1 = Var(0) = 3 && numHelper(3103) && numHelper(3120) && numHelper(3130)
value = 3113

;-------
[Statedef 3108]
type	= A
physics = N
movetype= I
anim = 3114
ctrl = 0
sprpriority = 0

[State 3106, VarSet]
type = VarSet
trigger1 = !Time
var(7) = (enemy, Const(Size.Head.Pos.Y))

[State 3110, VelSet]
type = VelSet
trigger1 = !Time
y = (abs(Pos Y)-abs(Var(7)))/6

[State 3108, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y >= Var(7)
value = 3112
persistent = 0

[State 3108, ParentVarAdd]
type = ParentVarAdd
trigger1 = Anim = 3112;Pos Y = -60
var(0) = 1
persistent = 0

[State 3108, VelSet]
type = VelSet
trigger1 = Pos Y >= Var(7)
y = 0

[State 3108, PosSet]
type = PosSet
trigger1 = Pos Y >= Var(7)
y = Var(7)

[State 3108, ChangeState]
type = ChangeState
trigger1 = parent,Var(0) = 3 ;&& numHelper(3131) && numHelper (3109)
value = 3109

;-------
[Statedef 3109]
type	= A
physics = N
movetype= A
anim = 3113
ctrl = 0
sprpriority = 0
velset = 0,0

[State 3109, PosSet]
type = PosSet
trigger1 = !Time
y = Var(7)

[State -2, Hit Sound]
type = PlaySnd
triggerall = Anim = 3113
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(14) = 0
trigger3 = AnimElemTime(21) = 0
trigger4 = AnimElemTime(28) = 0
value = S3,2
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = Anim = 3113
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(14) = 0
trigger3 = AnimElemTime(21) = 0
trigger4 = AnimElemTime(28) = 0
stateno = 8013
ID = 8000
name = "Spark"
postype = P1
pos = 7,-4
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3109, HitAdd]
type = HitAdd
triggerall = Anim = 3113
trigger1 = AnimElem = 7
trigger2 = AnimElem = 14
trigger3 = AnimElem = 21
trigger4 = AnimElem = 28
value = 1

[State 3109, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 3110
persistent = 0

[State 3106, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3109, VelSet2]
type = VelSet
trigger1 = Anim = 3110
x = 3
y = -2.5
persistent = 0

[State 3109, Gravity]
type = Gravity
trigger1 = Anim = 3110

[State 3109, PosSet2]
type = PosSet
trigger1 = Vel Y + Pos Y >= 0
y = 0

[State 3109, WTF]
type = VelSet
trigger1 =Vel Y + Pos Y >= 0
y = 0

[State 3109, Turn]
type = Turn
trigger1 = Vel Y + Pos Y >= 0
persistent = 0

[State 3109, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y + Pos Y >= 0
value = 3115
persistent = 0

[State 3109, VelSet4]
type = VelSet
trigger1 = Anim = 3115
x = 4

[State 3109, DestroySelf]
type = DestroySelf
triggerall = Anim = 3115
trigger1 = FrontEdgeBodyDist < -112

;TERMINATE= TIME = 52

;-------
[Statedef 3113]
type	= A
physics = N
movetype= A
anim = 3113
ctrl = 0
sprpriority = 0
velset = 0,0

[State 3109, PosSet]
type = PosSet
trigger1 = !Time
y = Pos Y;-90

[State 3105, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
fvar(11) = 2

[State 3105, VarSet]
type = VarSet
trigger1 = 1
var(0) = 3

[State 3105, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 4
trigger2 = Time = 13
trigger3 = Time = 22
trigger4 = Time = 31
trigger5 = Time = 40
trigger6 = Time = 49
trigger7 = Time = 58
trigger8 = Time = 67
trigger9 = Time = 76
trigger10 = Time = 5
trigger11 = Time = 14
trigger12 = Time = 21
trigger13 = Time = 29
trigger14 = Time = 37
trigger15 = Time = 45
trigger16 = Time = 53
trigger17 = Time = 61
trigger18 = Time = 69
trigger19 = Time = 77
trigger20 = Time = 3
trigger21 = Time = 7
trigger22 = Time = 11
trigger23 = Time = 15
trigger24 = Time = 19
trigger25 = Time = 23
trigger26 = Time = 27
trigger27 = Time = 32
trigger28 = Time = 50
value = -14
kill = 0
persistent = 1

[State 3105, TargetLifeAdd3]
type = TargetLifeAdd
trigger1 = Time = 85
value = -35
kill = 1
persistent = 1

[State -2, Hit Sound]
type = PlaySnd
triggerall = Anim = 3113
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(14) = 0
trigger3 = AnimElemTime(21) = 0
trigger4 = AnimElemTime(28) = 0
value = S3,5
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = Anim = 3113
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(14) = 0
trigger3 = AnimElemTime(21) = 0
trigger4 = AnimElemTime(28) = 0
stateno = 8013
ID = 8000
name = "Spark"
postype = P1
pos = 7,-4
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3109, HitAdd]
type = HitAdd
triggerall = Anim = 3113
trigger1 = AnimElem = 7
trigger2 = AnimElem = 14
trigger3 = AnimElem = 21
trigger4 = AnimElem = 28
value = 1

[State 3105, TargetState]
type = TargetState
triggerall = Anim != 3110
trigger1 = AnimTime = 0
value = 3161
persistent = 0

[State 3109, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 3110
persistent = 0

[State 3106, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3109, VelSet2]
type = VelSet
trigger1 = Anim = 3110
x = 3
y = -2.5
persistent = 0

[State 3109, Gravity]
type = Gravity
trigger1 = Anim = 3110

[State 3109, PosSet2]
type = PosSet
trigger1 = Vel Y + Pos Y >= 0
y = 0

[State 3109, WTF]
type = VelSet
trigger1 = Vel Y + Pos Y >= 0
y = 0

[State 3109, Turn]
type = Turn
trigger1 = Vel Y + Pos Y >= 0
persistent = 0

[State 3109, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y + Pos Y >= 0
value = 3115
persistent = 0

[State 3109, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 3115
movetype = I

[State 3109, VelSet4]
type = VelSet
trigger1 = Anim = 3115
x = 4

[State 3109, DestroySelf]
type = DestroySelf
triggerall = Anim = 3115
trigger1 = FrontEdgeBodyDist < -112

;-------
[Statedef 3114]
type	= S
physics = N
movetype= I
ctrl = 0
sprpriority = 0
anim = 3117
velset = 0,0

[State 3114, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3114, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3117 && AnimTime = 0
value = 3115

[State 3109, Turn]
type = Turn
trigger1 = Anim = 3115
persistent = 0

[State 3109, VelSet4]
type = VelSet
trigger1 = Anim = 3115
x = 4

[State 3109, DestroySelf]
type = DestroySelf
triggerall = Anim = 3115
trigger1 = FrontEdgeBodyDist < -112

;-----------------
; Nana, Mimi (hurt)
[Statedef 3151]
type	= U;S
physics = N;S
movetype= I;H
anim = 3116
velset = 0,0
ctrl = 0

[State 3151, PosFreeze]
type = ChangeAnim
trigger1 = Time = [0,10]
value = anim
[State 3151, PosFreeze]
type = PosFreeze
trigger1 = Time = [0,10]
value = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3150, VelSet]
type = VelSet
trigger1 = Time = 11
x = 3*Const(Size.XScale)*(5.0/4.0)
y = -4*Const(Size.YScale)*(5.0/4.0)

[State 3150, Gravity]
type = VelAdd
trigger1 = Time > 10
y = .25*Const(Size.YScale)*(25.0/16.0)

[State 3151, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3116 && AnimTime = 0
value = 3110

[State 3150, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S10,0

[State 3150, DestroySelf]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = 3114

;-----------------
; Nonno/Tama
[Statedef 3110]
type	= A
physics = N
movetype= I
anim = 1205
ctrl = 0

[State 0, Loop]
type = VarAdd
trigger1 = !Time
var(0) = 1

[State 3110, Gravity]
type = Gravity
trigger1 = Var(0) = 1

[State 3110, VelAdd]
type = VelAdd
trigger1 = Var(0) > 1
y = .5

[State 3110, VelSet]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 3115

[Statedef 3115]
type = S
physics = N
movetype = I
anim = 1207
ctrl = 0
velset = 0,0
[State 3110, PosSet]
type = PosSet
trigger1 = !Time
y = 0
[State 3111, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(Var(0)=4,3140,1207)

[State 3110, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S200,1

[State 3110, VelSet]
type = VelSet
trigger1 = Anim = 1207 && AnimElemTime(2) = 4
y = -9/Var(0)

[State 3110, ChangeAnim]
type = ChangeState
trigger1 = Anim = 1207 && AnimElemTime(2) = 4
value = 3110

[State 3110, DestroySelf]
type = DestroySelf
trigger1 = roundstate < 4

;-----------------
; Lucy
[Statedef 3120]
type	= S
physics = N
movetype= I
anim = 3120
ctrl = 0
sprpriority = 2

[State 3120, VelSet]
type = VelSet
trigger1 = 1
x = ParentDist X/16;7

[State 3120, VelSet]
type = VelSet
trigger1 = !Time
y = -1.5

[State 3120, Gravity]
type = Gravity
trigger1 = Time > 7

[State 3120, PosSet]
type = PosSet
triggerall = Time > 1
trigger1 = Pos Y >= 0
y = 0

[State 3120, VelSet]
type = VelSet
triggerall = Time > 1
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 3120, BindToTarget]
type = BindToParent
triggerall = Time > 1
trigger1 = Pos Y = 0
pos = (ifElse((Parent, Var(6) = 2),(floor(Const(size.XScale)*88)),(floor(Const(size.XScale)*42)))),(ifElse((Parent, Var(6) = 2),0,-(Parent, Pos Y)))

[State 3120, ChangeState]
type = ChangeState
triggerall = Time > 1
trigger1 = Pos Y = 0
value = 3121

;-------
[Statedef 3121]
type	= S
physics = N
movetype= I
anim = 3121
ctrl = 0
sprpriority = 2
velset = 0,0

[State 3121, BindToTarget]
type = BindToParent
trigger1 = !Time
pos = (ifElse((Parent, Var(6) = 2),(floor(Const(size.XScale)*88)),(floor(Const(size.XScale)*42)))),(ifElse((Parent, Var(6) = 2),0,-(Parent, Pos Y)))

[State 3121, ParentVarSet]
type = ParentVarAdd
trigger1 = !Time
var(0) = 1
persistent = 0

[State 3121, ChangeAnim]
type = ChangeAnim
trigger1 = Parent, Var(0) = 3
value = 3122
persistent = 0

[State 3121, HitAdd]
type = HitAdd
triggerall = Anim = 3122
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
trigger4 = AnimElem = 13
trigger5 = AnimElem = 17
trigger6 = AnimElem = 21
trigger7 = AnimElem = 25
trigger8 = AnimElem = 29
trigger9 = AnimElem = 33
trigger10 = AnimElem = 37
value = 1

[State -2, Hit Sound]
type = PlaySnd
triggerall = Anim = 3122
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(13) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(21) = 0
trigger7 = AnimElemTime(25) = 0
trigger8 = AnimElemTime(29) = 0
trigger9 = AnimElemTime(33) = 0
trigger10 = AnimElemTime(37) = 0
value = S3,2
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = Anim = 3122
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(13) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(21) = 0
trigger7 = AnimElemTime(25) = 0
trigger8 = AnimElemTime(29) = 0
trigger9 = AnimElemTime(33) = 0
trigger10 = AnimElemTime(37) = 0
stateno = 8013
ID = 8000
name = "Spark"
postype = P1
pos = 53,-41
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3121, Turn]
type = Turn
triggerall = Anim != 3121
trigger1 = AnimTime = 0
persistent = 0

[State 3105, TargetState]
type = TargetState
triggerall = Anim != 3121
trigger1 = AnimTime = 0
value = 3161
persistent = 0

[State 3121, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3121
trigger1 = AnimTime = 0
value = 3120
persistent = 0

[State 3121, VelSet]
type = VelSet
trigger1 = Anim = 3120
x = 7

[State 3121, DestroySelf]
type = DestroySelf
triggerall = Anim = 3120
trigger1 = FrontEdgeBodyDist < -112

;-----------------
; Grace
[Statedef 3130]
type	= S
physics = N
movetype= I
anim = 3130
ctrl = 0
sprpriority = 1

[State 3130, PosSet]
type = PosSet
trigger1 = Time <= 3
y = -25

[State 3130, VarSet]
type = VarSet
trigger1 = !Time
fvar(0) = abs(ParentDist X)

[State 3130, VarSet]
type = VarSet
trigger1 = 1
fvar(1) = abs(ParentDist X)

[State 3130, VelSet]
type = VelSet
trigger1 = 1
x = ParentDist X/16;7

[State 3130, VelSet]
type = VelSet
trigger1 = !Time
y = -1.5

[State 3130, Gravity]
type = Gravity
trigger1 = Time >= 8;Time > 10

[State 3130, PosSet]
type = PosSet
trigger1 = Pos Y + Vel Y >= 0
y = 0

[State 3130, VelSet]
type = VelSet
trigger1 = Pos Y + Vel Y >= 0
x = 0
y = 0

[State 3130, BindToTarget]
type = BindToParent
trigger1 = Pos Y = 0
pos = (ifElse((Parent, Var(6) = 2),(floor(Const(size.XScale)*-24)),(floor(Const(size.XScale)*-66)))),(ifElse((Parent, Var(6) = 2),0,-(Parent, Pos Y)))

[State 3130, ChangeState]
type = ChangeState
trigger1 = Pos Y = 0
value = 3131

;-------
[Statedef 3131]
type	= S
physics = N
movetype= I
anim = 3131
ctrl = 0

[State 3131, BindToTarget]
type = BindToParent;Target
trigger1 = !Time
pos = (ifElse((Parent, Var(6) = 2),(floor(Const(size.XScale)*-24)),(floor(Const(size.XScale)*-66)))),(ifElse((Parent, Var(6) = 2),0,-(Parent, Pos Y)))

[State 3131, ParentVarSet]
type = ParentVarAdd
trigger1 = !Time
var(0) = 1
persistent = 0

[State 3131, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 3131
trigger1 = Parent, Var(0) = 3;AnimTime = 0
value = 3132
;persistent = 0

[State -2, Hit Sound]
type = PlaySnd
triggerall = Anim = 3132
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(8) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(14) = 0
trigger6 = AnimElemTime(17) = 0
trigger7 = AnimElemTime(20) = 0
trigger8 = AnimElemTime(23) = 0
trigger9 = AnimElemTime(26) = 0
trigger10 = AnimElemTime(29) = 0
value = S3,2
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = Anim = 3132
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(8) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(14) = 0
trigger6 = AnimElemTime(17) = 0
trigger7 = AnimElemTime(20) = 0
trigger8 = AnimElemTime(23) = 0
trigger9 = AnimElemTime(26) = 0
trigger10 = AnimElemTime(29) = 0
stateno = 8013
ID = 8000
name = "Spark"
postype = P1
pos = 63,-40
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3131, HitAdd]
type = HitAdd
triggerall = Anim = 3132
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 14
trigger6 = AnimElem = 17
trigger7 = AnimElem = 20
trigger8 = AnimElem = 23
trigger9 = AnimElem = 26
trigger10 = AnimElem = 29
value = 1

[State 52, Explod]
type = Explod
triggerall = Anim = 3132
trigger1 = AnimElemTime(14) = 0
trigger2 = AnimElemTime(30) = 6
anim = 7020
pos = 36,-80
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)

[State 3131, Turn]
type = Turn
triggerall = Anim != 3131
trigger1 = AnimTime = 0
persistent = 0

[State 3105, TargetState]
type = TargetState
triggerall = Anim != 3131
trigger1 = AnimTime = 0
value = 3161
persistent = 0

[State 3131, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3131
trigger1 = AnimTime = 0
value = 3130
persistent = 0

[State 3131, VelSet]
type = VelSet
trigger1 = Anim = 3130
x = 7

[State 3131, DestroySelf]
type = DestroySelf
triggerall = Anim = 3130
trigger1 = FrontEdgeBodyDist < -112

;-----------------
; Alto
[Statedef 3600]
type	= S
physics = N
movetype= I
ctrl = 0
sprpriority = 3
velset = 0,0
anim = 3115

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3600, VarSet]
type = Null
trigger1 = e||(  var(3) := root, var(3))
trigger1 = e||(fvar(10) := root, fvar(10))
trigger1 = e||(fvar(18) := root, fvar(18))
trigger1 = e||(fvar(19) := root, fvar(19))

[State 3600, Attack]
type = ChangeState
triggerall = Var(3)
triggerall = root, StateNo != 3500
triggerall = numHelper(10372)
trigger1 = (helper(10372), var(0)&16383) > 0
trigger2 = root, StateNo = 3001
value = 3610

[State 3600, VelSet]
type = VelSet
trigger1 = 1
x = 3.5*Const(Size.XScale)*(5.0/4.0)

[State 3600, Turn]
type = ChangeState
triggerall = rootDist X < -64
trigger1 = var(3)
value = stateNo+1

[State 3600, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "rootDist X = %f"
params = rootDist X

[State 3109, DestroySelf]
type = DestroySelf
triggerall = FrontEdgeBodyDist < -40
trigger1 = !Var(3)

;-----------------
; TURN
[Statedef 3601]
type	= S
physics = N
movetype= I
ctrl = 0
sprpriority = 3

[State 3601, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3600, VarSet]
type = Null
trigger1 = e||(  var(3) := root, var(3))
trigger1 = e||(fvar(10) := root, fvar(10))
trigger1 = e||(fvar(18) := root, fvar(18))
trigger1 = e||(fvar(19) := root, fvar(18))

[State 3601, Attack]
type = ChangeState
triggerall = (root, Var(13) && root,Var(10)=2) || (root,Var(28) && root,Var(10)>2)
triggerall = root, StateNo != 3500
trigger1 = (helper(10372), var(0)&16383) > 0
trigger2 = root, StateNo = 3001
value = 3610

[State 3601, Turn]
type = Turn
trigger1 = !Time && prevStateNo = 3600

[State 3600, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "rootDist X = %f"
params = rootDist X

[State 3601, ChangeState]
type = ChangeState
triggerall = rootDist X > 64
trigger1 = Var(3)
value = stateNo-1

[State 3109, DestroySelf]
type = DestroySelf
triggerall = FrontEdgeBodyDist < -40
trigger1 = !Var(3)

;-----------------
; ATTACK
[Statedef 3610]
type	= S
physics = N
movetype= A
ctrl = 0
sprpriority = 3
facep2 = 1

[State 3600, VarSet]
type = Null
trigger1 = e||(  var(3) := root, var(3))
trigger1 = e||(fvar(10) := root, fvar(10))
trigger1 = e||(fvar(18) := root, fvar(18))
trigger1 = e||(fvar(19) := root, fvar(18))

[State 3610, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && prevStateNo != stateNo
value = 3118
[State 3610, VelSet]
type = VelSet
trigger1 = Time = 0 && prevStateNo != stateNo
x = 0
y = 0

[State 3610, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AP
[State 3610, HitOverride]
type = HitOverride
trigger1 = !Var(0)
attr = SCA,AA,AP,AT
slot = 0
stateno = stateNo
time = 1
ignorehitpause = 1

[State 3610, VarSet]
type = VarSet
trigger1 = prevStateNo = stateNo
var(0) = 1

[State 3610, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = (abs((root,Pos X+(64.0*root,Facing))-Pos X)/32.0)*Const(Size.XScale)*(5.0/4.0)
y = -11*Const(Size.YScale)*(5.0/4.0)
[State 3610, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.6875*(25.0/16.0)

[State 200, 1]
type = HitDef
triggerall = P2StateNo != 5040 && ((FVar(19) != 0 && FVar(19) != 256) || Var(30) || P2StateType != A || P2MoveType != H)
trigger1 = Vel Y >= 0
attr = ,SA
attr = A, SA
damage = ceil(ifElse(fvar(10)*49 < 7, 7, fvar(10)*49)),ceil(ifElse((fvar(10)*49/8) < 7, 7, (fvar(10)*49/8)))
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1 | (var(7) := 8014)
guard.sparkno = -1 | (var(8) := 8001)
sparkxy = (var(26):=-10),(var(27):=-42)
hitsound = S0,-1 | (var(28) := 2)
guardsound = S0,-1 | (var(29) := 0)
ground.type = Low
ground.slidetime = 10
ground.hittime	= 10
ground.velocity = -5.49
guard.velocity = -5.49
guard.ctrltime = 10
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

[State -2, Hit]
type = VarSet
triggerall = Var(6) < 0
trigger1 = MoveContact = 1
var(6) = HitPauseTime
ignorehitpause = 1

[State 1100, ParentVarSet]
type = ParentVarSet
trigger1 = MoveContact = 1
fvar(18) = 256*(NumTarget>0)

[State -2, Hit Sound]
type = PlaySnd
triggerall = var(6) = HitPauseTime
triggerall = MoveContact = 1
triggerall = var(28) > -1
trigger1 = MoveHit
value = S3,var(28)
channel = 2
ignorehitpause = 1
[State -2, Guard Sound]
type = PlaySnd
triggerall = var(6) = HitPauseTime
triggerall = MoveContact = 1
triggerall = var(29) > -1
trigger1 = MoveGuarded
value = S5,var(29)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = Helper
triggerall = var(26)>-9000 && var(27)>-9000
triggerall = var(6) = HitPauseTime
triggerall = !MoveReversed
trigger1 = moveHit = 1
trigger1 = var(7)=8010 || var(7)=8011 || var(7)=8012 || var(7)=8013 || var(7)=8014 || var(7) = 8015 || var(7) = 8016 || var(7) = 8017
trigger2 = moveGuarded
trigger2 = var(8)=8000 || var(8)=8001
stateno = ifElse(moveGuarded, var(8), var(7))
ID = 8000
name = "Spark"
postype = P2
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
triggerall = var(6) = HitPauseTime
trigger1 = movehit=1
trigger1 = numenemy && var(21)
trigger1 = !(hitdefattr=SCA,AT)
stateno = 8290
ID = 8290
name = "Counter FX"
pos = (facing*-EnemyNear(0),facing)*Ceil(enemy,Const(size.ground.front)+Var(26)),Ceil(Pos Y-enemy,Pos Y+Var(27))
postype = P2
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, Hit]
type = VarSet
trigger1 = 1
var(6) = -1

[State 3610, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 1
trigger1 = Vel Y + Pos Y >= 0
value = stateNo+5

;-----------------
; LAND
[Statedef 3615]
type	= S
physics = N
movetype= A
ctrl = 0
sprpriority = 3
anim = 3119
velset = 0,0

[State 3615, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0 

[State 3600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3600

;----------------------------------------------------------------------------------
; EXPLOSIONS
[Statedef 4000]
type	= A
movetype= I
physics = N
anim = 1

[State 4000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 52, Explod]
type = Explod
trigger1 = !Time
anim = 7020
pos = 16,-16
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 4
anim = 7020
pos = -16,-68
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 6
anim = 7020
pos = 20,-46
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 8
anim = 7020
pos = 0,-12
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 6
anim = 7020
pos = 20,-46
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 12
anim = 7020
pos = 16,-54
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 14
anim = 7020
pos = -30,-54
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)
[State 52, Explod]
type = Explod
trigger1 = Time = 16
anim = 7020
pos = 16,-98
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -2
supermove = 1
ignorehitpause = 1
sprpriority = 3
scale = 0.5*const(Size.XScale),0.5*const(Size.Yscale)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 17

;----------------------------------------------------------------------------------
; Guard normal
[Statedef 8000]
type=A
physics=N
movetype=I
anim=8000
velset=0,0
sprpriority=5

[State 8000, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8000, Scale]
type=angledraw
trigger1= 1
scale= .125+(.046875*time), .125+(.046875*time)
[State 8000, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256
[State 8000, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8000, End]
type=destroyself
trigger1= time>=8

;----------------------------------------------------------------------------------
; Guard special
[Statedef 8001]
type=A
physics=N
movetype=I
anim=8001
velset=0,0
sprpriority=5

[State 8001, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8001, Scale]
type=angledraw
trigger1= 1
scale= .25+(.03125*time), .25+(.03125*time)
[State 8001, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256
[State 8001, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8001, End]
type=destroyself
trigger1= time>=8


;----------------------------------------------------------------------------------
; Light
[Statedef 8010]
type=A
physics=N
movetype=I
anim=8010
velset=0,0
sprpriority=5

[State 8010, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8010, Angle]
type=angleset
trigger1= !time
value=30*(random%12)
[State 8010, Angle]
type=angleadd
trigger1= 1
value=30
[State 8010, Scale]
type=angledraw
trigger1= time<10
scale= .3-(time*.03), .3-(time*.03)
[State 8010, Scale]
type=angledraw
trigger1= time>=10
scale=0,0
[State 8010, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8010, Center]
type=explod
trigger1= !time
anim=8011
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8010, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.15+(.009375*time),.15+(.009375*time)
trans=addalpha
alpha=256-(16*time),256

[State 8010, Streaks]
type=explod
trigger1= !time
anim=8012
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8010, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.15+(.009375*time),.15+(.009375*time)
trans=addalpha
alpha=256-(16*time),256

[State 8010, Impact]
type=explod
trigger1= !time
anim=8014
ID=4
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8010, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale=.3-(.0375*time),.3-(.0375*time)
trans=addalpha
alpha=128-(16*time),256

[State 8010, End]
type=removeexplod
trigger1= time>=16
[State 8010, End]
type=destroyself
trigger1= time>=16


;----------------------------------------------------------------------------------
; Medium
[Statedef 8011]
type=A
physics=N
movetype=I
anim=8010
velset=0,0
sprpriority=5

[State 8011, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8011, Angle]
type=angleset
trigger1= !time
value=30*(random%12)
[State 8011, Angle]
type=angleadd
trigger1= 1
value=30
[State 8011, Scale]
type=angledraw
trigger1= time<10
scale= .35-(time*.035), .35-(time*.035)
[State 8011, Scale]
type=angledraw
trigger1= time>=10
scale=0,0
[State 8011, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8011, Center]
type=explod
trigger1= !time
anim=8011
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8011, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.175+(.0109375*time),.175+(.0109375*time)
trans=addalpha
alpha=256-(16*time),256

[State 8011, Streaks]
type=explod
trigger1= !time
anim=8012
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8011, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.175+(.0109375*time),.175+(.0109375*time)
trans=addalpha
alpha=256-(16*time),256

[State 8011, Impact]
type=explod
trigger1= !time
anim=8014
ID=4
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8011, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale=.35-(.04375*time),.35-(.04375*time)
trans=addalpha
alpha=128-(16*time),256

[State 8011, End]
type=removeexplod
trigger1= time>=16
[State 8011, End]
type=destroyself
trigger1= time>=16


;----------------------------------------------------------------------------------
; Heavy
[Statedef 8012]
type=A
physics=N
movetype=I
anim=8010
velset=0,0
sprpriority=5

[State 8012, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8012, Angle]
type=angleset
trigger1= !time
value=30*(random%12)
[State 8012, Angle]
type=angleadd
trigger1= 1
value=30
[State 8012, Scale]
type=angledraw
trigger1= time<10
scale= .4-(time*.04), .4-(time*.04)
[State 8012, Scale]
type=angledraw
trigger1= time>=10
scale=0,0
[State 8012, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8012, Center]
type=explod
trigger1= !time
anim=8011
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8012, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.2+(.0125*time),.2+(.0125*time)
trans=addalpha
alpha=256-(16*time),256

[State 8012, Streaks]
type=explod
trigger1= !time
anim=8012
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8012, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.2+(.0125*time),.2+(.0125*time)
trans=addalpha
alpha=256-(16*time),256

[State 8012, Impact]
type=explod
trigger1= !time
anim=8014
ID=4
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8012, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale=.4-(.05*time),.4-(.05*time)
trans=addalpha
alpha=128-(16*time),256

[State 8012, End]
type=removeexplod
trigger1= time>=16
[State 8012, End]
type=destroyself
trigger1= time>=16


;----------------------------------------------------------------------------------
; Special
[Statedef 8013]
type=A
physics=N
movetype=I
anim=8010
velset=0,0
sprpriority=5

[State 8013, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8013, Angle]
type=angleset
trigger1= !time
value=30*(random%12)
[State 8013, Angle]
type=angleadd
trigger1= 1
value=30
[State 8013, Scale]
type=angledraw
trigger1= time<10
scale= .45-(time*.045), .45-(time*.045)
[State 8012, Scale]
type=angledraw
trigger1= time>=10
scale=0,0
[State 8013, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8013, Center]
type=explod
trigger1= !time
anim=8011
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8013, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.225+(.0140625*time),.225+(.0140625*time)
trans=addalpha
alpha=256-(16*time),256

[State 8013, Streaks]
type=explod
trigger1= !time
anim=8012
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8013, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.225+(.0140625*time),.225+(.0140625*time)
trans=addalpha
alpha=256-(16*time),256

[State 8013, P2 Back]
type=explod
trigger1= !time
anim=8013
ID=3
postype=p1
vfacing=ifelse(random<500,-1,1)
sprpriority=-3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8013, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale=.4,.4
trans=addalpha
alpha=256-(32*time),256

[State 8013, Impact]
type=explod
trigger1= !time
anim=8014
ID=4
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8013, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale=.45-(.05625*time),.45-(.05625*time)
trans=addalpha
alpha=192-(24*time),256

[State 8013, End]
type=removeexplod
trigger1= time>=16
[State 8013, End]
type=destroyself
trigger1= time>=16


;----------------------------------------------------------------------------------
; Super
[Statedef 8014]
type=A
physics=N
movetype=I
anim=8010
velset=0,0
sprpriority=5

[State 8014, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8014, Angle]
type=angleset
trigger1= !time
value=30*(random%12)
[State 8014, Angle]
type=angleadd
trigger1= 1
value=30
[State 8014, Scale]
type=angledraw
trigger1= time<10
scale= .5-(time*.05), .5-(time*.05)
[State 8012, Scale]
type=angledraw
trigger1= time>=10
scale=0,0
[State 8014, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8014, Center]
type=explod
trigger1= !time
anim=8011
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8014, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.25+(.015625*time),.25+(.015625*time)
trans=addalpha
alpha=256-(16*time),256

[State 8014, Streaks]
type=explod
trigger1= !time
anim=8012
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1
[State 8014, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.25+(.015625*time),.25+(.015625*time)
trans=addalpha
alpha=256-(16*time),256

[State 8014, P2 Back]
type=explod
trigger1= !time
anim=8013
ID=3
postype=p1
vfacing=ifelse(random<500,-1,1)
sprpriority=-3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8014, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale=.5,.5
trans=addalpha
alpha=256-(32*time),256

[State 8014, Impact]
type=explod
trigger1= !time
anim=8014
ID=4
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=8
pausemovetime=-1
supermovetime=-1
[State 8014, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale=.5-(.0625*time),.5-(.0625*time)
trans=addalpha
alpha=256-(32*time),256

[State 8014, End]
type=removeexplod
trigger1= time>=16
[State 8014, End]
type=destroyself
trigger1= time>=16


;----------------------------------------------------------------------------------
;Normal Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16


;----------------------------------------------------------------------------------
;Special Move Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.25 + (0.025 * Time)) * 0.65, (0.25 + (0.025 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16


;----------------------------------------------------------------------------------
;Super Move Slash Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.3 + (0.03 * Time)) * 0.65, (0.3 + (0.03 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
type = DestroySelf
trigger1 = Time >= 16


;----------------------------------------------------------------------------------
; Reversal
[Statedef 8020]
type=A
physics=N
movetype=I
anim=8020
velset=0,0
sprpriority=5

[State 8020, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8020, Scale]
type=angledraw
trigger1= 1
scale= .25+(.09375*time), .25+(.09375*time)
[State 8020, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256
[State 8020, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8020, End]
type=destroyself
trigger1= time>=8


;----------------------------------------------------------------------------------
; Jump FX
[Statedef 8100]
type=S
anim=1
velset=0,0

[State 8100, Bind]
type=bindtoroot
trigger1= time

[State 8100, Dust]
type=explod
trigger1= !time
anim=8100
sprpriority=3
postype=p1
pos=0,ceil(pos y)
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 8100, Dust]
type=explod
trigger1= !time || time=2 || time=6
anim=8101
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8100, End]
type=destroyself
trigger1= time>=7


;----------------------------------------------------------------------------------
; Dash FX
[Statedef 8103]
type=A
anim=1
velset=0,0
sprpriority=5

[State 8103, Pos]
type=posset
trigger1= !time=0
y=0

[State 8103, Dust]
type=explod
trigger1= time=0 || time=3 || time=6
anim=8103
ID= ifelse((time=6), 3, ifelse((time=3), 2, 1))
postype=p1
pos=0,-4
random=8,8
vel= -3-(random/1000.0), -2-(random/2000.0)
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
sprpriority=3
pausemovetime=-1
supermovetime=-1

[State 8103, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= .1+(.025*time), .1+(.025*time)
trans=addalpha
alpha= 256-(16*time), 256
[State 8103, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= .1+(.025*(time-3)), .1+(.025*(time-3))
trans=addalpha
alpha= 256-(16*(time-3)), 256
[State 8103, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= .1+(.025*(time-6)), .1+(.025*(time-6))
trans=addalpha
alpha= 256-(16*(time-6)), 256

[State 8103, End]
type=removeexplod
trigger1= time>=22
[State 8103, End]
type=destroyself
trigger1= !numexplod

;----------------------------------------------------------------------------------
; Impact FX
[Statedef 8110]
type=A
anim=1
velset=0,0
sprpriority=5

[State 8110, FX]
type=explod
trigger1= !time
anim=8110
ID= ifelse(time=8, 3, ifelse(time=4, 2, 1))
postype=p1
removetime=8
sprpriority=-4
pausemovetime=-1
supermovetime=-1
[State 8110, FX]
type=explod
trigger1= !time
anim=8111
ID= 2
postype=p1
removetime=8
sprpriority=-4
pausemovetime=-1
supermovetime=-1

[State 8110, Scale]
type=modifyexplod
trigger1= 1
scale= .25+(.03125*time), .25+(.03125*time)
trans= addalpha
alpha= ifelse(time<4, 256, 256-(64*(time-4))), 256

[State 8110, End]
type=removeexplod
trigger1= time>=8
[State 8110, End]
type=destroyself
trigger1= !numexplod

;----------------------------------------------------------------------------------
; Recovery FX
[Statedef 8200]
type=A
velset=0,0
anim=8200
sprpriority=5
[State 8200, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8200, Scale]
type=angledraw
trigger1= 1
scale=.25+(.017*time),.25+(.017*time)
[State 8200, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=ceil(256-17.1*time),256

[State 8200, End]
type=destroyself
trigger1= time>=15

;----------------------------------------------------------------------------------
; Counter FX
[Statedef 8290]
type=A
physics=N
velset=0,0
anim=1

[State 8290, Circle]
type=explod
trigger1= !numexplod(8290)
anim=8290
ID=8290
sprpriority=64
postype=p1
facing=facing
removetime=32
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8290, Scale]
type=modifyexplod
trigger1= time<8
ID=8290
scale=.5,.5
trans=addalpha
alpha=256,0
[State 8290, Scale]
type=modifyexplod
trigger1= time>=8
ID= 8290
scale= .5+.0625*(time-8), .5+.0625*(time-8)
trans= addalpha
alpha= 256-32*(time-8), 32*(time-8)

[State 8290, Safety]
type=removeexplod
trigger1= time>=16
[State 8290, End]
type=destroyself
trigger1= time>=16

;----------------------------------------------------------------------------------
; POWER CHARGE (Main)
[Statedef 8330]
type=A
physics=N
movetype=I
anim=1
ctrl=0
velset=0,0

[State 8330, Bind]
type=bindtoroot
trigger1= (root,stateno=730)
pos=-7,0
[State 8330, Snd]
type=playsnd
trigger1= !time
value = S10000,0
channel=0

[State 8330, Aura]
type=explod
trigger1= !numexplod(8330)
ID=8330
anim=8330
sprpriority=3
postype=p1
bindtime=-1
removetime=-1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 8330, Dust]
type=explod
trigger1= !(time%6)
anim=8105
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8330, FX]
type=modifyexplod
trigger1= numexplod(8330) && root,power<root,PowerMax
ID=8330
scale= .5, .1 + .4*(root,power/3000.0)
[State 8330, FX]
type=modifyexplod
trigger1= numexplod(8330) && root,power>=root,PowerMax
ID=8330
scale= .5, .5

[State 8330, End]
type=stopsnd
trigger1= root,StateNo!=900 || root,Anim != 900
channel=0
[State 8330, End]
type=removeexplod
trigger1= root,StateNo!=900 || root,Anim != 900
[State 8330, End]
type=destroyself
trigger1= root,StateNo!=900 || root,Anim != 900


;---Particles---
[Statedef 8331]
type=A
physics=N
movetype=I
anim=1
ctrl=0
velset=0,0

[State 8331, Bind]
type=bindtoroot
trigger1= !(time%8)
pos=ceil(-151+(random/3.125)),ceil(98-(random/3.125))

[State 8331, Particle]
type=explod
trigger1= (time%8)=1
anim=8331
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel= ((rootdist x+9)/32.0), ((rootdist y-62)/32.0)
scale= ifelse(random<500,.5,-.5), ifelse(random<500,.5,-.5)
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8331, End]
type=removeexplod
trigger1= root,StateNo!=900 || root,Anim != 900
[State 8331, End]
type=destroyself
trigger1= root,StateNo!=900 || root,Anim != 900


;----------------------------------------------------------------------------------
; ZERO COUNTER PAUSE
[Statedef 8350]
type=A
physics=N
movetype=I
anim=1
ctrl=0
velset=0,0

[State 8350, BG PalFX]
type=bgpalfx
trigger1= 1
time=1
color= 16*time
mul= 16*time, 16*time, 16*time

[State 8350, Circle]
type=explod
trigger1= !time
anim=8350
ID=1
sprpriority=3
postype=p1
removetime=16
supermovetime=-1
ownpal=1

[State 8350, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= (.0625*time), (.0625*time)
trans= addalpha
alpha= 256-(16*time), 256

[State 8350, Lightning]
type=explod
trigger1= !time
anim=8351
ID=2
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
supermovetime=-1
ownpal=1

[State 8350, End]
type=destroyself
trigger1= time>=16


;----------------------------------------------------------------------------------
; CUSTOM COMBO
[Statedef 8400]
type=A
physics=N
movetype=I
anim=8400
ctrl=0
velset=0,0
sprpriority=5

[State 8400, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8400, BG PalFX]
type=bgpalfx
trigger1= time<25
time=1
mul=128,128,128

[State 8400, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8400, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8400, Scale]
type=angledraw
trigger1= time<8
scale= (.0625*time), (.0625*time)
[State 8400, Scale]
type=angledraw
trigger1= time>=8
scale= .5, .5
[State 8400, Trans]
type=trans
trigger1= time<16
trans= addalpha
alpha= 256, 256
[State 8400, Trans]
type=trans
trigger1= time>=16
trans= addalpha
alpha= ceil(256 - 25.6*(time-16)), 256

[State 8400, Lines]
type=explod
trigger1= !time
anim=8401
ID=1
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8400, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 2-(.125*time), 2-(.125*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256

[State 8400, Circle]
type=explod
trigger1= time=16
anim=8402
ID=2
sprpriority=5
postype=p1
removetime=32
supermovetime=-1

[State 8400, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= (.1*(time-16)), (.1*(time-16))
trans= addalpha
alpha= ceil(256 - 25.6*(time-16)), 256

[State 8400, Safety]
type=removeexplod
trigger1= time>=26
[State 8400, End]
type=destroyself
trigger1= time>=26


;----------------------------------------------------------------------------------
; SUPER PAUSE (Level 1)
[Statedef 8500]
type=A
velset=0,0
anim=8500
sprpriority=5

[State 8500, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8500, BG PalFX]
type=bgpalfx
trigger1= time<39
time=1
color=0
mul=0,0,256

[State 8500, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8500, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8500, Scale]
type=angledraw
trigger1= time<16
scale= (.03125*time), (.03125*time)
[State 8500, Scale]
type=angledraw
trigger1= time>=16
scale= .5, .5
[State 8500, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8500, Lines]
type=explod
trigger1= time=0 || time=8 || time=16 || time=24
anim=8501
ID=ifelse(time=24, 4, ifelse(time=16, 3, ifelse(time=8, 2, 1)))
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 1-(.0625*time), 1-(.0625*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256
[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= 1-(.0625*(time-8)), 1-(.0625*(time-8))
trans= addalpha
alpha= ifelse((time-8)<4, 64*(time-8), 256), 256
[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= 1-(.0625*(time-16)), 1-(.0625*(time-16))
trans= addalpha
alpha= ifelse((time-16)<4, 64*(time-16), 256), 256
[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale= 1-(.0625*(time-24)), 1-(.0625*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8500, Circle]
type=explod
trigger1= time=24
anim=8502
ID=10
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=32
supermovetime=-1

[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(10)
ID=10
scale= 2-(.125*(time-24)), 2-(.125*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8500, Safety]
type=removeexplod
trigger1= time>=40
[State 8500, End]
type=destroyself
trigger1= time>=40


;-----Level 2-----
[Statedef 8510]
type=A
velset=0,0
anim=8510
sprpriority=5

[State 8510, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8510, BG PalFX]
type=bgpalfx
trigger1= time<39
time=1
color=0
mul=192,0,256

[State 8510, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8510, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8510, Scale]
type=angledraw
trigger1= time<16
scale= (.03125*time), (.03125*time)
[State 8510, Scale]
type=angledraw
trigger1= time>=16
scale= .5, .5
[State 8510, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8510, Lines]
type=explod
trigger1= time=0 || time=8 || time=16 || time=24
anim=8511
ID=ifelse(time=24, 4, ifelse(time=16, 3, ifelse(time=8, 2, 1)))
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 1-(.0625*time), 1-(.0625*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256
[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= 1-(.0625*(time-8)), 1-(.0625*(time-8))
trans= addalpha
alpha= ifelse((time-8)<4, 64*(time-8), 256), 256
[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= 1-(.0625*(time-16)), 1-(.0625*(time-16))
trans= addalpha
alpha= ifelse((time-16)<4, 64*(time-16), 256), 256
[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale= 1-(.0625*(time-24)), 1-(.0625*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8510, Circle]
type=explod
trigger1= time=24
anim=8512
ID=10
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=32
supermovetime=-1

[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(10)
ID=10
scale= 2-(.125*(time-24)), 2-(.125*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8510, Safety]
type=removeexplod
trigger1= time>=40
[State 8510, End]
type=destroyself
trigger1= time>=40


;-----Level 3-----
[Statedef 8520]
type=A
velset=0,0
anim=8520
sprpriority=5

[State 8520, Assert]
type=assertspecial
trigger1= 1
flag=noshadow
[State 8520, Assert]
type=assertspecial
trigger1= time<40
flag=nobardisplay
flag2=noBG
flag3=noFG

[State 8520, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8520, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8520, Scale]
type=angledraw
trigger1= time<16
scale= (.03125*time), (.03125*time)
[State 8520, Scale]
type=angledraw
trigger1= time>=16
scale= .5, .5
[State 8520, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8520, Portrait]
type=explod
trigger1= !time
anim=8525
ID=20
under=1
postype=back
removetime=40
supermovetime=-1
[State 8520, Portrait]
type=explod
trigger1= !time
anim=8525
ID=21
under=1
postype=back
removetime=40
supermovetime=-1

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(20) && time<16
ID=20
postype=back
pos= 160, 120
scale= 1 - (.03125*time), 1 - (.03125*time)
trans= addalpha
alpha= (8*time), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(21) && time<16
ID=21
postype=back
pos= 160, 120
scale= 2 - (.09375*time), 2 - (.09375*time)
trans= addalpha
alpha= (8*time), 256

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(20) && (time=[16,32])
ID=20
postype=back
pos= 160, 120
scale= .5, .5
trans= addalpha
alpha= 256, 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(21) && (time=[16,32])
ID=21
scale= 0, 0

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(20) && time>=32
ID=20
postype=back
pos= 160 + (8*(time-32)), 120
scale= .5, .5
trans= addalpha
alpha= 128 - 16*(time-32), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(21) && time>=32
ID=21
postype=back
pos= 160 - (8*(time-32)), 120
scale= .5, .5
trans= addalpha
alpha= 128 - 16*(time-32), 256

[State 8520, Lines]
type=explod
trigger1= time=0 || time=8 || time=16 || time=24
anim=8521
ID=ifelse(time=24, 4, ifelse(time=16, 3, ifelse(time=8, 2, 1)))
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 1-(.0625*time), 1-(.0625*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= 1-(.0625*(time-8)), 1-(.0625*(time-8))
trans= addalpha
alpha= ifelse((time-8)<4, 64*(time-8), 256), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= 1-(.0625*(time-16)), 1-(.0625*(time-16))
trans= addalpha
alpha= ifelse((time-16)<4, 64*(time-16), 256), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale= 1-(.0625*(time-24)), 1-(.0625*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8520, Circle]
type=explod
trigger1= time=24
anim=8522
ID=10
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=32
supermovetime=-1

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(10)
ID=10
scale= 2-(.125*(time-24)), 2-(.125*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8520, Safety]
type=removeexplod
trigger1= time>=40
[State 8520, End]
type=destroyself
trigger1= time>=40


;----------------------------------------------------------------------------------
; SUPER FINISH
[Statedef 8600]
type=A
velset=0,0
anim=1

[State 8600, Sound]
type=playsnd
trigger1= !time
value=0,8600
channel=0

[State 8600, BG PalFX]
type=bgpalfx
trigger1= time<16
time=1
mul= 0, 0, 0
[State 8600, BG PalFX]
type=bgpalfx
trigger1= time=[16,24)
time=1
mul= 32*(time-16), 32*(time-16), 32*(time-16)

[State 8600, Move Name]
type = VarSet
trigger1 = Time = 0
var(0) = root, Var(16)

[State 8600, MvC]
type=explod
trigger1= !time
anim=8600
ID=8600
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=32
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8600)
ID=8600
trans= addalpha
alpha= ifelse(time<16, 256, 256-32*(time-16)), 256

[State 8600, Text]
type=explod
trigger1= !time && var(0)
anim=8610+var(0)
ID=10
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=32
pausemovetime=-1
supermovetime=-1
[State 8600, Text]
type=explod
trigger1= !time && var(0)
anim=8610+var(0)
ID=11
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=8
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(10)
ID=10
trans=addalpha
alpha= ifelse(time<16, 256, 256-32*(time-16)), ifelse(time<16, 0, 32*(time-16))
[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(11)
ID=11
scale= .5 + (.0625*time), .5 + (.0625*time)
trans=addalpha
alpha= 256 - (32*time), 32*time

[State 8600, Circle]
type=explod
trigger1= !time
anim=8601
ID=8601
under=1
postype=left
pos=160,120
bindtime=-1
removetime=16
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8601)
ID=8601
scale= (.25*time), (.25*time)
trans= addalpha
alpha= 256 - (16*time), 256

[State 8600, Assert]
type=assertspecial
trigger1= time<16
flag=noFG
[State 8600, Assert]
type=assertspecial
trigger1= time<24
flag=nobardisplay

[State 8600, End]
type=removeexplod
trigger1= time>=24
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate<3

;----------------------------------------------------------------------------------
; BLOOD SPARK 1 (light)
[Statedef 8700]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -2.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 1 (heavy)
[Statedef 8710]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -4
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 2 (light)
[Statedef 8720]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -4
y = -6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 2 (heavy)
[Statedef 8730]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 3 (light)
[Statedef 8740]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -6
y = 2.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= -30
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 3 (heavy)
[Statedef 8750]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = 4
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= -30
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 4 (light)
[Statedef 8760]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = 6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= -30
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 4 (heavy)
[Statedef 8770]
type	= A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = 6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
triggerall = Time
trigger1 = Vel Y >= 0 && Pos Y >= -50
value = 8790

;----------------------------------------------------------------------------------
; PUDDLE
[Statedef 8790]
type	= A
movetype= I
physics = N
anim = 8790
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8700
trigger2 = PrevStateNo=8740
x = -50
[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8750
x = -62
[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8710
x = -78
[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8720
trigger2 = PrevStateNo=8760
trigger3 = PrevStateNo=8770
x = -28
[State 0, PosSet]
type = PosAdd
trigger1 = !Time && PrevStateNo=8730
x = -42

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1150, ChangeState]
type = DestroySelf
trigger1 = !AnimTime