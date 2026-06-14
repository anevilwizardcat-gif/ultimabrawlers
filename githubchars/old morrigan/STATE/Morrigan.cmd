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
name = "フィニッシングシャワー"
command = ~y, x, B, a, b
time = 28

;--------------------------------------------------------------------------

[Command]
name = "ダークネスイリュージョン"
command = ~x, x, F, a, z
time = 28

;--------------------------------------------------------------------------

[Command]
name = "クリプティックニードル"
command = ~F, z, y, x, F
time = 28

;--------------------------------------------------------------------------

[Command]
name = "バルキリーターン低"
command = ~F, DF, D, DB, a
time = 24

[Command]
name = "バルキリーターン中"
command = ~F, DF, D, DB, b
time = 24

[Command]
name = "バルキリーターン高"
command = ~F, DF, D, DB, c
time = 24

;-|必殺技 |----------------------------------------------------------------

[Command]
name = "弱ソウルフィスト"
command = ~D, DF, F, x

[Command]
name = "中ソウルフィスト"
command = ~D, DF, F, y

[Command]
name = "強ソウルフィスト"
command = ~D, DF, F, z

[Command]
name = "ESソウルフィスト"
command = ~D, DF, F, x+y

[Command]
name = "ESソウルフィスト"
command = ~D, DF, F, x+z

[Command]
name = "ESソウルフィスト"
command = ~D, DF, F, y+z

;----------------------------------------------------------------------------

[Command]
name = "弱シャドウブレイド"
command = ~F, D, DF, x

[Command]
name = "中シャドウブレイド"
command = ~F, D, DF, y

[Command]
name = "強シャドウブレイド"
command = ~F, D, DF, z

[Command]
name = "ESシャドウブレイド"
command = ~F, D, DF, x+y

[Command]
name = "ESシャドウブレイド"
command = ~F, D, DF, x+z

[Command]
name = "ESシャドウブレイド"
command = ~F, D, DF, y+z

;----------------------------------------------------------------------------

[Command]
name = "GC弱シャドウブレイド"
command = ~F, D, DF, x
buffer.time = 4

[Command]
name = "GC中シャドウブレイド"
command = ~F, D, DF, y
buffer.time = 4

[Command]
name = "GC強シャドウブレイド"
command = ~F, D, DF, z
buffer.time = 4

[Command]
name = "GCESシャドウブレイド"
command = ~F, D, DF, x+y
buffer.time = 4

[Command]
name = "GCESシャドウブレイド"
command = ~F, D, DF, x+z
buffer.time = 4

[Command]
name = "GCESシャドウブレイド"
command = ~F, D, DF, y+z
buffer.time = 4

;----------------------------------------------------------------------------

[Command]
name = "ベクタードレイン"
command = ~F, DF, D, DB, y 
time = 24

[Command]
name = "ベクタードレイン"
command = ~F, DF, D, DB, z
time = 24

[Command]
name = "ESベクタードレイン"
command = ~F, DF, D, DB, y+z
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

;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

[Command]
name = "バーチカルダッシュ"
command = $D, $U
time = 10

;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "アストラルヴィジョン"
command = a+x
time = 1

[Command]
name = "アストラルヴィジョン"
command = b+y
time = 1

[Command]
name = "アストラルヴィジョン"
command = c+z
time = 1

;-| 用途限定 |=---------------------------------------------------------------

[Command];ADG
name = "溜めx"
command = ~x

[Command];ADG
name = "溜めy"
command = ~y

[Command];ADG
name = "溜めz"
command = ~z

[Command];ADG
name = "溜めa"
command = ~a

[Command];ADG
name = "溜めb"
command = ~b

[Command];ADG
name = "溜めc"
command = ~c

[Command];通常投げ
name = "fwd"
command = /F

[Command];通常投げ
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
; ダークフォース
;==============================================================================
[State -1, DF解除]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(6) = 1
triggerall = (StateType != A)
triggerall = (command = "アストラルヴィジョン")
trigger1 = Ctrl
trigger2 = StateNo = 52
value = 1001

[State -1, アストラルヴィジョン]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(6) = 0
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = (command = "アストラルヴィジョン")
trigger1 = Ctrl
trigger2 = StateNo = 52
value = 1000

;==============================================================================
; 必殺技
;==============================================================================
[State -1,空中ダークネスイリュージョン]
type = ChangeState
value = 920
triggerall = power >= 1000
triggerall = command = "ダークネスイリュージョン"
triggerall = Statetype = A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 600) || (StateNo = 605) || (StateNo = 610)
trigger3 = (StateNo = 630) || (StateNo = 635) || (StateNo = 640)

[State -1,地上ダークネスイリュージョン]
type = ChangeState
value = 910
triggerall = power >= 1000
triggerall = command = "ダークネスイリュージョン"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) || (StateNo = 205) || (StateNo = 210) || (StateNo = 215) || (StateNo = 220) || (StateNo = 225)
trigger3 = (StateNo = 230) || (StateNo = 235) || (StateNo = 240) || (StateNo = 245) || (StateNo = 250) || (StateNo = 255)
trigger4 = (stateno = 400) || (stateno = 405) || (StateNo = 410)
trigger5 = (stateno = 430) || (stateno = 435) || (StateNo = 440)
trigger6 = StateNo = 52

;------------------------------------------------------------------------------
[State -1,フィニッシングシャワー]
type = ChangeState
value = 900
triggerall = power >= 1000
triggerall = command = "フィニッシングシャワー"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) || (StateNo = 205) || (StateNo = 210) || (StateNo = 215) || (StateNo = 220) || (StateNo = 225)
trigger3 = (StateNo = 230) || (StateNo = 235) || (StateNo = 240) || (StateNo = 245) || (StateNo = 250) || (StateNo = 255)
trigger4 = (stateno = 400) || (stateno = 405) || (StateNo = 410)
trigger5 = (stateno = 430) || (stateno = 435) || (StateNo = 440)
trigger6 = StateNo = 52

;------------------------------------------------------------------------------
[State -1,クリプティックニードル]
type = ChangeState
value = 930
triggerall = power >= 1000
triggerall = command = "クリプティックニードル"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) || (StateNo = 205) || (StateNo = 210) || (StateNo = 215) || (StateNo = 220) || (StateNo = 225)
trigger3 = (StateNo = 230) || (StateNo = 235) || (StateNo = 240) || (StateNo = 245) || (StateNo = 250) || (StateNo = 255)
trigger4 = (stateno = 400) || (stateno = 405) || (StateNo = 410)
trigger5 = (stateno = 430) || (stateno = 435) || (StateNo = 440)
trigger6 = StateNo = 52

;------------------------------------------------------------------------------
[State -1, ESベクタードレイン]
type = ChangeState
triggerall = var(8) = 0
triggerall = Power >= 1000
triggerall = (command = "ESベクタードレイン")
triggerall = (P2BodyDist X < 15)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = StateNo = 52
value = 842

[State -1, ベクタードレイン]
type = ChangeState
triggerall = var(8) = 0
triggerall = (command = "ベクタードレイン")
triggerall = (P2BodyDist X < 15)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = StateNo = 52
value = 840

;------------------------------------------------------------------------------
[State -1,バルキリーターン高]
type = ChangeState
value = 952
triggerall = var(8) = 0
triggerall = power >= 1000
triggerall = command = "バルキリーターン高"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,バルキリーターン中]
type = ChangeState
value = 951
triggerall = var(8) = 0
triggerall = power >= 1000
triggerall = command = "バルキリーターン中"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,バルキリーターン低]
type = ChangeState
value = 950
triggerall = var(8) = 0
triggerall = power >= 1000
triggerall = command = "バルキリーターン低"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------
[State -1,GCESシャドウブレイド]
type = ChangeState
value = 835
triggerall = power >= 1000
triggerall = var(8) = 0
triggerall = command = "GCESシャドウブレイド"
trigger1 = (stateno = 150 || stateno = 152)

[State -1,GC強シャイニングブレイド]
type = ChangeState
value = 832
triggerall = var(8) = 0
triggerall = command = "GC強シャドウブレイド"
trigger1 = (stateno = 150 || stateno = 152)

[State -1,GC中シャイニングブレイド]
type = ChangeState
value = 831
triggerall = var(8) = 0
triggerall = command = "GC中シャドウブレイド"
trigger1 = (stateno = 150 || stateno = 152)

[State -1,GC弱シャイニングブレイド]
type = ChangeState
value = 830
triggerall = var(8) = 0
triggerall = command = "GC弱シャドウブレイド"
trigger1 = (stateno = 150 || stateno = 152)

;------------------------------------------------------------------------------
[State -1,ESシャドウブレイド]
type = ChangeState
value = 835
triggerall = var(8) = 0
triggerall = power >= 1000
triggerall = command = "ESシャドウブレイド"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger6 = StateNo = 52

[State -1,強シャドウブレイド]
type = ChangeState
value = 832
triggerall = var(8) = 0
triggerall = command = "強シャドウブレイド"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger6 = StateNo = 52

[State -1,中シャドウブレイド]
type = ChangeState
value = 831
triggerall = var(8) = 0
triggerall = command = "中シャドウブレイド"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger6 = StateNo = 52

[State -1,弱シャドウブレイド]
type = ChangeState
value = 830
triggerall = var(8) = 0
triggerall = command = "弱シャドウブレイド"
triggerall = Statetype != A
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger6 = StateNo = 52

;------------------------------------------------------------------------------
[State -1,ESソウルフィスト]
type = ChangeState
value = ifelse(StateType=A,823,803)
triggerall = var(8) = 0
triggerall = power >= 1000
triggerall = NumProjID(800) = 0
triggerall = command = "ESソウルフィスト"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,弱ソウルフィスト]
type = ChangeState
value = ifelse(StateType=A,820,800)
triggerall = var(8) = 0
triggerall = NumProjID(800) = 0
triggerall = command = "弱ソウルフィスト"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,中ソウルフィスト]
type = ChangeState
value = ifelse(StateType=A,821,801)
triggerall = var(8) = 0
triggerall = NumProjID(800) = 0
triggerall = command = "中ソウルフィスト"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,強ソウルフィスト]
type = ChangeState
value = ifelse(StateType=A,822,802)
triggerall = var(8) = 0
triggerall = NumProjID(800) = 0
triggerall = command = "強ソウルフィスト"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6]) || (stateno = 610) && (MoveContact = [1,6]) 
trigger2 = PrevStateNo != [100, 115]
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6]) || (stateno = 640) && (MoveContact = [1,6]) 
trigger3 = PrevStateNo != [100, 115]
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

;==============================================================================

[State -1, ES追い討ち攻撃]
type = ChangeState
value = 751
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = power >= 1000
triggerall = command = "ES追い討ち攻撃"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = StateNo = 40
trigger3 = StateNo = 52

[State -1, 追い討ち攻撃]
type = ChangeState
value = 750
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "追い討ち攻撃"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = StateNo = 40
trigger3 = StateNo = 52

;==============================================================================
; 通常投げ
;==============================================================================

[State -1, 地上投げ前P]
type = ChangeState
triggerall = (command = "y") || (command = "z")
triggerall = var(3) = 0
triggerall = (command = "fwd")
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52
value = 700

[State -1, 地上投げ後P]
type = ChangeState
triggerall = (command = "y") || (command = "z")
triggerall = var(3) = 0
triggerall = (command = "back")
triggerall = (P2BodyDist X < 11)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52
value = 701

[State -1, 地上投げ前K]
type = ChangeState
triggerall = (command = "b") || (command = "c")
triggerall = var(3) = 0
triggerall = (command = "fwd")
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52
value = 710

[State -1, 地上投げ後K]
type = ChangeState
triggerall = (command = "b") || (command = "c")
triggerall = var(3) = 0
triggerall = (command = "back")
triggerall = (P2BodyDist X < 11)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52
value = 711

[State -1, 空中投げ前]
type = ChangeState
triggerall = (command = "y") || (command = "z")
triggerall = (command = "fwd")
triggerall = (StateType = A)
triggerall = (P2BodyDist X < 14)
triggerall = (P2Dist Y = [-80,20])
triggerall = (P2StateType = A)
triggerall = (P2MoveType != H)
trigger1 = Ctrl
value = 720

[State -1, 空中投げ後]
type = ChangeState
triggerall = (command = "y") || (command = "z")
triggerall = (command = "back")
triggerall = (StateType = A)
triggerall = (P2BodyDist X < 15)
triggerall = (P2Dist Y = [-80,20])
triggerall = (P2StateType = A)
triggerall = (P2MoveType != H)
trigger1 = Ctrl
value = 721

;==============================================================================
; 移動関連
;==============================================================================

[State -1, ダッシュ]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バーチカルダッシュ前]
type = ChangeState
value = 103
triggerall = (StateType != A) && (Ctrl)
triggerall = Command != "holdback"
trigger1 = command = "バーチカルダッシュ"

[State -1, バーチカルダッシュ後]
type = ChangeState
value = 108
triggerall = (StateType != A) && (Ctrl)
triggerall = Command = "holdback"
trigger1 = command = "バーチカルダッシュ"

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
value = 780

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
value = 781

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 近立弱Ｐ]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (time >= 7)
trigger3 = (StateNo = 205) && (time >= 7)
trigger4 = (Stateno = 400) && (time >= 7)
trigger5 = StateNo = 52

[State -1, 遠立弱Ｐ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (time >= 7)
trigger3 = (StateNo = 205) && (time >= 7)
trigger4 = (Stateno = 400) && (time >= 7)
trigger5 = StateNo = 52

[State -1, 近立中Ｐ]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 230) && (MoveContact = [1,3])
trigger5 = (stateno = 400) && (MoveContact = [1,3])
trigger6 = (stateno = 430) && (MoveContact = [1,3])
trigger7 = StateNo = 52

[State -1, 遠立中Ｐ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 230) && (MoveContact = [1,3])
trigger5 = (stateno = 400) && (MoveContact = [1,3])
trigger6 = (stateno = 430) && (MoveContact = [1,3])
trigger7 = StateNo = 52

[State -1, 近立強Ｐ]
type = ChangeState
value = 225
triggerall = (command = "z") && (command != "holddown")
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 230) && (MoveContact = [1,3])
trigger7 = (StateNo = 240) && (MoveContact = [1,3])
trigger8 = (stateno = 400) && (MoveContact = [1,3])
trigger9 = (stateno = 405) && (MoveContact = [1,3])
trigger10 = (stateno = 430) && (MoveContact = [1,3])
trigger11 = (stateno = 435) && (MoveContact = [1,3])
trigger12 = StateNo = 52

[State -1, 遠立ち強パンチ]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 230) && (MoveContact = [1,3])
trigger7 = (StateNo = 240) && (MoveContact = [1,3])
trigger8 = (stateno = 400) && (MoveContact = [1,3])
trigger9 = (stateno = 405) && (MoveContact = [1,3])
trigger10 = (stateno = 430) && (MoveContact = [1,3])
trigger11 = (stateno = 435) && (MoveContact = [1,3])
trigger12 = StateNo = 52

[State -1, 立弱Ｋ]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [2,3])
trigger3 = (StateNo = 205) && (MoveContact = [2,3])
trigger4 = (StateNo = 230) && (time >= 7)
trigger5 = (stateno = 400) && (MoveContact = [2,3])
trigger6 = StateNo = 52

[State -1, 立中Ｋ]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 230) && (MoveContact = [1,3])
trigger7 = (stateno = 400) && (MoveContact = [1,3])
trigger8 = (stateno = 405) && (MoveContact = [1,3])
trigger9 = (stateno = 430) && (MoveContact = [1,3])
trigger10 = StateNo = 52

[State -1, 近立強Ｋ]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 220) && (MoveContact = [1,3])
trigger7 = (StateNo = 225) && (MoveContact = [1,3])
trigger8 = (StateNo = 230) && (MoveContact = [1,3])
trigger9 = (StateNo = 240) && (MoveContact = [1,3])
trigger10 = (stateno = 400) && (MoveContact = [1,3])
trigger11 = (stateno = 405) && (MoveContact = [1,3])
trigger12 = (stateno = 430) && (MoveContact = [1,3])
trigger13 = (stateno = 435) && (MoveContact = [1,3])
trigger14 = StateNo = 52

[State -1, 遠立強Ｋ]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 220) && (MoveContact = [1,3])
trigger7 = (StateNo = 225) && (MoveContact = [1,3])
trigger8 = (StateNo = 230) && (MoveContact = [1,3])
trigger9 = (StateNo = 240) && (MoveContact = [1,3])
trigger10 = (stateno = 400) && (MoveContact = [1,3])
trigger11 = (stateno = 405) && (MoveContact = [1,3])
trigger12 = (stateno = 430) && (MoveContact = [1,3])
trigger13 = (stateno = 435) && (MoveContact = [1,3])
trigger14 = StateNo = 52

;------------------------------------------------------------------------------
[State -1, 屈弱Ｐ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (time >= 7)
trigger3 = (StateNo = 205) && (time >= 7)
trigger4 = (stateno = 400) && (time >= 7)
trigger5 = StateNo = 52

[State -1, 屈中Ｐ]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 230) && (MoveContact = [1,3])
trigger5 = (stateno = 400) && (MoveContact = [1,3])
trigger6 = (stateno = 430) && (MoveContact = [1,3])
trigger7 = StateNo = 52

[State -1, 屈強Ｐ]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 230) && (MoveContact = [1,3])
trigger7 = (StateNo = 240) && (MoveContact = [1,3])
trigger8 = (stateno = 400) && (MoveContact = [1,3])
trigger9 = (stateno = 405) && (MoveContact = [1,3])
trigger10= (stateno = 430) && (MoveContact = [1,3])
trigger11= (stateno = 435) && (MoveContact = [1,3])
trigger12= StateNo = 52

[State -1, 屈弱Ｋ]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [2,3])
trigger3 = (StateNo = 205) && (MoveContact = [2,3])
trigger4 = (stateno = 400) && (MoveContact = [2,3])
trigger5 = StateNo = 52

[State -1, 屈中Ｋ]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 230) && (MoveContact = [1,3])
trigger7 = (stateno = 400) && (MoveContact = [1,3])
trigger8 = (stateno = 405) && (MoveContact = [1,3])
trigger9 = (stateno = 430) && (MoveContact = [1,3])
trigger10= StateNo = 52

[State -1, 屈強Ｋ]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3])
trigger3 = (StateNo = 205) && (MoveContact = [1,3])
trigger4 = (StateNo = 210) && (MoveContact = [1,3])
trigger5 = (StateNo = 215) && (MoveContact = [1,3])
trigger6 = (StateNo = 220) && (MoveContact = [1,3])
trigger7 = (StateNo = 225) && (MoveContact = [1,3])
trigger8 = (StateNo = 230) && (MoveContact = [1,3])
trigger9 = (StateNo = 240) && (MoveContact = [1,3])
trigger10= (stateno = 400) && (MoveContact = [1,3])
trigger11= (stateno = 405) && (MoveContact = [1,3])
trigger12= (stateno = 410) && (MoveContact = [1,3])
trigger13= (stateno = 430) && (MoveContact = [1,3])
trigger14= (stateno = 435) && (MoveContact = [1,3])
trigger15= StateNo = 52

;------------------------------------------------------------------------------
[State -1, 跳弱Ｐ]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = (statetype = A)
trigger1 = ctrl
;再攻撃
trigger2 = (StateNo = 605) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.00001))= 0
trigger3 = (StateNo = 610) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.00001))= 0
trigger4 = (StateNo = 630) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.00001))= 0
trigger5 = (StateNo = 635) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.00001))= 0
trigger6 = (StateNo = 640) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.00001))= 0
;ダッシュ攻撃
trigger7 = (StateNo = 100) && (time >= 10)
trigger8 = (StateNo = 101)
trigger9 = (StateNo = 102)
trigger10= (StateNo = 105) && (time >= 10)
trigger11= (StateNo = 106)
trigger12= (StateNo = 107)

[State -1, 跳中Ｐ]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = (statetype = A)
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger3 = (StateNo = 630) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
;再攻撃
trigger4 = (StateNo = 600) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.0001)-(floor(var(5)*0.00001)*10))= 0
trigger5 = (StateNo = 610) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.0001)-(floor(var(5)*0.00001)*10))= 0
trigger6 = (StateNo = 630) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.0001)-(floor(var(5)*0.00001)*10))= 0
trigger7 = (StateNo = 635) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.0001)-(floor(var(5)*0.00001)*10))= 0
trigger8 = (StateNo = 640) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.0001)-(floor(var(5)*0.00001)*10))= 0
;ダッシュ攻撃
trigger9 = (StateNo = 100) && (time >= 10)
trigger10= (StateNo = 101)
trigger11= (StateNo = 102)
trigger12= (StateNo = 105) && (time >= 10)
trigger13= (StateNo = 106)
trigger14= (StateNo = 107)

[State -1, 跳強Ｐ]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = (statetype = A)
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger3 = (StateNo = 630) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger4 = (StateNo = 605) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger5 = (StateNo = 635) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
;再攻撃
trigger6 = (StateNo = 600) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.001)-(floor(var(5)*0.0001)*10))= 0
trigger7 = (StateNo = 605) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.001)-(floor(var(5)*0.0001)*10))= 0
trigger8 = (StateNo = 630) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.001)-(floor(var(5)*0.0001)*10))= 0
trigger9 = (StateNo = 635) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.001)-(floor(var(5)*0.0001)*10))= 0
trigger10= (StateNo = 640) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.001)-(floor(var(5)*0.0001)*10))= 0
;ダッシュ攻撃
trigger10= (StateNo = 100) && (time >= 10)
trigger11= (StateNo = 101)
trigger12= (StateNo = 102)
trigger13= (StateNo = 105) && (time >= 10)
trigger14= (StateNo = 106)
trigger15= (StateNo = 107)

[State -1, 跳弱Ｋ]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = (statetype = A)
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
;再攻撃
trigger3 = (StateNo = 600) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.01)-(floor(var(5)*0.001)*10))= 0
trigger4 = (StateNo = 605) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.01)-(floor(var(5)*0.001)*10))= 0
trigger5 = (StateNo = 610) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.01)-(floor(var(5)*0.001)*10))= 0
trigger6 = (StateNo = 635) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.01)-(floor(var(5)*0.001)*10))= 0
trigger7 = (StateNo = 640) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.01)-(floor(var(5)*0.001)*10))= 0
;ダッシュ攻撃
trigger8 = (StateNo = 100) && (time >= 10)
trigger9 = (StateNo = 101)
trigger10= (StateNo = 102)
trigger11= (StateNo = 105) && (time >= 10)
trigger12= (StateNo = 106)
trigger13= (StateNo = 107)

[State -1, 跳中Ｋ]
type = ChangeState
value = 635
triggerall = command = "b"
triggerall = (statetype = A)
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger3 = (StateNo = 605) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger4 = (StateNo = 630) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
;再攻撃
trigger5 = (StateNo = 600) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.1)-(floor(var(5)*0.01)*10))= 0
trigger6 = (StateNo = 605) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.1)-(floor(var(5)*0.01)*10))= 0
trigger7 = (StateNo = 610) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.1)-(floor(var(5)*0.01)*10))= 0
trigger8 = (StateNo = 630) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.1)-(floor(var(5)*0.01)*10))= 0
trigger9 = (StateNo = 640) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*0.1)-(floor(var(5)*0.01)*10))= 0
;ダッシュ攻撃
trigger10= (StateNo = 100) && (time >= 10)
trigger11= (StateNo = 101)
trigger12= (StateNo = 102)
trigger13= (StateNo = 105) && (time >= 10)
trigger14= (StateNo = 106)
trigger15= (StateNo = 107)

[State -1, 跳強Ｋ]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = (statetype = A)
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger3 = (StateNo = 630) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger4 = (StateNo = 605) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger5 = (StateNo = 635) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
trigger6 = (StateNo = 610) && (MoveContact = [1,3]) && (PrevStateNo != [100,115])
;再攻撃
trigger7 = (StateNo = 600) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*1)-(floor(var(5)*0.1)*10))= 0
trigger8 = (StateNo = 605) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*1)-(floor(var(5)*0.1)*10))= 0
trigger9 = (StateNo = 610) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*1)-(floor(var(5)*0.1)*10))= 0
trigger10= (StateNo = 630) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*1)-(floor(var(5)*0.1)*10))= 0
trigger11= (StateNo = 635) && (anim = 650) && ((movecontact = 0)||(var(2))) && (floor(var(5)*1)-(floor(var(5)*0.1)*10))= 0
;ダッシュ攻撃
trigger12= (StateNo = 100) && (time >= 10)
trigger13= (StateNo = 101)
trigger14= (StateNo = 102)
trigger15= (StateNo = 105) && (time >= 10)
trigger16= (StateNo = 106)
trigger17= (StateNo = 107)

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
