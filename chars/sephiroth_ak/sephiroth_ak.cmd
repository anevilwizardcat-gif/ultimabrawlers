;==========================================================================
;コマンド関連ファイル
;==========================================================================
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
Command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
Command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
Command = a+b
time = 1

[Command]
name = "ab"
Command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
Command = /F,a
time = 1

[Command]
name = "fwd_b"
Command = /F,b
time = 1

[Command]
name = "fwd_c"
Command = /F,c
time = 1

[Command]
name = "fwd_x"
Command = /F,x
time = 1

[Command]
name = "fwd_y"
Command = /F,y
time = 1


[Command]
name = "downfwd_a"
Command = /DF,a
time = 1

[Command]
name = "downfwd_b"
Command = /DF,b
time = 1

[Command]
name = "back_a"
Command = /B,a
time = 1

[Command]
name = "back_b"
Command = /B,b
time = 1

[Command]
name = "back_c"
Command = /B,c
time = 1

[Command]
name = "down_a"
Command = /$D,a
time = 1

[Command]
name = "down_b"
Command = /$D,b
time = 1

[Command]
name = "down_c"
Command = /$D,c
time = 1

[Command]
name = "down_z"
Command = /$D,z
time = 1

[Command]
name = "fwd_ab"
Command = /F, a+b
time = 1

[Command]
name = "back_ab"
Command = /B, a+b
time = 1

;-| 攻撃ボタン押しっぱなし |-----------------------------------------------

[Command]
name = "hold_a"
Command = /b
time = 1

[Command]
name = "hold_a"
Command = /a
time = 1


[Command]
name = "hold_x"
Command = /x
time = 1

[Command]
name = "hold_x"
Command = /y
time = 1


;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
Command = a
time = 1

[Command]
name = "b"
Command = b
time = 1

[Command]
name = "c"
Command = c
time = 1

[Command]
name = "x"
Command = x
time = 1

[Command]
name = "y"
Command = y
time = 1

[Command]
name = "z"
Command = z
time = 1

[Command]
name = "s"
Command = s
time = 1


[Command]
name = "u"
Command = $U
time = 1
[Command]
name = "uu"
Command = /$U
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
Command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
Command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
Command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
Command = /$D
time = 1

;▼技コマンド

[Command]
name = "syukuchi"
Command = ~F, B, D, F, c
time = 30

[Command]
name = "syukuchi_addition"
Command = ~D, F, c
time = 20

[Command]
name = "shinsoku"
Command = ~F, B, D, F, c
time = 30

[Command]
name = "dash"
Command = F, F
time = 15

[Command]
name = "backstep"
Command = B, B
time = 15

[Command]
name = "nagiharai"
Command = ~D, F, b
time = 20

[Command]
name = "iaigiri"
Command = ~D, F, b
time = 20

[Command]
name = "hayate"
Command = ~D, B, b
time = 20

[Command]
name = "hayate_charge"
Command = /b
time = 1

[Command]
name = "setsuna"
Command = ~D, F, a
time = 20

[Command]
name = "kokuu"
Command = ~F, D, B, c
time = 30

[Command]
name = "senkou"
Command = ~F, D, B, a
time = 30

[Command]
name = "shin_senkou"
Command = ~D, F, D, B, a
time = 30

[Command]
name = "amaterasu"
Command = ~D, F, D, DF, c
time = 30

[Command]
name = "tragedy_end_spear_b"
Command = ~B, D, BD, b
time = 20

[Command]
name = "tragedy_end_spear_c"
Command = ~B, D, BD, c
time = 20

[Command]
name = "tragedy_end"
Command = ~F, D, B, F, c
time = 40

[Command]
name = "tragedy_end_plus"
Command = ~D, F, c
time = 20

[Command]
name = "hattouissen"
Command = ~D, B, D, F, b
time = 40

[Command]
name = "thundaga"
Command = ~D, B, D, B, a
time = 40

[Command]
name = "blackmateria"
Command = ~D, B, D, B, c
time = 40

[Command]
name = "blackmateria_charge"
Command = /c
time = 1

[Command]
name = "blackmateria_cancel1"
Command = a
time = 1

[Command]
name = "blackmateria_cancel2"
Command = b
time = 1

[Command]
name = "gokumon"
Command = D, D, D, c
time = 40

[Command]
name = "throw_fire"
Command = /c
time = 1

[Command]
name = "middleattack"
Command = /F, b
time = 1

[Command]
name = "materia"
Command = x
time = 1

[Command]
name = "materia_stay"
Command = /x
time = 1

[Command]
name = "materia1"
Command = /F
time = 1

[Command]
name = "materia2"
Command = /B
time = 1

;[Command]
;name = "materia3"
;Command = /U
;time = 1

;[Command]
;name = "materia4"
;Command = /D
;time = 1

[Command]
name = "materia_invoke1"
Command = a+x
time = 1

[Command]
name = "materia_invoke2"
Command = b+x
time = 1

[Command]
name = "materia_invoke3"
Command = c+x
time = 1

[Command]
name = "start_ai"
Command = z
time = 1

[Command]
name = "AI_0"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_1"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_2"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_3"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_4"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_5"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_6"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_7"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_8"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_9"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_10"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_11"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_12"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_13"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_14"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_15"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_16"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_17"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_18"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_19"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_20"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_21"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_22"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_23"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_24"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_25"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_26"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_27"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_28"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_29"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_30"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_31"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_32"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_33"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_34"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_35"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_36"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_37"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_38"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_39"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_40"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_41"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_42"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_43"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_44"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_45"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_46"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_47"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_48"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_49"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_50"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_51"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_52"
Command = a, b, c, x, y, z
time = 0

[Command]
name = "AI_53"
Command = a, b, c, x, y, z
time = 0



;-------------------------------------------------------------------------------

[Statedef -1]

[State -1, JudgeState]
Type = VarSet
Trigger1 = 1
var(3) = GameTime  ;以降、var(3) != GameTime ならステートを奪われている

[State -1, CancelableFlag1]
Type = VarSet
TriggerAll = var(59) = 0
Trigger1 = 1
var(1) = 0

[State -1, CancelableFlag2]
Type = VarSet
TriggerAll = var(59) = 0
Trigger1 = Ctrl = 1
Trigger2 = StateNo < 2000
Trigger2 = MoveContact = [1, 10]
var(1) = 1

[State -1, CancelableFlag3_SuperCancel]
Type = VarSet
TriggerAll = var(59) = 0
TriggerAll = (var(10) = 1) || (var(10) = 9)
Trigger1 = StateNo = [2000, 2999]
Trigger1 = StateNo != [2050, 2051]
Trigger1 = MoveContact = [1, 10]
var(1) = 2

[State -1, CancelableFlag4_GuardCancel]
Type = VarSet
TriggerAll = var(59) = 0
TriggerAll = (var(10) = 2) || (var(10) = 9)
Trigger1 = StateNo = [150, 155]
Trigger1 = var(44) > 0
var(1) = 3

[State -1, CancelableFlag5_HyperCancel]
Type = VarSet
TriggerAll = var(59) = 0
TriggerAll = var(10) = 9
Trigger1 = (StateNo = [3000, 3999]) | (StateNo = 2051)
Trigger1 = MoveContact = [1, 10]
Trigger2 = StateNo = 2050
Trigger2 = AnimElemTime(10) > 0
Trigger3 = StateNo = [3002, 3003]
var(1) = 4

[State -1, InputFoward]
Type = VarAdd
TriggerAll = var(59) = 0
Trigger1 = Command = "holdfwd"
var(42) = 1

[State -1, InputFoward]
Type = VarSet
TriggerAll = var(59) = 0
Trigger1 = Command != "holdfwd"
var(42) = 0

[State -1, InputBack]
Type = VarAdd
TriggerAll = var(59) = 0
Trigger1 = Command = "holdback"
var(43) = 1

[State -1, InputBack]
Type = VarSet
TriggerAll = var(59) = 0
Trigger1 = Command != "holdback"
var(43) = 0

[State -1, Start_AI]
Type = VarSet
Trigger1 = Command = "start_ai"
var(59) = 1


;■■■基本動作■■■

;▼前ダッシュ
[State -1]
type = ChangeState
value = 100
TriggerAll = var(59) = 0
Trigger1 = Command = "dash"
Trigger1 = StateType = S
Trigger1 = Ctrl = 1

;▼バックステップ
[State -1]
type = ChangeState
value = 105
TriggerAll = var(59) = 0
Trigger1 = Command = "backstep"
Trigger1 = StateType = S
Trigger1 = Ctrl = 1

;▼空中復帰
[State -1]
Type = ChangeState
Value = 5210
TriggerAll = var(59) = 0
TriggerAll = Vel Y > -1
TriggerAll = Alive = 1
TriggerAll = StateNo = 5050
TriggerAll = CanRecover = 1
Trigger1 = Command = "a"
Trigger2 = Command = "b"
Trigger3 = Command = "c"

;■■■攻撃■■■

[State -1]
type = VarSet
Trigger1 = var(41) <= 0
var(40) = 0

[State -1]
type = VarSet
Trigger1 = var(40) = 0
var(41) = 8

;【先行入力対象（地上技のみ）】

;▼獄門
[State -1]
Type = VarSet
var(40) = 3500
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "gokumon"
TriggerAll = StateType != A
TriggerAll = Power >= 2000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2
Trigger4 = var(1) = 3
Trigger5 = var(1) = 4

;▼天照
[State -1]
Type = VarSet
var(40) = 3000
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "amaterasu"
TriggerAll = StateType != A
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2
Trigger4 = var(1) = 3
Trigger5 = var(1) = 4

;▼八刀一閃
[State -1]
Type = VarSet
var(40) = 3050
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "hattouissen"
TriggerAll = StateType != A
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2
Trigger4 = var(1) = 3
Trigger5 = var(1) = 4

;▼サンダガ
[State -1]
Type = VarSet
var(40) = 3200
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "thundaga"
TriggerAll = StateType != A
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2
Trigger4 = var(1) = 3
Trigger5 = var(1) = 4

;▼ブラックマテリア
[State -1]
Type = VarSet
var(40) = 3300
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "blackmateria"
TriggerAll = StateType != A
TriggerAll = NumHelper(3302) <= 0  ;隕石召喚中はNG
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2
Trigger4 = var(1) = 3
Trigger5 = var(1) = 4

;▼トラジディー・エンド対地
[State -1]
Type = VarSet
var(40) = 2250
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "tragedy_end_spear_b"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;▼トラジディー・エンド対空
[State -1]
Type = VarSet
var(40) = 2260
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "tragedy_end_spear_c"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;▼真・閃光
[State -1]
Type = VarSet
var(40) = 3400
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "shin_senkou"
TriggerAll = StateType != A
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2

;▼閃光
[State -1]
Type = VarSet
var(40) = 2400
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "senkou"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;▼縮地
[State -1]
Type = VarSet
var(40) = 2050
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "syukuchi"
TriggerAll = StateType != A
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0
Trigger3 = var(1) = 2
Trigger4 = var(1) = 3
Trigger5 = var(1) = 4

;▼なぎ払い
[State -1]
Type = VarSet
var(40) = 2000
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "nagiharai"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;▼刹那
[State -1]
Type = VarSet
var(40) = 2700
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "setsuna"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;▼疾風
[State -1]
Type = VarSet
var(40) = 2450
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "hayate"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;▼虚空
[State -1]
Type = VarSet
var(40) = 2100
TriggerAll = var(59) = 0
TriggerAll = var(40) = 0
TriggerAll = Command = "kokuu"
TriggerAll = StateType != A
Trigger1 = var(1) = 1
Trigger2 = Ctrl = 0

;汎用処理
[State -1]
Type = ChangeState
TriggerAll = var(40) > 0
TriggerAll = StateType != A
Trigger1 = Ctrl = 1
Trigger2 = var(1) = 1
Trigger3 = (var(1) = 2) && ((var(40) >= 3000) || (var(40) = 2050))
Trigger4 = (var(1) = 3) && (StateNo = [150, 155]) && (var(44) > 0)
Trigger5 = (var(1) = 4) && ((var(40) >= 3000) || (var(40) = 2050))
Value = var(40)

[State -1]
Type = VarAdd
Trigger1 = var(40) > 0
var(41) = -1

[State -1]
Type = VarSet
Trigger1 = var(41) <= 0
var(40) = (var(41) := 0)


;【先行入力非対象】

;▼りだつ
[State -1]
Type = ChangeState
Value = 3600
TriggerAll = var(59) = 0
TriggerAll = (var(10) = 5) || (var(10) = 9)
TriggerAll = MoveType = H
TriggerAll = Time > 0  ;0で飛ぶとダメージが無効になるため
TriggerAll = var(17) <= 0
TriggerAll = Life > 0
Trigger1 = (Command = "materia_invoke1") || (Command = "materia_invoke2") || (Command = "materia_invoke3")

;▼真・閃光（ガードキャンセル）
[State -1]
Type = ChangeState
Value = 3404
TriggerAll = var(59) = 0
TriggerAll = Command = "shin_senkou"
TriggerAll = Power >= 1000
Trigger1 = (StateNo = 130) || (StateNo = 131) || ((150 <= StateNo) && (StateNo <= 153))

;▼神速
[State -1]
Type = ChangeState
Value = 3250
TriggerAll = var(59) = 0
TriggerAll = Command = "shinsoku"
TriggerAll = StateType = A
TriggerAll = Power >= 1000
Trigger1 = var(1) = 1
Trigger2 = var(1) = 2
Trigger3 = var(1) = 3
Trigger4 = var(1) = 4

;▼トラジディー・エンド 対地→持ち上げ
[State -1]
Type = ChangeState
Value = 2251
TriggerAll = var(59) = 0
TriggerAll = Command = "tragedy_end_plus"
TriggerAll = StateNo = 2250
TriggerAll = MoveHit >= 1
TriggerAll = MoveHit <= 10
TriggerAll = Target,MoveType = H
TriggerAll = AnimElemTime(10) >= 0
TriggerAll = AnimElemTime(13) < 0
Trigger1 = Ctrl = 0

;▼トラジディー・エンド 対空→持ち上げ
[State -1]
Type = ChangeState
Value = 2261
TriggerAll = var(59) = 0
TriggerAll = Command = "tragedy_end_plus"
TriggerAll = StateNo = 2260
TriggerAll = MoveHit >= 1
TriggerAll = MoveHit <= 10
TriggerAll = Target,MoveType = H
TriggerAll = AnimElemTime(6) >= 0
TriggerAll = AnimElemTime(9) < 0
Trigger1 = Ctrl = 0

;▼トラジディー・エンド 斬撃
[State -1]
type = ChangeState
value = 2310
TriggerAll = var(59) = 0
TriggerAll = Command = "tragedy_end_plus"
TriggerAll = Power >= 1000
Trigger1 = StateNo = 2307
;Trigger1 = AnimElemTime(1) >= 10
;Trigger1 = AnimElemTime(1) < 40
TriggerAll = StateNo = 2307

;▼縮地 追撃
[State -1]
type = ChangeState
value = 2051
TriggerAll = var(59) = 0
TriggerAll = Command = "syukuchi_addition"
Trigger1 = StateNo = 2050
Trigger1 = AnimElemTime(8) >= 0
Trigger1 = AnimElemTime(13) < 0

;▼なぎ払い2
[State -1]
type = ChangeState
value = 2001
TriggerAll = var(59) = 0
TriggerAll = Command = "b"
Trigger1 = stateno = 2000
Trigger1 = MoveContact > 0
Trigger1 = MoveContact <= 6
Trigger1 = AnimElemTime(9) < 0

;▼なぎ払い3
[State -1]
type = ChangeState
value = 2002
TriggerAll = var(59) = 0
TriggerAll = Command = "b"
Trigger1 = stateno = 2001
Trigger1 = MoveContact > 0
Trigger1 = MoveContact <= 6
Trigger1 = AnimElemTime(9) < 0
Trigger2 = var(10) = 9
Trigger2 = stateno = 2700
Trigger2 = MoveContact > 0
Trigger2 = MoveContact <= 6
Trigger2 = AnimElemTime(13) < 0

;▼居合い斬り
[State -1]
type = ChangeState
value = 2150
TriggerAll = var(59) = 0
TriggerAll = Command = "iaigiri"
Trigger1 = StateType = A
Trigger1 = var(1) = 1

;▼投げ
[State -1]
type = ChangeState
value = 1300
TriggerAll = var(59) = 0
TriggerAll = Command != "holddown"
TriggerAll = StateType = S
TriggerAll = P2BodyDist X <= 10
TriggerAll = P2StateType != A
TriggerAll = P2MoveType != H
TriggerAll = stateno != 100
TriggerAll = Ctrl = 1
Trigger1 = Command = "fwd_c"
trigger2 = Command = "back_c"

;▼立ちA
[State -1]
type = ChangeState
value = 1000
TriggerAll = var(59) = 0
TriggerAll = Command = "a"
TriggerAll = Command != "holddown"
Trigger1 = StateType = S
Trigger1 = Ctrl = 1
trigger2 = stateno = 1000
trigger2 = movecontact >= 4
trigger3 = stateno = 1100
trigger3 = movecontact >= 4 

;▼屈みA
[State -1]
type = ChangeState
value = 1100
TriggerAll = var(59) = 0
TriggerAll = Command = "a"
TriggerAll = Command = "holddown"
TriggerAll = StateType != A
Trigger1 = Ctrl = 1
trigger2 = stateno = 1000
trigger2 = movecontact >= 4
trigger3 = stateno = 1100
trigger3 = movecontact >= 4

;▼空中A
[State -1]
type = ChangeState
value = 1200
TriggerAll = var(59) = 0
TriggerAll = Command = "a"
Trigger1 = StateType = A
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 2200
TriggerAll = var(59) = 0
TriggerAll = Command = "middleattack"
TriggerAll = var(42) <= 6  ;6Fより長く前を押していたら無効（暴発防止）
TriggerAll = Command != "holddown"
Trigger1 = StateType = S
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 1010
TriggerAll = var(59) = 0
TriggerAll = Command = "b"
TriggerAll = Command != "holddown"
Trigger1 = StateType = S
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 1110
TriggerAll = var(59) = 0
TriggerAll = Command = "b"
TriggerAll = Command = "holddown"
TriggerAll = StateType != A
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 1210
TriggerAll = var(59) = 0
TriggerAll = Command = "b"
Trigger1 = StateType = A
Trigger1 = Ctrl = 1

;[State -1]
;type = ChangeState
;value = 1025
;TriggerAll = Command = "fwd_c"
;TriggerAll = Command != "holddown"
;Trigger1 = StateType = S
;Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 1020
TriggerAll = var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command != "holddown"
Trigger1 = StateType = S
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 1120
TriggerAll = var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command = "holddown"
TriggerAll = StateType != A
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 1220
TriggerAll = var(59) = 0
TriggerAll = Command = "c"
Trigger1 = StateType = A
Trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 2900
TriggerAll = var(59) = 0
TriggerAll = var(10) != 9
TriggerAll = Command = "materia"
TriggerAll = var(17) <= 0
Trigger1 = StateType != A
Trigger1 = Ctrl = 1

;-----------------------

[State -3, WatchLife]
Type = VarSet
IgnoreHitPause = 1
Trigger1 = 1
var(46) = -1

[State -3, WatchLife]
Type = VarSet
Persistent = 0
IgnoreHitPause = 1
Trigger1 = MoveType = H
Trigger1 = GetHitVar(damage) > 0
var(46) = IfElse(GetHitVar(damage) > 100, 20, IfElse(GetHitVar(damage) > 50, 10, 0))

[State -3, DamageVoice]
Type = PlaySnd
Persistent = 0
IgnoreHitPause = 1
TriggerAll = Alive = 1
Trigger1 = var(46) >= 0
Value = 5000, IfElse(var(46) <= 20, var(46), 20)
Channel = 0

[State -3, DownVoice]
Type = PlaySnd
Persistent = 0
IgnoreHitPause = 1
TriggerAll = Alive = 1
Trigger1 = StateNo = 5100
Trigger1 = Time = 1
Value = 5000, 30
Channel = 0
