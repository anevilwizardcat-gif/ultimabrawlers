;---------------------------------------------------------------------------
;セービングアタック
[Statedef 900]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= ifelse((prevstateno = [200,1300]),-500,0)
ctrl = 0
velset = 0,0
;anim = 900
sprpriority = 1

[State 250, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9002
trigger1 = time = 0
value = 900

[State 9000, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = prevstateno = [200,1300]
v = 24
value = 1

[State 9000, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = PrevStateNo != 9002 && prevstateno != [200,1300]
v = 24
value = 0

[State 7031, アーマー]
type = Hitoverride
trigger1 = var(24) = 0
time = 1
attr = SCA,AA,AP
slot = 1
stateno = 9002

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 2
Value = S0, 3
Channel = 1

[State 100, PlaySnd]
Type = PlaySnd
trigger1 = var(26) = 0
Trigger1 = time = 0
Value = S900, 1
Channel = 0


[State 900, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1115, 1]
type = AfterImage
triggerall = (prevstateno = [200,1300])
trigger1 = Time = 0
time = -1
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

[State 1200]
type = attackdist
trigger1 = time >= 0
value = 0


[State 900, 音を鳴らす]
type = PlaySnd
triggerall = (prevstateno = [200,1300])
trigger1 = Time = 0
value = s2, 0

[State 900, ボタン溜め];ボタンが押しっぱなしになっている事を判断
type = VarSet
triggerall = Var(59) = 0 && Alive && roundstate = 2
trigger1 = (Time >= 1)
v = 25
value = (command="hold_y") && (command="hold_b")
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, ボタン溜め];ボタンが押しっぱなしになっている事を判断
type = VarSet
triggerall = Var(59) > 0 && Alive && roundstate = 2
triggerall = (Time >= 1)
trigger1 = EnemyNear(var(58)),MoveType = A
trigger1 = EnemyNear(var(58)),Statetype != L
trigger2 = EnemyNear(var(58)),Statetype = L
v = 25
value = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間];ボタンが押しっぱなしなら変数の値を増やしていく
type = VarAdd
trigger1 = (var(25) = 1)
v = 26
value = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1


[State 900, 画像の色]
type = PalFX
triggerall = (Alive)
trigger1 = var(26) = 17
time = 3
add = 255,255,255
sinadd = 0,0,0,0
pausemovetime = 99999999
IgnoreHitPause = 1



[state 902]
type = varset
trigger1 = time=0
var(23) = 0
Persistent = 0
IgnoreHitPause = 1

[State 900]
type = ChangeState
triggerall = var(59) = 0
trigger1 = (command = "FF")
value = 100

[State 900]
type = ChangeState
triggerall = var(59) = 0
trigger1 = (command = "BB")
value = 105


;------------------------------------------
;AI用ダッシュキャンセル
[State 902]
type = ChangeState
triggerall = (var(59) > 0) && (RoundState = 2)
trigger1 = (p2bodydist x > 50) && (EnemyNear(var(58)),StateType != L)
trigger2 = EnemyNear(var(58)),stateno = [105,106]
value = 100
ignorehitpause=1
persistent=0

[State 902]
type = ChangeState
triggerall = (var(59) > 0) && (RoundState = 2)
trigger1 = (p2bodydist x < 0) && (EnemyNear(var(58)),StateType != L)
trigger2 = EnemyNear(var(58)),StateType = A
trigger2 = var(24) = 1
trigger3 = EnemyNear(var(58)),MoveType = A
trigger3 = random < 50
value = 105
ignorehitpause=1
persistent=0
;------------------------------------------



[State 900, 分岐]
type = ChangeState
triggerall = (Time >= 1) && (var(26) >= 0)
trigger1 = (var(25) = 0)
trigger2 = (var(26) > 50)
value = ifelse((var(26)>50),903,ifelse((var(26)=[17,49]),902,901))
Persistent = 0

;-------------------------------------------------------
;セービングアタックLV1(攻撃)
[Statedef 901]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
;anim = 901
sprpriority = 1

[State 250, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9002
trigger1 = time = 0
value = 901

[State 1000, Explod]
Type = Explod
trigger1 =  AnimElem = 2
Anim = 6020
ID = 6020
Pos = ceil(20*const(size.xscale)), 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1

[State 630, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0, 4
channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S901, 0
Channel = 0

;----------------------------------
[State 902, ヒット定義(相手空中)]
type = HitDef
triggerall = enemynear,statetype = A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, SA
animtype  = hard
damage    = 50,0
hitflag = MAF 
guardflag = M
pausetime = 11,10
guard.pausetime = 11,10
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 14
ground.hittime  = 13
ground.velocity = -7*const(size.xscale)
air.velocity = -2.5*const(size.xscale),-3.5*const(size.yscale)
air.fall = 1
air.recover = 0
fall.recover = 0
fall = 1
numhit = 1
id = 901

[State 902, ヒット定義(相手地上)]
type = HitDef
triggerall = enemynear,statetype != A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, SA
animtype  = hard
damage    = 50,0
getpower = 0,0
givepower = 20,10
hitflag = MAF 
guardflag = M
pausetime = 11,10
guard.pausetime = 11,10
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 14
guard.slidetime = 14
ground.hittime  = 14
guard.hittime = 14
air.hittime = 0
ground.velocity = -7*const(size.xscale)
air.velocity = -2.5*const(size.xscale),-3.5*const(size.yscale)
air.fall = 1
fall.recover = 0
numhit = 1
id = 901
nochainID = 901
ground.cornerpush.veloff = -10.*const(size.xscale)
guard.cornerpush.veloff = -10.*const(size.xscale)


[State 902, ヒット定義(相手地上＋カウンターヒット)]
type = HitDef
triggerall = fvar(14) > 1
triggerall = enemynear,statetype != A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, SA
animtype  = hard
damage    = 50,0
getpower = 0,0
givepower = 20,10
hitflag = MAF 
guardflag = M
pausetime = 11,10
guard.pausetime = 11,10
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 14
guard.slidetime = 14
ground.hittime  = 14
guard.hittime = 14
air.hittime = 0
ground.velocity = -7*const(size.xscale)
air.velocity = -2.5*const(size.xscale),-3.5*const(size.yscale)
air.fall = 1
fall.recover = 0
numhit = 1
id = 901
nochainID = 901
ground.cornerpush.veloff = -10.*const(size.xscale)
guard.cornerpush.veloff = -10.*const(size.xscale)

[State -2, 変数セット]
Type = Varadd
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = movehit
fvar(31) = 0.1
Persistent = 0

[State 1115]
type = AfterImageTime
trigger1 = animelemtime(6) = 0
time = 0

[state 902]
type = varset
trigger1 = time=0
var(23) = 0

[State 1200]
type = attackdist
trigger1 = AnimelemTime(4) >= 0
value = 0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 7

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
;------------------------------------------
;AI用ダッシュキャンセル
[State 902]
type = VarSet
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = movehit = 1
trigger1 = (p2bodydist x = [0,100]) && (EnemyNear,StateType != L)
var(23) = 100
ignorehitpause=1
persistent=0

[State 902]
type = VarSet
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = moveguarded =1
trigger1 = p2bodydist x < 50 && (EnemyNear,StateType != L)
var(23) = 105
ignorehitpause=1
persistent=0
;------------------------------------------


[State 902,ヒット定義(相手地上)]
type = TargetState
trigger1 = movehit =1
trigger1 = enemynear,statetype != A 
value = 905

[State 902,ヒット定義(相手地上)+カウンターヒット]
type = TargetState
triggerall = var(14) = 1
trigger1 = movehit =1
trigger1 = enemynear,statetype != A
value = 906


;------------------------------------------
;プレイヤー操作用ダッシュキャンセル
[State 902]
type = Changestate
triggerall = var(59) = 0
triggerall = movecontact
trigger1 = (command = "FF")
value = 100
persistent=0

[State 902]
type = Changestate
triggerall = var(59) = 0
triggerall = movecontact
trigger1 = (command = "BB")
value = 105
persistent=0
;------------------------------------------

[State 902]
type = ChangeState
trigger1 = var(23)
value = var(23)

[State 902, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
;セービングアタックLV2(攻撃)

[Statedef 902]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
;anim = 901
sprpriority = 1

[State 250, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9002
trigger1 = time = 0
value = 901

[State 7031, アーマー]
type = Hitoverride
trigger1 = var(38) = 1
time = 1
attr = SCA,AA,AP
slot = 1
stateno = 9002

[State 1000, Explod]
Type = Explod
trigger1 =  AnimElem = 2
Anim = 6020
ID = 6020
Pos = ceil(20*const(size.xscale)), 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1

[State 1000, Explod]
Type = Explod
trigger1 =  AnimElem = 2
Anim = 7040
ID = 7040
Pos = ceil(0*const(size.xscale)), 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
bindtime = -1
IgnoreHitPause = 1

[State 630, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0, 4
channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S902, 0
Channel = 0

[State 903, ヒット定義]
type = HitDef
triggerall = enemynear,statetype = A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, SA
animtype  = Hard
damage    = 70,0
hitflag = MAF
guardflag = M
pausetime = 11,10
guard.pausetime = 11,10
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 14
ground.hittime  = 13
ground.velocity = -7
air.velocity = -2.5,-3.5
air.fall = 1
numhit = 1
id = 902
nochainID = 901
fall.recover = 0
ground.cornerpush.veloff = -10.*const(size.xscale)
guard.cornerpush.veloff = -10.*const(size.xscale)


[State 903, ヒット定義]
type = HitDef
triggerall = enemynear,statetype != A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, SA
animtype  = Hard
damage    = 70,0
hitflag = MAF
guardflag = M
pausetime = 11,10
guard.pausetime = 11,10
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 20
guard.slidetime = 20
ground.hittime  = 20
guard.hittime = 20
air.hittime = 0
ground.velocity = -8.5
air.velocity = -2.5,-3.5
air.fall = 1
fall.recover = 0
numhit = 1
id = 902
nochainID = 901
ground.cornerpush.veloff = -10.*const(size.xscale)
guard.cornerpush.veloff = -10.*const(size.xscale)

[State 1115]
type = AfterImageTime
trigger1 = animelemtime(6) = 0
time = 0

[state 902]
type = varset
trigger1 = time=0
var(23) = 0

[State 1200]
type = attackdist
trigger1 = AnimelemTime(4) >= 0
value = 0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 7

[State -2, 変数セット]
Type = Varadd
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = movehit
fvar(31) = 0.1
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 150
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1
;------------------------------------------
;AI用ダッシュキャンセル
[State 902]
type = VarSet
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = movehit = 1
trigger1 = (p2bodydist x = [0,100]) && (EnemyNear,StateType != L)
var(23) = 100
ignorehitpause=1
persistent=0

[State 902]
type = VarSet
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = moveguarded =1
trigger1 = p2bodydist x < 50 && (EnemyNear,StateType != L)
var(23) = 105
ignorehitpause=1
persistent=0

;------------------------------------------
;プレイヤー操作用ダッシュキャンセル
[State 902]
type = Changestate
triggerall = var(59) = 0
triggerall = movecontact
trigger1 = (command = "FF")
value = 100
persistent=0

[State 902]
type = Changestate
triggerall = var(59) = 0
triggerall = movecontact
trigger1 = (command = "BB")
value = 105
persistent=0
;------------------------------------------


;------------------------------------------

[State 902,ヒット定義(相手地上)]
type = TargetState
trigger1 = movehit =1
trigger1 = p2statetype != A 
value = 906

[State 902]
type = ChangeState
triggerall = movecontact=1
trigger1 = var(23)
value = var(23)


[State 902, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
;セービングアタックLV3(攻撃)

[Statedef 903]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
;anim = 901
sprpriority = 1

[State 250, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9002
trigger1 = time = 0
value = 903

[State 7031, アーマー]
type = Hitoverride
trigger1 = var(24) = 0
trigger1 = time = 0
time = 11
attr = SCA,NA,SA,NP,SP
slot = 1
stateno = 9002

[State 1000, Explod]
Type = Explod
trigger1 =  AnimElem = 2
Anim = 6020
ID = 6020
Pos =  ceil(20*const(size.xscale)), 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1

[State 1000, Explod]
Type = Explod
trigger1 =  AnimElem = 2
Anim = 7040
ID = 7040
Pos = ceil(0*const(size.xscale)), 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
bindtime = -1
IgnoreHitPause = 1

[State 1200]
type = attackdist
trigger1 = 1
value = 0

[State 904,ガード不能]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 630, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0, 4
channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S903, 0
Channel = 0

[State 904, ヒット定義]
type = HitDef
triggerall = enemynear,statetype = A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, ST
animtype  = diagup
damage    = 100,0
getpower = 0,0
givepower = 60,30
guardflag = MA
pausetime = 10,18
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 27
guard.slidetime = 27
ground.hittime  = 27
guard.hittime = 27
air.hittime = 0
ground.velocity = -10
air.velocity = -2.5,-3.5
guard.dist = 0 ;相手のガード態勢に入る距離を０にしてるので、ガード不可
air.fall = 1
fall = 1
fall.recover = 0
numhit = 1
id = 903
nochainID = 901
ground.cornerpush.veloff = -10.*const(size.xscale)
guard.cornerpush.veloff = -10.*const(size.xscale)


[State 904, ヒット定義]
type = HitDef
triggerall = enemynear,statetype != A
trigger1 = AnimElem = 3
Persistent = 0
attr = S, ST
animtype  = hard
damage    = 100,0
getpower = 0,0
givepower = 60,30
guardflag = MA
pausetime = 10,18
sparkno = s6002
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = s1,3
guardsound = s120,0
guard.sparkno = s6005
ground.type = Low
ground.slidetime = 28
guard.slidetime = 28
ground.hittime  = 28
guard.hittime = 28
air.hittime = 0
ground.velocity = -7
air.velocity = -2.5,-6.5
guard.dist = 0 ;相手のガード態勢に入る距離を０にしてるので、ガード不可
air.fall = 1
fall.recover = 0
numhit = 1
id = 903
nochainID = 901
ground.cornerpush.veloff = -10.*const(size.xscale)
guard.cornerpush.veloff = -10.*const(size.xscale)

[State 1115]
type = AfterImageTime
trigger1 = animelemtime(6) = 0
time = 0

[State -2, 変数セット]
Type = Varadd
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = movehit
fvar(31) = 0.1
Persistent = 0

[state 902]
type = varset
trigger1 = time=0
var(23) = 0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 7

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 200
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;------------------------------------------
;プレイヤー操作用ダッシュキャンセル
[State 902]
type = Changestate
triggerall = var(59) = 0
triggerall = movecontact
trigger1 = (command = "FF")
value = 100
persistent=0

[State 902]
type = Changestate
triggerall = var(59) = 0
triggerall = movecontact
trigger1 = (command = "BB")
value = 105
persistent=0
;------------------------------------------

;------------------------------------------
;AI用ダッシュキャンセル
[State 902]
type = VarSet
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = movehit = 1
trigger1 = (p2bodydist x = [0,100]) && (EnemyNear,StateType != L)
var(23) = 100
ignorehitpause=1
persistent=0

[State 902]
type = VarSet
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = moveguarded =1
trigger1 = p2bodydist x < 50 && (EnemyNear,StateType != L)
var(23) = 105
ignorehitpause=1
persistent=0
;------------------------------------------

[State 902,ヒット定義(相手地上)]
type = TargetState
trigger1 = movehit =1
trigger1 = p2statetype != A 
value = 907

[State 902]
type = ChangeState
triggerall = movecontact=1
trigger1 = var(23)
value = var(23)

[State 902, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------
;セービングアタックLV1
[Statedef 905]
type    = S
movetype= H
physics = S
ctrl = 0
velset = -7,0

[State 910]
type=posset
trigger1= 1
y=0

[State 910, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 905



[State 910, 相手ステートに戻す]
type = SelfState
trigger1 = time = 30
value = 0
ctrl = 1
;-------------------------------------------------
;セービングアタックLV2
[Statedef 906]
type    = S
movetype= H
physics = S
ctrl = 0
velset = -8,0

[State 911, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Selfanimexist(5950) = 0
trigger1 = time = 0
value = 906

[state 932]
type = ChangeAnim2
trigger1 = Selfanimexist(5950) = 0
trigger1 = time=50
value = 908

[State 1027, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Selfanimexist(5950) = 1
Trigger1 = time = 0
value = 5950

[State 911]
type=posset
trigger1= 1
y=0

[State 911]
type=velset
trigger1= 1
y=0


[State 911]
type = StatetypeSet
trigger1 = time = 50
statetype = A
physics = N

[State 911]
type = Hitfallset
trigger1 = time = 50
value = 1


[State 911, 相手ステートに戻す]
type = SelfState
trigger1 = time = 85
value = 5110


;-------------------------------------------------
;セービングアタックLV3
[Statedef 907]
type    = S
movetype= H
physics = S
ctrl = 0
velset = -9,0

[State 1027, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Selfanimexist(5950) = 1
Trigger1 = time = 0
value = 5950

[State 912, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Selfanimexist(5950) = 0
trigger1 = time = 0
value = 907

[state 932]
type = ChangeAnim2
trigger1 = Selfanimexist(5950) = 0
trigger1 = time=60
value = 908

[State 912]
type=posset
trigger1= 1
y=0

[State 912]
type=velset
trigger1= 1
y=0

[State 911]
type = StatetypeSet
trigger1 = time = 60
statetype = A
physics = N

[State 911]
type = Hitfallset
trigger1 = time = 60
value = 1

[State 912, 相手ステートに戻す]
type = SelfState
trigger1 = time = 90
value = 5110

;---------------------------------------------------------------------------
;移動起き上がり(前方)
[Statedef 910]
type     = L
movetype = H
physics  = N
ctrl     = 0
anim     = 910
velset   = 0,0
facing = 1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S40, 1
Channel = 0

[State 960]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 960]
type = VelSet
trigger1 = Time = 0
Y = 0


[State 960]
type = VelSet
trigger1 = Animelem = 2
x = 6

[State 1000, Explod]
Type = Explod
trigger1 =  time = 0
Anim = 6020
ID = 6020
Pos = 0, 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1

[State 960]
type = HitBy
trigger1 = 1
value = SCA,AT

[State 960]
type = PlayerPush
trigger1 = 1
value = 0

[State 960]
type = AfterImage
trigger1 = time = 0
time = 30
trans = add
length   = 4
timegap  = 2
framegap = 1
PalContrast = 0, 0, 200
PalAdd = -60, -60, -60
PalMul = 1, 1, 1
IgnoreHitPause = 1
Persistent = 1

[State 960]
type = AfterImageTime
trigger1 = Time = 60
time = 0

[State 960, ステート変更]
type = ChangeState
triggerall = var(59) = 0 && RoundState = 2
triggerall = animelemtime(2) >= 0
trigger1 = animtime = 0
trigger2 = command != "holdfwd"
value = 912
ctrl = 0

[State 960, ステート変更]
type = ChangeState
triggerall = var(59) > 0 && RoundState = 2
triggerall = animelemtime(2) >= 0
trigger1 = animtime = 0
trigger2 = P2BodyDist X < ceil(-120*const(size.xscale))
value = 912
ctrl = 0

;---------------------------------------------------------------------------
;移動起き上がり(後方)
[Statedef 911]
type     = L
movetype = H
physics  = N
ctrl     = 0
anim     = 911
velset   = 0,0

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S40, 1
Channel = 0

[State 960]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 960]
type = VelSet
trigger1 = Time = 0
Y = 0


[State 960]
type = VelSet
trigger1 = Animelem = 2
x = -6

[State 1000, Explod]
Type = Explod
trigger1 =  time = 0
Anim = 6020
ID = 6020
Pos = 0, 0
scale = (const(size.xscale)),(const(size.yscale))
PosType = P1
SprPriority = 2
OnTop = 0
OwnPal = 1
IgnoreHitPause = 1
facing = -1

[State 960]
type = HitBy
trigger1 = 1
value = SCA,AT

[State 960]
type = PlayerPush
trigger1 = 1
value = 0

[State 960]
type = AfterImage
trigger1 = time = 0
time = 38
trans = add
length   = 4
timegap  = 2
framegap = 1
PalContrast = 0, 0, 200
PalAdd = -60, -60, -60
PalMul = 1, 1, 1
IgnoreHitPause = 1
Persistent = 1

[State 960]
type = AfterImageTime
trigger1 = animelemtime(11) = 0
time = 0

[State 960, ステート変更]
type = ChangeState
triggerall = var(59) = 0 && RoundState = 2
triggerall = animelemtime(2) >= 0
trigger1 = animtime = 0
trigger2 = command != "holdback"
value = 913
ctrl = 0

[State 960, ステート変更]
type = ChangeState
triggerall = var(59) > 0 && RoundState = 2
triggerall = animelemtime(2) >= 0
trigger1 = animtime = 0
trigger2 = P2BodyDist X >= ceil(100*const(size.xscale))
value = 913
ctrl = 0

;---------------------------------------------------------------------------
;移動起き上がり(後方)
[Statedef 912]
type     = L
movetype = H
physics  = N
anim     = 912
velset   = 0,0

[State 960]
type = HitBy
trigger1 = 1
value = SCA,AT

[State 960, ステート変更]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;移動起き上がり(後方)
[Statedef 913]
type     = L
movetype = H
physics  = N
anim     = 913
velset   = 0,0

[State 960]
type = HitBy
trigger1 = 1
value = SCA,AT

[State 960, ステート変更]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;===========================================================================
;カウンター
[Statedef 920]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 240
sprpriority = 1
poweradd = -500

[State 1200]
type = Explod
trigger1 = animelem = 1
anim = 241
ID = 241
pos = 0, 0
postype = p1
scale = (const(size.xscale)),(const(size.yscale))
ownpal = 1
sprpriority = 2
removeongethit = 1
bindtime = -1

[State 1100]
type = Explod
trigger1 = Time = 0
anim = 7005
scale = (const(size.xscale)),(const(size.yscale))
postype = p1
pos = 0, ceil(-40*const(size.yscale))
sprpriority = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
ID = 7005
IgnoreHitPause = 0
Persistent = 0

[State 970, 無敵]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 12


[State 970]
type = PlaySnd
trigger1 = time = 0
value = s920,0
channel = -1

[State 950, 一瞬光る]
type = Envcolor
trigger1 = Time = 0
value = 255, 255, 255
time = 1
under = 1
supermove = 1
persistent = 0
ignorehitpause = 1

[State 970]
type = Pause
trigger1 = time = 0
time = 6
movetime = 6
pausebg = 1 

[State 703, 残像]
type = BGPalFX
trigger1 = Time = 0
add = 255,255,255
time = 4
ignorpausetime = 1

[State 703, 軸位置]
type = PosSet
trigger1 = 1
y = 0

[State 230, ヒット定義]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
animtype  = Hard
ground.type = Low
damage    = 80,0
guardflag = MA
pausetime = 14, 14
sparkno = S6002
guard.sparkno = S6005
sparkxy = ceil(-10*const(size.xscale)),ceil(-50*const(size.yscale))
hitsound   = S1,3
guardsound = S120,0
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4,-6
air.velocity = -4,-6
envshake.time = 10
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
fall = 1
air.fall = 1
fall.recover = 0

[State 970, ステート変更]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------
;三角跳び
[Statedef 930]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 930
poweradd = 0

[State 863, 1]
type = turn
trigger1 = frontedgebodydist < 10

[State 863, 1]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 200 , 2]
type = PlaySnd
trigger1 = AnimElem= 2
value = s40, 1

[State 720, Effect]
type = Explod
trigger1 = AnimElem = 1
anim = f72
scale = 2,3
postype = p1
pos = -10, -40
sprpriority = 2
;supermove = 1
ownpal = 1
removeongethit = 1

[State 863, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = -8

[State 863, 1]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 863, 1]
type = ctrlset
trigger1 = AnimElemTime(3) >= 0
value = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
;---------------------------------------------------------------------------
;気絶用
[Statedef 15300]
type    = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
facep2 = 1

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5030

[state 15300]
type = velset
trigger1 = time = 0
x = -5
y = -5

[state 15300]
type = veladd
trigger1 = time > 0
y = .4

[state 15300]
type = Changestate
trigger1 = time > 0
trigger1 = pos y >= 0
trigger1 = vel y >= 0
value = 15301

;---------------------------------------------------------------------------
;気絶用(倒れてる)
[Statedef 15301]
type    = L
movetype = H
physics = N
ctrl = 0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14


[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[state 15300]
type = Changestate
trigger1 = animtime = 0
value = 15302

;---------------------------------------------------------------------------
;気絶用(倒れてる)
[Statedef 15302]
type    = L
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5110

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[state 15300]
type = Changestate
trigger1 = time >= 60
value = 15303


;---------------------------------------------------------------------------
;気絶用(起き上がる
[Statedef 15303]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5120

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[state 15300]
type = Changestate
trigger1 = animtime = 0
value = 15304

;---------------------------------------------------------------------------
;気絶用(気絶中
[Statedef 15304]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5300

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[state 15300]
type = Selfstate
trigger1 = time >= 120
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;気絶用(気絶中
[Statedef 15310]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9999

[State 1000, PlaySnd]
Type = PlaySnd
trigger1 = time = 0
Value = S5300, 0
Channel = -1
Persistent = 0

[state 15300]
type = Destroyself
trigger1 = time >= 120

;---------------------------------------------------------------------------
;気絶用
[Statedef 16300]
type    = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5030

[state 15300]
type = velset
trigger1 = time = 0
x = -5
y = -5

[state 15300]
type = veladd
trigger1 = time > 0
y = .6

[state 15300]
type = Changestate
trigger1 = time > 0
trigger1 = pos y >= 0
trigger1 = vel y >= 0
value = 16301

;---------------------------------------------------------------------------
;気絶用(倒れてる)
[Statedef 16301]
type    = L
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5100

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14


[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)


[state 15300]
type = Changestate
trigger1 = animtime = 0
value = 16302

;---------------------------------------------------------------------------
;気絶用(倒れてる)
[Statedef 16302]
type    = L
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5110

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[state 15300]
type = Changestate
trigger1 = time >= 60
value = 16303


;---------------------------------------------------------------------------
;気絶用(起き上がる
[Statedef 16303]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1501,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5120

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[state 15300]
type = Changestate
trigger1 = animtime = 0
value = 16304

;---------------------------------------------------------------------------
;気絶用(気絶中
[Statedef 16304]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[state 15300]
type = playsnd
trigger1 = time = 0
value = s5300,0
channel = 0

[state 15300]
type = ChangeAnim
trigger1 = time = 0
value = 5300

[state 15300]
type = Posset
trigger1 = time = 0
y = 0

[state 15300]
type = Changestate
trigger1 = time >= 120
value = 0
ctrl = 1

;------------------------------------------------------------------------------------
;アーマー
;------------------------------------------------------------------------------------
[Statedef 9000]
type = U
movetype = H
Physics = U

[State 1000, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S900, 0
Channel = -1


[State 9000, 1]
type = PalFX
trigger1 = Alive
trigger1 = !Time
trigger2 = Time = 1
trigger3 = Time = 5
trigger4 = Time = 9
trigger5 = Time = 13
time = 2
add = 164,11,0
mul = 358,256,256
color = 128
ignorehitpause = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 13
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 9000, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1

[State 9000, ChangeState];Dead
type = null;ChangeState
trigger1 = Selfanimexist(var(13)) = 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(13)

[State 9000, End]
type = ChangeState
trigger1 = time >=1  && (Life > 0)
value = var(15)
ctrl = var(16)

;------------------------------------------------------------------------------------
;アーマー
;------------------------------------------------------------------------------------
[Statedef 9001]
type = U
movetype = H

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)


[State 1000, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S900, 0
Channel = -1


[State 9000, 1]
type = PalFX
trigger1 = Alive
trigger1 = !Time
trigger2 = Time = 1
trigger3 = Time = 5
trigger4 = Time = 9
trigger5 = Time = 13
time = 2
add = 164,11,0
mul = 358,256,256
color = 128
ignorehitpause = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 13
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 9000, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1


[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Selfanimexist(var(13)) = 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(13)

[State 9000, End]
type = ChangeState
trigger1 = time >=5  && (Life > 0)
value = var(15)
ctrl = var(16)

;------------------------------------------------------------------------------------
;アーマー
;------------------------------------------------------------------------------------
[Statedef 9002]
type = U
movetype = H

[State 900, ボタン溜め];ボタンが押しっぱなしになっている事を判断
type = VarSet
triggerall = Var(59) = 0 && Alive && roundstate = 2
trigger1 = (Time >= 1)
v = 25
value = (command="hold_y") && (command="hold_b")
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, ボタン溜め];ボタンが押しっぱなしになっている事を判断
type = VarSet
triggerall = Var(59) > 0 && Alive && roundstate = 2
triggerall = (Time >= 1)
trigger1 = EnemyNear(var(58)),MoveType = A
trigger1 = EnemyNear(var(58)),Statetype != L
trigger2 = EnemyNear(var(58)),Statetype = L
v = 25
value = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間];ボタンが押しっぱなしなら変数の値を増やしていく
type = VarAdd
trigger1 = (var(25) = 1)
v = 26
value = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 1000, PlaySnd]
Type = PlaySnd
Trigger1 = time = 0
Value = S900, 0
Channel = -1

[State 9000, 1]
type = PalFX
trigger1 = Alive
trigger1 = !Time
trigger2 = Time = 1
trigger3 = Time = 5
trigger4 = Time = 9
trigger5 = Time = 13
time = 2
add = 164,11,0
mul = 358,256,256
color = 128
ignorehitpause = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 13
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 9000, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1

[State 905, ライフ増減];ダメージ量
type = Varset
trigger1 = time = 0
v = 27
value = GetHitVar(Damage)
IgnoreHitPause = 1
Persistent = 0

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(13)

[State 9000, End]
type = ChangeState
trigger1 = time >=5  && (Life > 0)
value = var(15)
ctrl = var(16)