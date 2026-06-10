;===========================================================================
; 投げ技
;===========================================================================
;---------------------------------------------------------------------------
;掴み
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 1

[State 800, ヒット定義（投げ用）]
type = HitDef
trigger1 = animelem = 2
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(20*const(size.xscale))]
attr = S, NT ;立ち通常投げ（Standing, Normal Throw）
hitflag = M-  ;マイナスが付加されてるので相手が食らい中の時は掴めない
priority = 1, Miss
sparkno = -1  ;-1だからヒットスパークは表示しない
p1sprpriority = 1
p1facing = 1
p2facing = 1
hitsound = s800,0
p1stateno = ifelse((var(59) = 0 &&Command="holdback")||(var(59) > 0 && backedgebodydist < 60),811,801)
guard.dist = 0 ;相手のガード態勢に入る距離を０にしてるので、ガード不可
fall = 0

[State 800, ヒット定義（投げ用）]
type = HitDef
triggerall = numtarget
triggerall = animelem = 2
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(20*const(size.xscale))]
trigger1 = (target,stateno = [905,907])
trigger2 = (target,stateno = 15304)
attr = S, NT ;立ち通常投げ（Standing, Normal Throw）
hitflag = M  
priority = 1, Miss
sparkno = -1  ;-1だからヒットスパークは表示しない
p1sprpriority = 1
p1facing = 1
p2facing = 1
hitsound = s800,0
p1stateno = ifelse((var(59) = 0 &&Command="holdback")||(var(59) > 0 && backedgebodydist < 60),811,801)
guard.dist = 0 ;相手のガード態勢に入る距離を０にしてるので、ガード不可
fall = 0

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s800,3
channel = 0

[State 1200]
type = attackdist
trigger1 = 1
value = 0

[State 800, ステート変更]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;成功
[Statedef 801]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 801
poweradd = 40

[State 801]
type = null;sprpriority
trigger1 = animelem = 1
trigger2 = animelem = 2
value = 1

[State 801]
type = null;sprpriority
trigger1 = animelem = 3
trigger2 = animelem = 4
value = -1

[State 801]
type = Width
trigger1 = 1
edge = 90,0

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 805

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40, 0
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50, 0
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 30, 0
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 30, 0
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 40, 0
[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = 40, 0
[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = 50, 0
[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = 50, 0
[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 30, 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = AnimElem = 9
v = 42
value = 80
Persistent = 0
IgnoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = var(42)<1000
trigger1 = AnimElem = 10
value = 806
Persistent = 0

[State 801, 気絶用ふっとび]
type = TargetState
trigger1 = animelem = 10
trigger1 = var(42)>=1000
value = 807
Persistent = 0
IgnoreHitPause = 1
;-----------------------------------------------------
[State 810, 変数]
type = VarSet
trigger1 = Time = 0
v = 29
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 810, Throw Reversal]
type = VarSet
Triggerall = var(29) = 0
Triggerall = time <= 10
Trigger1 = (target,Command = "holdfwd") || (target,Command = "holdback") 
Trigger1 = (target,Command = "y") || (target,Command = "z") || (target,Command = "b") || (target,Command = "c")
var(29) = 1
IgnoreHitPause = 1
Persistent = 1

[State 810, ChangeState]
type = ChangeState
Triggerall = time <= 10
trigger1 = var(29) = 1
value = 890
;------------------------------------------------------

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = ceil(-120*(const(data.attack)*0.01))
persistent = 0

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 6
Value = S3,3
Channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 6
Trigger2 = AnimElem = 10
Value = S3,0
Channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 6
Value = S1,1
Channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 10
Value = S1,2
Channel = -1

[State -1]
Type     = EnvShake
Trigger1 = AnimElem = 6
Trigger2 = AnimElem = 10
Time     = 10
Freq     = 120
Ampl     = 10

[State 1100]
type = Explod
Trigger1 = AnimElem = 6
anim = 6001
scale = 1,1
postype = p2
pos = (target,Const(size.head.pos.x)), (target,Const(size.head.pos.y))
sprpriority = 2
OnTop = 0
ownpal = 1
ID = 6001
IgnoreHitPause = 0

[State 1100]
type = Explod
Trigger1 = AnimElem = 10
anim = 6002
scale = 1,1
postype = p2
pos = (target,Const(size.head.pos.x)), (target,Const(size.head.pos.y))
sprpriority = 2
OnTop = 0
ownpal = 1
ID = 6002
IgnoreHitPause = 0

[State -3]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 810, ステート変更]
type = ChangeState
Trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;スープレックス：相手側１（掴まれて放り投げられるまで）
[Statedef 805]
type    = S
movetype= H
physics = N
velset = 0,0

[State 801]
type = null;sprpriority
trigger1 = animelem = 1
trigger2 = animelem = 2
value = -1

[State 801]
type = null;sprpriority
trigger1 = animelem = 3
trigger2 = animelem = 4
value = 1

[State 801]
type = null;sprpriority
trigger1 = animelemtime(5) >= 0
value = -1

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 805

[State 960]
type = NotHitBy
trigger1 = 1
value = SCA

[State 960]
type = PlayerPush
trigger1 = 1
value = 0

;---------------------------------------------------------------------------
;スープレックス：相手側２（放り投げられた）
[Statedef 806]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40

[State 5100, 5]
type = Veladd
trigger1 = Time > 0
y = .5

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 806

[State 811, Velset]
type = Velset
trigger1 = time = 0
x = 0
y = 5.0

[State 821, 相手ステートに戻す]
type = SelfState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0 
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
;スープレックス：相手側２（放り投げられた）
[Statedef 807,気絶用]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40

[State 5100, 5]
type = Veladd
trigger1 = Time > 0
y = .5

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 806

[State 811, Velset]
type = Velset
trigger1 = time = 0
x = 0
y = 5.0

[State 821, 相手ステートに戻す]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0 
value = 15301
ctrl = 0
;---------------------------------------------------------------------------
;ヨガスルー成功（放り投げる）
[Statedef 811]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 811
poweradd = 0

[State 801]
type = Width
trigger1 = 1
edge = 90,90

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 815

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, 0
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 45, 0
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50, 0
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40, 0
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 40, -75
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 28, -80

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -40, -90

[State 810, Throw]
type = TargetState
trigger1 = var(42)<1000
trigger1 = AnimElem = 7
value = 816

[State 801, 気絶用ふっとび]
type = TargetState
trigger1 = animelem = 7
trigger1 = var(42)>=1000
value = 817
Persistent = 0
IgnoreHitPause = 1

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = ceil(-120*(const(data.attack)*0.01))
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = animelem = 6
v = 42
value = 80
Persistent = 0
IgnoreHitPause = 1
;-----------------------------------------------------
[State 810, 変数]
type = VarSet
trigger1 = Time = 0
v = 29
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 810, Throw Reversal]
type = VarSet
Triggerall = var(29) = 0
Triggerall = time <= 10
Trigger1 = (target,Command = "holdfwd") || (target,Command = "holdback") 
Trigger1 = (target,Command = "y") || (target,Command = "z") || (target,Command = "b") || (target,Command = "c")
var(29) = 1
IgnoreHitPause = 1
Persistent = 1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 6
Value = S810,0
Channel = -1

[State 100, PlaySnd]
Type = PlaySnd
Trigger1 = AnimElem = 7
Value = S0,1
Channel = -1


[State 810, ChangeState]
type = ChangeState
Triggerall = time <= 10
trigger1 = var(29) = 1
value = 890

[state -2]
type = turn
trigger1 = Animelemtime(9) >= 0
trigger1 = p2bodydist x < 0
Persistent = 0

[State 810, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;相手側１（掴まれて放り投げられるまで）
[Statedef 815]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 815

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

;------------------------------------------------------------
; 通常投げ(投げられた側)2
[Statedef 816]
type    = A
movetype= H
physics = N
SprPriority = -1

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 6
y = -5

[State 5100, 5]
type = VelSet
trigger1 = Time > 0
trigger1 = frontedgedist < 5
x = 0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 816

[State 900, Position]
type = veladd
trigger1 = Time > 0
y = .5

[State 821, 相手ステートに戻す]
type = SelfState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 5100
ctrl = 0

;------------------------------------------------------------
; 通常投げ(投げられた側)2
[Statedef 817]
type    = A
movetype= H
physics = N
SprPriority = -1

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 6
y = -5

[State 5100, 5]
type = VelSet
trigger1 = Time > 0
trigger1 = frontedgedist < 5
x = 0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 816

[State 900, Position]
type = veladd
trigger1 = Time > 0
y = .5

[State 5100, 12]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 15301
;---------------------------------------------------------------------------
;掴み
[Statedef 820]
type    = A
movetype= A
physics = A
juggle  = 0
ctrl = 0
anim = 820
sprpriority = 1


[State 800, ヒット定義（投げ用）]
type = HitDef
trigger1 = animelem = 2
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(20*const(size.xscale))]
attr = A, NT ;空中通常投げ（Standing, Normal Throw）
hitflag = A-  ;マイナスが付加されてるので相手が食らい中の時は掴めない
priority = 1, Miss
sparkno = -1  ;-1だからヒットスパークは表示しない
p1sprpriority = 1
p1facing = 1
p2facing = 1
hitsound = s800,0
p1stateno = ifelse((var(59) = 0 &&Command="holdback")||(var(59) > 0 && backedgebodydist < 60),822,821)
guard.dist = 0 ;相手のガード態勢に入る距離を０にしてるので、ガード不可
fall = 0

[State 800, ヒット定義（投げ用）]
type = HitDef
triggerall = numtarget
triggerall = animelem = 2
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(20*const(size.xscale))]
trigger1 = (target,stateno = [905,907])
trigger2 = (target,stateno = 15304)
attr = A, NT ;空中通常投げ（Standing, Normal Throw）
hitflag = A  
priority = 1, Miss
sparkno = -1  ;-1だからヒットスパークは表示しない
p1sprpriority = 1
p1facing = 1
p2facing = 1
hitsound = s800,0
p1stateno = ifelse((var(59) = 0 &&Command="holdback")||(var(59) > 0 && backedgebodydist < 60),822,821)
guard.dist = 0 ;相手のガード態勢に入る距離を０にしてるので、ガード不可
fall = 0

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s800,3
channel = 0

[State 1200]
type = attackdist
trigger1 = 1
value = 0
;----------------------------------------------------------------------
;エアヨガスルー
[Statedef 821]
type = A
movetype= A
physics = N
anim = 821
poweradd = 20
ctrl = 0
sprpriority = 1

[State 1200]
type = turn
trigger1 = AnimElem = 2

[State 1200]
type = Targetfacing
trigger1 = AnimElem = 2
value = -1

[State 801]
type = Width
trigger1 = 1
edge = 90,0

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 825

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 41, -27
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 65, -88
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 48, -84
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 31, -92
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 27, -109
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -56, -107

[State 810, Throw]
type = TargetState
trigger1 = var(42)<1000
trigger1 = AnimElem = 6
value = 826

[State 801, 気絶用ふっとび]
type = TargetState
trigger1 = animelem = 6
trigger1 = var(42)>=1000
value = 827
Persistent = 0
IgnoreHitPause = 1

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = ceil(-120*(const(data.attack)*0.01))
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = animelem = 5
v = 42
value = 80
Persistent = 0
IgnoreHitPause = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 5
value = s810, 0
channel = -1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 6
value = s0, 1
channel = -1

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 5100, 5]
type = Veladd
trigger1 = animelemtime(8) > 0
y = .5

;-------------------------------------------
[State 810, 変数]
type = VarSet
trigger1 = Time = 0
v = 29
value = 0
IgnoreHitPause = 1
Persistent = 1


[State 810, Throw Reversal]
type = VarSet
Triggerall = var(29) = 0
Triggerall = time <= 10
Trigger1 = (target,Command = "holdfwd") || (target,Command = "holdback") 
Trigger1 = (target,Command = "y") || (target,Command = "z") || (target,Command = "b") || (target,Command = "c")
var(29) = 1
IgnoreHitPause = 1
Persistent = 1

[State 810, ChangeState]
type = ChangeState
Triggerall = time <= 10
trigger1 = var(29) = 1
value = 895

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 810, ステート変更]
type = ChangeState
trigger1 = AnimElemtime(8) > 0
trigger1 = pos y > 0 && vel y > 0
value = 52

;---------------------------------------------------------------------------
;成功（後に放り投げる）
[Statedef 822]
type = A
movetype= A
physics = N
anim = 821
poweradd = 20
ctrl = 0
sprpriority = 1

[State 801]
type = Width
trigger1 = 1
edge = 90,0

[State 810, Throw]
type = TargetState
trigger1 = time = 0
value = 825

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 41, -27
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 65, -88
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 48, -84
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 31, -92
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 27, -109
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -56, -107

[State 810, Throw]
type = TargetState
trigger1 = var(42)<1000
trigger1 = AnimElem = 6
value = 826

[State 801, 気絶用ふっとび]
type = TargetState
trigger1 = animelem = 6
trigger1 = var(42)>=1000
value = 827
Persistent = 0
IgnoreHitPause = 1

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = ceil(-120*(const(data.attack)*0.01))
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = animelem = 5
v = 42
value = 80
Persistent = 0
IgnoreHitPause = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 5
value = s810, 0
channel = -1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 6
value = s0, 1
channel = -1

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 5100, 5]
type = Veladd
trigger1 = animelemtime(8) > 0
y = .5

;-------------------------------------------
[State 810, 変数]
type = VarSet
trigger1 = Time = 0
v = 29
value = 0
IgnoreHitPause = 1
Persistent = 1


[State 810, Throw Reversal]
type = VarSet
Triggerall = var(29) = 0
Triggerall = time <= 10
Trigger1 = (target,Command = "holdfwd") || (target,Command = "holdback") 
Trigger1 = (target,Command = "y") || (target,Command = "z") || (target,Command = "b") || (target,Command = "c")
var(29) = 1
IgnoreHitPause = 1
Persistent = 1

[State 810, ChangeState]
type = ChangeState
Triggerall = time <= 10
trigger1 = var(29) = 1
value = 895

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 810, ステート変更]
type = ChangeState
trigger1 = AnimElemtime(5) > 0
trigger1 = pos y > 0 && vel y > 0
value = 52

;---------------------------------------------------------------------------
;相手側1（掴まれて放り投げられるまで）
[Statedef 825]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 825

;------------------------------------------------------------
; 通常投げ(投げられた側)2
[Statedef 826]
type    = A
movetype= H
physics = N
SprPriority = -1

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 6
y = -5

[State 5100, 5]
type = VelSet
trigger1 = Time > 0
trigger1 = backedgedist < 2
x = 0

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 826

[State 900, Position]
type = veladd
trigger1 = Time > 0
y = .5

[State 821, 相手ステートに戻す]
type = SelfState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 5100
ctrl = 0

;------------------------------------------------------------
; 通常投げ(投げられた側)2
[Statedef 827]
type    = A
movetype= H
physics = N
SprPriority = -1

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = -6
y = -5

[State 5100, 5]
type = VelSet
trigger1 = Time > 0
trigger1 = backedgedist < 2
x = 0

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 826

[State 900, Position]
type = veladd
trigger1 = Time > 0
y = .5

[State 5100, 12]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 15301

;---------------------------------------------------------------------------
;スープレックス：相手側２（放り投げられた）
[Statedef 830,気絶用]
type    = A
movetype= H
physics = N
poweradd = 40
ctrl = 0

[State 820, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Time = 0
value = 5100

[State 811, Velset]
type = Velset
trigger1 = time = 0
y = -2.0

[State 811, Posset]
type = Posset
trigger1 = time = 0
y = 0

[State 5100, 5]
type = Veladd
trigger1 = Time > 0
y = .4

[State 821, 相手ステートに戻す]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 15301
ctrl = 0

;----------------------------------------------------------------------
[Statedef 835]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 835

;----------------------------------------------------------------------
[Statedef 836]
type = A
movetype = H
physics = N
poweradd = 40
ctrl = 0
sprpriority = 2

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 836

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 811, Velset]
type = Velset
trigger1 = time = 0
x = 0
y = 0

;---------------------------------------------------------------------------
;フライングバスタードロップ：相手側２（放り投げられた）
[Statedef 837]
type    = A
movetype= H
physics = N
poweradd = 40
ctrl = 0
sprpriority = 2

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 837

[State 811, Velset]
type = Velset
trigger1 = time = 0
x = 5.0
y = -5.0

[State 5100, 5]
type = Veladd
trigger1 = Time > 0
y = .4

[State 821, 相手ステートに戻す]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 828
ctrl = 0

;---------------------------------------------------------------------------
;フライングバスタードロップ：相手側２（放り投げられた）
[Statedef 838]
type    = A
movetype= H
physics = N
poweradd = 40
ctrl = 0
sprpriority = 2

[State 820, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 837

[State 811, Velset]
type = Velset
trigger1 = time = 0
x = 5.0
y = -5.0

[State 5100, 5]
type = Veladd
trigger1 = Time > 0
y = .4

[State 821, 相手ステートに戻す]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y > 0 && vel y > 0
value = 15301
ctrl = 0

;------------------------------------------------------
;投げ失敗(投げた側)
[Statedef 890]
type    = S
movetype= I
physics = S
anim = 5940
ctrl = 0
velset = 0,0

[State 1100, RemoveExplod]
Type = RemoveExplod
trigger1 = Time = 0
id = 7070

[State 812, 押し判定]
type = PlayerPush
trigger1 = 1
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3000]
type = NotHitby
trigger1 = animelemtime(6) < 0
value = SCA

[State 830, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s890,0

[State 830, explod]
type = explod
trigger1 = time = 0
anim = 6005
pos = 0, target,const(size.mid.pos.y)
scale = 1,1
postype = p2
facing = 1
sprpriority = 3
ignorehitpause = 1
ownpal = 1

[State 830, TargetState]
type = TargetState
trigger1 = time = 0
value = 891

[State 810, TargetBind]
type = TargetBind
trigger1 = time = 0
pos = ceil(90*const(size.xscale)), 0

[State 830, velset]
type = velset
trigger1 = time = 0
x = -4

[State 830, velset]
type = velset
trigger1 = time = 10
x = 0

[State 830, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
;投げ失敗(投げられた側)
[Statedef 891]
type    = S
movetype= H
physics = S
ctrl = 0
poweradd = 70
velset = 0,0
facing = -1

[State 812, 押し判定]
type = PlayerPush
trigger1 = 1
value = 1
IgnoreHitPause = 1
Persistent = 1

[STate 840, NotHitby]
type = NotHitby
trigger1 = time <= 25
value = SAC

[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Selfanimexist(5945) = 0
Trigger1 = time = 0
value = 130

[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Selfanimexist(5945) = 1
Trigger1 = time = 0
value = 5945

[State 840, velset]
type = velset
trigger1 = time = 0
x = -4

[State 830, velset]
type = velset
trigger1 = time = 10
x = 0

[State 840, SelfState]
type = SelfState
trigger1 = time = 30
value = 0
ctrl = 1

;------------------------------------------------------
;空中投げ投げ失敗(投げた側)
[Statedef 895]
type    = A
movetype= I
physics = N
anim = 5940
ctrl = 0
velset = 0,0


[State 812, 押し判定]
type = PlayerPush
trigger1 = 1
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3000]
type = NotHitby
trigger1 = animelemtime(6) < 0
value = SCA

[State 830, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s890,0

[State 830, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s890,1
channel = 0

[State 830, explod]
type = explod
trigger1 = time = 0
anim = 6015
pos = 0, target,const(size.mid.pos.y)
scale = 1,1
postype = p2
facing = 1
sprpriority = 3
ignorehitpause = 1
ownpal = 1

[State 830, TargetState]
type = TargetState
trigger1 = time = 0
value = 896

[State 810, TargetBind]
type = TargetBind
trigger1 = time = 0
pos = ceil(90*const(size.xscale)), 0

[State 830, velset]
type = velset
trigger1 = time = 0
x = -1
y = -4

[State 830, velset]
type = veladd
trigger1 = time > 0
y = .3

[State 830, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 52

;-------------------------------------------------------
;投げ失敗(投げられた側)
[Statedef 896]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 70
velset = 0,0
facing = -1

[State 812, 押し判定]
type = PlayerPush
trigger1 = 1
value = 1
IgnoreHitPause = 1
Persistent = 1

[STate 840, NotHitby]
type = NotHitby
trigger1 = time <= 25
value = SAC

[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Selfanimexist(5945) = 0
Trigger1 = time = 0
value = 130

[State 840, ChangeAnim]
type = ChangeAnim
triggerall = Selfanimexist(5945) = 1
Trigger1 = time = 0
value = 5945

[State 830, velset]
type = velset
trigger1 = time = 0
x = -1
y = -4

[State 830, velset]
type = veladd
trigger1 = time > 0
y = .3

[State 830, Selfstate]
type = Selfstate
trigger1 = pos y >= 0 && vel y > 0
value = 52
