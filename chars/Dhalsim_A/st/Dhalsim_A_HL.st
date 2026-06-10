[Statedef 7025,多分ナイフ]
type    = A
movetype= I
ctrl = 0
;sprpriority = 3

[State -2,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow


[State -2]
type = Bindtoroot
trigger1 = 1
pos = 0,0
facing = 1
time = 1

[State -2]
type = Changeanim
trigger1 = 1
value = 7025
elem = root, AnimElemNo(0)

[State 3000, ステート変更]
type = ChangeState
trigger1 = root,movetype = H || root,animelem = 8
trigger1 = root,stateno != [9000,9002]
trigger2 = root,stateno != [901,903]
value = 7026
ctrl = 0

;----------------------------------------------
[Statedef 7026]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 7026
sprpriority = 3

[State 1000]
type = AngleDraw
trigger1 = 1

[State 1000]
type = AngleAdd
trigger1 = 1
value = 30 

[State 1200]
Type = VelSet
trigger1 = backedgedist < 10
Trigger1 = time > 0
x = 0*const(size.xscale)

[State 1200]
Type = VelSet
Trigger1 = time = 0
x = -2.0*const(size.xscale)
Y = -6.0*const(size.yscale)

[State 1200]
type = veladd
trigger1 = time > 0
y = .4

[State 100, PlaySnd]
Type = PlaySnd
trigger1 =  time = 0
Value = S120,1
Channel = -1
persistent = 0

[State 3000, ステート変更]
type = Destroyself
trigger1 = pos y >= 0 && vel y >= 0

;----------------------------------------------
[Statedef 7035,多分ナイフ]
type    = A
movetype= I
ctrl = 0
;sprpriority = 3

[State -2,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State -2]
type = Bindtoroot
trigger1 = 1
pos = 0,0
facing = 1
time = 1

[State -2]
type = Changeanim
trigger1 = 1
value = 7035
elem = root, AnimElemNo(0)

[State 3000, ステート変更]
type = ChangeState
trigger1 = root,movetype = H || root,animelem = 4
value = 7036
ctrl = 0

;----------------------------------------------
[Statedef 7036]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 7036
sprpriority = 3

[State 1000]
type = AngleDraw
trigger1 = 1

[State 1000]
type = AngleAdd
trigger1 = 1
value = 30 

[State 1200]
Type = VelSet
trigger1 = backedgedist < 10
Trigger1 = time > 0
x = 0*const(size.xscale)

[State 1200]
Type = VelSet
Trigger1 = time = 0
x = -2.0*const(size.xscale)
Y = -6.0*const(size.yscale)

[State 1200]
type = veladd
trigger1 = time > 0
y = .4

[State 100, PlaySnd]
Type = null;PlaySnd
trigger1 =  time = 0
Value = S120,1
Channel = -1
persistent = 0

[State 3000, ステート変更]
type = Destroyself
trigger1 = pos y >= 0 && vel y >= 0

;-------------------------------
;KO
[Statedef 8000]
type = S
anim = 9999
velset = 0,0
sprpriority = 5
ctrl = 0

[State 8100, spa]
type = null;AssertSpecial
trigger1 = 1
flag = nokoslow

;--------------------
[State -2,***]
type = Explod
trigger1 = win
anim = 8000
id =8000
pos = 0,0
postype = Left
sprpriority = -7
supermovetime = 99999
pausemovetime = 99999
ownpal = 1
bindtime = -1
removetime = 54
IgnoreHitPause = 1 
Persistent = 0


[State -2,***]
type = AssertSpecial
triggerall = numenemy
trigger1 = win
flag = globalnoshadow
flag2 = noFG
IgnoreHitPause = 1 
Persistent = 1

[State 810, KO]
type = PlaySnd
trigger1 = win
value = s180, 0
Persistent = 0

[State 810, KO]
type = PlaySnd
trigger1 = win
value = s180, 1
Persistent = 0

;--------------------
[State 8100, pause]
type = Pause
trigger1   = Time = 0
time = 88
movetime= 88

[State 8100, 3]
type = DestroySelf
trigger1 = time = 99999

;-------------------------------------------------------------------------------
[Statedef 20000]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 9999

[State 10015, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2= NoAutoTurn
flag3= NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 10015, 画面塗り潰し];カウンターヒット時の画面フラッシュ
type = EnvColor
triggerall = (Root,NumTarget != 0)
triggerall = (Root,fvar(14) > 1)
trigger1 = Time = 1
trigger1 = (Root,MoveHit = [1,2]) || (Root,ProjHit = 1,<2)
value = 255,255,255 ;画面全体を塗り潰す色合い（赤,緑,青）
time = 2            ;画面全体を塗り潰している時間
under = 1           ;画面奥だけを塗り潰すか否か（１ならキャラやライフバーは残す）
Persistent = 0


[State 10015, エフェクト];カウンターヒット表示
type = Explod
triggerall = (Root,NumTarget != 0)
triggerall = (NumExplod(10000) = 0)
trigger1 = (Root,fvar(14) > 1)
trigger1 = (Root,MoveHit = [1,2]) || (Root,ProjHit = 1,<2)
anim = 10000
scale = 0.5,0.5
postype = left
pos = ifelse((Root,TeamSide=2),285,35),ifelse((Root,var(33)=1),115,95)
sprpriority = 5
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
removetime = -1
ownpal = 1
ID = 10000
IgnoreHitPause = 1
Persistent = 0


;***********************************

[State 22000, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 40)
trigger2 = (RoundState > 2)
ID = 10000
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 22000, このヘルパーを消す]
type = DestroySelf
triggerall = (Time > 40)
trigger1 = (EnemyNear,MoveType != H)
trigger2 = (RoundState > 2)