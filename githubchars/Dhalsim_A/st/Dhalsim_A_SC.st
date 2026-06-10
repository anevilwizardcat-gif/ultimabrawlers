;===========================================================================
; スーパーコンボ
;===========================================================================
;------------------------------------
;ヨガインフェルノ
[StateDef 1500]
Type = S
MoveType= A
Physics = N
Ctrl = 0
Anim = 1500
poweradd = -1000
velset = 0,0
SprPriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 4
value = s1501,1
channel = 0

[State 1213]
type = Posset
trigger1 = time = 0
y = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 49

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7015
ID = 7015
pos = 105, -50
postype = p1
scale = (2*const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
supermovetime = 9999
removetime = -1
sprpriority = 2

[State 1200]
type = RemoveExplod
trigger1 = animelem = 9
ID = 7015

[State 1200]
type = Explod
trigger1 = animelem = 9
anim = 7016
ID = 7016
pos = 105, -50
postype = p1
scale = (2*const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1100]
type = Explod
trigger1 = AnimElem = 4
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 5
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = diagup
air.animtype  = diagup
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1054

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 6
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 7
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = diagup
air.animtype  = diagup
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1054

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 8
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 358003,待機ステートへ]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------
;ヨガボルケイノ
[StateDef 1505]
Type = S
MoveType= A
Physics = N
Ctrl = 0
Anim = 1505
poweradd = -1000
velset = 0,0
SprPriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 4
value = s1501,1
channel = 0

[State 1213]
type = Posset
trigger1 = time = 0
y = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 49

[State 191]
type = Helper
trigger1 = AnimElem = 4
id = 7015
pos = 0,0
postype = P1
stateno = 7015
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1100]
type = Explod
trigger1 = AnimElem = 4
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 5
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = diagup
air.animtype  = diagup
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1054

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 6
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 7
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = diagup
air.animtype  = diagup
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1054

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 8
Attr = S, HP
HitFlag = MAF
GuardFlag = M
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 358003,待機ステートへ]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;立ち大エフェクト
[Statedef 7015]
type    = A
movetype = I
physics = N
sprpriority = 2
anim = 7015
velset = 0,0
ctrl = 0

[state 6853]
type = Trans
trigger1 = 1
trans = add

[state 7005]
type = Angledraw
trigger1 = 1
value = 45
scale = 2,1

[state 7005]
type = Bindtoroot
trigger1 = 1
pos  = ceil(70*root,const(size.xscale)), ceil(-125*root,const(size.yscale))

[State 7005]
type = Changestate
trigger1 = root,animelem = 9
value  = 7016

;---------------------------------------------------------------------------
;立ち大エフェクト
[Statedef 7016]
type    = A
movetype = I
physics = N
sprpriority = 2
anim = 7016
velset = 0,0
ctrl = 0

[state 6853]
type = Trans
trigger1 = 1
trans = add

[state 7005]
type = Angledraw
trigger1 = 1
value = 45
scale = 2,1

[state 7005]
type = Bindtoroot
trigger1 = 1
pos  = ceil(70*root,const(size.xscale)), ceil(-125*root,const(size.yscale))

[State 7005]
type = Destroyself
trigger1 = animtime = 0

;------------------------------------
;ヨガストリーム
[StateDef 1510]
Type = S
MoveType= A
Physics = S
Ctrl = 0
Anim = 1510
poweradd = -1000
velset = 0,0
SprPriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 4
value = s1501,1
channel = 0

[State 1213]
type = Posset
trigger1 = time = 0
y = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 49

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7020
ID = 7020
pos = -60, 0
postype = p1
scale = (2*const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
supermovetime = 9999
removetime = -1
sprpriority = 2

[State 1200]
type = RemoveExplod
trigger1 = animelem = 9
ID = 7020

[State 1200]
type = Explod
trigger1 = animelem = 9
anim = 7021
ID = 7021
pos = -60, 0
postype = p1
scale = (2*const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1100]
type = Explod
trigger1 = AnimElem = 4
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, HP
HitFlag = MAF
GuardFlag = L
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 5
Attr = S, HP
HitFlag = MAF
GuardFlag = L
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = diagup
air.animtype  = diagup
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1054

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 6
Attr = S, HP
HitFlag = MAF
GuardFlag = L
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 7
Attr = S, HP
HitFlag = MAF
GuardFlag = L
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = diagup
air.animtype  = diagup
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1054

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 8
Attr = S, HP
HitFlag = MAF
GuardFlag = L
Damage = 70, 2
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10,10
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-50*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -2*const(size.xscale),-2*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1053

[State 358003,待機ステートへ]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------
;ヨガストライク
[StateDef 1515]
Type = S
MoveType= A
Physics = S
Ctrl = 0
Anim = 1515
poweradd = -1000
velset = 0,0
SprPriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1213]
type = Posset
trigger1 = time = 0
y = 0

[State 1050, ヨガ～]
type = PlaySnd
trigger1 =  time = 0
value = s1501, 0
channel = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1100]
type = Explod
trigger1 = animelem = 3
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1050, レイド!]
type = PlaySnd
trigger1 =  animelem = 6
value = s1515, 0
channel = 0


[State 1050]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 18
value = s0, 0+random%4
channel = -1

[State 1200]
type = attackdist
trigger1 = 1
value = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 5
attr = A, HT
damage = 0,0
getpower = 0,0
givepower = 20,10
hitflag = AF
;guardflag = L
priority = 4
pausetime = 0,0
guard.pausetime = 10,15
sparkno = -1
guard.sparkno = s6005
sparkxy = -1
hitsound   = s800,0
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
guard.hittime = 17
guard.slidetime = 12
guard.ctrltime = 15
Ground.Velocity = ceil(-1*const(size.xscale)),0
Guard.Velocity = ceil(-5*const(size.xscale))
Air.Velocity = ceil(-2*const(size.xscale)),ceil(-4*const(size.yscale))
fall = 0
air.fall = 1
persistent = 0
fall.recover = 0
p1stateno = 1516
id = 1515

[State 1200]
Type = Statetypeset
Trigger1 = Animelemtime(3) >= 0
statetype = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 1
y = -6

[State 1200]
type = Gravity
trigger1 = Animelemtime(3) > 0

[State 1505]
type = changestate
trigger1 = Animelemtime(3) > 0
trigger1 = pos y > 0 && vel y > 0 
value = 52

;----------------------------------------------------------------------
[Statedef 1516]
type = A
movetype= A
physics = N
anim = 1516
poweradd = 0

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 1520

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 22, -90
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 19, -85
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 19, -79

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1517

;----------------------------------------------------------------------
[Statedef 1517]
type = A
movetype= A
physics = N
anim = 1517
poweradd = 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -70, 5
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 51, -57
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
pos = 12, -85

[State 1100, VelSet]
type = VelSet
trigger1 = time = 0
y = -1

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 1521

[State 1200]
type = veladd
trigger1 = time > 0
y = .5

[State 810, State End]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y >= 0 && vel y > 0
value = 1518
ctrl = 0

;----------------------------------------------------------------------
[Statedef 1518]
type = S
movetype= A
physics = S
anim = 1518
poweradd = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 5100, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 1522

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 21, -84
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 17, -86
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10, -84
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -4, -82
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = -35, -81
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -86, -22
[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -80, -12

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = ceil(-200*(const(data.attack)*0.01))

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 7
value = 1523

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 4
Value = S800,2
Channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 3
Value = S0,1
Channel = -1

[State -1]
Type     = EnvShake
trigger1 = AnimElem = 7
Time     = 10
Freq     = 120
Ampl     = 20

[State 1100]
type = Explod
trigger1 = AnimElem = 7
anim = 6001
scale = 1,1
postype = p2
pos = 0, 0
sprpriority = 2
OnTop = 0
ownpal = 1
ID = 6001
IgnoreHitPause = 0

[State -3]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 1200]
Type = Statetypeset
Trigger1 = Animelemtime(9) >= 0
physics = N
Statetype = A

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 2
y = -2

[State 1200]
type = Gravity
trigger1 = Animelemtime(9) > 0

[State 3000, ステート変更]
type = Changestate
Trigger1 = Animelemtime(9) > 0
trigger1 = pos y > 0 && vel y> 0
value = 52
ctrl = 0

;----------------------------------------------------------------------
[Statedef 1520]
type = A
movetype = H
physics = N
velset = 0,0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1520

;----------------------------------------------------------------------
[Statedef 1521]
type = A
movetype = H
physics = N
velset = 0,0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1521

;----------------------------------------------------------------------
[Statedef 1522]
type = S
movetype = H
physics = S
velset = 0,0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1522

;----------------------------------------------------------------------
[Statedef 1523]
type = A
movetype = H
physics = N
poweradd = 40
ctrl = 0
sprpriority = 2

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 1523

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 811, Velset]
type = Velset
trigger1 = BackEdgeBodyDist < 5
x = 0

[State 811, Velset]
type = Velset
trigger1 = time = 0
x = 3.0
y = 3.0

[State 1200]
type = Gravity
trigger1 = time > 0

[State 821, 相手ステートに戻す]
type = SelfState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
;ヨガドリルキック
[Statedef 1530]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= -1000
velset = 0,0
ctrl = 0
anim = 1530
sprpriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = null;PlaySnd
trigger1 = animelem = 4
value = s1501,1
channel = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 6*const(size.xscale)
y = 2


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(4) = 0
trigger3 = animelemtime(5) = 0
trigger4 = animelemtime(6) = 0
trigger5 = animelemtime(7) = 0
trigger6 = animelemtime(8) = 0
trigger7 = animelemtime(9) = 0
trigger8 = animelemtime(10) = 0
attr = A, HA
damage = 20,3
getpower = 0,0
givepower = 20,10
guardflag = H
priority = 4
pausetime = 5,7
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 1530

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 0 && vel y > 0
value = 616

;---------------------------------------------------------------------------
;ヨガドリルキック
[Statedef 1531]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= -1000
velset = 0,0
ctrl = 0
anim = 1531
sprpriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = null;PlaySnd
trigger1 = animelem = 4
value = s1501,1
channel = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 6*const(size.xscale)
y = 6


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(4) = 0
trigger3 = animelemtime(5) = 0
trigger4 = animelemtime(6) = 0
trigger5 = animelemtime(7) = 0
trigger6 = animelemtime(8) = 0
trigger7 = animelemtime(9) = 0
trigger8 = animelemtime(10) = 0
attr = A, HA
damage = 20,3
getpower = 0,0
givepower = 20,10
guardflag = H
priority = 4
pausetime = 5,7
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 1531

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 0 && vel y > 0
value = 616

;---------------------------------------------------------------------------
;ヨガドリルキック
[Statedef 1532]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= -1000
velset = 0,0
ctrl = 0
anim = 1532
sprpriority = 1

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = null;PlaySnd
trigger1 = animelem = 4
value = s1501,1
channel = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 2*const(size.xscale)
y = 6


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(4) = 0
trigger3 = animelemtime(5) = 0
trigger4 = animelemtime(6) = 0
trigger5 = animelemtime(7) = 0
trigger6 = animelemtime(8) = 0
trigger7 = animelemtime(9) = 0
trigger8 = animelemtime(10) = 0
attr = A, HA
damage = 20,3
getpower = 0,0
givepower = 20,10
guardflag = H
priority = 4
pausetime = 5,7
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 1532

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 0 && vel y > 0
value = 616

;---------------------------------------------------------------------------
;ヨガカタストロフィ
[Statedef 1540]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1540
ctrl = 0
sprpriority = 1
poweradd = -3000

[State 1000,***]
type = SuperPause
trigger1 = time = 0
time = 44
movetime = 44
anim = -1
p2defmul = 1.0  
unhittable = 1 

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s1500, 1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8005
id =8005
pos = 0,0
postype = Left
sprpriority = -1
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8006
id =8006
pos = 0,0
postype = Left
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
bindtime = -1

[State 600,***]
type = Explod
trigger1 = time = 0
anim = 8007
id =8007
pos = (Const(size.mid.pos.x)), (Const(size.mid.pos.y))
postype = p1
sprpriority = 5
supermove = 1
supermovetime = 44
pausemovetime = 44
ownpal = 1
removetime = 44
bindtime = -1

[State 5110, 7]
type = Envcolor
trigger1 = time = 0
value = 0,0,0
time = 44
under = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1501,0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 7
value = s1540,0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  animelem = 8
value = s1540,1
channel = -1

[State 1213]
type = Posset
trigger1 = time = 0
y = 0

[State -3]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1000, 1]
type = AfterImage
trigger1 = animelemtime(2) = 0
time = 999999999
trans = add
length   = 15
timegap  = 2
framegap = 2
PalBright = 0 , 0 , 0
PalContrast = 255 , 0 , 0
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , 0
IgnoreHitPause = 1
Persistent = 1

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7005

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 45

[State 1200]
type = Explod
trigger1 = animelem = 8
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1000, 飛び道具];HitDefに飛び道具専用のパラメータを加えたようなものが「Projectile」
type = Projectile
trigger1 = animelem = 8
attr = S, HP
damage = 60, 3
getpower  = 0,0
givepower = 20,10
animtype = hard
pausetime = 10,16
guard.pausetime = 10,12
;-----------------------------------Projectile専用のパラメータ
offset = 65,-50                ;飛び道具を発射する位置（Ｘ軸,Ｙ軸）
velocity = 0.5,0 ;飛び道具の移動速度（Ｘ軸,Ｙ軸）
accel = 0,0                  ;飛び道具の加速度(float)（Ｘ軸,Ｙ軸）
projID = 7025                 ;飛び道具のＩＤナンバー（NumProjIDなどで判断）
projanim = 7025                ;飛び道具のアニメ（アクションナンバー）
projhitanim = 7026            ;飛び道具がヒットした時のアニメ（アクションナンバー）
projremanim = 7026             ;飛び道具が消える時のアニメ（アクションナンバー）
projscale = 1,1                ;飛び道具の大きさ（Ｘ軸,Ｙ軸）※現在２倍
projshadow = 0,0,0             ;飛び道具の影の色合い（赤,緑,青）※現在影無し
projhits = 5                   ;飛び道具のヒット数（２以上なら多段ヒットになる）
projmisstime = 2               ;飛び道具の連続でヒットしない間隔　※projhitsが２以上の時のみ
projpriority = 5               ;飛び道具の攻撃優先度・相手のProjectileよりも高いと消しながら進む
projremovetime = 142           ;飛び道具の消えるまでの時間（フレーム）※-1なら当たるか画面外に出るまで消えない
;-----------------------------------これ以外にまだまだある。docsフォルダ参照。
guardflag = M
priority = 4
sparkno = s6002
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s6005
hitsound = s1,2
guardsound = s120,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-2
air.velocity = -2,-2
air.juggle = 4 ;Projectileの場合はここで設定しないとヒットした時ジャグルが消費しない
fall = 1
air.fall = 1
fall.recover = 0

[State -3]
type = AfterImage
trigger1 = animelem = 9
time = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1