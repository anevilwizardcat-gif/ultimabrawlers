;---------------------------------------------------------------------------
;挑発
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 0

[State 195, アニメ]
type = ChangeAnim
trigger1 = Anim != [1001,1003]
value = ifelse(random<500,1001,1003)

[State 195, 音]
type = PlaySnd
trigger1 = anim= 1001
trigger1 = animelemtime(1) = 1
value = 1001,0

[State 195, 音]
type = PlaySnd
trigger1 = anim= 1003
trigger1 = animelemtime(1) = 1
value = 1003,0
channel = 0

;[State 195, 音]
;type = PlaySnd
;trigger1 = AnimElemTime(15) = 1
;value = 195,1
;channel = 0

[State 195, ゲージ]
type = poweradd
trigger1 = time = 120
value = 700

[State 195, ゲージ]
type = poweradd
trigger1 = time = 270
value = 2000

[State 195, コントロール]
type = CtrlSet
trigger1 = !var(59)
trigger1 = time >= 90
trigger2 = var(59)
trigger2 = EnemyNear,stateno != 195
trigger2 = time >= 110
value = 1

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; レインボウ
[Statedef 199]
type    = S
movetype= A
physics = S
anim = 199
ctrl = 0
vel = 4,0
poweradd = 135
sprpriority = 1

[State 199, 速度]
type = Velset
trigger1 = AnimElemTime(1) >= 0 && animelemtime(9) < 0
x = 4

[State 199, 接地]
type = posset
trigger1 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(9) >= 0
y = 0

[State 199, 音]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = 199,0
channel = 0

[State 199, ジャンプ]
type = Velset
trigger1 = AnimElemTime(3) = 0
y = -7.5

;空中
[State 199, 空中]
type    = statetypeset
trigger1 = AnimElemTime(3) = 1
statetype = A
physics = A

[State 199, 幅]
type    = width
trigger1 = AnimElemTime(5) >= 0 && animelemtime(12) < 0
player = 25,20

[State 199, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = back
damage    = ceil(fvar(0)*180),20
guardflag = HA
hitflug = MAFP
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = 1
sparkxy = -10,-60
hitsound   = S0,11
guardsound = 6,0
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
guard.slidetime = 35
guard.hittime  = 35
air.hittime  = 40
ground.velocity = -5,-5
guard.velocity = -9
air.velocity = -3,-5
fall = 1
fall.recovertime = 40
guard.kill = 0

[State 199, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

;着地
[State 199, 着地]
type = statetypeset
trigger1 = animelemtime(9) = 0
statetype = S
movetype = I
physics = S

[State 199, 着地]
type = velset
trigger1 = animelemtime(9) = 0
y = 0

[State 199, 音]
type = PlaySnd
trigger1 = animelemtime(9) = 0
value = 199,1

[State 199, コントロール]
type = ctrlset
trigger1 = animelemtime(22) = 0
value = 1

[State 199, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===========================================================================
; 投げ技
;===========================================================================
;---------------------------------------------------------------------------
;バスター（汎用地
[Statedef 800]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 800
sprpriority = -1
poweradd = 50

[State 800, 幻影刀カウント]
type = varset
trigger1 = time = 0
var(1) = 0

[State 800, ヒット定義-スナッチ後]
type = HitDef
triggerall = Time = 0
trigger1 = numtarget(230)>0
trigger2 = numtarget(1230)>0
attr = S, NT
hitflag = MAF
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 800, ヒット定義]
type = HitDef
trigger1 = time = 0
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 800, ヒット定義-幻影刀後]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger1 = var(8)<21
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 800, 音]
type = PlaySnd
trigger1 = Time = 2
value = 800, random%4
channel = 0

[State 800, 右手]
type = Explod
trigger1 = time = 0
anim = 801
ID = 801
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 800, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 802
ID = 802
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 800, エフェクト]
type = Explod
trigger1 = time = 6
anim = 803
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 800, ステート変更]
type = ChangeState
Trigger1 = movehit
value = 805
ctrl = 0

[State 800, コントロール]
type = CtrlSet
trigger1 = animelemtime(9) = 0
value = 1

[State 800, ステート変更]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;汎用地
[Statedef 805]
type    = S
movetype= A
physics = N
anim = 805
sprpriority = -1
poweradd = 300

[State 805, 掴んだ相手のステート変更]
type = TargetState
trigger1 = time = 0
value = 809

[State 805, 掴み]
type = envshake
trigger1 = time = 0
time = 20

[State 805, 投げ]
type = envshake
trigger1 = animelemtime(7) = 0
time = 15

[State 805, 掴みエフェクト]
type = Explod
trigger1 = time = 0
anim = 804
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 3

[State 805, 右手]
type = Explod
trigger1 = time = 0
anim = 806
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 805, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 807
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 805, 投げエフェクト]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 808
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 4

[State 805, 音]
type = PlaySnd
trigger1 = time = 20
value = 800, 4

[State 805, 音]
type = PlaySnd
trigger1 = AnimElemtime(4) = 0
value = 805, random%2

[State 805, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 65, -160

[State 805, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 50, -160

[State 805, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 40, -160

[State 805, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 37, -152

[State 805, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -26, -153

[State 805, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 40, -157

[State 805, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 70, -65

[State 805, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(8) < 2
pos = 70, -15

[State 805, 物理的なキャラの幅]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 805, 座標移動]
type = PosAdd
trigger1 = AnimElem = 12
x = 7

[State 805, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElemTime(8) = 0
value = -(120 + var(1) * 15)

[State 805, コントロール]
type = ctrlset
trigger1 = AnimElemTime(13) = 0
value = 1

[State 805, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;汎用地相手
[Statedef 809]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 809, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 809

[State 809, 相手のアニメ変更]
type = AngleDraw
trigger1 = 1
value = 270

[State 809, ]
type = Hitfallset
trigger1 = 1
value = 0

[State 809, 相手ステートに戻す]
type = SelfState
trigger1 = !GetHitVar(IsBound)
value = 5100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;バスター（アルト
[Statedef 810]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 800
sprpriority = -1

[State 810, 幻影刀カウント]
type = varset
trigger1 = time = 0
var(1) = 0

[State 810, ヒット定義-スナッチ後]
type = HitDef
triggerall = Time = 0
trigger1 = numtarget(230)>0
trigger2 = numtarget(1230)>0
attr = S, ST
hitflag = MAF
priority = 6, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
guard.dist = 0
fall = 1
id = 810

[State 810, ヒット定義]
type = HitDef
trigger1 = Time = 0
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = S, ST
hitflag = M-
priority = 6, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
guard.dist = 0
fall = 1
id = 810

[State 810, ヒット定義-幻影刀後]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger1 = var(8)<21
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = S, ST
hitflag = M
priority = 6, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
guard.dist = 0
fall = 1
id = 810

[State 810, 音]
type = PlaySnd
trigger1 = Time = 2
value = 800, random%4
channel = 0

[State 810, 右手]
type = Explod
trigger1 = time = 0
anim = 801
ID = 801
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 810, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 802
ID = 802
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 810, エフェクト]
type = Explod
trigger1 = time = 6
anim = 803
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 810, 残像]
type = afterimage
trigger1 = animelemtime(1) = 0
time = 40
length = 7
palbright = 50,50,50
palcontrast = 150,150,150

[State 810, ステート変更]
type = ChangeState
Trigger1 = movehit
value = 811
ctrl = 0

[State 810, コントロール]
type = CtrlSet
trigger1 = animelemtime(7) = 0
value = 1

[State 810, ステート変更]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;アルト
[Statedef 811]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 1
poweradd = 100

[State 811, 掴んだ相手のステート変更]
type = TargetState
trigger1 = time = 0
value = 812

[State 811, 掴み]
type = envshake
trigger1 = time = 0
time = 20

[State 811, 投げ]
type = envshake
trigger1 = animelemtime(8) = 0
time = 20
ampl = -5

[State 811, 蹴り]
type = envshake
trigger1 = animelemtime(21) = 0
time = 20
ampl = -5

[State 811, 掴みエフェクト]
type = Explod
trigger1 = time = 0
anim = 804
pos = 15,20
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 3

[State 811, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 811
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 811, 投げエフェクト]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 808
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 3

[State 811, 蹴りエフェクト]
type = Explod
trigger1 = animelemtime(21) = 0
anim = 812
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 3

[State 811, 音]
type = PlaySnd
trigger1 = time = 20
value = 800, 4

[State 811, 音]
type = PlaySnd
trigger1 = AnimElemtime(4) = 0
value = 810, random%3

[State 811, 音]
type = PlaySnd
trigger1 = AnimElemtime(8) = 0
value = 810, 10

[State 811, 音]
type = PlaySnd
trigger1 = AnimElemtime(14) = 0
value = 810, 20+random%2

[State 811, 音]
type = PlaySnd
trigger1 = AnimElemtime(20) = 0
value = 810, 30+random%4

[State 811, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 85, -75

[State 811, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = -20, -75

[State 811, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = -50, -60

[State 811, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -40, -70

[State 811, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -30, -85

[State 811, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 28, -105

[State 811, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 50, -75

[State 811, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 70, 0

[State 811, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(21) = 0
pos = 80, -80

[State 811, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElemTime(8) = 0
value = ifelse((target(810),life <= 50), 0, -50)

[State 811, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElemTime(21) = 0
value = -ceil(150*ifelse(fvar(0)=0.65,1,0.75) + var(1) * 15)

[State 811, 幅]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(14) < 0
edge = 60,0

[State 811, 座標移動]
type = PosAdd
trigger1 = AnimElem = 2
x = 105

[State 811, 蹴り]
type = velset
trigger1 = AnimElem = 17
trigger1 = frontedgedist > 65
x = 2

[State 811, 座標]
type = Posfreeze
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0

[State 811, ステート]
type = statetypeset
trigger1 = AnimElem = 23
movetype = I
physics = S

[State 811, コントロール]
type = ctrlset
trigger1 = AnimElemTime(33) = 0
value = 1

[State 811, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;アルト相手
[Statedef 812]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 812, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 813

[State 812, 回転]
type = AngleDraw
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
value = 90

[State 812, バウンド]
type = velset
trigger1 = animelemtime(7) = 0
x = -1
y = -11

[State 812, バウンド]
type = veladd
trigger1 = animelemtime(7) > 0 && animelemtime(10) < 0
y = 0.4

[State 812, 回転]
type = AngleDraw
trigger1 = animelemtime(7) >= 5 && animelemtime(7) < 9
trigger2 = animelemtime(8) >= 5 && animelemtime(8) < 9
trigger3 = animelemtime(9) >= 5 && animelemtime(9) < 9
value = 45

[State 812, 回転]
type = AngleDraw
trigger1 = animelemtime(7) >= 9 && animelemtime(7) < 13
trigger2 = animelemtime(8) >= 9 && animelemtime(8) < 13
trigger3 = animelemtime(9) >= 9 && animelemtime(10) < 0
value = 90

[State 812, 回転]
type = AngleDraw
trigger1 = animelemtime(7) >= 13 && animelemtime(8) < 0
trigger2 = animelemtime(8) >= 13 && animelemtime(9) < 0
value = 135

[State 812, 速度]
type = velset
trigger1 = animelemtime(10) = 0
x = 0
y = 0

[State 812, 速度]
type = velset
trigger1 = animtime = 0
x = -7
y = -2

[State 812, ]
type = Hitfallset
trigger1 = 1
value = 0


[State 812, 相手ステートに戻す]
type = SelfState
trigger1 = animtime = 0
value = 5050

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;バスター（カットラス地
[Statedef 825]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 822
sprpriority = -1

[State 825, 幻影刀カウント]
type = varset
trigger1 = time = 0
var(1) = 0

[State 825, ヒット定義-スナッチ後]
type = HitDef
triggerall = Time = 0
trigger1 = numtarget(230)>0
trigger2 = numtarget(1230)>0
attr = S, ST
hitflag = AF
priority = 6, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
guard.dist = 0
fall = 1
id = 825

[State 825, ヒット定義]
type = HitDef
trigger1 = Time = 0
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = S, ST
hitflag = A-
priority = 6, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
guard.dist = 0
fall = 1
id = 825

[State 825, ヒット定義-幻影刀後]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger1 = var(8)<21
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = S, ST
hitflag = A
priority = 6, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
guard.dist = 0
fall = 1
id = 825

[State 825, 音]
type = PlaySnd
trigger1 = Time = 4
value = 800, random%4
channel = 0

[State 825, 右手]
type = Explod
trigger1 = time = 0
anim = 823
ID = 823
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 825, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 824
ID = 824
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 825, エフェクト]
type = Explod
trigger1 = time = 8
anim = 803
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 825, 残像]
type = afterimage
trigger1 = animelemtime(1) = 0
time = 40
length = 7
palbright = 50,50,50
palcontrast = 150,150,150

[State 825, ステート変更]
type = ChangeState
Trigger1 = movehit
value = 815
ctrl = 0

[State 825, コントロール]
type = CtrlSet
trigger1 = animelemtime(7) = 0
value = 1

[State 825, ステート変更]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;バスター（カットラス空
[Statedef 826]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 900
sprpriority = -1
poweradd = 50

[State 826, 速度]
type = Velset
trigger1 = animelemtime(2) = 0
trigger1 = vel Y >= 0
y = -4.5

[State 826, 速度]
type = Veladd
trigger1 = animelemtime(1) >= 0 && animelemtime(8) < 0
y = -0.3

[State 826, 幻影刀カウント]
type = varset
trigger1 = time = 0
var(1) = 0

[State 826, ヒット定義-スナッチ後]
type = HitDef
triggerall = Time = 0
trigger1 = numtarget(230)>0
trigger2 = numtarget(1230)>0
attr = A, ST
hitflag = MAF
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 826, ヒット定義]
type = HitDef
trigger1 = time = 0
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = A, ST
hitflag = A-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 826, ヒット定義-幻影刀後]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger1 = var(8)<21
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = A, ST
hitflag = A
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 826, 音]
type = PlaySnd
trigger1 = Time = 2
value = 800, random%4
channel = 0

[State 826, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 901
ID = 901
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 826, エフェクト]
type = Explod
trigger1 = time = 4
anim = 803
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 826, ステート変更]
type = ChangeState
Trigger1 = movehit
value = 815
ctrl = 0

[State 826, コントロール]
type = null;CtrlSet
trigger1 = animelemtime(9) = 0
value = 1

[State 826, ステート変更]
type = null;ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;カットラス
[Statedef 815]
type    = U
movetype= A
physics = N
anim = 815 + 10*(statetype = S)
sprpriority = 0
poweradd = 100
velset = 0,0

[State 815, 座標]
type = posadd
trigger1 = time = 0
trigger1 = pos Y < -15
y = 20

[State 815, 掴んだ相手のステート変更]
type = TargetState
trigger1 = time = 0
value = 817

[State 815, 掴み]
type = envshake
trigger1 = time = 0
time = 20

[State 815, 投げ]
type = envshake
trigger1 = AnimElemtime(16) >= 0
trigger1 = pos Y > -30
time = 20
ampl = -5
persistent = 0

[State 815, 掴みエフェクト]
type = Explod
trigger1 = time = 0
anim = 804
pos = -45+15*(statetype = S),-20-5*(statetype = S)
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 3

[State 815, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 816 + 10*(statetype = S)
id = 816
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1

[State 815, 投げエフェクト]
type = Explod
trigger1 = AnimElemtime(16) >= 0
trigger1 = pos Y > -40
anim = 808
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = 3
persistent = 0

[State 815, 音]
type = PlaySnd
trigger1 = time = 25
value = 815, random%3

[State 815, 音]
type = PlaySnd
trigger1 = AnimElemtime(16) >= 0
trigger1 = pos Y > -40
value = 815, 10+random%2
persistent = 0

[State 815, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = -5 +15*(statetype = S), -170 -5*(statetype = S)

[State 815, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 5, -95 +15*(statetype = S)

[State 815, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = -60, 5

[State 815, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -70, -60

[State 815, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -55, -140

[State 815, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 60, -170

[State 815, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 60, -80

[State 815, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = -25, -60

[State 815, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -80, -180

[State 815, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = 15, -190

[State 815, Bind 11]
type = TargetBind
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = 60, -130

[State 815, Bind 12]
type = TargetBind
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = 45, -45

[State 815, Bind 13]
type = TargetBind
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = -50, -45

[State 815, Bind 14]
type = TargetBind
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
pos = -55, -140

[State 815, Bind 15]
type = TargetBind
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
pos = 35, -120

[State 815, Bind 16]
type = TargetBind
trigger1 = AnimElemTime(16) >= 0
pos = 55, 40

[State 815, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElemtime(16) >= 0
trigger1 = pos Y > -40
value = -ceil(170*ifelse(fvar(0)=0.65,1,0.8) + var(1) * 15)
persistent = 0

[State 815, 幅]
type = Width
trigger1 = 1
edge = 60,0

[State 815, 地上時静止]
type = posfreeze
trigger1 = statetype = S
trigger1 = AnimElemtime(1) >= 0 && AnimElemtime(3) < 0

[State 815, ジャンプ]
type = velset
trigger1 = AnimElemtime(3) = 0
x = 1.5
y = -7-((statetype = S)*2)

[State 815, ステタイプ]
type = statetypeset
trigger1 = AnimElemtime(3) = 0
statetype = A

[State 815, 重力]
type = veladd
trigger1 = AnimElemtime(2) >= 0; && AnimElemtime(16) < 0
y = 0.2 + (AnimElemtime(16) >= 0)*0.6

[State 815, 降下]
type = velset
trigger1 = AnimElemtime(16) = 0
x = 3
y = 13

[State 815, ステート変更]
type = ChangeState
trigger1 = AnimElemtime(16) >= 0
trigger1 = pos Y > -30
value = 820
ctrl = 0

;---------------------------------------------------------------------------
;カットラス相手
[Statedef 817]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 817, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 817

[State 817, 回転]
type = AngleDraw
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger2 = animelemtime(16) >= 0 && GetHitVar(IsBound)
value = 90

[State 817, 回転]
type = AngleDraw
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger2 = animelemtime(3) >= 0 && animelemtime(6) < 0
trigger3 = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger4 = animelemtime(14) >= 0 && animelemtime(15) < 0
value = 270

[State 817, 回転]
type = AngleDraw
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger3 = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger4 = animelemtime(10) >= 0 && animelemtime(14) < 0
trigger5 = animelemtime(15) >= 0 && animelemtime(16) < 0
trigger6 = !GetHitVar(IsBound)
value = 0

[State 817, 速度]
type = velset
trigger1 = !GetHitVar(IsBound)
x = -2
y = 0

[State 817, 座標]
type = posset
trigger1 = !GetHitVar(IsBound)
y = 0

[State 817, ]
type = Hitfallset
trigger1 = 1
value = 0

[State 817, 相手ステートに戻す]
type = SelfState
trigger1 = !GetHitVar(IsBound)
value = 5100

;---------------------------------------------------------------------------
;カットラス着地
[Statedef 820]
type    = A
movetype= A
physics = A
anim = 820
sprpriority = 1

[State 820, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 821
id = 821
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 820, 音]
type = null;PlaySnd
trigger1 = time = 20
value = 800, 4

[State 820, 座標]
type = Posset
trigger1 = time = 0
y = -30

[State 820, ジャンプ]
type = velset
trigger1 = time = 0
x = -2.5
y = -12

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;バスター空
[Statedef 900]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 900
sprpriority = -1
poweradd = 50

[State 900, 速度]
type = Velset
trigger1 = animelemtime(2) = 0
trigger1 = vel Y >= 0
y = -4.5

[State 900, 速度]
type = Veladd
trigger1 = animelemtime(1) >= 0 && animelemtime(8) < 0
y = -0.3

[State 900, 幻影刀カウント]
type = varset
trigger1 = time = 0
var(1) = 0

[State 900, ヒット定義-スナッチ後]
type = HitDef
triggerall = Time = 0
trigger1 = numtarget(230)>0
trigger2 = numtarget(1230)>0
attr = A, ST
hitflag = MAF
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 900, ヒット定義]
type = HitDef
trigger1 = time = 0
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = A, ST
hitflag = MA-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 900, ヒット定義-幻影刀後]
type = HitDef
trigger1 = animelemtime(3) = 0
trigger1 = var(8)<21
trigger1 = numtarget(230)=0
trigger1 = numtarget(1230)=0
attr = A, ST
hitflag = MA
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 805
;p2stateno = 809
guard.dist = 0
fall = 1

[State 900, 音]
type = PlaySnd
trigger1 = Time = 2
value = 800, random%4
channel = 0

[State 900, 右手エフェクト]
type = Explod
trigger1 = time = 0
anim = 901
ID = 901
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 0
removeongethit = 1

[State 900, エフェクト]
type = Explod
trigger1 = time = 4
anim = 803
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 900, ステート変更]
type = ChangeState
Trigger1 = movehit
value = 815
ctrl = 0

[State 900, コントロール]
type = null;CtrlSet
trigger1 = animelemtime(9) = 0
value = 1

[State 900, ステート変更]
type = null;ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===========================================================================
;チャージ3
[Statedef 1200]
type    = S
movetype= A
physics = S
anim = 1200
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1200, ゲージ]
type = poweradd
trigger1 = time = 0
value = -1000

[State 1200, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 1200, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0 || animelemtime(7) = 0
anim = 1201
ID = 1200
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 1200, 座標移動]
type = PosAdd
trigger1 = AnimElem = 10
x = -19

[State 1200, 音]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 1200, 0
channel = 0

[State 1200, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = ceil(150*fvar(0)), 20
priority  = 5
guardflag = MA
sparkxy = 0,-65
hitsound   = S0,12
guardsound = 6,0
ground.type = high
ground.slidetime  = 25
ground.hittime = 25
guard.slidetime = 24
guard.hittime = 24
air.hittime = 25
ground.velocity = -6
ground.cornerpush.veloff = 0 ;相手が画面端の場合、自分に「ヒットバック」の速度を与える
guard.velocity = -12
air.velocity = -3.5,-4.5
airguard.velocity = -3.5,-4.5
guard.kill = 0
id=1200

[State 1200, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 1200, 幻影刀用タイマー];-3へ
type = varset
trigger1 = animelem = 3
var(2) = 0
ignorehitpause=1
persistent = 0

[State 1200, 幻影刀右上]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1211
postype = p1
stateno = 1210
ownpal = 1

[State 1200, 幻影刀左中]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1212
postype = p1
stateno = 1210
ownpal = 1
size.xscale = 0.375
size.yscale = 0.125

[State 1200, 幻影刀右下]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1213
postype = p1
stateno = 1210
ownpal = 1

[State 1200, 幻影刀左下]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1214
postype = p1
stateno = 1210
ownpal = 1
size.xscale = 0.375
size.yscale = 0.375

[State 1200, 幻影刀右中]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1215
postype = p1
stateno = 1210
ownpal = 1
size.xscale = 0.625
size.yscale = 0.25

[State 1200, 幻影刀左上]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1216
postype = p1
stateno = 1210
ownpal = 1
size.xscale = 0.375
size.yscale = 0.375

[State 1200, コントロール]
type = null;CtrlSet
trigger1 = AnimElemTime(16) = 0
value = 1

[State 1200, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(16) = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;幻影刀ヘルパー
[Statedef 1210]
type     = S
movetype = A
physics  = N
ctrl     = 0
sprpriority = 3

[State 1210, ]
type = changestate
trigger1 = !root,alive
trigger2 = roundstate != 2
value = 1212

[State 1210, 出現アニメ]
type = changeanim
trigger1 = time = 0
value = ifelse((ishelper(1213) || ishelper(1214)),1216,1215)

[State 1210, アニメ]
type = changeanim
trigger1 = anim = 1215 || anim = 1216
trigger1 = animtime = 0
value = ifelse((ishelper(1213) || ishelper(1214)),1214,1213)

[State 1210, 奥表示]
type = sprpriority
trigger1 = ishelper(1212) || ishelper(1214) || ishelper(1216)
trigger1 = time = 16
value = -2

[State 1210, 位置0]
type = BindToParent
trigger1 = anim = 1215 || anim = 1216
pos = (cos((time + 3)*pi/15)*60-10),(cos((time - 1)*pi/15)*(ifelse((ishelper(1212) || ishelper(1215)),5,40))*(ifelse((ishelper(1211) || ishelper(1215)),1,-1))-50)

[State 1210, 位置1]
type = BindToParent
trigger1 = ishelper(1211) && anim = 1213
trigger1 = root,var(2) < 45
pos = -40,-90
facing = 1

[State 1210, 位置2]
type = BindToParent
trigger1 = ishelper(1212) && anim = 1213
trigger1 = root,var(2) < 58
pos = 15,-65
facing = 1

[State 1210, 位置3]
type = BindToParent
trigger1 = ishelper(1213) && anim = 1214
trigger1 = root,var(2) < 71
pos = -35,-20
facing = 1

[State 1210, 位置4]
type = BindToParent
trigger1 = ishelper(1214) && anim = 1214
trigger1 = root,var(2) < 84
pos = 0,-30
facing = 1

[State 1210, 位置5]
type = BindToParent
trigger1 = ishelper(1215) && anim = 1213
trigger1 = root,var(2) < 97
pos = -55,-55
facing = 1

[State 1210, 位置6]
type = BindToParent
trigger1 = ishelper(1216) && anim = 1213
trigger1 = root,var(2) < 110
pos = 5,-100
facing = 1

[State 1210, 速度]
type = velset
triggerall = root,anim != [805,815]
trigger1 = ishelper(1211)
trigger1 = root,var(2) >= 45
trigger2 = ishelper(1212)
trigger2 = root,var(2) >= 58
trigger3 = ishelper(1213)
trigger3 = root,var(2) >= 71
trigger4 = ishelper(1214)
trigger4 = root,var(2) >= 84
trigger5 = ishelper(1215)
trigger5 = root,var(2) >= 97
trigger6 = ishelper(1216)
trigger6 = root,var(2) >= 110
x = 20 * ifelse((parent,P2Dist X = 0),0,(cos(atan(abs(parent,P2Dist Y)/abs(parent,P2Dist X))))) * ifelse((P2Dist X < 0),-1,1)
y = 20 * ifelse((parent,P2Dist X = 0),1,(sin(atan(abs(parent,P2Dist Y)/abs(parent,P2Dist X))))) * ifelse((P2Dist Y < 0),-1,1)
persistent = 0

[State 1210, 音]
type = PlaySnd
trigger1 = vel X != 0 || vel Y != 0
value = 1200, 1
IgnoreHitPause = 1
Persistent = 0

[State 1210, ヒット定義]
type = HitDef
triggerall = root,anim != [805,815]
trigger1 = time = 0 || root,anim=230
attr = S, SP
animtype  = Light
damage    = 15
priority  = 3
pausetime = 5,5
guardflag = MA
hitflag = MAFDP
ground.type = Low
ground.hittime  = 15
ground.slidetime = 15
guard.hittime  = 10
guard.slidetime = 10
air.hittime = 20
ground.velocity = 1*(ifelse(root,anim=230||root,prevstateno=230,5,-1.5))
guard.velocity = -6
air.velocity = -4,-3
guard.dist = 180
kill = 0

[State 1210, T無効]
type = NotHitBy
trigger1 = 1
value = ,AT

[State 1210, ダメ時]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 1212
IgnoreHitPause = 1

[State 1210, ヒット時変数]
type = parentvarset
trigger1 = Movehit > 0
var(8) = 0
IgnoreHitPause = 1
persistent = 0

[State 1210, ヒット・画面外時]
type = changestate
triggerall = root,anim != [805,815]
trigger1 = MoveContact > 0
trigger2 = screenpos X != [-120,599]
trigger3 = screenpos Y != [-240,599]
trigger4 = root,var(2) >= 140
value = 1212
IgnoreHitPause = 1

[State 1210, バスター中速度]
type = velset
triggerall = root,anim = 805
triggerall = (vel X = 0) && (vel Y = 0)
trigger1 = ishelper(1211)
trigger1 = root,var(2) >= 2000
trigger2 = ishelper(1212)
trigger2 = root,var(2) >= 2000
trigger3 = ishelper(1213)
trigger3 = root,var(2) >= 3000
trigger4 = ishelper(1214)
trigger4 = root,var(2) >= 3000
trigger5 = ishelper(1215)
trigger5 = root,var(2) >= 4000
trigger6 = ishelper(1216)
trigger6 = root,var(2) >= 4000
x = ceil(((parentdist X) + 65)/5)
y = ceil(((parentdist Y) - 160)/5)
persistent = 0

[State 1210, バスター中速度]
type = velset
triggerall = root,anim = 810
triggerall = (vel X = 0) && (vel Y = 0)
trigger1 = ishelper(1211)
trigger1 = root,var(2) >= 2000
trigger2 = ishelper(1212)
trigger2 = root,var(2) >= 2000
trigger3 = ishelper(1213)
trigger3 = root,var(2) >= 3000
trigger4 = ishelper(1214)
trigger4 = root,var(2) >= 3000
trigger5 = ishelper(1215)
trigger5 = root,var(2) >= 4000
trigger6 = ishelper(1216)
trigger6 = root,var(2) >= 4000
x = ceil(((parentdist X) + 85)/5)
y = ceil(((parentdist Y) - 75)/5)
persistent = 0

[State 1210, バスター中速度]
type = velset
triggerall = root,anim = 815 || root,anim = 825
triggerall = (vel X = 0) && (vel Y = 0)
trigger1 = ishelper(1211)
trigger1 = root,var(2) >= 2000
trigger2 = ishelper(1212)
trigger2 = root,var(2) >= 2000
trigger3 = ishelper(1213)
trigger3 = root,var(2) >= 3000
trigger4 = ishelper(1214)
trigger4 = root,var(2) >= 3000
trigger5 = ishelper(1215)
trigger5 = root,var(2) >= 4000
trigger6 = ishelper(1216)
trigger6 = root,var(2) >= 4000
x = ceil(((parentdist X) - 5)/5)
y = ceil(((parentdist Y) - 170)/5)
persistent = 0

[State 1210, バスター中カウント]
type = parentvaradd
triggerall = root,anim = [805,815]
trigger1 = parentdist X = [-75,-55]
trigger2 = parentdist Y = [150,170]
var(1) = 1
IgnoreHitPause = 1
persistent = 0

[State 1210, バスター中消滅]
type = changestate
triggerall = root,anim = [805,815]
trigger1 = parentdist X = [-75,-55]
trigger2 = parentdist Y = [150,170]
value = 1212
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;幻影刀消滅
[Statedef 1212]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 1212
sprpriority = 3
velset = 0,0

[State 1210, 音]
type = PlaySnd
trigger1 = time = 0
value = 1200, 2

[State 1212, ]
type = DestroySelf
trigger1 = animtime = 0




;===========================================================================


;===========================================================================
; ＡＩ用
;===========================================================================
[Statedef 10000]
anim=10000
ctrl=0

[State 10000,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 10000,プレイヤー判定]
type=varset
trigger1=command="up"&&root,command="up"
trigger2=command="down"&&root,command="down"
trigger3=command="back"&&root,command="back"
trigger4=command="fwd"&&root,command="fwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
trigger11=command="start"&&root,command="start"
var(59)=-1

[State 10000,立ったら消失]
Type = DestroySelf
triggerAll = isHelper
Trigger1 = root,var(59)||var(59)=-1
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
trigger12=command="start"&&root,command="start"

[State 10000,ﾌﾗｸﾞON]
type=varset
triggerall=var(59)!=-1
trigger1=root,command="up"
trigger2=root,command="down"
trigger3=root,command="back"
trigger4=root,command="fwd"
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
trigger11=root,command="start"
var(59)=1
