
;--------------------------------------------------
[StateDef 0]
Type = S
Physics = S
SprPriority = 0

[State 0, ChangeAnim]
Type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
Value = 0


[State 0, VelSet]
Type = VelSet
Trigger1 = Time = 0
Y = 0

[State 0, VelSet]
Type = VelSet
Trigger1 = Abs(Vel X) < 2
Trigger2 = Time = 4
X = 0

[State 0, ChangeState]
Type = ChangeState
Trigger1 = !Alive
Value = 5050

;---------- 異常ヘルパー削除
[State 0, DestroySelf]
Type = DestroySelf
Trigger1 = IsHelper

;--------------------------------------------------
;しゃがむ
;--------------------------------------------------
[StateDef 10]
Type = C
Physics = C
Anim = 10

[State 10, VelSet]
Type = VelSet
Trigger1 = Time = 0
X = 0


[State 10, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11

;--------------------------------------------------
;しゃがみ
;--------------------------------------------------
[StateDef 11]
Type = C
Physics = C
Anim = 11
SprPriority = 0

[State 11]
Type = ChangeAnim
Trigger1 = Anim = 6 && AnimTime = 0
Value = 11

[State 250, 1]
type = ChangeAnim
trigger1 = time = 0
value = 11

[State 11, Null]
Type = Null
Trigger1 = 0


;--------------------------------------------------
;立つ
;--------------------------------------------------
[StateDef 12]
Type = S
Physics = S
Anim = 12


[State 12, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
ctrl = 1

;--------------------------------------------------
;しゃがみ
;--------------------------------------------------
; Stand to Crouch
[Statedef 13]
type    = C
physics = C
ctrl = 0
anim = 10

[State 20, 4]
type = Changestate
trigger1 = inguarddist
value = 120

[State 10, 1]
type = ctrlset
trigger1 = inguarddist
trigger2 = p2dist x < 0
value = 1

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 14
ctrl = 0

;------------------------------
; Crouching
[Statedef 14]
type    = C
physics = C
anim = 11
sprpriority = 0
ctrl = 0

[State 20, 4]
type = Changestate
trigger1 = inguarddist
value = 120

[State 1]
Type = ChangeAnim
Trigger1 = P2Dist X < 0 || (Anim=6&&AnimTime=0)
Value = 11

[State 1]
Type = Turn
Trigger1 = P2Dist X < 0

[State 250, 1]
type = ChangeAnim
trigger1 = time = 0
value = 11

[State 10, 2]
type = ChangeState
Trigger1 = RoundState > 2 || p2bodydist x < 10
value = 12
ctrl = 1

;---------------------------------------------------------------------------


;--------------------------------------------------
;歩く
;--------------------------------------------------
[StateDef 20]
Type = S
Physics = S
SprPriority = 0



[State 20, VelSet]
Type = VelSet
trigger1 = var(59) = 0
Trigger1 = Command = "holdfwd"
trigger2 = var(59) > 0
trigger2 = p2bodydist x > 0
X = Const(Velocity.Walk.Fwd.X)

[State 20, VelSet]
Type = VelSet
trigger1 = var(59) = 0
Trigger1 = Command = "holdback"
trigger2 = var(59) > 0
trigger2 = p2bodydist x <= 10
X = Const(Velocity.Walk.Back.X)

[State 20, ChangeAnim]
Type = ChangeAnim
Trigger1 = Vel X > 0
Trigger1 = Anim != 20
Value = 20

[State 20, ChangeAnim]
Type = ChangeAnim
Trigger1 = Vel X < 0
Trigger1 = Anim != 21
Value = 21

[State 20, ChangeAnim]
Type = ChangeAnim
Trigger1 = Vel X = 0
Trigger1 = Anim != 0
Value = 0

[State 20, 5]
type = changestate
triggerall = var(59) > 0 && Alive 
trigger1 = p2bodydist x = 5
trigger2 = p2dist x < 0
trigger3 = time > 0 && vel X > 0 && FrontEdgeBodyDist <= 10
trigger4 = time > 0 && vel X < 0 && BackEdgeBodyDist <= 10
trigger5 = enemy,numproj > 0
trigger6 = InGuardDist
trigger7 = roundstate != 2
value = 0
ctrl = 1

;--------------------------------------------------
;ジャンプ（準備）
;--------------------------------------------------
[StateDef 40]
Type = S
Physics = S
Anim = 40
Ctrl = 0
SprPriority = 1

[State -2,空中ガード不可]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoAirGuard

[State 20, ChangeAnim]
Type = ChangeAnim
Trigger1 = time = 0
Value = 40

[State 40, VarSet]
Type = VarSet
Triggerall = var(59) = 0
Trigger1 = Time = 0
sysvar(1) = 0

[State 40, VarSet]
Type = VarSet
Triggerall = var(59) > 0
Trigger1 = Time = 0
trigger1 = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
Trigger2 = EnemyNear(var(58)),StateType = A
Trigger2 = EnemyNear(var(58)),vel x > 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
Trigger1 = var(59) = 0
Trigger1 = command = "holdfwd"
Trigger2 = var(59) > 0
Trigger2 = EnemyNear(var(58)),StateType != L
trigger2 = P2BodyDist X >= ceil(50*const(size.xscale))
sysvar(1) = 1

[State 40, 3]
type = VarSet
Trigger1 = var(59) = 0
Trigger1 = command = "holdback"
Trigger2 = var(59) > 0
Trigger2 = EnemyNear(var(58)),StateType != L
Trigger2 = EnemyNear(var(58)),MoveType = A
trigger2 = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
trigger2 =  EnemyNear(var(58)),vel x > 0
sysvar(1) = -1

[State 40, VelSet]
Type = VelSet
Trigger1 = AnimTime = 0
X = IfElse(SysVar(1)=0, Const(Velocity.Jump.Neu.X), IfElse(SysVar(1)=1, Const(Velocity.Jump.Fwd.X), Const(Velocity.Jump.Back.X)))
Y = Const(Velocity.Jump.Y)

[State 40, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 50
Ctrl = 1

;--------------------------------------------------
;ダッシュジャンプ
;--------------------------------------------------
[StateDef 41]
Type = S
Physics = S
Anim = 40
Ctrl = 0
SprPriority = 1

[State -2,空中ガード不可]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoAirGuard

[State 210, Explod]
Type = Explod
trigger1 = animtime = 0
Anim = 6015
ID = 6015
Pos = 0, 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1

[State 40, 2]
type = VarSet
Trigger1 = Time = 0
sysvar(1) = 1


[State 40,VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0,0,ifelse(sysvar(1)=1,const(velocity.jump.fwd.x)*1.4,const(velocity.jump.back.x)*1.2))
y = ifelse(sysvar(1)=0,const(velocity.jump.y)*1.2,const(velocity.jump.y)*1.2)

[State 1200, VelSet]
type = Playsnd
trigger1 = time = 0
value = s40,2
;----------------------------------------------------

[State 40, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 50
Ctrl = 1

;--------------------------------------------------
;ジャンプ（上昇）
;--------------------------------------------------
[StateDef 50]
Type = A
Physics = A

[State -2,空中ガード不可]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoAirGuard

[State 50, VarSet]
Type = VarSet
Trigger1 = Time = 0
sysvar(1) = 0

[State 50, ChangeAnim]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IfElse((Vel X)=0, 41, IfElse((Vel X)>0, 42, 43))

[State 50, ChangeAnim]
Type = ChangeAnim
Trigger1 = Vel Y > -2
Trigger1 = SelfAnimExist(Anim + 3)
Persistent = 0
Value = Anim + 3

;--------------------------------------------------
;	[本体]ジャンプ（下降）
;--------------------------------------------------
[StateDef 51]
Type = A
Physics = A

[State -2,空中ガード不可]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = NoAirGuard

[State 51, Null]
Type = Null
Trigger1 = 1

;--------------------------------------------------
;着地
;--------------------------------------------------
[StateDef 52]
Type = S
Physics = S
Ctrl = 0
Anim = 47
VelSet = 0,0

[State 52, 1]
type = AssertSpecial
trigger1 = !ctrl
flag = NOstandguard

[State 52, PosSet]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 52, Turn]
Type = Turn
Trigger1 = Time = 1
Trigger1 = P2Dist X < -5

[State 52, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;--------------------------------------------------
;ダッシュ移動
;--------------------------------------------------
[StateDef 100]
Type = S
MoveType = I
Physics = N
Anim = 100
Ctrl = 0
VelSet = 0, 0
SprPriority = 1

[State 1100]
type = Explod
trigger1 = time = 0
anim = 6020
scale = (const(size.xscale)),(const(size.yscale))
postype = p1
pos = 0,0
sprpriority = 2
ownpal = 1
ID = 6020
IgnoreHitPause = 0
removeongethit = 1
persistent = 0

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = Time = 0
Value = S40, 1
Channel = -1

[State 100, posset]
type = posset
trigger1 = time = 0
y = 0

[State 100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.fwd.x)

[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk


[State 100, AfterImage]
Type = AfterImage
Trigger1 = Time = 0
Time = 40
Length = 10
PalBright = 0, 0, 0
PalContrast = 0, 0, 192
PalAdd = -60, -60, -60
PalMul = 1, 1, 1
Trans = Add
TimeGap = 1
FrameGap = 3

[State 100, ステート変更]
type =  null;ChangeState
triggerall = var(59) = 0 && Alive && roundstate = 2
trigger1 = time < 8
trigger1 = command != "holdfwd"
value = 110

[State 100, ステート変更]
type =  null;ChangeState
triggerall = var(59) > 0 && Alive && roundstate = 2
trigger1 = time < 8
trigger1 = p2bodydist x < 100
value = 110

[State 100,ダッシュジャンプ]
type = ChangeState
triggerall = var(59) = 0 && Alive && roundstate = 2
trigger1 = time >= 10
trigger1 = Command = "holdupfwd"
value = 41

[State 100,ダッシュジャンプ]
type = ChangeState
triggerall = var(59) > 0 && Alive && roundstate = 2
trigger1 = time >= 10
trigger1 = p2bodydist x > 120
trigger1 = random < 5
value = 41

[State 100, ステート変更]
type = ChangeState
triggerall = var(59) = 0 && Alive
triggerall = time >= 10
trigger1 = Command != "holdfwd"
trigger2 = roundstate != 2
value = 101

[State 100, ステート変更]
type = ChangeState
triggerall = var(59) > 0 && Alive
triggerall = time >= 10
trigger1 = p2bodydist x < 120
trigger2 = enemy,numproj > 0
trigger3 = InGuardDist
trigger4 = roundstate != 2
value = 101

;--------------------------------------------------
;ダッシュ停止
;--------------------------------------------------
[StateDef 101]
Type = S
MoveType = I
Physics = S
Anim = 101
Ctrl = 0
VelSet = 0, 0
SprPriority = 0

[State 100, AfterImage]
Type = AfterImagetime 
Trigger1 = Time = 0
Time = 0

[State 100, PlaySnd]
Type = null;PlaySnd
Trigger1 = time = 0
Value = S100, 1
Channel = -1

[State 101, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoWalk
Flag2 = NoAutoTurn

[State 100, posset]
type = posset
trigger1 = time = 0
y = 0

[State 100, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 101, ChangeState]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

;--------------------------------------------------
;バックステップ移動
;--------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 1200]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = Time = 0
Value = S40, 1
Channel = -1

[State 100, AfterImage]
Type = AfterImage
Trigger1 = Time = 0
Time = 40
Length = 10
PalBright = 0, 0, 0
PalContrast = 0, 0, 192
PalAdd = -60, -60, -60
PalMul = 1, 1, 1
Trans = Add
TimeGap = 1
FrameGap = 3

[State 105, 1]
type = VelSet
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 1]
type = Gravity
trigger1 = Animelemtime(2) > 0

[State 1200, StateTypeSet]
Type = StateTypeSet
Trigger1 = Animelemtime(2) >= 0
StateType = A

[State 1100]
type = Explod
trigger1 = time = 0
anim = 6020
scale = (const(size.xscale)),(const(size.yscale))
postype = p1
pos = 0,0
sprpriority = 2
ownpal = 1
ID = 6020
IgnoreHitPause = 0
removeongethit = 1
persistent = 0
facing = -1

[State 106, 4]
type = ChangeState
triggerall = Animelemtime(2) > 0
trigger1 = pos y > 0 && vel y > 0 
value = 106

;--------------------------------------------------
;バックステップ停止
;--------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106

[State 100, AfterImage]
Type = AfterImagetime 
Trigger1 = Time = 0
Time = 0

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S40, 0
Channel = -1

[State 106, 4]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;	[本体]ダッシュ(ステップ)移動
;--------------------------------------------------
[StateDef 110]
Type = S
MoveType = I
Physics = N
Anim = 110
Ctrl = 0
SprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = time = 0
x = 3


[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk


[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = Time = 0
Value = S100, 0
Channel = 1

[State 100, AfterImage]
Type = AfterImage
Trigger1 = Time = 0
Time = 40
Length = 10
PalBright = 0, 0, 0
PalContrast = 0, 0, 192
PalAdd = -60, -60, -60
PalMul = 1, 1, 1
Trans = Add
TimeGap = 1
FrameGap = 3

[State 100, ステート変更]
type = ChangeState
trigger1 = time >= 15
value = 101

;--------------------------------------------------
;ロープリング
;--------------------------------------------------
[Statedef 115]
type    = S
physics = S
ctrl = 0
anim = 115

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = Time = 0
Value = S115, 0
Channel = 1

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = animTime = 0
value = 116

;--------------------------------------------------
;ダッシュ
;--------------------------------------------------
[StateDef 116]
Type = S
MoveType = I
Physics = N
Anim = 100
Ctrl = 0
VelSet = 0, 0
SprPriority = 1

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = const(velocity.run.fwd.x)


[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S40, 1
Channel = -1

[State 100, AfterImage]
Type = AfterImage
Trigger1 = Time = 0
Time = 40
Length = 10
PalBright = 0, 0, 0
PalContrast = 0, 0, 192
PalAdd = -60, -60, -60
PalMul = 1, 1, 1
Trans = Add
TimeGap = 1
FrameGap = 3

[State 100,ダッシュジャンプ]
type = ChangeState
triggerall = var(59) = 0 && Alive && roundstate = 2
trigger1 = Animelemtime(3) > 0
trigger1 = Command = "holdupfwd"
value = 41

[State 100,ダッシュジャンプ]
type = ChangeState
triggerall = var(59) > 0 && Alive && roundstate = 2
trigger1 = Animelemtime(3) > 0
trigger1 = p2bodydist x > 100
value = 41

[State 100, ダッシュストップ]
type = ChangeState
triggerall = var(59) = 0 && Alive && roundstate = 2
trigger1 = time > 5
trigger1 = command != "holdfwd"
value = 101
ctrl = 0

[State 100, ダッシュストップ]
type = ChangeState
triggerall = var(59) > 0 && Alive && roundstate = 2
trigger1 = time > 5
trigger1 = p2bodydist x < 50
value = 101
ctrl = 0
;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
triggerAll=Statetype = S
trigger1 = var(59) = 0
trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType!=A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType=A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback"
trigger2 = !inguarddist
trigger3 = var(59) > 0
trigger3 = P2BodyDist X<0
trigger3 = Random <= (10-(var(59)))*40
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
triggerAll=Statetype = S
trigger1 = var(59) = 0
Trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType != A
trigger2 = Random <= var(59)*20||var(59)>9
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback"
trigger2 = !inguarddist
trigger3 = var(59) > 0
trigger3 = P2BodyDist X<0
trigger3 = Random <= (10-(var(59)))*40
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
Trigger2 = EnemyNear(var(58)),StateType=A
Trigger2 = Random <= var(59)*20||var(59)>9
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback"
trigger2 = !inguarddist
trigger3 = var(59) > 0
trigger3 = P2BodyDist X<0
trigger3 = Random <= (10-(var(59)))*40
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = command = "holdback"
trigger1 = var(59) = 0
trigger2 = var(59) > 0
trigger2 = P2BodyDist X<0
trigger2 = Random <= (10-(var(59)))*40
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback"
trigger2 = !inguarddist
trigger3 = var(59) > 0
trigger3 = P2BodyDist X<0
trigger3 = Random <= (10-(var(59)))*40
value = 140

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
triggerAll=Statetype = S
trigger1 = var(59) = 0
Trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType != A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
Trigger2 = EnemyNear(var(58)),StateType=A
Trigger2 = Random <= var(59)*20||var(59)>9
statetype = S
physics = S

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*ifelse(var(59)=0,(command = "holddown"),(fvar(37)=1))

[State 150, Hi to Lo]
type = StateTypeSet
triggerAll=Statetype = S
trigger1 = var(59) = 0
trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType != A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType=A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
triggerAll=Statetype = S
trigger1 = var(59) = 0
trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType != A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType=A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*ifelse(var(59)=0,(command = "holddown"),(fvar(37)=1))

[State 152, Hi to Lo]
type = StateTypeSet
triggerAll=Statetype = S
trigger1 = var(59) = 0
trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType != A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType=A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
triggerAll=Statetype = S
trigger1 = var(59) = 0
trigger1 = command = "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType != A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
triggerAll=Statetype = C
trigger1 = var(59) = 0
trigger1 = command != "holddown"
trigger2 = var(59) > 0
trigger2 = EnemyNear(var(58)),StateType=A
trigger2 = Random <= var(59)*20||var(59)>9
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State -2,仮面ヒット数]
type = Varadd
triggerall = Numhelper(10000) > 0
trigger1 = Helper(10000),stateno != [19000,19001] 
trigger1 = time = 0
v = 9
value = 1
persistent = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State -2,仮面ヒット数]
type = Varadd
triggerall = Numhelper(10000) > 0
trigger1 = Helper(10000),stateno != [19000,19001] 
trigger1 = time = 0
v = 9
value = 1
persistent = 0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;HITC_SLIDE

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State -2,仮面ヒット数]
type = Varadd
triggerall = Numhelper(10000) > 0
trigger1 = Helper(10000),stateno != [19000,19001] 
trigger1 = time = 0
v = 9
value = 1
persistent = 0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, Super Armor Changestate]
type = null;ChangeState
triggerall = Alive && var(38) = 1
triggerall = PrevStateNo != [5000,5071]
trigger1 = (time = 0) && (var(17) < 15)
value = 9000 



[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;★★★★埋まる・刺さる用★★★★
[State 5150, 埋まる]
type = posset
trigger1 = 1
y = 0

[State 5150, 刺さる]
type = ChangeAnim2
triggerall = Time = [0,1]
trigger1 = Prevstateno = 1530
value = 1535

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190

;---------------------------------------------------------------------------
;タイムオーバー（負けた時）
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 無敵]
type = NotHitBy
trigger1 = 1 ;トリガーを何も書かず「1」にする事により、『無条件で常に実行させる命令』になる。
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;勝利ポーズ分岐（common1.cnsには無いけど、これもコモンステート）
[Statedef 180]
type = S

[State 180, ステート変更]
type = ChangeState
trigger1 = Time = 0
value = 181+random%3

;---------------------------------------------------------------------------
;勝利ポーズ（ヨガ）
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0


[State 181, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 1
value = s181,0
channel = -1

[State 191, 1]
type = AssertSpecial
trigger1 = Time < 200 
flag = roundnotover
;---------------------------------------------------------------------------
;勝利ポーズ（浮く）
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 2
value = s181,1
channel = -1


[State 191, 1]
type = AssertSpecial
trigger1 = Time < 200 
flag = roundnotover

;---------------------------------------------------------------------------
;勝利ポーズ（祈る）
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 2
value = s181,2
channel = -1

[State 191, 1]
type = AssertSpecial
trigger1 = Time < 200 
flag = roundnotover

;---------------------------------------------------------------------------
;勝利ポーズ（足元にも及ばん）
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0


[State 181, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 640, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 8
value = s181,5
channel = -1


[State 191, 1]
type = AssertSpecial
trigger1 = Time < 200 
flag = roundnotover
;---------------------------------------------------------------------------
;===========================================================================
; 基本行動
;===========================================================================
;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0


[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191

;---------------------------------------------------------------------------
;イントロ（私は今日も勝って帰る）
[Statedef 191]
type = S
ctrl = 0
velset = 0,0
SprPriority = 1

[State 191]
type = Changeanim
trigger1 =  time = 0
value = 190

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 1
value = s190, 0
channel = 0

[State 210, Explod]
Type = Explod
trigger1 = animelem = 5
Anim = 199
ID = 199
Pos = 0, 0
scale = 1,1
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1
removeongethit = 1

[State 191, 特殊効果];試合が開始するまではこのコントローラを使おう（※２）
type = AssertSpecial
trigger1 = 1
flag = Intro ;イントロの状態

[State 191, ステート変更];アニメーションが終われば「通常立ち」のステートに変更する
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;イントロ
[Statedef 192]
type = S
ctrl = 0
velset = 0,0
SprPriority = 1

[State 191, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191]
type = Changeanim
trigger1 = time = 0
value = 192
Persistent = 0

[State 191, ステート変更];アニメーションが終われば「通常立ち」のステートに変更する
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;---------------------------------------------------------------------------
;挑発
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 195
velset = 0,0
sprpriority = 1

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 4
value = s195, 0+random%5
channel = 0

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;挑発
[Statedef 196]
type = S
movetype = I
physics = S
ctrl = 0
anim = 196
velset = 0,0
sprpriority = 1

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 2
value = s195, 5+random%5
channel = 0

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;挑発
[Statedef 197]
type = S
movetype = I
physics = S
ctrl = 0
anim = 197
velset = 0,0
sprpriority = 1

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 3
value = s195, 1
channel = 0

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;挑発
[Statedef 198]
type = S
movetype = I
physics = S
ctrl = 0
anim = 198
velset = 0,0
sprpriority = 1

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 5
value = s195, 3
channel = 0

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;挑発
[Statedef 199]
type = S
movetype = I
physics = S
ctrl = 0
anim = 199
velset = 0,0
sprpriority = 1

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 3
value = s195, 7
channel = 0

[State 801, ]
type = PlaySnd
trigger1 =  animelem = 5
value = s195, 8
channel = 0

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1