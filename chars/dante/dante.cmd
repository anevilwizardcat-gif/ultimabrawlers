;-| Button Remapping |-----------------------------------------------------
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "dansemacabre"
command = ~D, DB, B, DB, F, x
time = 25

[Command]
name = "dansemacabre"
command = ~D, DB, B, DB, F, ~x
time = 25

;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "million"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Crystel"
command = ~D, DF, F, D, DF, F, a
time = 20


[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y



[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

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
name = "DDF_y"
command = D, D, y

[Command]
name = "DD_z"
command = D, D, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "yyyy"     ;Required (do not remove)
command = y, y, y, y
time = 25

[Command]
name = "xxxx"     ;Required (do not remove)
command = x, x, x, x
time = 25

[Command]
name = "aaaa"     ;Required (do not remove)
command = a, a, a, a
time = 25

[Command]
name = "yy"     ;Required (do not remove)
command = y, y
time = 20

[Command]
name = "xx"     ;Required (do not remove)
command = x, x
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "timelag"
command = z+c
time = 1

[Command]
name = "afterimage"
command = b+y
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

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "front_c"
command = /$F,c
time = 1

[Command]
name = "front_a"
command = /$F,a
time = 1

[Command]
name = "front_b"
command = /$F,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "fd_y"
command = /$DF,y
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

;---------------------------------------------------------------------------
; 2. State entry
[Statedef -1]
;---------------------------------------------------------------------------

[State -1, ダンスマカブル]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "dansemacabre"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = movecontact
trigger3 = stateno = 203
trigger3 = movecontact
trigger4 = stateno = 213
trigger4 = movecontact
;---------------------------------------------------------------------------
;リアルインパクト
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = var(59) = 0
triggerall = command = "TripleKFPalm"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213
trigger3 = movecontact
;---------------------------------------------------------------------------
;ミリオンダラー
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3400
triggerall = var(59) = 0
triggerall = command = "million"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213
trigger3 = movecontact

;---------------------------------------------------------------------------
;クリスタル
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "Crystel"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [300,302]
trigger2 = movecontact

;---------------------------------------------------------------------------
;タイムラグ
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3600
triggerall = command = "timelag"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = !var(19) && !var(22)
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213 || stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;アフターイメージ
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3700
triggerall = command = "afterimage"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = !var(19) && !var(22)
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213 || stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
;ライジングドラゴン
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 2600
triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 205 || stateno = 213 || stateno = 250 || stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
;ディバインドラゴン
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 2610
triggerall = command = "upper_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 205 || stateno = 213 || stateno = 250 || stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;ボルケイノ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 2700
triggerall = command = "DDF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213 || stateno = 400
trigger3 = movecontact


;---------------------------------------------------------------------------
;ハイタイムジャンプ
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1000
triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 213
trigger2 = Time > 43
trigger2 = movecontact
trigger3 = stateno = [200,202]
trigger3 = movecontact
trigger4 = stateno = 203 || stateno = 213 || stateno = 400
trigger4 = movecontact
trigger5 = stateno = 1500
trigger5 = ProjContactTime(1502) != -1 && ProjContactTime(1502) < 15

;------------------------------------------------------------------------------
[State -1, スティンガー]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213 || stateno = 410 || stateno = 430
trigger3 = movecontact

;---------------------------------------------------------------------------
;ストレイト
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 2500
triggerall = var(59) = 0
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = movecontact
trigger3 = stateno = 203 || stateno = 213 || stateno = 410
trigger3 = movecontact

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
trigger1 = command = "FF" || command ="front_c"
trigger1 = ctrl
trigger2 = stateno = 100 && animelemtime(6) > 3
trigger2 = var(8) < 3 && var(7) = 1

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" || command ="back_c"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4] ;Recover near ground
type = ChangeState
value = 5200
triggerall = var(59) = 0
triggerall = StateNo = 5050 || StateNo = 5071 || StateNo = 5101
triggerall = Vel Y >= 0
triggerall = Pos Y >= -15
trigger1 = CanRecover
trigger1 = command = "recovery"
persistent = 0

;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
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
;---------------------------------------------------------------------------
;リリース
[State -1, Standing Strong Kick]
type = ChangeState
value = 910
triggerall = command = "front_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ブロック
[State -1, Standing Strong Kick]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 905

;---------------------------------------------------------------------------
;空中リリース
[State -1, Standing Strong Kick]
type = ChangeState
value = 940
triggerall = command = "front_b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中ブロック
[State -1, Standing Strong Kick]
type = ChangeState
value = 930
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 935
;---------------------------------------------------------------------------
;Stand Light Punch
;スライディング
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "fd_y"
triggerall = statetype != A
trigger1 = ctrl

;エボアボ斜め打ち
[State -1, Stand Light Punch]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall = command = "front_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && animelemtime(6) > 3


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && animelemtime(6) > 3

;---------------------------------------------------------------------------
;Stand Light Kick
;ケルベロスコンボ１
[State -1, Stand Light Kick]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && animelemtime(6) > 3
trigger3 = stateno = 430
trigger3 = time > 3 || movecontact

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ弱パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 213
trigger2 = animelemtime(18) > 0

;---------------------------------------------------------------------------

;Crouching Light Punch
;しゃがみ強パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time > 3 || movecontact
;---------------------------------------------------------------------------

;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time > 3 || movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 900
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;スカイスター
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = statetype = A
triggerall = command = "FF" || command ="front_c"
triggerall = !(stateno = 102 || stateno = 108)
trigger1 = ctrl
trigger2 = stateno = 2600 && (animelemtime(10) > 1 || anim = 3502)
trigger2 = movehit
trigger3 = stateno = 2610 && (animelemtime(14) > 0 || anim = 3502)
trigger3 = movehit
trigger4 = stateno = 1000 || stateno = [600,605] 
trigger4 = movehit
trigger5 = stateno = 610
trigger5 = movehit
;---------------------------------------------------------------------------
;スカイスター後ろ
[State -1, Run Fwd]
type = ChangeState
value = 108
triggerall = statetype = A
triggerall = command = "BB" || command ="back_c"
triggerall = !(stateno = 102 || stateno = 108)
trigger1 = ctrl
trigger2 = stateno = 2600 && (animelemtime(10) > 1 || anim = 3502)
trigger2 = movehit
trigger3 = stateno = 2610 && (animelemtime(14) > 0 || anim = 3502)
trigger3 = movehit
trigger4 = stateno = 1000
trigger4 = movehit
trigger5 = stateno = 610
trigger5 = movehit

;---------------------------------------------------------------------------
;エアハイク
[State -1, Run Fwd]
type = ChangeState
value = 45
triggerall = statetype = A
triggerall = command = "holdup"
trigger1 = stateno = 2600 && (animelemtime(10) > 1 || anim = 3502)
trigger1 = movehit
trigger2 = stateno = 2610 && (animelemtime(14) > 0 || anim = 3502)
trigger2 = movehit
trigger3 = stateno = 1000
trigger3 = movehit
trigger4 = stateno = 610
trigger4 = movehit
;---------------------------------------------------------------------------
[State -1, ヘルムブレイカー]
type = ChangeState
value = 1200
triggerall = command = "down_x"
triggerall = var(59) = 0
triggerall = pos Y < -30
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = anim = 3501 && animelemtime(6) > 15
trigger2 = movecontact
trigger3 = stateno = 3550
trigger3 = anim = 3502
trigger3 = movecontact
trigger4 = stateno = [600,603]
trigger4 = movehit
trigger5 = stateno = 2600 && (animelemtime(10) > 1 || anim = 3502)
trigger5 = movehit
trigger6 = stateno = 2610 && (animelemtime(14) > 0 || anim = 3502)
trigger6 = movehit
trigger7 = stateno = 610 || stateno = 1000
trigger7 = movehit
trigger8 = stateno = 1600 && (animelemtime(4) > 0 || anim = 1601)
trigger8 = ProjHit = 1, < 15

;---------------------------------------------------------------------------
;ボルケイノ空中
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 2720
triggerall = command = "down_y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610
trigger2 = movehit
trigger3 = stateno = 1600
trigger3 = ProjHit = 1, < 15
trigger4 = stateno = 2600 && (animelemtime(10) > 1 || anim = 3502)
trigger4 = movehit
trigger5 = stateno = 2610 && (animelemtime(14) > 0 || anim = 3502)
trigger5 = movehit
;---------------------------------------------------------------------------
;Jump Light Punch
;ンウェー
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "y"
;triggerall = pos Y < -25
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = anim = 3501 && animelemtime(6) > 15
trigger2 = movecontact
trigger3 = stateno = 3550
trigger3 = anim = 3502
trigger3 = movecontact
trigger4 = stateno = [600,603]
trigger4 = movehit
trigger5 = stateno = 2600 && (animelemtime(10) > 1 || anim = 3502)
trigger5 = movehit
trigger6 = stateno = 2610 && (animelemtime(14) > 0 || anim = 3502)
trigger6 = movehit
trigger7 = stateno = 610
trigger7 = movehit
trigger8 = stateno = 1600 && (animelemtime(4) > 0 || anim = 1601)
trigger8 = ProjHit = 1, < 15


;レインストーム
[State -1, レインストーム]
type = ChangeState
value = 1600
triggerall = command = "down_a" ||command = "a"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = pos Y < -25
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1000 ||stateno = 2600 || stateno = 2610
trigger2 = movehit



;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
