;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 18  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;-| EX必殺技 |-------------------------------------------------------------

[Command]
name = "ダンシングフラッシュ"
command = ~B, DB, D, DF, x+y

[Command]
name = "ダンシングフラッシュ"
command = ~B, DB, D, DF, x+z

[Command]
name = "ダンシングフラッシュ"
command = ~B, DB, D, DF, y+z

;--------------------------------------------------------------------------

[Command]
name = "プリーズヘルプミーA"
command = ~B, DB, D, DF, a+b

[Command]
name = "プリーズヘルプミーB"
command = ~B, DB, D, DF, a+c

[Command]
name = "プリーズヘルプミーC"
command = ~B, DB, D, DF, b+c

;-|必殺技 |----------------------------------------------------------------

[Command]
name = "ローリングバックラー弱"
command = ~D, DF, F, x

[Command]
name = "ローリングバックラー中"
command = ~D, DF, F, y

[Command]
name = "ローリングバックラー強"
command = ~D, DF, F, z

[Command]
name = "ESローリングバックラー"
command = ~D, DF, F, x+y

[Command]
name = "ESローリングバックラー"
command = ~D, DF, F, x+z

[Command]
name = "ESローリングバックラー"
command = ~D, DF, F, y+z

;----------------------------------------------------------------------------

[Command]
name = "キャットスパイク弱"
command = ~F, D, DF, x

[Command]
name = "キャットスパイク中"
command = ~F, D, DF, y

[Command]
name = "キャットスパイク強"
command = ~F, D, DF, z

[Command]
name = "ESキャットスパイク"
command = ~F, D, DF, x+y

[Command]
name = "ESキャットスパイク"
command = ~F, D, DF, x+z

[Command]
name = "ESキャットスパイク"
command = ~F, D, DF, y+z

;----------------------------------------------------------------------------

[Command]
name = "デルタキック弱"
command = ~F, D, DF, a

[Command]
name = "デルタキック中"
command = ~F, D, DF, b

[Command]
name = "デルタキック強"
command = ~F, D, DF, c

[Command]
name = "ESデルタキック"
command = ~F, D, DF, a+b

[Command]
name = "ESデルタキック"
command = ~F, D, DF, a+c

[Command]
name = "ESデルタキック"
command = ~F, D, DF, b+c

;----------------------------------------------------------------------------

[Command]
name = "GCデルタキック弱"
command = ~F, D, DF, a
buffer.time = 4

[Command]
name = "GCデルタキック中"
command = ~F, D, DF, b
buffer.time = 4

[Command]
name = "GCデルタキック強"
command = ~F, D, DF, c
buffer.time = 4

[Command]
name = "GCESデルタキック"
command = ~F, D, DF, a+b
buffer.time = 4

[Command]
name = "GCESデルタキック"
command = ~F, D, DF, a+c
buffer.time = 4

[Command]
name = "GCESデルタキック"
command = ~F, D, DF, b+c
buffer.time = 4

;----------------------------------------------------------------------------

[Command]
name = "ヘルキャット"
command = ~F, DF, D, DB, b 
time = 24

[Command]
name = "ヘルキャット"
command = ~F, DF, D, DB, c
time = 24

[Command]
name = "ESヘルキャット"
command = ~F, DF, D, DB, b+c
time = 24

;----------------------------------------------------------------------------

[Command]
name = "追い討ち攻撃"
command = /$U, x

[Command]
name = "追い討ち攻撃"
command = /$U, y

[Command]
name = "追い討ち攻撃"
command = /$U, z

[Command]
name = "追い討ち攻撃"
command = /$U, a

[Command]
name = "追い討ち攻撃"
command = /$U, b

[Command]
name = "追い討ち攻撃"
command = /$U, c

[Command]
name = "ES追い討ち攻撃"
command = /$U, x+y

[Command]
name = "ES追い討ち攻撃"
command = /$U, x+z

[Command]
name = "ES追い討ち攻撃"
command = /$U, y+z

[Command]
name = "ES追い討ち攻撃"
command = /$U, a+b

[Command]
name = "ES追い討ち攻撃"
command = /$U, a+c

[Command]
name = "ES追い討ち攻撃"
command = /$U, b+c

[Command]
name = "トイタッチ"
command = ~D, D, x

[Command]
name = "トイタッチ"
command = ~D, D, y

[Command]
name = "トイタッチ"
command = ~D, D, z

[Command]
name = "ESトイタッチ"
command = ~D, D, x+y

[Command]
name = "ESトイタッチ"
command = ~D, D, x+z

[Command]
name = "ESトイタッチ"
command = ~D, D, y+z

;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "キティザヘルパー"
command = a+x
time = 1

[Command]
name = "キティザヘルパー"
command = b+y
time = 1

[Command]
name = "キティザヘルパー"
command = c+z
time = 1

;-| その他 |---------------------------------------------------------

[Command]
name = "ゲージ溜め"
command = ~D, D , a+b

[Command]
name = "ゲージ溜め"
command = ~D, D , a+c

[Command]
name = "ゲージ溜め"
command = ~D, D , b+c

[Command]
name = "溜めA"
command = /a

[Command]
name = "溜めB"
command = /b

[Command]
name = "溜めC"
command = /c

;-| 用途限定 |=---------------------------------------------------------------

[Command];通常投げ、ダッシュキャンセル
name = "back"
command = /B

;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name= "down"
command = D
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = a+b+c
time = 1

;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 

[Statedef -1] ;必須項目

;==============================================================================
;==============================================================================
; ダークフォース
;==============================================================================
[State -1, キティザヘルパー解除]
type = ChangeState
triggerall = var(6) > 0
triggerall = NumHelper(980) = 1
triggerall = ((StateType != A) && (Ctrl)) || (StateNo = 52)
trigger1 = (command = "キティザヘルパー")
value = 901

[State -1, キティザヘルパー]
type = ChangeState
triggerall = NumHelper(875) = 0
triggerall = NumHelper(980) = 0
triggerall = power >= 1000
triggerall = ((StateType != A) && (Ctrl)) || (StateNo = 52)
trigger1 = (command = "キティザヘルパー")
value = 900

;==============================================================================
; 必殺技
;==============================================================================
[State -1, ESキャットスパイク]
type = ChangeState
value = 818
triggerall = (command = "ESキャットスパイク") || var(27) = 18
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 4
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 4
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 4
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 4
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 4
trigger6 = StateNo = 52
trigger6 = var(1) := 4
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 4

[State -1, キャットスパイク弱]
type = ChangeState
value = 815
triggerall = (command = "キャットスパイク弱") || var(27) = 15
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 1
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 1
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 1
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 1
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 1
trigger6 = StateNo = 52
trigger6 = var(1) := 1
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 1

[State -1, キャットスパイク中]
type = ChangeState
value = 816
triggerall = (command = "キャットスパイク中") || var(27) = 16
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 2
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 2
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 2
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 2
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 2
trigger6 = StateNo = 52
trigger6 = var(1) := 2
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 2

[State -1, キャットスパイク強]
type = ChangeState
value = 817
triggerall = (command = "キャットスパイク強") || var(27) = 17
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 3
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 3
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 3
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 3
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 3
trigger6 = StateNo = 52
trigger6 = var(1) := 3
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 3

;-----------------------------------------------------------------------------

[State -1, GCデルタキック]
type = ChangeState
value = 810
triggerall = (StateType != A)
triggerall = var(8) = 0
triggerall = (StateNo = 150 || StateNo = 152)
trigger1 = (command = "GCESデルタキック")
trigger1 = power >= 1000
trigger1 = var(1) := 4
trigger2 = (command = "GCデルタキック弱")
trigger2 = var(1) := 1
trigger3 = (command = "GCデルタキック中")
trigger3 = var(1) := 2
trigger4 = (command = "GCデルタキック強")
trigger4 = var(1) := 3

;-----------------------------------------------------------------------------

[State -1, ESデルタキック]
type = ChangeState
value = 810
triggerall = (command = "ESデルタキック") || var(27) = 14
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 4
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 4
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 4
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 4
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 4
trigger6 = StateNo = 52
trigger6 = var(1) := 4
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 4

[State -1, デルタキック弱]
type = ChangeState
value = 810
triggerall = (command = "デルタキック弱") || var(27) = 11
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 1
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 1
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 1
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 1
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 1
trigger6 = StateNo = 52
trigger6 = var(1) := 1
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 1

[State -1, デルタキック中]
type = ChangeState
value = 810
triggerall = (command = "デルタキック中") || var(27) = 12
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 2
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 2
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 2
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 2
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 2
trigger6 = StateNo = 52
trigger6 = var(1) := 2
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 2

[State -1, デルタキック強]
type = ChangeState
value = 810
triggerall = (command = "デルタキック強") || var(27) = 13
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 3
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 3
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 3
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 3
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 3
trigger6 = StateNo = 52
trigger6 = var(1) := 3
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 3

;-------------------------------------------------------------------------------

[State -1, ダンシングフラッシュ]
type = ChangeState
value = 850
triggerall = (command = "ダンシングフラッシュ") || var(27) = 21
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger6 = StateNo = 52
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))

;-------------------------------------------------------------------------------

[State -1, プリーズヘルプミーA]
type = ChangeState
value = 860
triggerall = !NumHelper(865)
triggerall = !NumHelper(875)
triggerall = !NumHelper(885)
triggerall = !NumHelper(890)
triggerall = (command = "プリーズヘルプミーA") || var(27) = 22
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 1
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 1
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 1
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 1
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 1
trigger6 = StateNo = 52
trigger6 = var(1) := 1
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 1

[State -1, プリーズヘルプミーB]
type = ChangeState
value = 860
triggerall = !NumHelper(865)
triggerall = !NumHelper(875)
triggerall = !NumHelper(885)
triggerall = !NumHelper(890)
triggerall = (command = "プリーズヘルプミーB") || var(27) = 23
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 2
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 2
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 2
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 2
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 2
trigger6 = StateNo = 52
trigger6 = var(1) := 2
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 2

[State -1, プリーズヘルプミーC]
type = ChangeState
value = 860
triggerall = !NumHelper(865)
triggerall = !NumHelper(875)
triggerall = !NumHelper(885)
triggerall = !NumHelper(890)
triggerall = (command = "プリーズヘルプミーC") || var(27) = 24
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = var(8) = 0
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 3
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 3
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 3
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 3
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 3
trigger6 = StateNo = 52
trigger6 = var(1) := 3
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 3

;------------------------------------------------------------------------------

[State -1, ESヘルキャット]
type = ChangeState
value = 825
triggerall = (command = "ESヘルキャット") || var(27) = 20
triggerall = power >= 1000
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = (StateType != A) 
triggerall = EnemyNear,StateNo != 40
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 4
trigger2 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger2 = var(1) := 4
trigger3 = StateNo = 52
trigger3 = var(1) := 4
trigger4 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger4 = var(1) := 4

[State -1, ヘルキャット]
type = ChangeState
value = 825
triggerall = (command = "ヘルキャット") || var(27) = 19
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = (StateType != A)
triggerall = EnemyNear,StateNo != 40
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 1
trigger2 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger2 = var(1) := 1
trigger3 = StateNo = 52
trigger3 = var(1) := 1
trigger4 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger4 = var(1) := 1

;------------------------------------------------------------------------------
[State -1, ESローリングバックラー]
type = ChangeState
value = 800
triggerall = (command = "ESローリングバックラー") || var(27) = 10
triggerall = power >= 1000
triggerall = var(8) = 0
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 4
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 4
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 4
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 4
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 4
trigger6 = StateNo = 52
trigger6 = var(1) := 4
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 4

[State -1, ローリングバックラー弱]
type = ChangeState
value = 800
triggerall = (command = "ローリングバックラー弱") || var(27) = 7
triggerall = var(8) = 0
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 1
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 1
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 1
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 1
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 1
trigger6 = StateNo = 52
trigger6 = var(1) := 1
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 1

[State -1, ローリングバックラー中]
type = ChangeState
value = 800
triggerall = (command = "ローリングバックラー中") || var(27) = 8
triggerall = var(8) = 0
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 2
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 2
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 2
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 2
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 2
trigger6 = StateNo = 52
trigger6 = var(1) := 2
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 2

[State -1, ローリングバックラー強]
type = ChangeState
value = 800
triggerall = (command = "ローリングバックラー強") || var(27) = 9
triggerall = var(8) = 0
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || (StateNo = [730, 731]) && (AnimTime = 0) || StateNo = 5120 && AnimTime = 0
trigger1 = var(1) := 3
trigger2 = (StateNo=[200,201])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[205,206])&&(MoveContact=[10,13])&&(var(27)=15)
trigger2 = var(1) := 3
trigger3 = (StateNo=[230,231])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=[235,236])&&(MoveContact=[10,13])&&(var(27)=15)||(StateNo=241)&&(MoveContact=[10,13])&&(var(27)=15)
trigger3 = var(1) := 3
trigger4 = (Stateno=400)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=405)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=430)&&(MoveContact=[10,13])&&(var(27)=15)||(Stateno=435)&&(MoveContact=[10,13])&&(var(27)=15)
trigger4 = var(1) := 3
trigger5 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger5 = var(1) := 3
trigger6 = StateNo = 52
trigger6 = var(1) := 3
trigger7 = StateNo = 110 && ((Time <= 3) || (Time >= 25))
trigger7 = var(1) := 3

[State -1, アッパー]
type = ChangeState
triggerall = StateNo = 800
triggerall = AnimElemNo(0) >= 4
triggerall = AnimElemNo(0) < 18
trigger1 = command = "x" || command = "y" || command = "z"
value = 805

;------------------------------------------------------------------------------
[State -1, ESトイタッチ]
type = ChangeState
value = 765
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = power >= 1000
triggerall = command = "ESトイタッチ"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateType = C) && (Ctrl)
trigger3 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger4 = StateNo = 52
trigger5 = StateNo = 110 && ((Time <= 3) || (Time >= 25))

[State -1, トイタッチ]
type = ChangeState
value = 760
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "トイタッチ"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateType = C) && (Ctrl)
trigger3 = (StateNo = 116) && (time >= 2) || (Stateno = 1046 ) && (time >= 2) && (prevStateNo = 112)
trigger4 = StateNo = 52
trigger5 = StateNo = 110 && ((Time <= 3) || (Time >= 25))

;==============================================================================
; 特殊技
;==============================================================================

[State -1, ES追い討ち攻撃]
type = ChangeState
value = 750
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = power >= 1000
triggerall = command = "ES追い討ち攻撃"
trigger1 = (StateType = S) && (Ctrl)
trigger1 = var(1) := 4
trigger2 = StateNo = 40
trigger2 = var(1) := 4
trigger3 = StateNo = 52
trigger3 = var(1) := 4

[State -1, 追い討ち攻撃]
type = ChangeState
value = 750
triggerall = (P2StateType = L) || (P2StateNo = [5100, 5110]) || ((P2StateNo = [5030, 5100]) && (Enemy,GetHitVar(fall)= 1))
triggerall = command = "追い討ち攻撃"
trigger1 = (StateType = S) && (Ctrl)
trigger1 = var(1) := 1
trigger2 = StateNo = 40
trigger2 = var(1) := 1
trigger3 = StateNo = 52
trigger3 = var(1) := 1

[State -1, 地上投げ前P]
type = ChangeState
triggerall = var(3) = 0
triggerall = (command = "holdfwd")
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = ((StateType != A) && (Ctrl)) || (StateNo = 52)
trigger1 = command = "y"
trigger1 = var(13) := 1
trigger2 = command = "z"
trigger2 = var(13) := 2
value = 700

[State -1, 地上投げ後P]
type = ChangeState
triggerall = var(3) = 0
triggerall = (command = "holdback")
triggerall = (P2BodyDist X < 11)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = ((StateType != A) && (Ctrl)) || (StateNo = 52)
trigger1 = command = "y"
trigger1 = var(13) := 1
trigger2 = command = "z"
trigger2 = var(13) := 2
value = 705

[State -1, 地上投げ前K]
type = ChangeState
triggerall = var(3) = 0
triggerall = (command = "holdfwd")
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = ((StateType != A) && (Ctrl)) || (StateNo = 52)
trigger1 = command = "b"
trigger1 = var(13) := 1
trigger2 = command = "c"
trigger2 = var(13) := 2
value = 711

[State -1, 地上投げ後K]
type = ChangeState
triggerall = var(3) = 0
triggerall = (command = "holdback")
triggerall = (StateType != A) && (Ctrl)
triggerall = (P2BodyDist X < 11)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = ((StateType != A) && (Ctrl)) || (StateNo = 52)
trigger1 = command = "b"
trigger1 = var(13) := 1
trigger2 = command = "c"
trigger2 = var(13) := 2
value = 710

[State -1, 空中投げ前]
type = ChangeState
triggerall = (command = "y") || (command = "z")
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
trigger1 = (command = "holdfwd")
trigger1 = (StateType = A)
trigger1 = (Ctrl)
trigger1 = (P2BodyDist X < 14)
trigger1 = (P2Dist Y = [-60,30])
trigger1 = (P2StateType = A)
trigger1 = (P2MoveType != H)
value = 720

[State -1, 空中投げ後]
type = ChangeState
triggerall = (command = "y") || (command = "z")
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
trigger1 = (command = "holdback")
trigger1 = (StateType = A)
trigger1 = (Ctrl)
trigger1 = (P2BodyDist X < 15)
trigger1 = (P2Dist Y = [-60,30])
trigger1 = (P2StateType = A)
trigger1 = (P2MoveType != H)
value = 721

[State -1, ゲージ溜め]
type = ChangeState
triggerall = command = "ゲージ溜め"
triggerall = (StateType != A)
trigger1 = (StateType = S) && (Ctrl) || (StateType = C) && (Ctrl)
trigger2 = StateNo = 52
value = 780

[State -1, 移動起き上がり前]
type = ChangeState
triggerall = (Alive)
triggerall = (RoundState = 2) && (StateNo = 5110) && (MoveType = H)
triggerall = (command = "holdfwd")
trigger1 = (command = "x")
trigger2 = (command = "y")
trigger3 = (command = "z")
trigger4 = (command = "a")
trigger5 = (command = "b")
trigger6 = (command = "c")
value = 730

[State -1, 移動起き上がり後]
type = ChangeState
triggerall = (Alive)
triggerall = (RoundState = 2) && (StateNo = 5110) && (MoveType = H)
triggerall = (command = "holdback")
trigger1 = (command = "x")
trigger2 = (command = "y")
trigger3 = (command = "z")
trigger4 = (command = "a")
trigger5 = (command = "b")
trigger6 = (command = "c")
value = 731

;==============================================================================
; 移動関連
;==============================================================================

[State -1, 走る]
type = ChangeState
value = 110
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 115
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 40
trigger1 = command = "holdup"
trigger1 = StateNo = 52
trigger1 = Time >= 3

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 近立ち弱パンチ]
type = ChangeState
value = 201
triggerall = command = "x" || var(27) = 1
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 6
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (AnimElemtime(2)>1) && (!MoveContact)
trigger3 = (StateNo = 200) && (AnimElemtime(2)>1) && (var(26)=0) && (MoveContact)
trigger4 = (StateNo = 201) && (AnimElemTime(3)>1) && (!MoveContact)
trigger5 = (StateNo = 201) && (AnimElemTime(3)>1) && (var(26)=0) && (MoveContact)
trigger6 = (StateNo = 400) && (AnimElemTime(2)>1) && (!MoveContact)
trigger7 = (StateNo = 400) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger8 = StateNo = 52

[State -1, 遠立ち弱パンチ]
type = ChangeState
value = 200
triggerall = command = "x" || var(27) = 1
triggerall = command != "holddown"
triggerall = P2BodyDist X > 6
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (AnimElemtime(2)>1) && (!MoveContact)
trigger3 = (StateNo = 200) && (AnimElemtime(2)>1) && (var(26)=0) && (MoveContact)
trigger4 = (StateNo = 201) && (AnimElemTime(3)>1) && (!MoveContact)
trigger5 = (StateNo = 201) && (AnimElemTime(3)>1) && (var(26)=0) && (MoveContact)
trigger6 = (StateNo = 400) && (AnimElemTime(2)>1) && (!MoveContact)
trigger7 = (StateNo = 400) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger8 = StateNo = 52

[State -1, 近立ち中パンチ]
type = ChangeState
value = 206
triggerall = command = "y" || var(27) = 2
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 8
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=2)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=2)
trigger4 = (StateNo = 230) && (MoveContact=10)&&(var(27)=2)
trigger5 = (StateNo = 231) && (MoveContact=10)&&(var(27)=2)
trigger6 = (StateNo = 400) && (MoveContact=10)&&(var(27)=2)
trigger7 = (StateNo = 430) && (MoveContact=10)&&(var(27)=2)
trigger8 = StateNo = 52

[State -1, 遠立ち中パンチ]
type = ChangeState
value = 205
triggerall = command = "y" || var(27) = 2
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=2)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=2)
trigger4 = (StateNo = 230) && (MoveContact=10)&&(var(27)=2)
trigger5 = (StateNo = 231) && (MoveContact=10)&&(var(27)=2)
trigger6 = (StateNo = 400) && (MoveContact=10)&&(var(27)=2)
trigger7 = (StateNo = 430) && (MoveContact=10)&&(var(27)=2)
trigger8 = StateNo = 52

[State -1, 近立ち強パンチ]
type = ChangeState
value = 211
triggerall = command = "z" || var(27) = 3 
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=3)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=3)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=3)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=3)
trigger6 = (StateNo = 230) && (MoveContact=10)&&(var(27)=3)
trigger7 = (StateNo = 231) && (MoveContact=10)&&(var(27)=3)
trigger8 = (StateNo = 235) && (MoveContact=10)&&(var(27)=3)
trigger9 = (StateNo = 236) && (MoveContact=10)&&(var(27)=3)
trigger10 = (StateNo = 400) && (MoveContact=10)&&(var(27)=3)
trigger11 = (StateNo = 405) && (MoveContact=10)&&(var(27)=3)
trigger12 = (StateNo = 430) && (MoveContact=10)&&(var(27)=3)
trigger13 = (StateNo = 435) && (MoveContact=10)&&(var(27)=3)
trigger14 = StateNo = 52

[State -1, 遠立ち強パンチ]
type = ChangeState
value = 210
triggerall = command = "z" || var(27) = 3 
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=3)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=3)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=3)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=3)
trigger6 = (StateNo = 230) && (MoveContact=10)&&(var(27)=3)
trigger7 = (StateNo = 231) && (MoveContact=10)&&(var(27)=3)
trigger8 = (StateNo = 235) && (MoveContact=10)&&(var(27)=3)
trigger9 = (StateNo = 236) && (MoveContact=10)&&(var(27)=3)
trigger10 = (StateNo = 400) && (MoveContact=10)&&(var(27)=3)
trigger11 = (StateNo = 405) && (MoveContact=10)&&(var(27)=3)
trigger12 = (StateNo = 430) && (MoveContact=10)&&(var(27)=3)
trigger13 = (StateNo = 435) && (MoveContact=10)&&(var(27)=3)
trigger14 = StateNo = 52

[State -1, 近立ち弱キック]
type = ChangeState
value = 231
triggerall = command = "a" || var(27) = 4
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=4)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=4)
trigger4 = (StateNo = 230) && (AnimElemTime(3)>1) && (!MoveContact)
trigger5 = (StateNo = 230) && (AnimElemTime(3)>1) && (var(26)=0) && (MoveContact)
trigger6 = (StateNo = 231) && (AnimElemTime(2)>1) && (!MoveContact)
trigger7 = (StateNo = 231) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger8 = (StateNo = 400) && (MoveContact=10)&&(var(27)=4)
trigger9 = (StateNo = 430) && (AnimElemTime(2)>1) && (!MoveContact)
trigger10= (StateNo = 430) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger11= StateNo = 52

[State -1, 遠立ち弱キック]
type = ChangeState
value = 230
triggerall = command = "a" || var(27) = 4
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=4)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=4)
trigger4 = (StateNo = 230) && (AnimElemTime(3)>1) && (!MoveContact)
trigger5 = (StateNo = 230) && (AnimElemTime(3)>1) && (var(26)=0) && (MoveContact)
trigger6 = (StateNo = 231) && (AnimElemTime(2)>1) && (!MoveContact)
trigger7 = (StateNo = 231) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger8 = (StateNo = 400) && (MoveContact=10)&&(var(27)=4)
trigger9 = (StateNo = 430) && (AnimElemTime(2)>1) && (!MoveContact)
trigger10= (StateNo = 430) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger11= StateNo = 52

[State -1, 近立ち中キック]
type = ChangeState
value = 236
triggerall = command = "b" || var(27) = 5
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=5)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=5)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=5)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=5)
trigger6 = (StateNo = 230) && (MoveContact=10)&&(var(27)=5)
trigger7 = (StateNo = 231) && (MoveContact=10)&&(var(27)=5)
trigger8 = (StateNo = 400) && (MoveContact=10)&&(var(27)=5)
trigger9 = (StateNo = 405) && (MoveContact=10)&&(var(27)=5)
trigger10 = (StateNo = 430) && (MoveContact=10)&&(var(27)=5)
trigger11 = StateNo = 52

[State -1, 遠立ち中キック]
type = ChangeState
value = 235
triggerall = command = "b" || var(27) = 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=5)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=5)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=5)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=5)
trigger6 = (StateNo = 230) && (MoveContact=10)&&(var(27)=5)
trigger7 = (StateNo = 231) && (MoveContact=10)&&(var(27)=5)
trigger8 = (StateNo = 400) && (MoveContact=10)&&(var(27)=5)
trigger9 = (StateNo = 405) && (MoveContact=10)&&(var(27)=5)
trigger10 = (StateNo = 430) && (MoveContact=10)&&(var(27)=5)
trigger11 = StateNo = 52

[State -1, 近立ち強キック]
type = ChangeState
value = 241
triggerall = command = "c" || var(27) = 6
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=6)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=6)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=6)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=6)
trigger6 = (StateNo = 210) && (MoveContact=10)&&(var(27)=6)
trigger7 = (StateNo = 211) && (MoveContact=10)&&(var(27)=6)
trigger8 = (StateNo = 230) && (MoveContact=10)&&(var(27)=6)
trigger9 = (StateNo = 231) && (MoveContact=10)&&(var(27)=6)
trigger10 = (StateNo = 235) && (MoveContact=10)&&(var(27)=6)
trigger11 = (StateNo = 236) && (MoveContact=10)&&(var(27)=6)
trigger12 = (StateNo = 400) && (MoveContact=10)&&(var(27)=6)
trigger13 = (StateNo = 405) && (MoveContact=10)&&(var(27)=6)
trigger14 = (StateNo = 430) && (MoveContact=10)&&(var(27)=6)
trigger15 = (StateNo = 435) && (MoveContact=10)&&(var(27)=6)
trigger16 = StateNo = 52

[State -1, 遠立ち強キック]
type = ChangeState
value = 240
triggerall = command = "c" || var(27) = 6
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=6)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=6)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=6)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=6)
trigger6 = (StateNo = 210) && (MoveContact=10)&&(var(27)=6)
trigger7 = (StateNo = 211) && (MoveContact=10)&&(var(27)=6)
trigger8 = (StateNo = 230) && (MoveContact=10)&&(var(27)=6)
trigger9 = (StateNo = 231) && (MoveContact=10)&&(var(27)=6)
trigger10 = (StateNo = 235) && (MoveContact=10)&&(var(27)=6)
trigger11 = (StateNo = 236) && (MoveContact=10)&&(var(27)=6)
trigger12 = (StateNo = 400) && (MoveContact=10)&&(var(27)=6)
trigger13 = (StateNo = 405) && (MoveContact=10)&&(var(27)=6)
trigger14 = (StateNo = 430) && (MoveContact=10)&&(var(27)=6)
trigger15 = (StateNo = 435) && (MoveContact=10)&&(var(27)=6)
trigger16 = StateNo = 52

;------------------------------------------------------------------------------
[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x" || var(27) = 1
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(2)>1) && (!MoveContact)
trigger3 = (StateNo = 200) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger4 = (StateNo = 201) && (AnimElemTime(3)>1) && (!MoveContact)
trigger5 = (StateNo = 201) && (AnimElemTime(3)>1) && (var(26)=0) && (MoveContact)
trigger6 = (StateNo = 400) && (AnimElemTime(2)>1) && (!MoveContact)
trigger7 = (StateNo = 400) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger8 = StateNo = 52

[State -1, しゃがみ中パンチ]
type = ChangeState
value = 405
triggerall = command = "y" || var(27) = 2
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=2)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=2)
trigger4 = (StateNo = 230) && (MoveContact=10)&&(var(27)=2)
trigger5 = (StateNo = 231) && (MoveContact=10)&&(var(27)=2)
trigger6 = (StateNo = 400) && (MoveContact=10)&&(var(27)=2)
trigger7 = (StateNo = 430) && (MoveContact=10)&&(var(27)=2)
trigger8 = StateNo = 52

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall = command = "z" || var(27) = 3
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=3)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=3)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=3)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=3)
trigger6 = (StateNo = 230) && (MoveContact=10)&&(var(27)=3)
trigger7 = (StateNo = 231) && (MoveContact=10)&&(var(27)=3)
trigger8 = (StateNo = 235) && (MoveContact=10)&&(var(27)=3)
trigger9 = (StateNo = 236) && (MoveContact=10)&&(var(27)=3)
trigger10 = (StateNo = 400) && (MoveContact=10)&&(var(27)=3)
trigger11 = (StateNo = 405) && (MoveContact=10)&&(var(27)=3)
trigger12 = (StateNo = 430) && (MoveContact=10)&&(var(27)=3)
trigger13 = (StateNo = 435) && (MoveContact=10)&&(var(27)=3)
trigger14 = StateNo = 52

[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = command = "a" || var(27) = 4
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=4)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=4)
trigger4 = (StateNo = 230) && (AnimElemTime(3)>1) && (!MoveContact)
trigger5 = (StateNo = 230) && (AnimElemTime(3)>1) && (var(26)=0) && (MoveContact)
trigger6 = (StateNo = 231) && (AnimElemTime(2)>1) && (!MoveContact)
trigger7 = (StateNo = 231) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger8 = (StateNo = 400) && (MoveContact=10)&&(var(27)=4)
trigger9 = (StateNo = 430) && (AnimElemTime(2)>1) && (!MoveContact)
trigger10= (StateNo = 430) && (AnimElemTime(2)>1) && (var(26)=0) && (MoveContact)
trigger11= StateNo = 52

[State -1, しゃがみ中キック]
type = ChangeState
value = 435
triggerall = command = "b" || var(27) = 5
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=5)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=5)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=5)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=5)
trigger6 = (StateNo = 230) && (MoveContact=10)&&(var(27)=5)
trigger7 = (StateNo = 231) && (MoveContact=10)&&(var(27)=5)
trigger8 = (StateNo = 400) && (MoveContact=10)&&(var(27)=5)
trigger9 = (StateNo = 405) && (MoveContact=10)&&(var(27)=5)
trigger10 = (StateNo = 430) && (MoveContact=10)&&(var(27)=5)
trigger11 = StateNo = 52

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = command = "c" || var(27) = 6
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact=10)&&(var(27)=6)
trigger3 = (StateNo = 201) && (MoveContact=10)&&(var(27)=6)
trigger4 = (StateNo = 205) && (MoveContact=10)&&(var(27)=6)
trigger5 = (StateNo = 206) && (MoveContact=10)&&(var(27)=6)
trigger6 = (StateNo = 210) && (MoveContact=10)&&(var(27)=6)
trigger7 = (StateNo = 211) && (MoveContact=10)&&(var(27)=6)
trigger8 = (StateNo = 230) && (MoveContact=10)&&(var(27)=6)
trigger9 = (StateNo = 231) && (MoveContact=10)&&(var(27)=6)
trigger10 = (StateNo = 235) && (MoveContact=10)&&(var(27)=6)
trigger11 = (StateNo = 236) && (MoveContact=10)&&(var(27)=6)
trigger12 = (StateNo = 400) && (MoveContact=10)&&(var(27)=6)
trigger13 = (StateNo = 405) && (MoveContact=10)&&(var(27)=6)
trigger14 = (StateNo = 430) && (MoveContact=10)&&(var(27)=6)
trigger15 = (StateNo = 435) && (MoveContact=10)&&(var(27)=6)
trigger16 = StateNo = 52

;------------------------------------------------------------------------------
[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = command = "x" || var(27) = 1
trigger1 = (statetype = A) && (ctrl)
;再攻撃
trigger2 = (StateNo = 605) && (Anim = [38, 39]) && (movecontact = 0)
trigger3 = (StateNo = 610) && (Anim = [38, 39]) && (movecontact = 0)
trigger4 = (StateNo = 630) && (Anim = [38, 39]) && (movecontact = 0)
trigger5 = (StateNo = 635) && (Anim = [38, 39]) && (movecontact = 0)
trigger6 = (StateNo = 640) && (Anim = [38, 39]) && (movecontact = 0)

[State -1, ジャンプ中パンチ]
type = ChangeState
value = 605
triggerall = command = "y" || var(27) = 2
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = 1) && (var(27) = 2)
trigger3 = (StateNo = 630) && (MoveContact = 1) && (var(27) = 2)
;再攻撃
trigger4 = (StateNo = 600) && (Anim = [38, 39]) && (movecontact = 0)
trigger5 = (StateNo = 610) && (Anim = [38, 39]) && (movecontact = 0)
trigger6 = (StateNo = 630) && (Anim = [38, 39]) && (movecontact = 0)
trigger7 = (StateNo = 635) && (Anim = [38, 39]) && (movecontact = 0)
trigger8 = (StateNo = 640) && (Anim = [38, 39]) && (movecontact = 0)

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = command = "z" || var(27) = 3
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = 1) && (var(27) = 3)
trigger3 = (StateNo = 630) && (MoveContact = 1) && (var(27) = 3)
trigger4 = (StateNo = 605) && (MoveContact = 1) && (var(27) = 3)
trigger5 = (StateNo = 606) && (MoveContact = 1) && (var(27) = 3)
trigger6 = (StateNo = 635) && (MoveContact = 1) && (var(27) = 3)
;再攻撃
trigger7 = (StateNo = 600) && (Anim = [38, 39]) && (movecontact = 0)
trigger8 = (StateNo = 605) && (Anim = [38, 39]) && (movecontact = 0)
trigger9 = (StateNo = 630) && (Anim = [38, 39]) && (movecontact = 0)
trigger10= (StateNo = 635) && (Anim = [38, 39]) && (movecontact = 0)
trigger11= (StateNo = 640) && (Anim = [38, 39]) && (movecontact = 0)

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = command = "a" || var(27) = 4
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = 1) && (var(27) = 4)
;再攻撃
trigger3 = (StateNo = 600) && (Anim = [38, 39]) && (movecontact = 0)
trigger4 = (StateNo = 605) && (Anim = [38, 39]) && (movecontact = 0)
trigger5 = (StateNo = 610) && (Anim = [38, 39]) && (movecontact = 0)
trigger6 = (StateNo = 635) && (Anim = [38, 39]) && (movecontact = 0)
trigger7 = (StateNo = 640) && (Anim = [38, 39]) && (movecontact = 0)

[State -1, ジャンプ中キック]
type = ChangeState
value = 635
triggerall = command = "b" || var(27) = 5
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = 1) && (var(27) = 5)
trigger3 = (StateNo = 605) && (MoveContact = 1) && (var(27) = 5)
trigger4 = (StateNo = 630) && (MoveContact = 1) && (var(27) = 5)
;再攻撃
trigger5 = (StateNo = 600) && (Anim = [38, 39]) && (movecontact = 0)
trigger6 = (StateNo = 605) && (Anim = [38, 39]) && (movecontact = 0)
trigger7 = (StateNo = 610) && (Anim = [38, 39]) && (movecontact = 0)
trigger8 = (StateNo = 630) && (Anim = [38, 39]) && (movecontact = 0)
trigger9 = (StateNo = 640) && (Anim = [38, 39]) && (movecontact = 0)

[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = command = "c" || var(27) = 6
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = 1) && (var(27) = 6)
trigger3 = (StateNo = 630) && (MoveContact = 1) && (var(27) = 6)
trigger4 = (StateNo = 605) && (MoveContact = 1) && (var(27) = 6)
trigger5 = (StateNo = 606) && (MoveContact = 1) && (var(27) = 6)
trigger6 = (StateNo = 635) && (MoveContact = 1) && (var(27) = 6)
trigger7 = (StateNo = 610) && (MoveContact = 1) && (var(27) = 6)
;再攻撃
trigger8 = (StateNo = 600) && (Anim = [38, 39]) && (movecontact = 0)
trigger9 = (StateNo = 605) && (Anim = [38, 39]) && (movecontact = 0)
trigger10= (StateNo = 610) && (Anim = [38, 39]) && (movecontact = 0)
trigger11= (StateNo = 630) && (Anim = [38, 39]) && (movecontact = 0)
trigger12= (StateNo = 635) && (Anim = [38, 39]) && (movecontact = 0)

;------------------------------------------------------------------------------
[State -1, キャットクリンチ]
type = ChangeState
value = 196
triggerall = var(22) < 16
triggerall = command = "start"
triggerall = P2BodyDist X < 11
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 52

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(22) < 16
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 52

;------------------------------------------------------------------------------
[State -1, ウォールクラッチ]
type = ChangeState
triggerall = command = "back"
triggerall = (StateType = A) && (Ctrl)
triggerall = Pos Y < -50 
triggerall = PrevStateNo != 741
trigger1 = BackEdgeDist < 2
value = 740

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
