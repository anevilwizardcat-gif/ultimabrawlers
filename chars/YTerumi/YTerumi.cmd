;-| ボタン配置 |------------------------------------------------
[Remap]
x = x    ;一発ボタン
y = y    ;未使用
z = z    ;シールド
a = a    ;弱攻撃
b = b    ;中攻撃
c = c    ;強攻撃
s = s    ;挑発

;-| AI |--------------------------------------------------------
[Command]
Name    = "AI_00"
Command =  a, a
Time = 0

[Command]
Name    = "AI_01"
Command =  a, b
Time = 0

[Command]
Name    = "AI_02"
Command =  a, c
Time = 0

[Command]
Name    = "AI_03"
Command =  a, x
Time = 0

[Command]
Name    = "AI_04"
Command =  a, y
Time = 0

[Command]
Name    = "AI_05"
Command =  a, z
Time = 0

[Command]
Name    = "AI_06"
Command =  a, s
Time = 0

[Command]
Name    = "AI_07"
Command =  b, a
Time = 0

[Command]
Name    = "AI_08"
Command =  b, b
Time = 0

[Command]
Name    = "AI_09"
Command =  b, c
Time = 0

[Command]
Name    = "AI_10"
Command =  b, x
Time = 0

[Command]
Name    = "AI_11"
Command =  b, y
Time = 0

[Command]
Name    = "AI_12"
Command =  b, z
Time = 0

[Command]
Name    = "AI_13"
Command =  b, s
Time = 0

[Command]
Name    = "AI_14"
Command =  c, a
Time = 0

[Command]
Name    = "AI_15"
Command =  c, b
Time = 0

[Command]
Name    = "AI_16"
Command =  c, c
Time = 0

[Command]
Name    = "AI_17"
Command =  c, x
Time = 0

[Command]
Name    = "AI_18"
Command =  c, y
Time = 0

[Command]
Name    = "AI_19"
Command =  c, z
Time = 0

[Command]
Name    = "AI_20"
Command =  c, s
Time = 0

[Command]
Name    = "AI_21"
Command =  x, a
Time = 0

[Command]
Name    = "AI_22"
Command =  x, b
Time = 0

[Command]
Name    = "AI_23"
Command =  x, c
Time = 0

[Command]
Name    = "AI_24"
Command =  x, x
Time = 0

[Command]
Name    = "AI_25"
Command =  x, y
Time = 0

[Command]
Name    = "AI_26"
Command =  x, z
Time = 0

[Command]
Name    = "AI_27"
Command =  x, s
Time = 0

[Command]
Name    = "AI_28"
Command =  y, a
Time = 0

[Command]
Name    = "AI_29"
Command =  y, b
Time = 0

[Command]
Name    = "AI_30"
Command =  y, c
Time = 0

[Command]
Name    = "AI_31"
Command =  y, x
Time = 0

[Command]
Name    = "AI_32"
Command =  y, y
Time = 0

[Command]
Name    = "AI_33"
Command =  y, z
Time = 0

[Command]
Name    = "AI_34"
Command =  y, s
Time = 0

[Command]
Name    = "AI_35"
Command =  s, a
Time = 0

[Command]
Name    = "AI_36"
Command =  s, b
Time = 0

[Command]
Name    = "AI_37"
Command =  s, c
Time = 0

[Command]
Name    = "AI_38"
Command =  s, x
Time = 0

[Command]
Name    = "AI_39"
Command =  s, y
Time = 0

[Command]
Name    = "AI_40"
Command =  s, z
Time = 0

[Command]
Name    = "AI_41"
Command =  s, s
Time = 0

[Command]
Name    = "AI_42"
Command =  U, U
Time = 0

[Command]
Name    = "AI_43"
Command =  U, F
Time = 0

[Command]
Name    = "AI_44"
Command =  U, D
Time = 0

[Command]
Name    = "AI_45"
Command =  U, B
Time = 0

[Command]
Name    = "AI_46"
Command =  F, U
Time = 0

[Command]
Name    = "AI_47"
Command =  F, F
Time = 0

[Command]
Name    = "AI_48"
Command =  F, D
Time = 0

[Command]
Name    = "AI_49"
Command =  F, B
Time = 0

[Command]
Name    = "AI_50"
Command =  D, U
Time = 0

[Command]
Name    = "AI_51"
Command =  D, F
Time = 0

[Command]
Name    = "AI_52"
Command =  D, D
Time = 0

[Command]
Name    = "AI_53"
Command =  D, B
Time = 0

[Command]
Name    = "AI_54"
Command =  B, U
Time = 0

[Command]
Name    = "AI_55"
Command =  B, F
Time = 0

[Command]
Name    = "AI_56"
Command =  B, D
Time = 0

[Command]
Name    = "AI_57"
Command =  B, B
Time = 0

[Command]
Name    = "AI_58"
Command =  UF, UF
Time = 0

[Command]
Name    = "AI_59"
Command =  UF, UB
Time = 0

[Command]
Name    = "AI_60"
Command =  UF, DF
Time = 0

[Command]
Name    = "AI_61"
Command =  UF, DB
Time = 0

[Command]
Name    = "AI_62"
Command =  UB, UF
Time = 0

[Command]
Name    = "AI_63"
Command =  UB, UB
Time = 0

[Command]
Name    = "AI_64"
Command =  UB, DF
Time = 0

[Command]
Name    = "AI_65"
Command =  UB, DB
Time = 0

[Command]
Name    = "AI_66"
Command =  DF, UF
Time = 0

[Command]
Name    = "AI_67"
Command =  DF, UB
Time = 0

[Command]
Name    = "AI_68"
Command =  DF, DF
Time = 0

[Command]
Name    = "AI_69"
Command =  DF, DB
Time = 0

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "41236c"
command = ~B, DB, D, DF, F, c
time = 18

;-| 必殺技 |------------------------------------------------------
[Command]
name = "641236c"
command = ~F, DF, D, DB, B, F, c
time = 50

[Command]
name = "222z"
command = D, D, z
time = 20
[Command]
name = "22a"
command = D, D, a
time = 20

[Command]
name = "22b"
command = D, D, b
time = 20

[Command]
name = "22c"
command = D, D, c
time = 20
[Command]
name = "421a"
command = ~B, D, DB, a
time = 14

[Command]
name = "421b"
command = ~B, D, DB, b
time = 14

[Command]
name = "421c"
command = ~B, D, DB, c
time = 14

[Command]
name = "623a"
command = ~F, D, DF, a
time = 14

[Command]
name = "623b"
command = ~F, D, DF, b
time = 14

[Command]
name = "623c"
command = ~F, D, DF, c
time = 14

[Command]
name = "236z"
command = ~D, DF, F, z
time = 14

[Command]
name = "236a"
command = ~D, DF, F, a
time = 14

[Command]
name = "236b"
command = ~D, DF, F, b
time = 14

[Command]
name = "236c"
command = ~D, DF, F, c
time = 14

[Command]
name = "214z"
command = ~D, DB, B, z
time = 14

[Command]
name = "214z"
command = ~D, DB, B, z
time = 14

[Command]
name = "214a"
command = ~D, DB, B, a
time = 14

[Command]
name = "214b"
command = ~D, DB, B, b
time = 14

[Command]
name = "214c"
command = ~D, DB, B, c
time = 14

[Command]
name = "22z"
command = D, D, z
time = 14

[Command]
name = "62b"
command = F, B, b
time = 12


;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "jump"    
command = $D, UF
time = 10

[Command]
name = "FF"
command = F, F
time = 11

[Command]
name = "BB"
command = B, B
time = 11

;-| 方向とボタンで出す技 |---------------------------------------------------------
;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 0

[Command]
name = "b"
command = b
time = 0

[Command]
name = "c"
command = c
time = 0

[Command]
name = "x"
command = x
time = 0

[Command]
name = "y"
command = y
time = 0

[Command]
name = "z"
command = z
time = 0

[Command]
name = "start"
command = s
time = 0

[Command]
name = "B"     
command = B
time = 0

[Command]
Name    = "recovery"
Command = a
Time    = 0

[Command]
Name    = "recovery"
Command = b
Time    = 0

[Command]
Name    = "recovery"
Command = c
Time    = 0

[Command]
Name    = "recovery"
Command = x
Time    = 0

[Command]
Name    = "recovery"
Command = y
Time    = 0

[Command]
Name    = "recovery"
Command = z
Time    = 0

[command]
name = "fwd"
command = F
time = 0

[command]
name = "back"
command = B
time = 0

[Command]
name = "up" 
command = U
time = 0

[Command]
name = "down"
command = D
time = 0

[Command]
name = "ab"
command = a+b
time = 0

[Command]
name = "abc"
command = a+c
time = 0

[Command]
name = "abc"
command = b+c
time = 0

[Command]
name = "abc"
command = a+b+c
time = 0

[Command]
name = "az"
command = a+z
time = 0

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "A溜め"
command = /$a
time = 1

[Command]
name = "B溜め"
command = /$b
time = 1

[Command]
name = "C溜め"
command = /$c
time = 1
[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "Z溜め"
command = /$z
time = 1

;---------------------------------------------------------------------------
; 下の記述↓は絶対に消さないでください。
;この記述を消すのは自殺行為です。絶対に消さないで下さい。
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;バレルレプリカAAD
;[State -1]
;Type = ChangeState
;Value = 3050
;TriggerAll = Var(59) = 0
;TriggerAll = Command = "41236c"
;TriggerAll = StateType != A
;TriggerAll = Var(13) = -1
;Trigger1 = Ctrl
;Trigger2 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;バレルレプリカAD
[State -1] 
Type = ChangeState
Value = ifelse(var(13) = -1, 3010,3000)
TriggerAll = StateType != A
Triggerall = Command = "41236c" && ctrl
Trigger1 = Var(13) = -1 || Var(13) = 1 || Var(14) = 1
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H

[State -1]
Type = ChangeState
Value = 2400
TriggerAll = Var(59) = 0
TriggerAll = Command = "641236c"
TriggerAll = StateType != A
Trigger1 = Power >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 2200 && time > 38 && numtarget || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger3 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 2200 && time > 38 && numtarget || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger4 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;スライド・エア　弱
[State -1]
Type = ChangeState
Value = 1200
TriggerAll = Var(59) = 0
TriggerAll = Command = "623a"
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;スライド・エア　中
[State -1]
Type = ChangeState
Value = 1250
TriggerAll = Var(59) = 0
TriggerAll = Command = "623b" || Command = "623c" && Var(13) = 0 &&  Var(14) = 0 && Power <1000
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;スライド・エア　EX
[State -1]
Type = ChangeState
Value = 2200
TriggerAll = Var(59) = 0
TriggerAll = Command = "623c"
Trigger1 = Power >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 2200 && time > 38 && numtarget || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger3 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 2200 && time > 38 && numtarget || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger4 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;エーテライト・エア　弱
[State -1]
Type = ChangeState
Value = 1100
TriggerAll = Var(59) = 0
TriggerAll = Command = "214a"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;エーテライト・エア　中
[State -1]
Type = ChangeState
Value = 1150
TriggerAll = Var(59) = 0
TriggerAll = Command = "214b" || Command = "214c" && Var(13) = 0 &&  Var(14) = 0 && Power <1000
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;エーテライト・エア　EX
[State -1]
Type = ChangeState
Value = 2100
TriggerAll = Var(59) = 0
TriggerAll = Command = "214c"
TriggerAll = StateType != A
Trigger1 = Power >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger3 = Ctrl
Trigger4 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

[State -1]
Type = ChangeState
Value = 1000
TriggerAll = Var(59) = 0
TriggerAll = Command = "236a"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H
;リロード
[State -1]
Type = ChangeState
Value = 1050
TriggerAll = Var(59) = 0
TriggerAll = Command = "236b" || Command = "236c" && Var(13) = 0 &&  Var(14) = 0 && Power <1000
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

[State -1]
Type = ChangeState
Value = 2000
TriggerAll = Var(59) = 0
TriggerAll = Command = "236c"
TriggerAll = StateType != A
Trigger1 = Power >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H && StateNo != 2010
Trigger3 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger3 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger4 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H && StateNo != 2010

;---------------------------------------------------------------------------
;シールドバンカー
[State -1]
Type = ChangeState
Value = 930
TriggerAll = Var(59) = 0
TriggerAll = Command = "214z"
TriggerAll = StateType != A
Trigger1 = StateType = S
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;リロード
[State -1]
Type = ChangeState
Value = 1600
TriggerAll = Var(59) = 0
TriggerAll = Command = "22a"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H
;リロード
[State -1]
Type = ChangeState
Value = 1650
TriggerAll = Var(59) = 0
TriggerAll = Command = "22b" || Command = "22c" && Var(13) = 0 &&  Var(14) = 0 && Power <1000
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

[State -1]
Type = ChangeState
Value = 2600
TriggerAll = Var(59) = 0
TriggerAll = Command = "22c"
TriggerAll = StateType != A
Trigger1 = Power >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H && StateNo != 2010
Trigger3 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger3 = Ctrl || anim = 2610 && time < 39 || anim = 2612 && time < 160 || anim = 1601 && time < 57 || anim = 1051 && time > 33 || anim = 2000 && time > 60 || anim = 2000 && time > 43 && statetype = S || anim = 2102 && time > 120 && statetype = S
Trigger4 = Var(13) = 1 || Var(13) = -1 || Var(14) = 1
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H && StateNo != 2010

;---------------------------------------------------------------------------
;ハイジャンプ
[State -1]
Type = ChangeState
Value = 850
TriggerAll = Var(59) = 0
TriggerAll = Var(11)%10 = 0
Trigger1 = Command = "jump" && Var(36) = [0,10]
Trigger1 = StateType != A
Trigger1 = StateNo != [200,499]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = Command = "jump"
Trigger2 = StateNo = 600
Trigger2 = Var(2) = 1405 || Var(2) = 2405
Trigger3 = Command = "jump"
Trigger3 = StateNo = [610,639]
Trigger3 = Var(2) = 1407 || Var(2) = 2407
Trigger4 = Command = "jump"
Trigger4 = StateType = A
Trigger4 = Ctrl || Var(2)/100%10 = 3 && MoveType != H
ignorehitpause = 1

;---------------------------------------------------------------------------
;ジャンプ
[State -1]
Type = ChangeState
Value = 40
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = Command = "holdup"
Trigger1 = Ctrl
Trigger2 = Var(10) = 0
Trigger2 = Var(2)/100 = 14 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 2 && StateNo = 420 || Var(2)/100%10 = 2 && StateNo = 220
Trigger3 = Var(10) = 0
Trigger3 = Var(2)/100%10 >= 3 && StateNo = 260 || Var(2)/100%10 >= 3 && StateNo = 220 ||Var(2)/100%10 = 2 && StateNo = 3051
[State -1]
Type = ChangeState
Value = 850
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = Command = "holdup"
Trigger1 = Var(10) = 0
Trigger1 = Var(2)/100%10 >= 3 && StateNo = 230

;---------------------------------------------------------------------------
;２段ジャンプ
[State -1]
Type = ChangeState
Value = 45
TriggerAll = Var(59) = 0
TriggerAll = StateType = A
TriggerAll = Command = "holdup"
TriggerAll = Var(9) <= 1
TriggerAll = Var(11)%10 = 0
Trigger1 = StateNo = 50 && Time >= 8 || StateNo = 110 || StateNo = 115 || StateNo = 120 || StateNo = 132 || StateNo = 140 || StateNo = 155
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = StateNo = 830 || StateNo = 2300 || StateNo = 5210
Trigger3 = Ctrl

;---------------------------------------------------------------------------
;ダッシュ
[State -1]
Type = ChangeState
Value = 100
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = StateNo != 100
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup"
Trigger1 = Ctrl || Var(2)/100%10 = 3 && StateNo = 900 || Var(2)/100%10 = 3 && StateNo = 910
Trigger2 = Var(2)/100%10 >= 3 && anim = 1602 || Var(2)/100%10 = 5 && StateNo = 2010
ignorehitpause = 1

;---------------------------------------------------------------------------
;バックステップ
[State -1]
Type = ChangeState
Value = 105
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup"
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 3 && StateNo = 900 || Var(2)/100%10 = 3 && StateNo = 910

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1]
Type = ChangeState
Value = 110
TriggerAll = Var(59) = 0
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup"
TriggerAll = Var(11)/10%10 = 0
TriggerAll = StateType = A
Trigger1 = Ctrl || Var(2)/100%10 >= 3 && MoveType != H

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1]
Type = ChangeState
Value = 115
TriggerAll = Var(59) = 0
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup"
TriggerAll = Var(11)/10%10 = 0
TriggerAll = StateType = A
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H && StateNo != 920

;---------------------------------------------------------------------------
;投げ　ReAct
[State -1]
Type = ChangeState
Value = 800
TriggerAll = Var(59) = 0
TriggerAll = Var(0)/100%10 = 1
TriggerAll = Command = "c"
TriggerAll = StateType != A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger1 = Command = "holdfwd"
Trigger1 = P2BodyDist X < 4
Trigger1 = (P2StateType = S) || (P2StateType = C)
Trigger1 = P2MoveType != H
Trigger2 = command = "holdback"
Trigger2 = P2BodyDist X < 5
Trigger2 = (P2StateType = S) || (P2StateType = C)
Trigger2 = P2MoveType != H

;---------------------------------------------------------------------------
;投げ　ActCadenza
[State -1]
Type = ChangeState
Value = 800
TriggerAll = Var(59) = 0
TriggerAll = Var(0)/100%10 = 0
TriggerAll = Command = "az" || Command = "x" && Command != "holddown"
TriggerAll = StateType != A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger1 = Command = "holdfwd"
Trigger2 = Command = "holdback"

;---------------------------------------------------------------------------
; 空中投げ　ReAct
[State -1]
Type = ChangeState
Value = 820
TriggerAll = Var(59) = 0
TriggerAll = Var(0)/100%10 = 1
TriggerAll = Command = "c"
TriggerAll = Command = "holdfwd" || Command = "holdback"
TriggerAll = Statetype = A
TriggerAll = P2Statetype = A
TriggerAll = P2BodyDist X = [-10,25]
TriggerAll = P2BodyDist Y = [-70,20]
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger3 = Var(2)/100 = 14 && MoveType != H

;---------------------------------------------------------------------------
; 空中投げ　ActCadenza
[State -1]
Type = ChangeState
Value = 820
TriggerAll = Var(59) = 0
TriggerAll = Var(0)/100%10 = 0
TriggerAll = Command = "az" || Command = "x"
TriggerAll = Command = "holdfwd" || Command = "holdback"
TriggerAll = Statetype = A
TriggerAll = P2Statetype = A
TriggerAll = P2BodyDist X = [-10,25]
TriggerAll = P2BodyDist Y = [-70,20]
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger3 = Var(2)/100 = 14 && MoveType != H

;---------------------------------------------------------------------------
;強制開放　ReAct
[State -1]
Type = ChangeState
Value = 990
TriggerAll = Var(59) = 0
TriggerAll = Var(0)/100%10 = 1
TriggerAll = Command = "222z" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback"
TriggerAll = StateType != A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger1 = Var(13) = 1
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(14) = 0

;---------------------------------------------------------------------------
;強制開放　ActCadenza
[State -1]
Type = ChangeState
Value = 990
TriggerAll = Var(59) = 0
TriggerAll = Var(0)/100%10 = 0
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback"
TriggerAll = StateType != A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger1 = Var(13) = 1
Trigger2 = Power >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(14) = 0

;---------------------------------------------------------------------------
;避け
[State -1]
Type = ChangeState
Value = 750
TriggerAll = Var(59) = 0
TriggerAll = Command = "holddown"
TriggerAll = Command != "holdfwd" && Command != "holdback"
TriggerAll = Command = "ab" || Command = "x"
TriggerAll = StateType != A
Trigger1 = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;立ちシールド
[State -1]
Type = ChangeState
Value = 900
TriggerAll = Var(59) = 0
TriggerAll = Command != "holddown"
TriggerAll = Command = "z" || Command = "x"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo = [900,929]

;---------------------------------------------------------------------------
;しゃがみシールド
[State -1]
Type = ChangeState
value = 910
TriggerAll = Var(59) = 0
TriggerAll = Command = "holddown"
TriggerAll = Command = "z" || Command = "x"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo = [900,929]

;---------------------------------------------------------------------------
;空中シールド
[State -1]
Type = ChangeState
Value = 920
TriggerAll = Var(59) = 0
TriggerAll = Command = "z" || Command = "x"
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo = [900,929]

;---------------------------------------------------------------------------
;立ち弱
[State -1]
Type = ChangeState
Value = 200
TriggerAll = Var(59) = 0
TriggerAll = Command = "a" || Command = "x"
TriggerAll = Command != "holddown" && Command != "holdfwd" && Command != "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = 200
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = 200 || StateNo = 400
Trigger4 = Var(2)/100%10 = 4 && MoveType != H
Trigger4 = Var(2)%10 = [1,4]

;---------------------------------------------------------------------------
;立ち中
[State -1]
Type = ChangeState
Value = 210
TriggerAll = Var(59) = 0
TriggerAll = Command = "b"
TriggerAll = Command != "holddown"
TriggerAll = Command != "holdfwd"
TriggerAll = Command != "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;立ち強
[State -1]
Type = ChangeState
Value = 291
TriggerAll = Var(59) = 0
TriggerAll = Command = "62b"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(23)%10 = 0
triggerall = stateno != 290
triggerall = stateno != 292
[State -1]
Type = ChangeState
Value = 220
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command != "holddown"
TriggerAll = Command != "holdfwd"
TriggerAll = Command != "holdback"
TriggerAll = StateType != A
triggerall = stateno != 220
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(22)%10 = 0
ignorehitpause = 1
;立ち強
[State -1]
Type = ChangeState
Value = 230
TriggerAll = Var(59) = 0
TriggerAll = Command = "a"
TriggerAll = Command != "holddown"
TriggerAll = Command = "holdfwd"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(20)%10 = 0
triggerall = stateno != 230
[State -1]
Type = ChangeState
Value = 260
TriggerAll = Var(59) = 0
TriggerAll = Command = "a"
TriggerAll = Command != "holddown"
TriggerAll = Command = "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(20)%10 = 0
triggerall = stateno != 230
triggerall = stateno != 260
triggerall = stateno != 290
triggerall = stateno != 292
[State -1]
Type = ChangeState
Value = 270
TriggerAll = Var(59) = 0
TriggerAll = Command = "b"
TriggerAll = Command != "holddown"
TriggerAll = Command = "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(23)%10 = 0
triggerall = stateno != 270
triggerall = stateno != 290
triggerall = stateno != 292

;---------------------------------------------------------------------------
;6中
[State -1]
Type = ChangeState
Value = 240
TriggerAll = Var(59) = 0
TriggerAll = Command = "b"
TriggerAll = Command != "holddown"
TriggerAll = Command = "holdfwd"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(20)%10 = 0
triggerall = stateno != 240
triggerall = stateno != 230
triggerall = stateno != 260

;---------------------------------------------------------------------------
;6強
[State -1]
Type = ChangeState
Value = 250
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command != "holddown"
TriggerAll = Command = "holdfwd"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
[State -1]
Type = ChangeState
Value = 280
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command != "holddown"
TriggerAll = Command = "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H

;---------------------------------------------------------------------------
;しゃがみ弱
[State -1]
Type = ChangeState
Value = 400
TriggerAll = Var(59) = 0
TriggerAll = Command = "a" || Command = "x"
TriggerAll = Command = "holddown"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = 400
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = 200 || StateNo = 400
Trigger4 = Var(2)/100%10 = 4 && MoveType != H
Trigger4 = Var(2)%10 = [1,4]

;---------------------------------------------------------------------------
;しゃがみ中
[State -1]
Type = ChangeState
Value = 410
TriggerAll = Var(59) = 0
TriggerAll = Command = "b"
TriggerAll = Command = "holddown"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;3中
[State -1]
Type = ChangeState
Value = 430
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command = "holddown"
TriggerAll = Command = "holdfwd"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(23)/10%10 = 0
[State -1]
Type = ChangeState
Value = 440
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command = "holddown"
TriggerAll = Command = "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(23)/10%10 = 0

;---------------------------------------------------------------------------
;しゃがみ強
[State -1]
Type = ChangeState
Value = 420
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = Command = "holddown"
TriggerAll = Command != "holdfwd"
TriggerAll = Command != "holdback"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(22)/10%10 = 0

;---------------------------------------------------------------------------
;空中弱
[State -1]
Type = ChangeState
Value = 600
TriggerAll = Var(59) = 0
TriggerAll = Command = "a" || Command = "x"
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(20)/100 = 0
Trigger3 = StateNo = 600
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = 600
Trigger4 = Var(2)/100%10 = 4 && MoveType != H
Trigger4 = Var(2)%10 = [1,4]
triggerall = stateno != 220

;---------------------------------------------------------------------------
;空中中
[State -1]
Type = ChangeState
Value = 610
TriggerAll = Var(59) = 0
TriggerAll = Command = "b"
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(21)/100 = 0
triggerall = stateno != 220
;空中強
[State -1]
Type = ChangeState
Value = 631
TriggerAll = Var(59) = 0
TriggerAll = Command = "c" && command = "holddown"
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(22)/100 = 0
triggerall = stateno != 630
triggerall = stateno != 220
;---------------------------------------------------------------------------
;空中強
[State -1]
Type = ChangeState
Value = 620
TriggerAll = Var(59) = 0
TriggerAll = Command = "c"
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger2 = Var(22)/100 = 0
triggerall = stateno != 620
triggerall = stateno != 220

;---------------------------------------------------------------------------
;挑発
[State -1]
Type = ChangeState
Value = 195
TriggerAll = Var(59) = 0
TriggerAll = Command = "start"
Trigger1 = StateType != A
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;ガード
[State -1]
Type = ChangeState
Value = 120
TriggerAll = Var(59) = 0
TriggerAll = Command = "holdback"
TriggerAll = InGuardDist
TriggerAll = StateNo != [920,923]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
