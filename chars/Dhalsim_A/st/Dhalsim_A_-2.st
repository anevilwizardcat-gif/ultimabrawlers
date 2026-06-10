;===========================================================================
; 常時監視ステート（－２）
;===========================================================================

[Statedef -2]

[State -2, クリップボード]
type = DisplayToClipboard
trigger1 = 1
text = "Stan=%d,Tuigeki=%d,Body-Distance X=%d,Y=%d \n"
params = var(42),var(30),floor(P2BodyDist X),floor(P2BodyDist Y)

[State -2, クリップボード（追加専用）]
type = AppendToClipboard
trigger1 = 1
text = "Position X=%d,Y=%d, Velocity X=%f,Y=%f, Hit=%d \n"
params = floor(Pos X),floor(Pos Y),(Vel X),(Vel Y),(MoveHit)

[State -2, 音を鳴らす]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52  ;着地ステート
trigger2 = stateno = 106 ;バックステップ後の着地ステート
value = s40, 0

;---------------------------------------------------------------------------
; イントロ系
;---------------------------------------------------------------------------

[State -2, 二人目のイントロ]
type = ChangeState             
value = 190                    
triggerall = RoundsExisted = 0 
triggerall = TeamMode = Turns  
trigger1 = stateno = 5900      

[State -2]
type = CtrlSet                 
trigger1 = RoundState = 4      
trigger1 = Win && Ctrl = 1     
value = 0                      

;---------------------------------------------------------------------------
; KO
;---------------------------------------------------------------------------

[state -2]
type = helper
triggerall = NumHelper(8000) = 0
triggerall = winko
trigger1 = stateno = [1500,1600]
ID = 8000
pos = 0,0
postype = left
stateno = 8000
helpertype = normal
name = "ko"
sprpriority = -5
ownpal = 1
keyctrl = 0
size.xscale = 1
size.yscale = 1
ignorehitpause = 1
Persistent = 0

;---------------------------------------------------------------------------
; ヒート用
;---------------------------------------------------------------------------
[State -2, ヒート用]
type = VarSet
triggerall = (RoundState = 2)
trigger1 = fvar(26) >= 1.0
fv = 26
value = 1.0
IgnoreHitPause = 1

[State -2, ヒート用]
type = VarSet
triggerall = (RoundState = 2)
trigger1 = fvar(26) < 0
fv = 26
value = 0
IgnoreHitPause = 1

[State -2, 蓄積]
type = VarAdd
triggerall = (RoundState = 2)
trigger1 = fvar(25) = 1
trigger1 = (fvar(29) - Life ) > 0
fv = 26
value = (fvar(29) - Life ) * 0.0015
IgnoreHitPause = 1
Persistent = 0

[State -2, 攻撃力上昇]
type = null;VarSet
triggerall = (RoundState = 2)
trigger1 = fvar(26) >= 1.0
fv = 25
value = 1.15
IgnoreHitPause = 1

[State -2, リセット]
type = VarSet
trigger1 = fvar(26) <= 0
trigger2 = (RoundState != 2)
fv = 25
value = 1
IgnoreHitPause = 1


[State -2, 減少]
type = VarAdd
triggerall = (RoundState = 2)
trigger1 = fvar(26) > 0
trigger1 = fvar(25) > 1
trigger1 = gametime % 40
fv = 26
value = -0.0015
IgnoreHitPause = 1

[State -2, 画像の色]
type = null;PalFX
trigger1 = fvar(25) > 1
time = -1
add = 100,0,0
IgnoreHitPause = 1

[State -2, 画像の色]
type = null;PalFX
trigger1 = fvar(25) = 1
time = -1
add = 0,0,0
IgnoreHitPause = 1

[State -2,現在の体力を記憶]
type = varset
trigger1 = 1
fvar(29) = Life
ignorehitpause=1

;---------------------------------------------------------------------------
; カウンターヒット・アピール用
;---------------------------------------------------------------------------
[State -2, カウンターヒット];リセット
type = VarSet
triggerall = (NumEnemy != 0)
trigger1 = (P2MoveType != H)
trigger2 = (EnemyNear,GetHitVar(HitCount) > 1)
fv = 14
value = 1
IgnoreHitPause = 1

[State -2, カウンターヒット]
type = VarSet
triggerall = (NumEnemy != 0)
trigger1 = (p2MoveType = A)
fv = 14
value = 1.25
ignorehitpause=1

[State -2, ヘルパーを出す]
type = Helper
triggerall = (NumEnemy != 0)
triggerall = (NumHelper(20000) = 0)
trigger1 = (fvar(14) > 1) 
trigger1 = (MoveHit) || (ProjHit = 1,<2)
name = "Counter"
stateno = 20000
ID = 20000
pos = 0,1000
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
; 補正系
;---------------------------------------------------------------------------
[State -2, 変数セット]
Type = VarSet
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = movehit
fvar(30) = 1.0-((Enemy,GetHitVar(HitCount))*(0.1+fvar(31))*fvar(32))


[State -2, 補正リセット]
Type = VarSet
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = enemy,movetype = I
fvar(30) = 1.0

[State -2, 補正リセット]
Type = VarSet
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = enemy,movetype != H
fvar(31) = 0

[State -2, 補正リセット]
Type = VarSet
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = enemy,movetype = I
fvar(32) = 1.0

[State -2, 変数セット]
Type = VarSet
TriggerAll = NumEnemy
TriggerAll = Alive
trigger1 = fvar(30) < 0.1
fvar(30) = 0.1


[State -2, 攻撃力が減る]
Type = AttackMulSet
TriggerAll = NumEnemy
Trigger1 = Alive
Value = fvar(30)*fvar(14)


[State -2, ダメージが減る]
Type = DefenceMulSet
TriggerAll = NumEnemy
Trigger1 = Alive
trigger1 = (Life >= (lifemax*0.5))
Value = 1

[State -2, 防御力乗算]
type = DefenceMulSet
TriggerAll = Alive
trigger1 = (Life < (lifemax*0.5)) && (Life >= (lifemax*0.3))
value = 0.95

[State -2, 防御力乗算]
type = DefenceMulSet
TriggerAll = Alive
trigger1 = (Life < (lifemax*0.3)) && (Life >= (lifemax*0.15))
value = 0.90

[State -2, 防御力乗算]
type = DefenceMulSet
TriggerAll = Alive
trigger1 = (Life < (lifemax*0.15))
value = 0.75
;==============================================================================
; スタン値(相手)
;==============================================================================
[state -2 ,スタン値リセット]
type = Varset
trigger1 = RoundState != 2
v = 42
value = 0
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = ProjHit7000 = 1
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = ProjHit7015 = 1
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン]
type = TargetState
triggerall = var(42) >= 1000
trigger1 = ProjHit = 1
value = 15300
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン値加算]
type = Varset
triggerall = var(42) > 0
triggerall = Numtarget
trigger1 = target,stateno = 15304
v = 42
value = 0
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン値加算]
type = Varadd
triggerall = var(42) > 0
trigger1 = p2movetype != H
trigger1 = time
v = 42
value = -1
Persistent = 0
IgnoreHitPause = 1

[State -2, ヘルパーを出す]
type = Helper
triggerall = Numtarget
triggerall = Numhelper(15310) = 0
trigger1 = target,stateno = 15304
name = "Stan"
stateno = 15310
ID = 15310
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
IgnoreHitPause = 1
;---------------------------------------------------------------------------
;追い打ち可否用
;---------------------------------------------------------------------------
[State -2, VarSet];不可
type = VarSet
triggerall = numenemy
triggerall = enemy,statetype = A
trigger1 = enemy,movetype = H
var(30) = 0
ignorehitpause = 1

[State -2, VarSet];可
type = VarSet
triggerall = numenemy
triggerall = enemy,life > 0
trigger1 = enemy,statetype != A
trigger2 = Numtarget
trigger2 = Numtarget(615)
trigger3 = Numtarget
trigger3 = Numtarget(901)
trigger4 = Numtarget
trigger4 = Numtarget(902)
trigger5 = Numtarget
trigger5 = Numtarget(903)
trigger6 = ProjHit7025 = 1, < 150
trigger7 = Numtarget
trigger7 = Numtarget(1053)
trigger8 = Numtarget
trigger8 = Numtarget(1154)
var(30) = 1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
triggerall = numenemy
trigger1 = enemy,movetype != H
var(7) = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; セービングアタック
;---------------------------------------------------------------------------


[State -2, セービングアタック、バッドストーン用]
type = VarRangeSet
trigger1 = (StateNo != [900,923]) && (StateNo != [1000,1002])
trigger1 = stateno != 9002
first = 25
last = 26
value = 0
IgnoreHitPause = 1

[State -2, ライフ回復用];セービング中に受けた分を回復する
type = VarAdd
trigger1 = (StateNo != [900,923])
trigger1 = var(27) > 0
v = 27
value = -1
IgnoreHitPause = 1
Persistent = 0

[State -2, ライフ回復用]
type = Varset
triggerall = stateno != 9002
trigger1 = var(27) < 0
v = 27
value = 0
IgnoreHitPause = 1
Persistent = 0

[State -2, ライフ回復用]
type = LifeAdd
triggerall = stateno != 9002
trigger1 = (StateNo != [900,923])
trigger1 = var(27) > 0
value = 1
IgnoreHitPause = 1
Persistent = 0

[State -2, パワーゲージ増加用]
type = PowerAdd
trigger1 = (StateNo != [900,923])
trigger1 = var(27) > 0
value = 1
IgnoreHitPause = 1
Persistent = 0

[State -2, ライフ回復リセット]
type = VarSet
triggerall = stateno != 9002
trigger1 = movetype = H
trigger1 = stateno != [120,155]
v = 27
value = 0
IgnoreHitPause = 1
Persistent = 0

;---------------------------------------------------------------------------
; Simul用
;---------------------------------------------------------------------------
[State -2, プレイヤー判定]
type = VarSet
triggerall = (NumPartner) && (var(33) != 1)
trigger1 = ID < (Partner,ID) ;自分のＩＤナンバーがパートナーよりも少ない数字なら
v = 33
value = 0
IgnoreHitPause = 1

[State -2, プレイヤー判定]
type = VarSet
triggerall = (NumPartner)
trigger1 = ID > (Partner,ID) ;自分のＩＤナンバーがパートナーよりも多い数字なら
v = 33
value = 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
; アーマー用
;---------------------------------------------------------------------------
[State -2]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != [9000,9002])
var(15) = StateNo

[State -3]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != [9000,9002])
var(16) = Ctrl

[State 100, AfterImage]
Type = AfterImagetime 
Trigger1 = movetype = H
Time = 0

;---------------------------------------------------------------------------
; ボイス用
;---------------------------------------------------------------------------

[State -2, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = alive
trigger1 = stateno = 5000
trigger1 = anim = 5000 || anim = 5010
trigger2 = stateno = 5010
trigger2 = anim = 5020
trigger3 = stateno = 5020
trigger3 = Anim = 5000 || anim = 5010
value = S5000,0
channel = 2

[State -2, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = alive
trigger1 = stateno = 5000
trigger1 = anim = 5001 || anim = 5011
trigger2 = stateno = 5010
trigger2 = anim = 5021
trigger3 = stateno = 5020
trigger3 = Anim = 5001 || anim = 5011
value = S5000,1
channel = 2

[State -2, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = alive
trigger1 = stateno = 5000
trigger1 = anim = 5002 || anim = 5012
trigger2 = stateno = 5010
trigger2 = anim = 5022
trigger3 = stateno = 5020
trigger3 = Anim = 5002 || anim = 5012
value = S5000,0
channel = 3

[State -3, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = alive
trigger1 = stateno = 5070
trigger1 = Anim = 5070
trigger2 = stateno = 5080
trigger2 = Anim = 5080 || Anim = 5090
value = S5000,1
channel = 2

[State -3, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = alive
trigger1 = stateno = 5120
trigger1 = Anim = 5120
value = S5120,0
channel = 2

;==============================================================================
; ゾンクナックルEX溜め(プレイヤー用)
;==============================================================================
[State -1, ゾンクナックルEX溜め]
type = Varset
triggerall = var(59) = 0 && RoundState = 2
triggerall = power >= 500
trigger1 = 1
var(9) = (command ="hold_x" && command ="hold_y") || (command ="hold_x" && command ="hold_z") || (command ="hold_y" && command ="hold_z")
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State -1, ゾンクナックルEX溜めリセット]
type = Varset
trigger1 = RoundState != 2
var(9) = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間]
type = VarAdd
triggerall = RoundState = 2
trigger1 = (var(9) = 1) && var(25) = 0
v = 10
value = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間リセット]
type = null;Varset
triggerall = RoundState = 2
trigger1 = var(9) = 0
trigger1 = var(11) = 1
v = 10
value = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間リセット]
type = Varset
triggerall = var(59) = 0 && RoundState = 2
trigger1 = var(9) = 0 && var(10) < 60
;trigger2 = var(9) = 0 && var(11) > 0 
v = 10
value = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

;==============================================================================
; ゾンクナックル溜め(プレイヤー用)
;==============================================================================

[State -1, ゾンクナックル溜め]
type = Varset
triggerall = var(59) = 0 && RoundState = 2
trigger1 = 1
var(11) = command ="hold_x" || command ="hold_y" || command ="hold_z"
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State -1, ゾンクナックル溜めリセット]
type = Varset
trigger1 = RoundState != 2
var(11) = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間]
type = VarAdd
triggerall = RoundState = 2
trigger1 = (var(11) = 1) && var(25) = 0 && var(9) = 0
v = 12
value = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間リセット]
type = null;Varset
triggerall = RoundState = 2
trigger1 = var(11) = 0
v = 12
value = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間リセット]
type = Varset
triggerall = var(59) = 0 && RoundState = 2
trigger1 = var(11) = 0 && var(12) < 60
v = 12
value = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

;==============================================================================
; ゾンクナックル溜め(AI用)
;==============================================================================
[State -1, ゾンクナックル溜め]
type = Varset
triggerall = var(59) > 0 && RoundState = 2
trigger1 = random < 100
var(11) = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State -1, ゾンクナックル溜め]
type = Varset
triggerall = var(59) > 0 && RoundState = 2
trigger1 = power < 500
var(9) = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State -1, ゾンクナックルEX溜め]
type = Varset
triggerall = var(59) > 0 && RoundState = 2
triggerall = power >= 500
trigger1 = random < 50
var(9) = 1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間リセット]
type = Varset
triggerall = var(59) > 0 && RoundState = 2
trigger1 = var(10) > 180
v = 10
value = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1

[State 900, 溜め時間リセット]
type = Varset
triggerall = var(59) > 0 && RoundState = 2
trigger1 = var(12) > 100
v = 12
value = 0
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
Persistent = 1
