;===========================================================================
; 必殺技
;===========================================================================
;---------------------------------------------------------------------------
;ヨガファイア小
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 1
poweradd = 20

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 0

[State 1000]
type = PlaySnd
trigger1 = animelem = 3
value = s1000, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 4
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
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
trigger1 = animelem = 4
attr = S, SP
damage = 50, 3
getpower  = 20,10
givepower = 20,10
animtype = hard
pausetime = 5,16
guard.pausetime = 5,12
;-----------------------------------Projectile専用のパラメータ
offset = 65,-50                ;飛び道具を発射する位置（Ｘ軸,Ｙ軸）
velocity = 2,0 ;飛び道具の移動速度（Ｘ軸,Ｙ軸）
accel = 0,0                  ;飛び道具の加速度(float)（Ｘ軸,Ｙ軸）
projID = 7000                  ;飛び道具のＩＤナンバー（NumProjIDなどで判断）
projanim = 7000                ;飛び道具のアニメ（アクションナンバー）
projhitanim = 7002            ;飛び道具がヒットした時のアニメ（アクションナンバー）
projremanim = 7001             ;飛び道具が消える時のアニメ（アクションナンバー）
projscale = 1.2,1                ;飛び道具の大きさ（Ｘ軸,Ｙ軸）※現在２倍
projshadow = 0,0,0             ;飛び道具の影の色合い（赤,緑,青）※現在影無し
projhits = 1                   ;飛び道具のヒット数（２以上なら多段ヒットになる）
projmisstime = 1               ;飛び道具の連続でヒットしない間隔　※projhitsが２以上の時のみ
projpriority = 1               ;飛び道具の攻撃優先度・相手のProjectileよりも高いと消しながら進む
projremovetime = 95           ;飛び道具の消えるまでの時間（フレーム）※-1なら当たるか画面外に出るまで消えない
;-----------------------------------これ以外にまだまだある。docsフォルダ参照。
guardflag = M
priority = 4
sparkno = s6001
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s6005
hitsound = s1,1
guardsound = s120,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -3,0
air.velocity = -3,-4
air.juggle = 4 ;Projectileの場合はここで設定しないとヒットした時ジャグルが消費しない
fall = 0
air.fall = 1
fall.recover = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガファイア中
[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 1
poweradd = 20

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 1

[State 1000]
type = PlaySnd
trigger1 = animelem = 3
value = s1000, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 4
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
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
trigger1 = animelem = 4
attr = S, SP
damage = 70, 3
getpower  = 20,10
givepower = 20,10
animtype = hard
pausetime = 5,16
guard.pausetime = 5,12
;-----------------------------------Projectile専用のパラメータ
offset = 65,-50                ;飛び道具を発射する位置（Ｘ軸,Ｙ軸）
velocity = 2,0 ;飛び道具の移動速度（Ｘ軸,Ｙ軸）
accel = 0,0                  ;飛び道具の加速度(float)（Ｘ軸,Ｙ軸）
projID = 7001                  ;飛び道具のＩＤナンバー（NumProjIDなどで判断）
projanim = 7000                ;飛び道具のアニメ（アクションナンバー）
projhitanim = 7002            ;飛び道具がヒットした時のアニメ（アクションナンバー）
projremanim = 7001             ;飛び道具が消える時のアニメ（アクションナンバー）
projscale = 1.2,1                ;飛び道具の大きさ（Ｘ軸,Ｙ軸）※現在２倍
projshadow = 0,0,0             ;飛び道具の影の色合い（赤,緑,青）※現在影無し
projhits = 1                   ;飛び道具のヒット数（２以上なら多段ヒットになる）
projmisstime = 1               ;飛び道具の連続でヒットしない間隔　※projhitsが２以上の時のみ
projpriority = 1               ;飛び道具の攻撃優先度・相手のProjectileよりも高いと消しながら進む
projremovetime = 57           ;飛び道具の消えるまでの時間（フレーム）※-1なら当たるか画面外に出るまで消えない
;-----------------------------------これ以外にまだまだある。docsフォルダ参照。
guardflag = M
priority = 4
sparkno = s6001
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s6005
hitsound = s1,1
guardsound = s120,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -3,0
air.velocity = -3,-4
air.juggle = 4 ;Projectileの場合はここで設定しないとヒットした時ジャグルが消費しない
fall = 0
air.fall = 1
fall.recover = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガファイア大
[Statedef 1002]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 1
poweradd = 40

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 2

[State 1000]
type = PlaySnd
trigger1 = animelem = 3
value = s1000, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 4
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
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
trigger1 = animelem = 4
attr = S, SP
damage = 80, 3
getpower  = 20,10
givepower = 20,10
animtype = hard
pausetime = 5,16
guard.pausetime = 5,12
;-----------------------------------Projectile専用のパラメータ
offset = 65,-50                ;飛び道具を発射する位置（Ｘ軸,Ｙ軸）
velocity = 2,0 ;飛び道具の移動速度（Ｘ軸,Ｙ軸）
accel = 0,0                  ;飛び道具の加速度(float)（Ｘ軸,Ｙ軸）
projID = 7002                  ;飛び道具のＩＤナンバー（NumProjIDなどで判断）
projanim = 7000                ;飛び道具のアニメ（アクションナンバー）
projhitanim = 7002            ;飛び道具がヒットした時のアニメ（アクションナンバー）
projremanim = 7001             ;飛び道具が消える時のアニメ（アクションナンバー）
projscale = 1.2,1                ;飛び道具の大きさ（Ｘ軸,Ｙ軸）※現在２倍
projshadow = 0,0,0             ;飛び道具の影の色合い（赤,緑,青）※現在影無し
projhits = 1                   ;飛び道具のヒット数（２以上なら多段ヒットになる）
projmisstime = 1               ;飛び道具の連続でヒットしない間隔　※projhitsが２以上の時のみ
projpriority = 1               ;飛び道具の攻撃優先度・相手のProjectileよりも高いと消しながら進む
projremovetime = 43           ;飛び道具の消えるまでの時間（フレーム）※-1なら当たるか画面外に出るまで消えない
;-----------------------------------これ以外にまだまだある。docsフォルダ参照。
guardflag = M
priority = 4
sparkno = s6001
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s6005
hitsound = s1,1
guardsound = s120,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,-5
air.velocity = -4,-4
air.juggle = 4 ;Projectileの場合はここで設定しないとヒットした時ジャグルが消費しない
fall = 1
air.fall = 1
fall.recover = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガファイアEX
[Statedef 1003]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 1
poweradd = -500

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s2,0
channel = -1

[State 1050, Palfix]
type = PalFX
trigger1 = gametime%2 = 0
trigger1 = animelemtime(5) < 0
time = 1
add = 120,80,0
sinadd = 64,32,5,3
ignorehitpause = 1

[State 1000, 1]
type = AfterImage
trigger1 = animelemtime(1) = 0
time = 999999999
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 30 , 30 , 0
PalContrast = 255 , 255 , 0
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , 0
IgnoreHitPause = 1
Persistent = 1

[State -3]
type = AfterImage
trigger1 = animelemtime(5) = 0
time = 0

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 3

[State 1000]
type = PlaySnd
trigger1 = animelem = 2
value = s1003, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 3
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
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
trigger1 = animelem = 4
attr = S, SP
damage = 50, 3
getpower  = 0,0
givepower = 20,10
animtype = hard
pausetime = 5,23
guard.pausetime = 5,21
;-----------------------------------Projectile専用のパラメータ
offset = 65,-50                ;飛び道具を発射する位置（Ｘ軸,Ｙ軸）
velocity = 2,0 ;飛び道具の移動速度（Ｘ軸,Ｙ軸）
accel = 0,0                  ;飛び道具の加速度(float)（Ｘ軸,Ｙ軸）
projID = 7000                  ;飛び道具のＩＤナンバー（NumProjIDなどで判断）
projanim = 7000                ;飛び道具のアニメ（アクションナンバー）
projhitanim = 7002            ;飛び道具がヒットした時のアニメ（アクションナンバー）
projremanim = 7001             ;飛び道具が消える時のアニメ（アクションナンバー）
projscale = 1.2,1                ;飛び道具の大きさ（Ｘ軸,Ｙ軸）※現在２倍
projshadow = 0,0,0             ;飛び道具の影の色合い（赤,緑,青）※現在影無し
projhits = 1                   ;飛び道具のヒット数（２以上なら多段ヒットになる）
projmisstime = 1               ;飛び道具の連続でヒットしない間隔　※projhitsが２以上の時のみ
projpriority = 1               ;飛び道具の攻撃優先度・相手のProjectileよりも高いと消しながら進む
projremovetime = -1           ;飛び道具の消えるまでの時間（フレーム）※-1なら当たるか画面外に出るまで消えない
;-----------------------------------これ以外にまだまだある。docsフォルダ参照。
guardflag = M
priority = 4
sparkno = s6001
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s6005
hitsound = s1,1
guardsound = s120,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -3,0
air.velocity = -3,-4
air.juggle = 4 ;Projectileの場合はここで設定しないとヒットした時ジャグルが消費しない
fall = 0
air.fall = 1
fall.recover = 0

[State 1000, 飛び道具];HitDefに飛び道具専用のパラメータを加えたようなものが「Projectile」
type = Projectile
trigger1 = animelem = 4
attr = S, SP
damage = 50, 3
getpower  = 0,0
givepower = 20,10
animtype = hard
pausetime = 5,23
guard.pausetime = 5,21
;-----------------------------------Projectile専用のパラメータ
offset = 65,-50                ;飛び道具を発射する位置（Ｘ軸,Ｙ軸）
velocity = 2,0 ;飛び道具の移動速度（Ｘ軸,Ｙ軸）
accel = 0,0                  ;飛び道具の加速度(float)（Ｘ軸,Ｙ軸）
projID = 7000                  ;飛び道具のＩＤナンバー（NumProjIDなどで判断）
projanim = 7000                ;飛び道具のアニメ（アクションナンバー）
projhitanim = 7002            ;飛び道具がヒットした時のアニメ（アクションナンバー）
projremanim = 7001             ;飛び道具が消える時のアニメ（アクションナンバー）
projscale = 1.2,1                ;飛び道具の大きさ（Ｘ軸,Ｙ軸）※現在２倍
projshadow = 0,0,0             ;飛び道具の影の色合い（赤,緑,青）※現在影無し
projhits = 1                   ;飛び道具のヒット数（２以上なら多段ヒットになる）
projmisstime = 1               ;飛び道具の連続でヒットしない間隔　※projhitsが２以上の時のみ
projpriority = 1               ;飛び道具の攻撃優先度・相手のProjectileよりも高いと消しながら進む
projremovetime = -1           ;飛び道具の消えるまでの時間（フレーム）※-1なら当たるか画面外に出るまで消えない
;-----------------------------------これ以外にまだまだある。docsフォルダ参照。
guardflag = M
priority = 4
sparkno = s6001
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s6005
hitsound = s1,1
guardsound = s120,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -3,0
air.velocity = -3,-4
air.juggle = 4 ;Projectileの場合はここで設定しないとヒットした時ジャグルが消費しない
fall = 0
air.fall = 1
fall.recover = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガフレイム小
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 1
poweradd = 30

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 0

[State 1000]
type = PlaySnd
trigger1 = animelem = 3
value = s1010, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 4
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7005
ID = 7005
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = MAF
GuardFlag = M
Damage = 110, 5
GetPower = 30,15
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 32
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
Ground.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1050

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7005

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7006
ID = 7006
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガフレイム中
[Statedef 1011]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 1
poweradd = 30

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 1

[State 1000]
type = PlaySnd
trigger1 = animelem = 3
value = s1010, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 4
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7005
ID = 7005
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = MAF
GuardFlag = M
Damage = 140, 5
GetPower = 30,15
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 35
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
Ground.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1050

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7005

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7006
ID = 7006
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガフレイム大
[Statedef 1012]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1012
ctrl = 0
sprpriority = 1
poweradd = 30

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 2

[State 1000]
type = PlaySnd
trigger1 = animelem = 3
value = s1010, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 4
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7005
ID = 7005
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = MAF
GuardFlag = M
Damage = 170, 5
GetPower = 30,15
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 40
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
Ground.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1050

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7005

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7006
ID = 7006
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガフレイムEX
[Statedef 1013]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1013
ctrl = 0
sprpriority = 1
poweradd = -500

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s2,0
channel = -1

[State 1050, Palfix]
type = PalFX
trigger1 = gametime%2 = 0
trigger1 = animelemtime(5) < 0
time = 1
add = 120,80,0
sinadd = 64,32,5,3
ignorehitpause = 1

[State 1000, 1]
type = AfterImage
trigger1 = animelemtime(1) = 0
time = 999999999
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 30 , 30 , 0
PalContrast = 255 , 255 , 0
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , 0
IgnoreHitPause = 1
Persistent = 1

[State -3]
type = AfterImage
trigger1 = animelemtime(5) = 0
time = 0

[State -2, VarSet]
type = VarSet
trigger1 = time = 0
var(5) = 3

[State 1000]
type = PlaySnd
trigger1 = animelem = 2
value = s1013, 0
channel = 0

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = animelem = 3
Value = S1000, 1
Channel = -1
Persistent = 0

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7005
ID = 7005
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = MAF
GuardFlag = M
Damage = 90, 5
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 24
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
Ground.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
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
Attr = S, SP
HitFlag = MAF
GuardFlag = M
Damage = 90, 5
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 24
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
Ground.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -3*const(size.xscale),-4*fvar(14)*const(size.yscale)
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

[State 1200]
type = RemoveExplod
trigger1 = animelem = 6
id = 7005

[State 1200]
type = Explod
trigger1 = animelem = 6
anim = 7006
ID = 7006
pos = -60, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガブラスト小
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
anim = 1050
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1050, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 4
value = s1050,1
channel = -1

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7010
ID = 7010
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = AF
GuardFlag = M
Damage = 110, 5
GetPower = 40,20
GivePower = 40,20
PauseTime = 10, 10
guard.PauseTime = 10, 11
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-90*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1050

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7010

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7011
ID = 7011
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガブラスト中
[Statedef 1051]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
anim = 1051
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1050, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 4
value = s1050,1
channel = -1

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7010
ID = 7010
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = AF
GuardFlag = M
Damage = 150, 5
GetPower = 40,20
GivePower = 40,20
PauseTime = 10, 10
guard.PauseTime = 10, 11
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-90*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1051

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7010

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7011
ID = 7011
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガブラスト大
[Statedef 1052]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
anim = 1052
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1050, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 4
value = s1050,1
channel = -1

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7010
ID = 7010
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = AF
GuardFlag = M
Damage = 180, 5
GetPower = 40,20
GivePower = 40,20
PauseTime = 10, 10
guard.PauseTime = 10, 11
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-90*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Fall = 1
Fall.Recover = 0
air.fall = 1
air.recover = 0
yaccel = .40*const(size.yscale)
P2Facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0
id = 1052

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7010

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7011
ID = 7011
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガブラストEX
[Statedef 1053]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -500
anim = 1053
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1250]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 3

[State 1050, Palfix]
type = PalFX
trigger1 = gametime%2 = 0
trigger1 = animelemtime(7) < 0
time = 1
add = 120,80,0
sinadd = 64,32,5,3
ignorehitpause = 1

[State 1000, 1]
type = AfterImage
trigger1 = animelemtime(1) = 0
time = 999999999
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 30 , 30 , 0
PalContrast = 255 , 255 , 0
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , 0
IgnoreHitPause = 1
Persistent = 1

[State -3]
type = AfterImage
trigger1 = animelemtime(7) = 0
time = 0

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s2,0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1053, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 4
value = s1050,1
channel = -1

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 6020
ID = 6020
pos = 40, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1200]
type = Explod
trigger1 = animelem = 4
anim = 7010
ID = 7010
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2
removetime = -1

[State 1205]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, SP
HitFlag = AF
GuardFlag = M
Damage = 70, 5
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 11
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-90*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
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
Attr = S, SP
HitFlag = AF
GuardFlag = M
Damage = 70, 5
GetPower = 0,0
GivePower = 30,15
PauseTime = 10, 10
guard.PauseTime = 10, 11
SparkNo = s6002
guard.sparkno = s6005
SparkXY = -10,ceil(-90*const(size.yscale))
HitSound = S1, 2
GuardSound = S120,0
AnimType = up
air.animtype  = up
Ground.Type = Low
Ground.SlideTime = 16
Ground.HitTime = 14
Guard.HitTime = 14
Air.HitTime = 16
Ground.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
Guard.Velocity = -5*const(size.xscale)
Air.Velocity = -1*const(size.xscale),-4*fvar(14)*const(size.yscale)
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

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
id = 7010

[State 1200]
type = Explod
trigger1 = animelem = 5
anim = 7011
ID = 7011
pos = -30, 0
postype = p1
scale = (2*(const(size.xscale))),(const(size.yscale))
ownpal = 1
removeongethit = 1
sprpriority = 2

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit && numtarget(1053)
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit && numtarget(1054)
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;着地
[Statedef 1055]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1055
sprpriority = 1

[State 1200]
Type = posset
Trigger1 = time = 0
y = 0

[State 1200]
Type = Velset
Trigger1 = time = 0
x = 0
y = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s40, 0
channel = -1

[State 6460, Changestate]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;着地
[Statedef 1056]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1056
sprpriority = 1

[State 1200]
Type = posset
Trigger1 = time = 0
y = 0

[State 1200]
Type = Velset
Trigger1 = time = 0
x = 0
y = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s40, 0
channel = -1

[State 6460, Changestate]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;着地
[Statedef 1057]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1057
sprpriority = 1

[State 1200]
Type = posset
Trigger1 = time = 0
y = 0

[State 1200]
Type = Velset
Trigger1 = time = 0
x = 0
y = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s40, 0
channel = -1

[State 6460, Changestate]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;着地
[Statedef 1058]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1058
sprpriority = 1

[State 1200]
Type = posset
Trigger1 = time = 0
y = 0

[State 1200]
Type = Velset
Trigger1 = time = 0
x = 0
y = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s40, 0
channel = -1

[State 6460, Changestate]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガテレポート相手近後
[Statedef 1100]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1100
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1105

;---------------------------------------------------------------------------
;ヨガテレポート相手近前
[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
anim = 1100
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1106

;---------------------------------------------------------------------------
;ヨガテレポート自分後
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
anim = 1100
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1107

;---------------------------------------------------------------------------
;ヨガテレポート画面端
[Statedef 1103]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1100
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1108

;---------------------------------------------------------------------------
;ヨガテレポート小
[Statedef 1105]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1105
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posadd
trigger1 = time = 0
x = (p2dist x + 100)
y = 0

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1110

;---------------------------------------------------------------------------
;ヨガテレポート中
[Statedef 1106]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1105
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posadd
trigger1 = time = 0
x = (p2dist x - 90)
y = 0

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1110

;---------------------------------------------------------------------------
;ヨガテレポート大
[Statedef 1107]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1105
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posadd
trigger1 = time = 0
x = -120
y = 0

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1110

;---------------------------------------------------------------------------
;ヨガテレポートEX
[Statedef 1108]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1105
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posset
trigger1 = time = 0
x = facing*145
y = 0

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1110

;---------------------------------------------------------------------------
;着地
[Statedef 1110]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1110
sprpriority = 1

[State 1200]
Type = posset
Trigger1 = time = 0
y = 0

[State 1200]
Type = Velset
Trigger1 = time = 0
x = 0
y = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s40, 0
channel = -1

[State 6460, Changestate]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヨガテレポート相手近後
[Statedef 1115]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1115
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1120

;---------------------------------------------------------------------------
;ヨガテレポート相手近前
[Statedef 1116]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1115
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1121

;---------------------------------------------------------------------------
;ヨガテレポート自分後
[Statedef 1117]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1115
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1122

;---------------------------------------------------------------------------
;ヨガテレポート画面端
[Statedef 1118]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1115
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s1100, 0
channel = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  AnimElem = 7
value = s1100, 1
channel = -1

[State 1200]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 1
anim = 6020
scale = 1,1
postype = p1
pos = 0, 0
sprpriority = 2
OnTop = 1
ownpal = 1
ID = 6020
IgnoreHitPause = 0

[State 1200, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 1123

;---------------------------------------------------------------------------
;ヨガテレポート小
[Statedef 1120]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1120
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posadd
trigger1 = time = 0
x = (p2dist x + 100)

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, veladd]
type = Gravity
trigger1 = animelemtime(9) > 0

[state -2]
type = ctrlset
trigger1 = time > 0
trigger1 = animelemtime(9) > 0
value = 1

[State 1200, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 52

;---------------------------------------------------------------------------
;ヨガテレポート中
[Statedef 1121]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1120
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posadd
trigger1 = time = 0
x = (p2dist x - 90)

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, veladd]
type = Gravity
trigger1 = animelemtime(9) > 0

[state -2]
type = ctrlset
trigger1 = time > 0
trigger1 = animelemtime(9) > 0
value = 1

[State 1200, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 52

;---------------------------------------------------------------------------
;ヨガテレポート大
[Statedef 1122]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1105
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posadd
trigger1 = time = 0
x = -120

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, veladd]
type = Gravity
trigger1 = animelemtime(9) > 0

[state -2]
type = ctrlset
trigger1 = time > 0
trigger1 = animelemtime(9) > 0
value = 1

[State 1200, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 52

;---------------------------------------------------------------------------
;ヨガテレポート
[Statedef 1123]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
anim = 1105
velset = 0,0
ctrl = 0
sprpriority = 1

[state -2]
type = posset
trigger1 = time = 0
x = facing*145

[state -2]
type = turn
trigger1 = time > 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 1050, 音を鳴らす]
type = PlaySnd
trigger1 =  time = 0
value = s1100, 2
channel = -1

[State 1200, veladd]
type = Gravity
trigger1 = animelemtime(9) > 0

[state -2]
type = ctrlset
trigger1 = time > 0
trigger1 = animelemtime(9) > 0
value = 1

[State 1200, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 52