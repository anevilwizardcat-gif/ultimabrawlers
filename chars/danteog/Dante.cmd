


;=========================================
;Mugen_2_TsMugen added this commands
;=========================================

[Command]
name    = "call-st"
command = s
time    = 1

;=========================================


[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 50
command.buffer.time = 10

;-| 一撃必殺技 |-----------------------------------------------------------

[Command];Stand Alone Hypers
name = "Devil trigger combo multip"
command =  ~D, DB, B, y



[Command]
name = "blazing guns"  ;Same name as above
command = ~D, DB, B, x
command.time = 25
command.buffer.time = 10
time = 50


[Command]
name = "dx"
command = a+b;~D, DB, B, a+b
command.time = 25
command.buffer.time = 10
time = 50




[Command];ライジングフォース
name = "Rizing_Force"
command = ~D, DF, F, D, DF, F, b
time = 22

[Command];シャイニング・ドライブ：殺界
name = "Shining_Drive_ichigeki"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, b
time = 40
 
[Command];シャイニング・ドライブ：殺界　派生技
name = "Shining_Drive_ichigeki2"
command = ~F, B, F, B, DB, D, DF, F, b
time = 45



[Command];ライドザライトニング
name = "Ride_The_Lightning"
command = y+b;~F, DF, D, DB, B, F, b
time = 50

[Command];over drive million stab
name = "Million stab"
command = ~D, DF, F, D, DF, F, y
time = 22

[Command];セイグリッドエッジＥＸ
name = "Sagrid_Edge_EX"
command = ~F, DF, D, DB, B, F, x
time = 22

[Command];シャイニング・ドライブ
name = "Shining_Drive"
command = ~D, DB, B, D, DB, B, y
time = 22





;-| 必殺技 |---------------------------------------------------------------

[Command]
name = "starfall"
command = ~D, DF, F, a
time = 30




[Command];ヴェイパースラストＳ
name = "Vaper_Slast_S"
command = ~F, D, DF, y

[Command];ヴェイパースラストＨＳ
name = "Vaper_Slast_HS"
command = ~F, D, DF, b

[Command];スタンエッジ
name = "Stan_Edge"
command = ~D, DF, F, y

[Command];スタンエッジ
name ="Stan_Edge 2"
command = ~D, DF, F, x

[Command];スタンエッジチャージアタック
name = "Stan_Charge"
command = ~D, DF, F, b

[Command];スタンディッパー
name = "Stan_Dipper"
command = ~D, DF, F, a

[Command];グリードセバー
name = "Gleed_Saver"
command = ~D, DB, B, x

[Command];スタンブレイズ
name = "Stan_Blaze"
command = ~D, DB, B, y

[Command];チャージハウンド
name = "Charge_H"
command = ~D, DB, B, b

[Command];エレガントに斬る
name = "Elegant"
command = ~F, D, DF, x

[Command];毅式転移？P
name = "T_Teni_P"
command = ~D, D, x

[Command];毅式転移？K
name = "T_Teni_K"
command = ~D, D, a

[Command];毅式転移？S
name = "T_Teni_S"
command = ~D, D, y

[Command];毅式転移？HS
name = "T_Teni_HS"
command = ~D, D, b

[Command];ライジングスフィア
name = "Rizing_S"
command = ~B, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "FD"
command = x+y
time = 1

[Command]
name = "FD"
command = x+a
time = 1

[Command]
name = "FD"
command = x+b
time = 1

[Command]
name = "FD"
command = y+a
time = 1

[Command]
name = "FD"
command = y+b
time = 1

[Command]
name = "FD"
command = a+b
time = 1

[Command]
name = "SB"
command = z+x
time = 1

[Command]
name = "SB"
command = z+y
time = 1

[Command]
name = "SB"
command = z+a
time = 1

[Command]
name = "SB"
command = z+b
time = 1

[Command]
name = "roman"
command = x+a+b
time = 1

[Command]
name = "roman"
command = x+a+y
time = 1

[Command]
name = "roman"
command = x+y+b
time = 1

[Command]
name = "roman"
command = a+y+b
time = 1

[Command]
name = "roman"
command = c
time = 1



[Command]
name = "up"
command = U+F
time = 1

[Command]
name = "up"
command = U+B
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "up"
command = U
time = 1

;-| Hold Dir |--------------------------------------------------------------
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
name = "High_Jump"
command = $D, $U
time = 10

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

;------------------------------------------------------------------------------



;=========================================
;Mugen_2_TsMugen added this commands
;=========================================

[Command]
name    = "longjump"
command = D,$U
time    = 18

;=========================================


[State -1, Blazing Guns]
type = ChangeState
value = 50000
triggerall = command =  "blazing guns"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 230 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 40
;-----------------------
;-------------------


;---------------------------------------------------------------------------
[State -1,Devil trigger 1]
type = Changestate
value = 99100
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = command = "Devil trigger combo multip" && command != "holddown"

trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Devil trigger 2]
type = Changestate
value = 65456
triggerall = var(59) = 0
triggerall = statetype = A && ctrl
trigger1 = power >= 1000
trigger1 = command = "Devil trigger combo multip"





[Statedef -1]

  ;Devil X
[State -1, Devil x]
type = ChangeState
value = 4000
triggerall = command = "dx" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && MoveContact
trigger3 = stateno  = 201 && MoveContact
trigger4 = stateno  = 202 && MoveContact
trigger5 = stateno  = 203 && MoveContact
trigger6 = stateno  = 204 && MoveContact
trigger7 = stateno  = 205 && MoveContact
trigger8 = stateno  = 300 && MoveContact
trigger9 = stateno  = 301 && MoveContact
trigger10 = stateno = 302 && MoveContact
trigger11 = stateno = 303 && MoveContact
trigger12 = stateno = 304 && MoveContact
trigger13 = stateno = 305 && MoveContact


[State -1,million stab];
type = ChangeState
value = 3200
triggerall = command = "Million stab"
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 205 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 430 && movecontact > 1
trigger13 = stateno = 230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 40


;--------------------------------
[State -1, Blazing Guns]
type = ChangeState
value = 50000
triggerall = command = "Ride_The_Lightning"
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 205 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 430 && movecontact > 1
trigger13 = stateno = 230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 40



;-------------------------------
[State -1, Starfall Kick]
type = ChangeState
value = 1520
triggerall = var(59) = 0
triggerall = command = "starfall"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 700)
trigger3 = (stateno = 710)
trigger4 = (stateno = 720)
trigger5 = (stateno = 740)
trigger6 = (stateno = 750)
trigger7 = stateno = 1350 ;Air blocking
;trigger8 = (stateno = 1110)
trigger9 = (stateno = 730)
;trigger10 = (stateno = 1212)
;trigger11 = (stateno = 1120)
;trigger12 = (stateno = 1140)
;trigger13 = stateno = 1210 && && movecontact
;trigger14 = stateno = 1220 && movecontact
;trigger15 = stateno = 1230 && movecontact
;blocked the canceling cause of cheapness but for the full game it will be back



[State -1]
type = varset
triggerall = command = "x"
trigger1 = stateno = 3911 && time = [7,13]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "a"
trigger1 = stateno = 3912 && time = [5,7]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "y"
trigger1 = stateno = 3913 && time = [9,12]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "b"
trigger1 = stateno = 3914 && time = [4,7]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "z"
trigger1 = stateno = 3915 && time = [8,14]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "a"
trigger1 = stateno = 3917 && time = [0,2]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "y"
trigger1 = stateno = 3918 && time = [11,14]
v = 29
value = 1

[State -1];シャイニング・ドライブ：殺界　派生技
type = varset
triggerall = command = "Shining_Drive_ichigeki2"
trigger1 = stateno = [3918,3919]
trigger1 = time >= 0
v = 29
value = 2

[State -1];ライジングフォース
type = ChangeState
value = 3500
triggerall = command = "Rizing_Force" 
triggerall = var(59) != 2
triggerall = var(26) = 1
triggerall = var(27) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 205 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 430 && movecontact > 1
trigger13 = stateno = 230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 10230 && movecontact > 1
trigger18 = stateno = 10200 && movecontact > 1
trigger19 = stateno = 10410 && movecontact > 1
trigger20 = stateno = 10210 && movecontact > 1
trigger21 = stateno = 10205 && movecontact > 1
trigger22 = stateno = 10220 && movecontact > 1
trigger23 = stateno = 10225 && movecontact > 1
trigger24 = stateno = 10420 && movecontact > 1
trigger25 = stateno = 10430 && movecontact > 1
trigger26 = stateno = 10230 && movecontact > 1
trigger27 = stateno = 10235 && movecontact > 1
trigger28 = stateno = 10420 && movecontact > 1
trigger29 = stateno = 10215 && movecontact > 1



[State -1];ロボライドザライトニング
type = ChangeState
value = 3300
triggerall = command = "Ride_The_Lightning" 
triggerall = power >= 1000
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 10230 && movecontact > 1
trigger4 = stateno = 10200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 10410 && movecontact > 1
trigger7 = stateno = 10210 && movecontact > 1
trigger8 = stateno = 10205 && movecontact > 1
trigger9 = stateno = 10220 && movecontact > 1
trigger10 = stateno = 10225 && movecontact > 1
trigger11 = stateno = 10420 && movecontact > 1
trigger12 = stateno = 10430 && movecontact > 1
trigger13 = stateno = 10230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 10235 && movecontact > 1
trigger16 = stateno = 10420 && movecontact > 1
trigger17 = stateno = 10215 && movecontact > 1
trigger18 = stateno = 40

[State -1];ライドザライトニング ver.β
type = ChangeState
value = 3700
triggerall = command = "Ride_The_Lightning" 
triggerall = power >= 1000
triggerall = var(59) = 2
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 206 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 431 && movecontact > 1
trigger13 = stateno = 231 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 216 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 40

[State -1];エイシズハイ
type = ChangeState
value = 3400
triggerall = command = "Vaper_Slast_HS" 
triggerall = power >= 1000
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 10230 && movecontact > 1
trigger4 = stateno = 10200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 10410 && movecontact > 1
trigger7 = stateno = 10210 && movecontact > 1
trigger8 = stateno = 10205 && movecontact > 1
trigger9 = stateno = 10220 && movecontact > 1
trigger10 = stateno = 10225 && movecontact > 1
trigger11 = stateno = 10420 && movecontact > 1
trigger12 = stateno = 10430 && movecontact > 1
trigger13 = stateno = 10230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 10235 && movecontact > 1
trigger16 = stateno = 10420 && movecontact > 1
trigger17 = stateno = 10215 && movecontact > 1
trigger18 = stateno = 40

[State -1];空中ライドザライトニング
type = ChangeState
value = 3100
triggerall = command = "Ride_The_Lightning" 
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5

[State -1];ロボ空中ライドザライトニング
type = ChangeState
value = 3350
triggerall = command = "Ride_The_Lightning" 
triggerall = power >= 1000
triggerall = var(59) = 1
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5



[State -1];セイグリッドエッジロボ
type = ChangeState
value = 3200
triggerall = command = "Sagrid_Edge_EX" 
triggerall = power >= 1000
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 100 || stateno = 101
trigger4 = stateno = 440 && movecontact > 1
trigger5 = stateno = 10230 && movecontact > 1
trigger6 = stateno = 10200 && movecontact > 1
trigger7 = stateno = 10410 && movecontact > 1
trigger8 = stateno = 10210 && movecontact > 1
trigger9 = stateno = 10205 && movecontact > 1
trigger10 = stateno = 10220 && movecontact > 1
trigger11 = stateno = 10225 && movecontact > 1
trigger12 = stateno = 10420 && movecontact > 1
trigger13 = stateno = 10430 && movecontact > 1
trigger14 = stateno = 10230 && movecontact > 1
trigger15 = stateno = 10235 && movecontact > 1
trigger16 = stateno = 10420 && movecontact > 1
trigger17 = stateno = 10215 && movecontact > 1
trigger18 = stateno = 40

[State -1];セイグリッドエッジver.Ω
type = ChangeState
value = 3800
triggerall = command = "Sagrid_Edge_EX" 
triggerall = power >= 1000
triggerall = var(59) = 2
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 206 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 431 && movecontact > 1
trigger13 = stateno = 231 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 216 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 40

[State -1];シャイニング・ドライブ
type = ChangeState
value = 3600
triggerall = command = "Shining_Drive" 
triggerall = power >= 1000
triggerall = var(59) = 2
triggerall = var(16) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 205 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 431 && movecontact > 1
trigger13 = stateno = 231 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 216 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 40

[State -1];地上ヴェイパースラストＳ
type = ChangeState
value = 1300
triggerall = command = "Vaper_Slast_S" 
triggerall = var(59) != 2
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 205 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 430 && movecontact > 1
trigger13 = stateno = 230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 10230 && movecontact > 1
trigger18 = stateno = 10200 && movecontact > 1
trigger19 = stateno = 10410 && movecontact > 1
trigger20 = stateno = 10210 && movecontact > 1
trigger21 = stateno = 10205 && movecontact > 1
trigger22 = stateno = 10220 && movecontact > 1
trigger23 = stateno = 10225 && movecontact > 1
trigger24 = stateno = 10420 && movecontact > 1
trigger25 = stateno = 10430 && movecontact > 1
trigger26 = stateno = 10230 && movecontact > 1
trigger27 = stateno = 10235 && movecontact > 1
trigger28 = stateno = 10420 && movecontact > 1
trigger29 = stateno = 10215 && movecontact > 1
trigger30 = stateno = 40

[State -1];地上ヴェイパースラストＨＳ
type = ChangeState
value = 1350
triggerall = command = "Vaper_Slast_HS" 
triggerall = var(59) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 205 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 430 && movecontact > 1
trigger13 = stateno = 230 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 40

[State -1];ＥＸ地上ヴェイパースラストＳ
type = ChangeState
value = 1360
triggerall = command = "Vaper_Slast_S" 
triggerall = var(59) = 2
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 206 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 431 && movecontact > 1
trigger13 = stateno = 231 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 216 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 40


[State -1];ＥＸ地上ヴェイパースラストＨＳ
type = ChangeState
value = 1370
triggerall = command = "Vaper_Slast_HS" 
triggerall = var(59) = 2
triggerall = var(16) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 206 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 431 && movecontact > 1
trigger13 = stateno = 231 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 216 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 40

[State -1];地上ヴェイパースラストＨＳ・ドライブ
type = ChangeState
value = 1395
triggerall = command = "Vaper_Slast_HS" 
triggerall = var(59) = 2
triggerall = var(16) = 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 410 && movecontact > 1
trigger7 = stateno = 210 && movecontact > 1
trigger8 = stateno = 206 && movecontact > 1
trigger9 = stateno = 220 && movecontact > 1
trigger10 = stateno = 225 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1
trigger12 = stateno = 431 && movecontact > 1
trigger13 = stateno = 231 && movecontact > 1
trigger14 = stateno = 440 && movecontact > 1
trigger15 = stateno = 235 && movecontact > 1
trigger16 = stateno = 420 && movecontact > 1
trigger17 = stateno = 216 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 40

[State -1];切り落とし
type = varset
triggerall = command = "Gleed_Saver"
trigger1 = stateno = 1360 && Time = [6,21]
trigger2 = stateno = 1375 && Time = [6,21]
trigger3 = stateno = 1370 && Time = [8,30]
trigger4 = stateno = 1395 && Time = [40,54]
trigger5 = stateno = 1050 && Time = [0,29]
v = 28
value = 1

[State -1];セイグリッドジャベリン
type = varset
triggerall = command = "Stan_Dipper"
trigger1 = stateno = 1360 && Time = [6,21]
trigger2 = stateno = 1375 && Time = [6,21]
trigger3 = stateno = 1370 && Time = [8,30]
trigger4 = stateno = 1395 && Time = [40,54]
v = 28
value = 2

[State -1];空中ヴェイパースラストＳ
type = ChangeState
value = 1320
triggerall = command = "Vaper_Slast_S" || command = "Vaper_Slast_HS"
triggerall = var(59) != 2
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5

[State -1];ＥＸ空中ヴェイパースラストＳ
type = ChangeState
value = 1375
triggerall = command = "Vaper_Slast_S" || command = "Vaper_Slast_HS"
triggerall = var(59) = 2
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5
trigger7 = stateno = 645 && movecontact > 1

[State -1];スタンエッジ
type = ChangeState
value = 1000
triggerall = command = "Stan_Edge" 
triggerall = numprojID(1002) = 0
triggerall = numprojID(1053) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
triggerall = numprojID(1061) = 0
triggerall = var(16) = 0
triggerall = var(59) != 2
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 230 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 10230 && movecontact > 1
trigger17 = stateno = 10200 && movecontact > 1
trigger18 = stateno = 10410 && movecontact > 1
trigger19 = stateno = 10210 && movecontact > 1
trigger20 = stateno = 10205 && movecontact > 1
trigger21 = stateno = 10220 && movecontact > 1
trigger22 = stateno = 10225 && movecontact > 1
trigger23 = stateno = 10420 && movecontact > 1
trigger24 = stateno = 10430 && movecontact > 1
trigger25 = stateno = 10230 && movecontact > 1
trigger26 = stateno = 10235 && movecontact > 1
trigger27 = stateno = 10420 && movecontact > 1
trigger28 = stateno = 10215 && movecontact > 1
trigger29 = stateno = 216 && movecontact > 1
trigger30 = stateno = 40

[State -1];スタンエッジ　プロトタイプ
type = ChangeState
value = 1020
triggerall = command = "Stan_Edge" 
triggerall = numprojID(1002) = 0
triggerall = numprojID(1053) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
triggerall = numprojID(1061) = 0
triggerall = var(16) = 0
triggerall = var(59) = 2
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];スタンエッジチャージアタック
type = ChangeState
value = 1050
triggerall = command = "Stan_Charge"
triggerall = var(59) != 1
triggerall = var(16) = 0
triggerall = numprojID(1002) = 0
triggerall = numprojID(1053) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 230 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 206 && movecontact > 1
trigger18 = stateno = 237 && movecontact > 1
trigger19 = stateno = 231 && movecontact > 1
trigger20 = stateno = 431 && movecontact > 1
trigger21 = stateno = 40

[State -1];チャージハウンド
type = varset
triggerall = command = "Charge_H"
triggerall = var(16) = 0
trigger1 = stateno = 1050 && Time = [0,29]
v = 28
value = 1

[State -1];チャージハウンド
type = varset
triggerall = command = "Rizing_S"
trigger1 = stateno = 3750 && Time = [0,52]
v = 28
value = 1

[State -1];スタンエッジチャージアタック・ドライブ
type = ChangeState
value = 1050
triggerall = command = "Stan_Edge"
triggerall = var(59) = 2
triggerall = var(16) = 1
triggerall = numprojID(1002) = 0
triggerall = numprojID(1053) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];レイディバイダー
type = ChangeState
value = 1060
triggerall = command = "Stan_Charge" 
triggerall = var(59) = 1
triggerall = numprojID(1002) = 0
triggerall = numprojID(1061) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101
trigger17 = stateno = 40

[State -1];レイディバイダー・ドライブ
type = ChangeState
value = 1070
triggerall = command = "Stan_Charge"
triggerall = var(59) = 2
triggerall = var(16) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];スタンディッパー
type = ChangeState
value = 1200
triggerall = command = "Stan_Dipper" 
triggerall = var(59) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 230 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 40

[State -1];インパラハント
type = ChangeState
value = 1500
triggerall = command = "Stan_Dipper" 
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101
trigger17 = stateno = 40

[State -1];ニードルスパイク
type = ChangeState
value = 1800
triggerall = command = "Stan_Dipper" 
triggerall = var(59) = 2
triggerall = var(16) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];ニードルスパイク・ドライブ
type = ChangeState
value = 1850
triggerall = command = "Stan_Dipper" 
triggerall = var(59) = 2
triggerall = var(16) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1,rain storm];
type = ChangeState
value = 1400
triggerall = command = "Gleed_Saver" 
triggerall = var(59) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 230 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 40

[State -1];リバースクレシェンド
type = ChangeState
value = 1600
triggerall = command = "Gleed_Saver" 
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101
trigger17 = stateno = 40

[State -1];クレシェントスラッシュ
type = ChangeState
value = 1650
triggerall = command = "Gleed_Saver" 
triggerall = var(59) = 2
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];スタンブレイズ・ドライブ
type = ChangeState
value = 2450
triggerall = command = "Stan_Blaze" 
triggerall = var(59) = 2
triggerall = var(16) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];スタンブレイズ
type = ChangeState
value = 2400
triggerall = command = "Stan_Blaze" 
triggerall = var(59) = 2
triggerall = var(16) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1
trigger12 = stateno = 231 && movecontact > 1
trigger13 = stateno = 440 && movecontact > 1
trigger14 = stateno = 235 && movecontact > 1
trigger15 = stateno = 420 && movecontact > 1
trigger16 = stateno = 216 && movecontact > 1
trigger17 = stateno = 237 && movecontact > 1
trigger18 = stateno = 40

[State -1];エレガントに斬る
type = ChangeState
value = 1700
triggerall = command = "Elegant" 
triggerall = var(59) != 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];毅式転移？P
type = ChangeState
value = 1900
triggerall = command = "T_Teni_P" 
triggerall = var(59) = 1
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101

[State -1];毅式転移？K
type = ChangeState
value = 1910
triggerall = command = "T_Teni_K" 
triggerall = var(59) = 1
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101

[State -1];毅式転移？S
type = ChangeState
value = 1920
triggerall = command = "T_Teni_S" 
triggerall = var(59) = 1
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101

[State -1];毅式転移？S空中
type = ChangeState
value = 1925
triggerall = command = "T_Teni_S" 
triggerall = var(59) = 1
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1

[State -1];毅式転移？HS
type = ChangeState
value = 1930
triggerall = command = "T_Teni_HS" 
triggerall = var(59) = 1
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10230 && movecontact > 1
trigger3 = stateno = 10200 && movecontact > 1
trigger4 = stateno = 10410 && movecontact > 1
trigger5 = stateno = 10210 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10220 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 10230 && movecontact > 1
trigger12 = stateno = 440 && movecontact > 1
trigger13 = stateno = 10235 && movecontact > 1
trigger14 = stateno = 10420 && movecontact > 1
trigger15 = stateno = 10215 && movecontact > 1
trigger16 = stateno = 100 || stateno = 101

[State -1];devil trigger ground
type = ChangeState
value = 99100;1100
triggerall = command = "Stan_Edge 2"
triggerall = numprojID(1002) = 0
triggerall = numprojID(1053) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
triggerall = numprojID(1061) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5
trigger7 = stateno = 645 && movecontact > 1

[State -1];air devil trigger
type = ChangeState
value = 65456;1150
triggerall = command = "Stan_Charge"
triggerall = numprojID(1002) = 0
triggerall = numprojID(1053) = 0
triggerall = numprojID(1102) = 0
triggerall = numprojID(1152) = 0
triggerall = numprojID(1061) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 630 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5
trigger7 = stateno = 645 && movecontact > 1

[State -1];地上フォースロマンキャンセル
type = ChangeState
value = 951
trigger1 = power >= 500
trigger1 = command = "roman"
trigger1 = statetype = S || statetype = C
trigger1 = var(23) = 1

[State -1];空中フォースロマンキャンセル
type = ChangeState
value = 961
trigger1 = power >= 500
trigger1 = command = "roman"
trigger1 = statetype = A
trigger1 = var(23) = 1

[State -1];地上ロマンキャンセル
type = ChangeState
value = 950
trigger1 = power >= 1000
trigger1 = command = "roman"
trigger1 = statetype = S || statetype = C
trigger1 = var(22) = 1
trigger1 = stateno != 820

[State -1];空中ロマンキャンセル
type = ChangeState
value = 960
trigger1 = power >= 1000
trigger1 = command = "roman"
trigger1 = statetype = A
trigger1 = var(22) = 1



[State -1, Dash]
type = ChangeState
value = 100
trigger1 = stateno != 101
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1];空中前ダッシュ
type = ChangeState
value = 110
triggerall = var(4) = 1
triggerall = var(5) = 0
triggerall = command = "FF"
triggerall = statetype = A
triggerall = ctrl
trigger1 = pos Y  <= -50 && Vel Y < 0
trigger2 = pos Y  <= -10 && Vel Y >= 0

[State -1];空中後ダッシュ
type = ChangeState
value = 115
triggerall = var(4) = 1
triggerall = var(5) = 0
triggerall = command = "BB"
triggerall = statetype = A
triggerall = ctrl
trigger1 = pos Y  <= -50 && Vel Y < 0
trigger2 = pos Y  <= -10 && Vel Y >= 0

[State -1];ハイジャンプ
type = ChangeState
value = 900
triggerall = command = "High_Jump"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];挑発
type = ChangeState
value = 195
triggerall = command = "start" && command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];敬意
type = ChangeState
value = 196
triggerall = command = "start" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];フォルトレスディフェンス
type = ChangeState
value = 120
triggerall = command = "holdback"
triggerall = power > 0
triggerall = stateno != 640
triggerall = var(45) = 1
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = [200,645]
trigger3 = time <= 1

[State -1];サイクバースト　金
type = ChangeState
value = 2500
triggerall = command = "SB"
triggerall = fvar(10) >= 15000
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];サイクバースト　青
type = ChangeState
value = 2505
triggerall = alive
triggerall = command = "SB"
triggerall = var(38) >= 2
triggerall = fvar(10) >= 15000
trigger1 = !hitshakeover
trigger1 = movetype = H

[State -1];サイクバースト　青
type = ChangeState
value = 2510
triggerall = alive
triggerall = command = "SB"
triggerall = var(38) >= 2
triggerall = fvar(10) >= 15000
trigger1 = movetype = H

[State -1];投げ
type = ChangeState
value = 800
triggerall = command = "b" && command = "holdfwd"
triggerall = stateno != 100
triggerall = p2bodydist X = [-5,25]
triggerall = p2statetype != A && p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1];投げ
type = ChangeState
value = 800
triggerall = command = "b" && command = "holdback"
triggerall = stateno != 100
triggerall = p2bodydist X = [-5,25]
triggerall = p2statetype != A && p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1];空中投げ
type = ChangeState
value = 850
triggerall = command = "b" && command = "holdfwd"
triggerall = p2bodydist X = [-5,30]
triggerall = statetype = A && p2movetype != H
trigger1 = ctrl

[State -1];空中投げ
type = ChangeState
value = 850
triggerall = command = "b" && command = "holdback"
triggerall = p2bodydist X = [-5,30]
triggerall = p2statetype = A
trigger1 = statetype = A && p2movetype != H
trigger1 = ctrl

[State -1];立ち前Ｐ
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = command = "x" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 225 && movecontact > 1
trigger5 = stateno = 400 && movecontact > 1
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 410 && movecontact > 1

[State -1];ロボ立ち前Ｐ
type = ChangeState
value = 10205
triggerall = var(59) = 1
triggerall = command = "x" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10210 && movecontact > 1
trigger3 = stateno = 10225 && movecontact > 1
trigger4 = stateno = 10400 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 10410 && movecontact > 1

[State -1];立ち前Ｐ(ＥＸ)
type = ChangeState
value = 206
triggerall = var(59) = 2
triggerall = command = "x" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 225 && movecontact > 1
trigger5 = stateno = 400 && movecontact > 1
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 410 && movecontact > 1

[State -1];立ち前Ｋ
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = command = "a" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 220 && movecontact > 1
trigger5 = stateno = 225 && movecontact > 1
trigger6 = stateno = 230 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 400 && movecontact > 1
trigger9 = stateno = 100 || stateno = 101
trigger10 = stateno = 410 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1

[State -1];ロボ立ち前Ｋ
type = ChangeState
value = 10215
triggerall = var(59) = 1
triggerall = command = "a" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10210 && movecontact > 1
trigger3 = stateno = 10225 && movecontact > 1
trigger4 = stateno = 10400 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 10410 && movecontact > 1
trigger7 = stateno = 10205 && movecontact > 1
trigger8 = stateno = 10220 && movecontact > 1
trigger9 = stateno = 10230 && movecontact > 1

[State -1];立ち前Ｋ(ＥＸ)
type = ChangeState
value = 216
triggerall = var(59) = 2
triggerall = command = "a" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 220 && movecontact > 1
trigger5 = stateno = 225 && movecontact > 1
trigger6 = stateno = 230 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 400 && movecontact > 1
trigger9 = stateno = 100 || stateno = 101
trigger10 = stateno = 410 && movecontact > 1
trigger11 = stateno = 420 && movecontact > 1

[State -1];立ち前ＨＳ
type = ChangeState
value = 235
triggerall = var(59) = 0
triggerall = command = "b" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 220 && movecontact > 1
trigger5 = stateno = 225 && movecontact > 1
trigger6 = stateno = 205 && movecontact > 1
trigger7 = stateno = 400 && movecontact > 1
trigger8 = stateno = 100 || stateno = 101
trigger9 = stateno = 410 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1

[State -1];ロボ立ち前ＨＳ
type = ChangeState
value = 10235
triggerall = var(59) = 1
triggerall = command = "b" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10210 && movecontact > 1
trigger3 = stateno = 10225 && movecontact > 1
trigger4 = stateno = 10400 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 10410 && movecontact > 1
trigger7 = stateno = 10205 && movecontact > 1
trigger8 = stateno = 10220 && movecontact > 1
trigger9 = stateno = 10200 && movecontact > 1
trigger10 = stateno = 10420 && movecontact > 1

[State -1];立ち前ＨＳ(ＥＸ)
type = ChangeState
value = 237
triggerall = var(59) = 2
triggerall = command = "b" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];立ちＰ
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 200 && animelemtime(4) >= 0
trigger4 = stateno = 400 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 400 && animelemtime(4) >= 0

[State -1];ロボ立ちＰ
type = ChangeState
value = 10200
triggerall = var(59) = 1
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10200 && movecontact > 1
trigger3 = stateno = 10200 && animelem = 4
trigger4 = stateno = 10400 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101

[State -1];立ちＫ
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 400 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 200 && animelemtime(4) >= 0
trigger6 = stateno = 400 && animelemtime(4) >= 0

[State -1];ロボ立ちＫ
type = ChangeState
value = 10210
triggerall = var(59) = 1
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 410 && movecontact > 1
trigger3 = stateno = 100 || stateno = 101

[State -1];近距離立ちＳ
type = ChangeState
value = 225
triggerall = var(59) != 1
triggerall = command = "y" && command != "holddown"
triggerall = p2bodydist x < 80 && p2bodydist x > -40
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 205 && movecontact > 1
trigger5 = stateno = 400 && movecontact > 1
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 410 && movecontact > 1
trigger8 = stateno = 206 && movecontact > 1

[State -1];ロボ近距離立ちＳ
type = ChangeState
value = 10225
triggerall = var(59) = 1
triggerall = command = "y" && command != "holddown"
triggerall = p2bodydist x < 80 && p2bodydist x > -40
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10210 && movecontact > 1
trigger3 = stateno = 10205 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101

[State -1];遠距離立ちＳ
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "y" && command != "holddown"
;triggerall = p2bodydist x > 50
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 225 && movecontact
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 226 && movecontact

[State -1];ロボ遠距離立ちＳ
type = ChangeState
value = 10220
triggerall = var(59) = 1
triggerall = command = "y" && command != "holddown"
;triggerall = p2bodydist x > 50
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10205 && movecontact > 1
trigger3 = stateno = 100 || stateno = 101

[State -1];立ちＨＳ
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 225 && movecontact
trigger5 = stateno = 205 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 100 || stateno = 101
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && movecontact
trigger10 = stateno = 206 && movecontact

[State -1];立ちＨＳ(ＥＸ)
type = ChangeState
value = 231
triggerall = var(59) = 2
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 225 && movecontact > 1
trigger5 = stateno = 206 && movecontact > 1
trigger6 = stateno = 400 && movecontact > 1
trigger7 = stateno = 100 || stateno = 101
trigger8 = stateno = 410 && movecontact > 1
trigger9 = stateno = 420 && movecontact > 1
trigger10 = stateno = 220 && movecontact > 1

[State -1];ロボ立ちＨＳ
type = ChangeState
value = 10230
triggerall = command = "b" && command != "holddown"
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];立ちＤ
type = ChangeState
value = 240
triggerall = command = "z" && command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 220 && movecontact > 1
trigger5 = stateno = 225 && movecontact > 1
trigger6 = stateno = 230 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 400 && movecontact > 1
trigger9 = stateno = 410 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 100 || stateno = 101
trigger13 = stateno = 206 && movecontact > 1
trigger14 = stateno = 231 && movecontact > 1
trigger15 = stateno = 431 && movecontact > 1

[State -1];ロボ立ちＤ
type = ChangeState
value = 10240
triggerall = command = "z" && command != "holddown"
triggerall = var(59) = 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 10210 && movecontact > 1
trigger3 = stateno = 10220 && movecontact > 1
trigger4 = stateno = 10225 && movecontact > 1
trigger5 = stateno = 10230 && movecontact > 1
trigger6 = stateno = 10205 && movecontact > 1
trigger7 = stateno = 10400 && movecontact > 1
trigger8 = stateno = 10410 && movecontact > 1
trigger9 = stateno = 10420 && movecontact > 1
trigger10 = stateno = 10430 && movecontact > 1
trigger11 = stateno = 100 || stateno = 101

[State -1];しゃがみＰ
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && animelemtime(4) >= 0
trigger4 = stateno = 200 && movecontact > 1
trigger5 = stateno = 100 || stateno = 101
trigger6 = stateno = 400 && animelemtime(4) >= 0

[State -1];ロボしゃがみＰ
type = ChangeState
value = 10400
triggerall = var(59) = 1
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 10400 && movecontact > 1
trigger3 = stateno = 10400 && animelemtime(4) >= 0
trigger4 = stateno = 10200 && movecontact > 1
trigger5 = stateno = 10410 && movecontact > 1
trigger6 = stateno = 100 || stateno = 101

[State -1];しゃがみＫ
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 200 && animelemtime(4) >= 0
trigger6 = stateno = 400 && animelemtime(4) >= 0

[State -1];ロボしゃがみＫ
type = ChangeState
value = 10410
triggerall = var(59) = 1
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 10410 && movecontact > 1
trigger3 = stateno = 10410 && animelemtime(4) >= 0
trigger4 = stateno = 100 || stateno = 101

[State -1];しゃがみＳ
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 206 && movecontact > 1

[State -1];ロボしゃがみＳ
type = ChangeState
value = 10420
triggerall = var(59) = 1
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 101

[State -1];しゃがみＨＳ
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1

[State -1];しゃがみＨＳ(ＥＸ)
type = ChangeState
value = 431
triggerall = var(59) = 2
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 206 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1

[State -1];ロボしゃがみＨＳ
type = ChangeState
value = 10430
triggerall = var(59) = 1
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 10210 && movecontact > 1
trigger3 = stateno = 100 || stateno = 101

[State -1];しゃがみＤ
type = ChangeState
value = 440
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact > 1
trigger3 = stateno = 200 && movecontact > 1
trigger4 = stateno = 100 || stateno = 101
trigger5 = stateno = 410 && movecontact > 1
trigger6 = stateno = 210 && movecontact > 1
trigger7 = stateno = 205 && movecontact > 1
trigger8 = stateno = 220 && movecontact > 1
trigger9 = stateno = 225 && movecontact > 1
trigger10 = stateno = 420 && movecontact > 1
trigger11 = stateno = 430 && movecontact > 1
trigger12 = stateno = 230 && movecontact > 1
trigger13 = stateno = 10210 && movecontact > 1
trigger14 = stateno = 10220 && movecontact > 1
trigger15 = stateno = 10230 && movecontact > 1
trigger16 = stateno = 10400 && movecontact > 1
trigger17 = stateno = 10410 && movecontact > 1
trigger18 = stateno = 10420 && movecontact > 1
trigger19 = stateno = 10430 && movecontact > 1
trigger20 = stateno = 10205 && movecontact > 1
trigger21 = stateno = 206 && movecontact > 1
trigger22 = stateno = 231 && movecontact > 1
trigger23 = stateno = 431 && movecontact > 1

[State -1];ジャンプＰ
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 600 && animelem >= 5
trigger4 = stateno = 610 && movecontact > 1
trigger5 = stateno = 620 && movecontact > 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5

[State -1];ジャンプＫ
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5

[State -1];ジャンプＳ
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1 && var(16) = 1
trigger5 = stateno = 620 && animelemtime(5) >= 0 && var(16) = 1
trigger6 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5

[State -1];ジャンプＨＳ
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 620 && movecontact > 1
trigger5 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5

[State -1];ジャンプＤ
type = ChangeState
value = 640
triggerall = command = "z"
triggerall = var(59) != 2
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5
trigger5 = stateno = 620 && movecontact > 1

[State -1];ジャンプＤEX
type = ChangeState
value = 645
triggerall = command = "z"
triggerall = var(59) = 2
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact > 1
trigger3 = stateno = 610 && movecontact > 1
trigger4 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) >= 5
trigger5 = stateno = 620 && movecontact > 1

[State -1];ハイジャンプキャンセル
type = ChangeState
value = 900
triggerall = command = "High_Jump"
triggerall = var(6) = 0
trigger1 = stateno = 100 || stateno = 101
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 225 && movecontact > 1
trigger5 = stateno = 440 && movecontact > 1
trigger6 = stateno = 10200 && movecontact > 1
trigger7 = stateno = 10210 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 237 && movecontact > 1
trigger10 = stateno = 431 && movecontact > 1

[State -1];ホーミングジャンプ
type = ChangeState
value = 2200
triggerall = command = "holdup"
triggerall = NumTarget(240) = 1
trigger1 = stateno = 240 && movehit > 1
trigger2 = stateno = 10240 && movehit > 1
trigger3 = p2stateno = 6010 && statetype != A && ctrl = 1

[State -1];ホーミングジャンプキャンセル
type = ChangeState
value = 2200
triggerall = command = "holdup"
triggerall = var(25) = 1
trigger1 = stateno = 600 && movecontact > 1
trigger2 = stateno = 610 && movecontact > 1
trigger3 = stateno = 620 && movecontact > 1
trigger4 = stateno = 630 && movecontact > 1
trigger5 = stateno = 645 && movecontact > 1

[State -1];地上ジャンプキャンセル
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 100 || stateno = 101
trigger2 = stateno = 200 && movecontact > 1
trigger3 = stateno = 210 && movecontact > 1
trigger4 = stateno = 225 && movecontact > 1
trigger5 = stateno = 440 && movecontact > 1
trigger6 = stateno = 10200 && movecontact > 1
trigger7 = stateno = 10210 && movecontact > 1
trigger8 = stateno = 10225 && movecontact > 1
trigger9 = stateno = 237 && movecontact > 1
trigger10 = stateno = 231 && movecontact > 1
trigger11 = stateno = 431 && movecontact > 1

[State -1];空中ジャンプキャンセル
type = ChangeState
value = 45
triggerall = command = "holdup" && movecontact > 1
triggerall = var(4) != 2
triggerall = var(6) = 0
trigger1 = stateno = 600
trigger2 = stateno = 620
trigger3 = stateno = 645
