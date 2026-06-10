; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = y      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = x      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = c      ;Ｂボタン　　　　　　　　　〃
c = b      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 2  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。


[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1
[Command]
name = "downfwd"
command = $DF
time = 1
[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1
[Command]
name = "downback"
command = $DB
time = 1
[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1
[Command]
name = "upback"
command = $UB
time = 1
[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1



[Command]
name = "imposible"
command = ~D, DF, F, D, DF, F, x,~D, DF, F, D, DF, F, x,~D, DF, F, D, DF, F, x
time = 1

[Command]
name = "down+a"
command = /$D,a

[Command]
name = "back+c"
command = /$B,c

[Command]
name = "sinkuu_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "sinkuu_x"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "sinkuu_x"
command = ~D, DF, F, z+x
time = 20

[Command]
name = "sinkuu_x"
command = ~D, DF, F, z+y
time = 20

[Command]
name = "sinkuu_a"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "sinkuu_a"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "sinkuu_a"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "sinkuu_a"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "sinkuu_c"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "sinkuu_z"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "gyakusinkuu_a"
command = ~D, DB, B, D, DB, B, a;~F, D, DF, F, D, DF, a
time = 20

[Command]
name = "gyakusinkuu_a"
command = ~D, DB, B, b+a;~F, D, DF, F, D, DF, a
time = 20

[Command]
name = "gyakusinkuu_a"
command = ~D, DB, B, b+c;~F, D, DF, F, D, DF, a
time = 20

[Command]
name = "gyakusinkuu_a"
command = ~D, DB, B, a+c;~F, D, DF, F, D, DF, a
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x


[Command]
name = "syouryuu_a"
command = ~F, D, DF, a

[Command]
name = "syouryuu_b"
command = ~F, D, DF, b

[Command]
name = "syouryuu_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "aaaa"
command = a, a
time = 25

[Command]
name = "mlion"
command = ~a ,/a
time = 7

[Command]
name = "gyakuhadou_y"
command = ~D, DB, B, y

[Command]
name = "gyakuhadou_a"
command = ~D, DB, B, a

[Command]
name = "b-hadou-b"
command = ~D, DB, B, b

[Command]
name = "b-hadou-c"
command = ~D, DB, B, c


[Command]
name = "b-hadou-x"
command = ~D, DB, B, x


[Command]
name = "hadou_x"
command = ~D, DF, F, x

[Command]
name = "hadou-y"
command = ~D, DF, F, y


[Command]
name = "hadou-b"
command = ~D, DF, F, b

[Command]
name = "hadou-c"
command = ~D, DF, F, c

[Command]
name = "hadou-a"
command = ~D, DF, F, a

[Command]
name = "hadou-c"
command = ~D, DF, F, c

[Command]
name = "hadou-z"
command = ~D, DF, F, z

[Command]
name = "b-hadou-z"
command = ~D, DB, B, z

[Command]
name = "hadou-ax"
command = ~D, DF, F, a+x

[Command]
name = "hadou-b"
command = ~D, DF, F, b

[Command]
name = "hanasi-b"
command = ~b

[Command]
name = "hanasi-x"
command = ~x

[Command]
name = "214-c"
command = D, DB, B,c


[Command]
name = "22-x"
command = ~F, D, DF, x

[Command]
name = "hold-x"
command = /x

[Command]
name = "hold-a"
command = /a

[Command]
name = "hold-b"
command = /b

[Command]
name = "hold-y"
command = /y

[Command]
name = "hold-c"
command = /c

[Command]
name = "hold-z"
command = /z

[Command]
name = "236236"
command = /z,D, DF, F

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = y
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = c
time = 1
;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "B_a"
command = /$B,a
time = 1

[Command]
name = "B_y"
command = /$B,y
time = 1

;------------------------------------------------------------------------------
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
name = "dz"
command = z,z
time = 10

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "jump"
command = $U
time = 1

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
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

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（‐１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; エネステ
;==============================================================================
[State -1, エネステ]
type = ChangeState
triggerall = statetype = A
triggerall = P2bodyDist X < 30
triggerall = P2bodyDist Y < 50
triggerall = command = "jump"
triggerall = !(stateno = 2055)
trigger1 = (stateno = 2105) && !(var(21) = 100) && (MoveHit =[2,3])
trigger2 = !(stateno =[4600,4610]) && (MoveHit =[2,3]) && !(stateno = 2105)
trigger3 = (stateno =[4100,4105]) && (movehit =[2,5])
trigger4 = (stateno =[4600,4610]) && (movehit =[2,6])
value = 40

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, DTスティンガー]
type = ChangeState
value = 1110
triggerall = command = "gyakusinkuu_a"
triggerall = !(StateNo = 1110) 
triggerall = !(StateNo = 2100) 
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA,SA

[State -1, リアルインパクト]
type = ChangeState
value = 2100
triggerall = var(56) = 0
triggerall = command = "sinkuu_x"
triggerall = !(StateNo = 1110) 
triggerall = !(StateNo = 2100)
triggerall = !(StateNo = 2300)
triggerall = !(StateNo = 4160)
triggerall = power >= 3000
triggerall = var(20) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA,SA

[State -1, ダンスマカブル]
type = ChangeState
value = 2300
triggerall = var(20) = 1
triggerall = command = "sinkuu_a"
triggerall = !(StateNo = 1110) 
triggerall = !(StateNo = 2100)
triggerall = !(StateNo = 4160)
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA,SA

[State -1, オーメン]
type = ChangeState
value = 4160
triggerall = var(58) = 0
triggerall = command = "sinkuu_z"
triggerall = !(StateNo = 1110) 
triggerall = !(StateNo = 2100)
triggerall = !(StateNo = 2300)
triggerall = !(StateNo = 4160)
triggerall = power >= 1000
triggerall = var(20) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA,SA


;------------------------------------------------------------------------------

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;ダークスレイヤー
[state -1, 次元斬]
type = ChangeState
value = 4550
triggerall = var(55) = 0
triggerall = (command = "hadou-c") || (command = "b-hadou-c")
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)


;------------------------------------------------------------------------------
;ロイヤルガード
[State -1, ロイヤルリリース 空中]
type = ChangeState
value = 3530
triggerall = command = "B_y"
trigger1 = statetype = A
trigger1 =var(20) = 1
trigger1 = ctrl

[State -1, ロイヤルリリース 地上]
type = ChangeState
value = 3520
triggerall = command = "B_y"
triggerall = statetype = S
triggerall =var(20) = 1
trigger1 = ctrl

[State -1, ロイヤルブロック]
type = ChangeState
value = 3500
triggerall = command = "b"
triggerall =var(20) = 3
trigger1 = ctrl

[State -1, Parry Stand Block]
type = HitOverride
triggerall = command = "fwd" && command!= "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 3500
slot = 0
time = 5

[State -1, Parry Stand royal Guard]
type = HitOverride
triggerall = command = "fwd" && command!= "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 3505
slot = 0
time = 5

[State -1, Aerial Parry block]
type= HitOverride
triggerall = (statetype= A && command = "fwd") && command != "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 3510
forceair = 1
slot = 0
time = 5

[State -1, Aerial Parry royal guard]
type= HitOverride
triggerall = (statetype= A && command = "fwd") && command != "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 3505
forceair = 1
slot = 0
time = 5

;------------------------------------------------------------------------------
;ソードマスター
[state -1, フロップ]
type = ChangeState
value = 2040
triggerall = command = "syouryuu_a"
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)

[state -1, ショック]
type = ChangeState
value = 2060
triggerall = command = "22-x"
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)

[state -1, ｼﾞｪﾉｻｲｶﾀｯ]
type = ChangeState
value = 2055
triggerall = command = "hadou_x"
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)

[State -1, オーバードライブFB]
type = ChangeState
value = 2035
triggerall = command = "hadou-ax"
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)

[State -1, ドライブ]
type = ChangeState
value = 2000
triggerall = command = "hadou-a"
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)


;------------------------------------------------------------------------------
;トリックスター
[State -1, TSバクステ]
type = ChangeState
value = 3010
triggerall = command = "b" && command = "holdback"
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)
trigger8 = stateno = 105 && time > 10

[State -1, エアトリック地上]
type = ChangeState
value = 3020
triggerall = command = "b"
triggerall = var(20) = 1 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)
trigger8 = stateno = 3010 && time > 16
trigger9 = (stateno = 2040) && (MoveContact > 1)

[State -1, TS空ダ]
type = ChangeState
value = 3050
triggerall = (command = "holdfwd" && command = "b") ||(command = "FF") ||(command = "holdback" && command = "b") ||(command = "BB")
triggerall = var(20) = 1 
triggerall = var(6) !=1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = [600,699]) && (movecontact > 1)

[State -1, エアトリック空中]
type = ChangeState
value = 3030
triggerall = command = "b"
triggerall = var(20) = 1 
triggerall = var(7) !=1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1500) && (ProjHitTime(1500) != -1 && ProjHitTime(1500) < 15)
trigger3 = (stateno = 2055) && (movehit > 1) && time > 28

;------------------------------------------------------------------------------
;ガンスリンガー

[State -1, ハニカム]
type = ChangeState
value = 4200
triggerall = command = "b-hadou-z"
triggerall = var(20) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger7 = (stateno = 40)

[State -1, パンドラ3形態]
type = ChangeState
value = 4140
trigger1 = statetype = S
trigger1 = command = "236236"
trigger1 = (stateno = 4130) && (time > 25)

[State -1, パンドラ2形態]
type = ChangeState
value = 4130
trigger1 = statetype = S
trigger1 = command = "236236"
trigger1 = (stateno = 4120) && (time > 20)

[State -1, パンドラ1形態]
type = ChangeState
value = 4120
triggerall = command = "hadou-z"
triggerall = var(20) = 1
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (stateno = [4500,4510]) && (MoveContact > 1)

[State -1, レインストーム]
type = ChangeState
value = 4100
triggerall = var(20) = 1
triggerall = command = "z" && command = "holddown"
trigger1 = (statetype = A) && (ctrl)

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(56) = 0
triggerall = (command = "BB") || (command = "b-hadou-x")
triggerall = statetype = S
triggerall =! (stateno = 370)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (stateno = [4500,4510]) && (MoveContact > 1)

;==============================================================================
; 特殊技(共通必殺技)
;==============================================================================
;------------------------------------------------------------------------------


[State -1, スティンガー]
type = ChangeState
value = 1100
triggerall = command = "gyakuhadou_a"
triggerall = statetype != A
triggerall = !(stateno = [220,225])
triggerall = !(stateno = 330)
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (StateNo = [4020,4030]) && (MoveContact > 1)
trigger5 = (stateno = [4500,4510]) && (MoveContact > 1)
trigger6 = (stateno = 4200) && (time > 34) || (stateno = 4205) || (stateno = 4210)
trigger7 = (stateno = 40)

[State -1, ハイタイム]
type = ChangeState
value = 1000
triggerall = command = "a" && command = "holddown"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200) && (MoveContact > 1)
trigger3 = (stateno = 205) && (MoveContact > 1)
trigger4 = (stateno = 210) && time > 49 && (MoveContact > 1)
trigger5 = (stateno = 210) && time > 49
trigger6 = (stateno = 4500) && (MoveContact > 1)
trigger7 = (stateno = 4510) && (MoveContact > 1)
trigger8 = (stateno = 410) && (MoveContact > 1)
trigger9 = (stateno = 230) && (MoveContact > 1)
trigger10 = (stateno = 250) && (MoveContact > 1)
trigger11 = (stateno = 290) && (MoveContact > 1)
trigger12 = (stateno = 350) && (MoveContact > 1)
trigger13 = (stateno = 355) && (MoveContact > 1)

[State -1, エクスタシー 空中]
type = ChangeState
value = 1500
triggerall = var(57) = 0
triggerall = command = "gyakuhadou_y"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = 630) && (movecontact > 1)

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, リベ一段目]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = [400,409]) && (MoveContact > 1)


[State -1, リベ二段目 EX]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = (stateno = 200) && time > 20

[State -1, リベ二段目]
type = ChangeState
value = 205
triggerall = command = "a"
trigger1 = (stateno = 200) && time = [10,20]
trigger2 = (stateno = 200) && (MoveContact > 1)

[State -1, リベ三段目 EX]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = (stateno = 210) && time > 56

[State -1, リベ三段目]
type = ChangeState
value = 215
triggerall = command = "a"
trigger1 = (stateno = 205) && time > 18
trigger2 = (stateno = 205) && (MoveContact > 1)


[State -1, ビーストアッパー]
type = ChangeState
value = 410
triggerall = var(56) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact > 1)
trigger3 = (stateno = 205) && (MoveContact > 1)
trigger4 = (stateno = 210) && time > 49 && (MoveContact > 1)
trigger5 = (stateno = 210) && time > 49
trigger6 = (stateno = 4500) && (MoveContact > 1)
trigger7 = (stateno = 4510) && (MoveContact > 1)
trigger8 = (stateno = [400,409]) && (MoveContact > 1)
trigger9 = (stateno = 230) && (MoveContact > 1)
trigger10 = (stateno = 250) && (MoveContact > 1)
trigger11 = (stateno = 290) && (MoveContact > 1)

[State -1, ギル四段目]
type = ChangeState
value = 310
triggerall = var(56) = 0
triggerall = command = "x"
trigger1 = (command = "holdback") && (ctrl) && (statetype =S)
trigger2 = (stateno = 270) && time > 30
trigger3 = (stateno = 270) && (MoveContact > 1)

[State -1, ギル四段目EX]
type = ChangeState
value = 330
triggerall = var(56) = 0
triggerall = command = "x"
trigger1 = (command = "holdfwd") && (ctrl) && (statetype =S)
trigger2 = (stateno = 290) && time > 72
trigger3 = (stateno = 290) && (MoveContact > 1)

[State -1, ギル一段目]
type = ChangeState
value = 230
triggerall = var(56) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (MoveContact > 1) || (stateno = 200) && (time = [10,20])
trigger3 = (stateno = 205) && (MoveContact > 1) || (stateno = 205) && (time > 18)
trigger4 = (stateno = 210) && (time > 49) && (MoveContact > 1) || (stateno = 210) && (time > 49)

[State -1, ギル二段目]
type = ChangeState
value = 250
triggerall = var(56) = 0
triggerall = command = "x"
trigger1 = (stateno = 230) && time > 17
trigger2 = (stateno = 230) && (MoveContact > 1)

[State -1, ギル三段目EX]
type = ChangeState
value = 290
triggerall = var(56) = 0
triggerall = command = "x" && command = "holdfwd"
trigger1 = (stateno = 250) && time > 15
trigger2 = (stateno = 250) && (MoveContact > 1)

[State -1, ギル三段目]
type = ChangeState
value = 270
triggerall = var(56) = 0
triggerall = command = "x"
trigger1 = (stateno = 250) && time > 15
trigger2 = (stateno = 250) && (MoveContact > 1)

[State -1, ルシ〆]
type = ChangeState
value = 370
triggerall = var(57) = 0
triggerall = command = "hadou-y"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (MoveContact > 1) || (stateno = 200) && (time = [10,20])
trigger3 = (stateno = 205) && (MoveContact > 1) || (stateno = 205) && (time > 18)
trigger4 = (stateno = 210) && (time > 49) && (MoveContact > 1) || (stateno = 210) && (time > 49)
trigger5 = (stateno =  365) && time > 21
trigger6 = (stateno = 365) && (MoveContact > 1)


;[State -1, ルシ〆]
;type = ChangeState
;value = 370
;triggerall = var(57) = 0
;triggerall = command = "y"
;trigger1 = (stateno =  365) && time > 21
;trigger2 = (stateno = 365) && (MoveContact > 1)

[State -1, ルシ四段目]
type = ChangeState
value = 365
triggerall = var(57) = 0
triggerall = command = "y"
trigger1 = (stateno = 360) && time > 21
trigger2 = (stateno = 360) && (MoveContact > 1)

[State -1, ルシ三段目]
type = ChangeState
value = 360
triggerall = var(57) = 0
triggerall = command = "y"
trigger1 = (stateno = 355) && time > 21
trigger2 = (stateno = 355) && (MoveContact > 1)

[State -1, ルシ二段目]
type = ChangeState
value = 355
triggerall = var(57) = 0
triggerall = command = "y"
trigger1 = (stateno = 350) && time > 25
trigger2 = (stateno = 350) && (MoveContact > 1)

[State -1, ルシ一段目]
type = ChangeState
value = 350
triggerall = var(57) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (MoveContact > 1) || (stateno = 200) && (time = [10,20])
trigger3 = (stateno = 205) && (MoveContact > 1) || (stateno = 205) && (time > 18)
trigger4 = (stateno = 210) && (time > 49) && (MoveContact > 1) || (stateno = 210) && (time > 49)

[State -1, ヤマト3段目]
type = ChangeState
value = 4520
triggerall = var(55) = 0
triggerall = command = "c"
triggerall = var(20) = 1
trigger1 = command = "holdfwd"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 4510) && time < 35
trigger2 = (stateno = 4510) && time > 12
trigger3 = (stateno = 4510) && (MoveContact > 1) && (command = "holdfwd")
trigger4 = (stateno = 200) && (MoveContact > 1) && (command = "holdfwd") || (stateno = 200) && (time = [10,20]) && (command = "holdfwd")
trigger5 = (stateno = 205) && (MoveContact > 1) && (command = "holdfwd") || (stateno = 205) && (time > 18) && (command = "holdfwd")
trigger6 = (stateno = 210) && (time > 49) && (MoveContact > 1) && (command = "holdfwd") || (stateno = 210) && (time > 49) && (command = "holdfwd")

[State -1, ヤマト1段目]
type = ChangeState
value = 4500
triggerall = var(55) = 0
triggerall = command = "c"
triggerall = var(20) = 1
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (MoveContact > 1) || (stateno = 200) && (time = [10,20])
trigger3 = (stateno = 205) && (MoveContact > 1) || (stateno = 205) && (time > 18)
trigger4 = (stateno = 210) && (time > 49) && (MoveContact > 1) || (stateno = 210) && (time > 49)
[State -1, ヤマト2段目]
type = ChangeState
value = 4510
triggerall = command = "c"
triggerall = var(20) = 1
triggerall = (stateno = 4500) && time < 43
trigger1 = (stateno = 4500) && time > 13 || (stateno = 4500) && (MoveContact > 1) && time > 15

[State -1, EI斜め上]
type = ChangeState
value = 4020
triggerall = power >= ifelse(var(20) = 4,500,0)
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,499]) && (MoveContact > 1)
trigger3 = (StateNo = [1000,1050]) && (MoveContact > 1)
trigger4 = (stateno = [4500,4510]) && (MoveContact > 1)
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ヘルムブレイカー]
type = ChangeState
value = 600
triggerall = command = "down+a"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = [4060,4070]) && (movecontact > 1)

[State -1, キラービー]
type = ChangeState
value = 610
triggerall = var(56) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = [4060,4070]) && (movecontact > 1)
trigger8 = (stateno = 2055) && (movecontact > 1) && time > 28

[State -1, ルシ空中]
type = ChangeState
value = 620
triggerall = var(57) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = [4060,4070]) && (movecontact > 1)

[State -1, ショットガン]
type = ChangeState
value = 640
triggerall = command = "z" && command = "holdback"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = [4060,4070]) && (movecontact > 1)

[State -1, パンドラ空中]
type = ChangeState
value = 630
triggerall = var(58) = 0
triggerall = (command = "holdfwd" && command = "z")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)
trigger7 = (stateno = [4060,4070]) && (movecontact > 1)

[State -1, エボアボ空中]
type = ChangeState
value = 4060
triggerall = power >= ifelse(var(20) = 4,500,0)
triggerall = command = "z"
triggerall = pos y < -45
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 2500) && (movecontact > 1)
trigger3 = (stateno = 2510) && (movecontact > 1)
trigger4 = (stateno = 2520) && (movecontact > 1)
trigger5 = (stateno = 2530) && (movecontact > 1)
trigger6 = (stateno = 4600) && (movecontact > 1)

[State -1, 空リベ一段目]
type = ChangeState
value = 2500
triggerall = command = "a"
triggerall = var(20) = 1
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [4060,4070]) && (movecontact > 1)

[State -1, 空リベ二段目]
type = ChangeState
value = 2510
triggerall = command = "a"
triggerall = var(20) = 1
trigger1 = (stateno = 2500 ) && time > 15
trigger2 = (stateno = 2500 ) && (movecontact > 1)

[State -1, 空リベ三段目]
type = ChangeState
value = 2520
triggerall = command = "a"
triggerall = var(20) = 1
trigger1 = (stateno = 2510 ) && time > 15
trigger2 = (stateno = 2510 ) && (movecontact > 1)

[State -1, 空リベ四段目]
type = ChangeState
value = 2530
triggerall = command = "a"
triggerall = var(20) = 1
trigger1 = (stateno = 2520 ) && time > 18
trigger2 = (stateno = 2520 ) && (movecontact > 1)

[State -1, 空ヤマト二段目]
type = ChangeState
value = 4610
triggerall = var(55) = 0
triggerall = command = "c"
triggerall = var(20) = 1
trigger1 = command = "holdback"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 4600 ) && time > 21
trigger3 = (stateno = 4600 ) && (hitcount = 2)

[State -1, 空ヤマト一段目]
type = ChangeState
value = 4600
triggerall = var(55) = 0
triggerall = command = "c"
triggerall = var(20) = 1
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [4060,4070]) && (movecontact > 1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
