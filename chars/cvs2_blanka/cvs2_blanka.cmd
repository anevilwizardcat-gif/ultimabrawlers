;-AI(CPU)-----------------------------------------------------------
[Command]
name = "cpu1"
command = x, x, y
time = 0

[Command]
name = "cpu2"
command = x, y, y
time = 0

[Command]
name = "cpu3"
command = x, z, z
time = 0

[Command]
name = "cpu4"
command = x, a, a
time = 0

[Command]
name = "cpu5"
command = x, b, c
time = 0

[Command]
name = "cpu6"
command = x, c, x, y
time = 0

[Command]
name = "cpu7"
command = y, x, x, y
time = 0

[Command]
name = "cpu8"
command = y, y, x, y
time = 0

[Command]
name = "cpu9"
command = y, z, x, y
time = 0

[Command]
name = "cpu10"
command = y, a, x, y
time = 0

[Command]
name = "cpu11"
command = y, b, x, y
time = 0

[Command]
name = "cpu12"
command = y, c, x, y
time = 0

[Command]
name = "cpu13"
command = z, x, x, y
time = 0

[Command]
name = "cpu14"
command = z, y, x, y
time = 0

[Command]
name = "cpu15"
command = z, z, x, y
time = 0

[Command]
name = "cpu16"
command = z, a, x, y
time = 0

[Command]
name = "cpu17"
command = z, b, x, y
time = 0

[Command]
name = "cpu18"
command = z, c, x, y
time = 0

[Command]
name = "cpu19"
command = a, x, x, y
time = 0

[Command]
name = "cpu20"
command = a, y, x, y
time = 0

[Command]
name = "cpu21"
command = a, z, x, y
time = 0

[Command]
name = "cpu22"
command = a, a, x, y
time = 0

[Command]
name = "cpu23"
command = a, b, x, y
time = 0

[Command]
name = "cpu24"
command = a, c, x, y
time = 0

[Command]
name = "cpu25"
command = b, x, x, y
time = 0

[Command]
name = "cpu26"
command = b, y, x, y
time = 0

[Command]
name = "cpu27"
command = b, z, x, y
time = 0

[Command]
name = "cpu28"
command = b, a, x, y
time = 0

[Command]
name = "cpu29"
command = b, b, x, y
time = 0

[Command]
name = "cpu30"
command = b, c, x, y
time = 0

[Command]
name = "cpu31"
command = c, x, x, y
time = 0

[Command]
name = "cpu32"
command = c, y, x, y
time = 0

[Command]
name = "cpu33"
command = c, z, x, y
time = 0

[Command]
name = "cpu34"
command = c, a, x, y
time = 0

[Command]
name = "cpu35"
command = c, b, x, y
time = 0

[Command]
name = "cpu36"
command = c, c, x, y
time = 0

[Command]
name = "cpu37"
command = D, D, x, y
time = 0

[Command]
name = "cpu38"
command = F, F, x, y
time = 0

[Command]
name = "cpu39"
command = U, U, x, y
time = 0

[Command]
name = "cpu40"
command = B, B, x, y
time = 0

;----AI起動コマンド用(XOR・2)----
[Command]
name = "a2"
command = a
time = 0

[Command]
name = "b2"
command = b
time = 0

[Command]
name = "c2"
command = c
time = 0

[Command]
name = "x2"
command = x
time = 0

[Command]
name = "y2"
command = y
time = 0

[Command]
name = "z2"
command = z
time = 0

[Command]
name = "fwd2"
command = F
time = 1

[Command]
name = "back2"
command = B
time = 0

[Command]
name = "up2"
command = U
time = 0

[Command]
name = "down2"
command = D
time = 0

;-| スーパーコンボ |-----------------------------------------------------------

[Command]
name = "direct_x"
command = ~48$B, $F, $B, F, x
time = 26

[Command]
name = "direct_y"
command = ~48$B, $F, $B, F, y
time = 26

[Command]
name = "direct_z"
command = ~48$B, $F, $B, F, z
time = 26

[Command]
name = "direct_x_2"
command = ~$B, $F, $B, F, x
time = 26

[Command]
name = "direct_y_2"
command = ~$B, $F, $B, F, y
time = 26

[Command]
name = "direct_z_2"
command = ~$B, $F, $B, F, z
time = 26

[Command]
name = "shout_x"
command = ~48DB,DF,DB,$U, x
time = 30

[Command]
name = "shout_y"
command = ~48DB,DF,DB,$U, y
time = 30

[Command]
name = "shout_z"
command = ~48DB,DF,DB,$U, z
time = 30

[Command]
name = "shout_x_2"
command = ~DB,DF,DB,$U, x
time = 30

[Command]
name = "shout_y_2"
command = ~DB,DF,DB,$U, y
time = 30

[Command]
name = "shout_z_2"
command = ~DB,DF,DB,$U, z
time = 30

[Command]
name = "ground_a"
command = ~48$B, $F, $B, F, a
time = 26

[Command]
name = "ground_b"
command = ~48$B, $F, $B, F, b
time = 26

[Command]
name = "ground_c"
command = ~48$B, $F, $B, F, c
time = 26

[Command]
name = "ground_a_2"
command = ~$B, $F, $B, F, a
time = 26

[Command]
name = "ground_b_2"
command = ~$B, $F, $B, F, b
time = 26

[Command]
name = "ground_c_2"
command = ~$B, $F, $B, F, c
time = 26

;-| 必殺技 |-----------------------------------------------------------

[Command]
name = "rolling_x"
command = ~48$B, F, x
time = 12

[Command]
name = "rolling_y"
command = ~48$B, F, y
time = 12

[Command]
name = "rolling_z"
command = ~48$B, F, z
time = 12

[Command]
name = "rolling_x_2"
command = ~$B, F, x
time = 12

[Command]
name = "rolling_y_2"
command = ~$B, F, y
time = 12

[Command]
name = "rolling_z_2"
command = ~$B, F, z
time = 12

[Command]
name = "back_rolling_a"
command = ~48$B, F, a
time = 12

[Command]
name = "back_rolling_b"
command = ~48$B, F, b
time = 12

[Command]
name = "back_rolling_c"
command = ~48$B, F, c
time = 12

[Command]
name = "back_rolling_a_2"
command = ~$B, F, a
time = 12

[Command]
name = "back_rolling_b_2"
command = ~$B, F, b
time = 12

[Command]
name = "back_rolling_c_2"
command = ~$B, F, c
time = 12

[Command]
name = "vertical_a"
command = ~48$D, $U, a
time = 12

[Command]
name = "vertical_b"
command = ~48$D, $U, b
time = 12

[Command]
name = "vertical_c"
command = ~48$D, $U, c
time = 12

[Command]
name = "vertical_a_2"
command = ~$D, $U, a
time = 12

[Command]
name = "vertical_b_2"
command = ~$D, $U, b
time = 12

[Command]
name = "vertical_c_2"
command = ~$D, $U, c
time = 12


;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = $D, $U
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| ２～３個のボタン同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
time = 1

;-| ボタン設定 |-----------------------------------------------
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
name = "s"
command = s
time = 1

[Command];（ブロッキング用）
name = "fwd"
command = F
time = 1

[Command];（レバガチャ用）
name = "back"
command = B
time = 1

[Command];（グルーヴセレクト用）
name = "up"
command = U
time = 1

[Command];（グルーヴセレクト・ブロッキング用）
name = "down"
command = D
time = 1

[Command];（ジャストディフェンス用）
name = "backdown"
command = DB
time = 1

;-----レバガチャ
[Command]
name = "fwddown"
command = DF
time = 1

[Command]
name = "backup"
command = UB
time = 1

[Command]
name = "fwdup"
command = UF
time = 1

;-| ボタン押しっぱなし設定 |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1
;-| 方向キー押しっぱなし設定 |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;キャンセル設定

[State -1]
type =Varset
trigger1 = var(3)>0
var(3)=0
ignorehitpause=1

;通常技→必殺技
[State -1,special]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && fvar(21) && !(fvar(37)&&ceil(fvar(13))%512>255)
triggerall = !(prevstateno=200&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)
triggerall = (prevstateno!=[210,215])&&(prevstateno!=[220,225])&&(prevstateno!=[230,235])&&(prevstateno!=[240,245])&&(prevstateno!=[250,255])
triggerall = !(prevstateno=400&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)&&prevstateno!=410&&prevstateno!=420&&prevstateno!=430&&prevstateno!=440&&prevstateno!=450
triggerall = prevstateno!=600&&prevstateno!=610&&prevstateno!=620&&prevstateno!=630&&prevstateno!=640&&prevstateno!=650
trigger1 = StateNo=200 || StateNo=230 || (StateNo=235 && AnimElemTime(3)<0) || StateNo=400 || StateNo=430 || StateNo=440 || (StateNo=700 && AnimElemTime(3)<0) || (StateNo=920 && AnimElemTime(3)<0)
var(3)=1
ignorehitpause = 1

;通常技→スーパーコンボ（超必殺技）
[State -1,super]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && fvar(21) && !(fvar(37)&&ceil(fvar(13))%512>255)
triggerall = !(prevstateno=200&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)
triggerall = (prevstateno!=[210,215])&&(prevstateno!=[220,225])&&(prevstateno!=[230,235])&&(prevstateno!=[240,245])&&(prevstateno!=[250,255])
triggerall = !(prevstateno=400&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)&&prevstateno!=410&&prevstateno!=420&&prevstateno!=430&&prevstateno!=440&&prevstateno!=450
triggerall = prevstateno!=600&&prevstateno!=610&&prevstateno!=620&&prevstateno!=630&&prevstateno!=640&&prevstateno!=650
trigger1 = StateNo=210 || (StateNo=220 && AnimElemTime(3)<0) || StateNo=240 || (StateNo=245 && AnimElemTime(4)<0) || StateNo=250 || StateNo=410 || StateNo=420 || StateNo=450
var(3)=2
ignorehitpause = 1

;通常技→必殺技
[State -1,special]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && !fvar(21) && !(fvar(37)&&ceil(fvar(13))%512>255)
triggerall = !(prevstateno=200&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)
triggerall = (prevstateno!=[210,215])&&(prevstateno!=[220,225])&&(prevstateno!=[230,235])&&(prevstateno!=[240,245])&&(prevstateno!=[250,255])
triggerall = !(prevstateno=400&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)&&prevstateno!=410&&prevstateno!=420&&prevstateno!=430&&prevstateno!=440&&prevstateno!=450
triggerall = prevstateno!=600&&prevstateno!=610&&prevstateno!=620&&prevstateno!=630&&prevstateno!=640&&prevstateno!=650
trigger1 = (StateNo=200 && AnimElemTime(3)<0) || (StateNo=230 && AnimElemTime(4)<0) || (StateNo=235 && AnimElemTime(4)<0) || (StateNo=400&&AnimElemTime(4)<0) || (StateNo=430&&AnimElemTime(3)<0) || (StateNo=440&&AnimElemTime(3)<0)
trigger2 = (StateNo=700 && AnimElemTime(3)<0) || (StateNo=920 && AnimElemTime(3)<0)
var(3)=1
ignorehitpause = 1

;通常技→スーパーコンボ（超必殺技）
[State -1,super]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && !fvar(21) && !(fvar(37)&&ceil(fvar(13))%512>255)
triggerall = !(prevstateno=200&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)
triggerall = (prevstateno!=[210,215])&&(prevstateno!=[220,225])&&(prevstateno!=[230,235])&&(prevstateno!=[240,245])&&(prevstateno!=[250,255])
triggerall = !(prevstateno=400&&(stateno!=[200,205])&&(stateno!=[230,235])&&stateno!=400&&stateno!=430)&&prevstateno!=410&&prevstateno!=420&&prevstateno!=430&&prevstateno!=440&&prevstateno!=450
triggerall = prevstateno!=600&&prevstateno!=610&&prevstateno!=620&&prevstateno!=630&&prevstateno!=640&&prevstateno!=650
trigger1 = StateNo=210 || (StateNo=220 && AnimElemTime(3)<0)|| (StateNo=250 && AnimElemTime(4)<0) || (StateNo=210&&AnimElemTime(4)<0) || (StateNo=220&&AnimElemTime(4)<0) || (StateNo=245 && AnimElemTime(4)<0)
trigger2 =  (StateNo=410&&AnimElemTime(4)<0) || (StateNo=420&&AnimElemTime(3)<0) || (StateNo=450&&AnimElemTime(4)<0)
var(3)=2
ignorehitpause = 1

;通常技→必殺技（キャンセルエニィムーブ）
[State -1,super]
type = VarSet
triggerall = movecontact && !var(3) && fvar(37) && ceil(fvar(13))%512>255
trigger1 = (StateNo=[200,799])&&!var(21)
trigger2 = stateno=[920,930]
var(3)=1
ignorehitpause = 1

;空振りキャンセル
[State -1]
type = VarSet
triggerall = !var(3)
triggerall = (prevstateno!=[200,799])
trigger1 = ((StateNo=[200,799])||(stateno=[920,930]))&& ifelse(var(56)>0&&(StateNo=[200,799]),1,time<5) && !movecontact
var(3)=3
ignorehitpause = 1

;オリコン中
[State -1,oricom]
type = VarSet
triggerall = var(56)>0 && movecontact && !var(3)
trigger1 = ((StateNo=[200,799]) || (StateNo=[1000,1999]))
var(3)=4
ignorehitpause = 1

;LV.2キャンセル
[State -1,oricom]
type = VarSet
triggerall = var(13)=1 && !var(3) && var(1)=1 && Statetype!=A
trigger1 = StateNo=3010 || (stateno=3050&&prevstateno=3010)
trigger2 = StateNo=3110 || StateNo=3210 || (stateno=[3205,3206])
var(3)=5
ignorehitpause = 1

;スーパーコンボキャンセル
[State -1,oricom]
type = VarSet
triggerall = fvar(37) && ceil(fvar(13))%256>127
triggerall = numtarget
triggerall = (movehit||var(13)=1) && !var(3) && Statetype!=A && !var(21)
trigger1 = StateNo=[1000,2099]
var(3)=6
ignorehitpause = 1
;=====================================================================
;CPU行動
;=====================================================================
;AI起動
[State -1 ,switch]
type = varset
triggerall = fvar(38) != 1
triggerall = RoundState = 2
trigger1  = command = "cpu1"
trigger2  = command = "cpu2"
trigger3  = command = "cpu3"
trigger4  = command = "cpu4"
trigger5  = command = "cpu5"
trigger6  = command = "cpu6"
trigger7  = command = "cpu7"
trigger8  = command = "cpu8"
trigger9  = command = "cpu9"
trigger10  = command = "cpu10"
trigger11  = command = "cpu11"
trigger12  = command = "cpu12"
trigger13  = command = "cpu13"
trigger14  = command = "cpu14"
trigger15  = command = "cpu15"
trigger16  = command = "cpu16"
trigger17  = command = "cpu17"
trigger18  = command = "cpu18"
trigger19  = command = "cpu19"
trigger20  = command = "cpu20"
trigger21  = command = "cpu21"
trigger22  = command = "cpu22"
trigger23  = command = "cpu23"
trigger24  = command = "cpu24"
trigger25  = command = "cpu25"
trigger26  = command = "cpu26"
trigger27  = command = "cpu27"
trigger28  = command = "cpu28"
trigger29  = command = "cpu29"
trigger30  = command = "cpu30"
trigger31  = command = "cpu31"
trigger32  = command = "cpu32"
trigger33  = command = "cpu33"
trigger34  = command = "cpu34"
trigger35  = command = "cpu35"
trigger36  = command = "cpu36"
trigger37  = command = "cpu37"
trigger38  = command = "cpu38"
trigger39  = command = "cpu39"
trigger40  = command = "cpu40"
trigger41  = 0;command = "cpu41"
trigger42  = 0;command = "cpu42"
trigger43  = 0;command = "cpu43"
trigger44  = 0;command = "cpu44"
trigger45  = 0;command = "cpu45"
trigger46  = 0;command = "cpu46"
trigger47  = 0;command = "cpu47"
trigger48  = 0;command = "cpu48"
trigger49  = 0;command = "cpu49"
trigger50  = 0;command = "cpu50"
trigger51 = numhelper(90000)
trigger51 = helper(90000),fvar(38) = 1
trigger52 = (command="up"^^command="up2") || (command="down"^^command="down2")
trigger53 = (command="fwd"^^command="fwd2") || (command="back"^^command="back2")
trigger54 = (command="x"^^command="x2") || (command="y"^^command="y2")
trigger55 = (command="z"^^command="z2")||(command="a"^^command="a2")
trigger56 = (command="b"^^command="b2")||(command="c"^^command="c2")
trigger57 = 0;1で常時起動ＯＮ（通常0）
fvar(38) = 1

;AI起動用ヘルパー
[state -1 ,switch_hlp]
type = helper
trigger1 = !numhelper(90000) && !fvar(38) && alive
trigger1 = roundstate=2 && !Ctrl && stateno=0 &&((PrevStateNo=[190,194])||PrevStateNo=5900)
stateno=90000
id = 90000
name = "AI_Switch"
helpertype=Normal
keyctrl = 1
pos = 0,-200
postype = P1
size.xscale = 0.001
size.yscale = 0.001
pausemovetime= 999999
supermovetime= 999999
ignorehitpause=1

[State -1,random]
type = VarRandom
triggerall = fvar(38)=1 && P2statetype!=A
trigger1 = gametime%30=0 || ((StateNo=900 || StateNo=40)&&time=1)
v = 54
range = 0,999

;----------CPU------------------
;~~~~~~~~~~~~~~~~~オリジナルコンボ~~~~~~~~~~~~~~~~~~~~~~
;;オリジナルコンボ発動
[state -1,oricom]
type = ChangeState
value = 2400
triggerall = fvar(38) && P2statetype!=L && statetype!=A && !var(21) && var(59)=1 && Power>=3000 && roundstate=2
trigger1 = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40&&!enemynear,hitfall))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && Abs(P2bodydist X)<30 && random%4=1

;LV.1シャウトオブアース
[state -1,shout]
type = ChangeState
value = 3100-(enemynear,backedgebodydist>5||P2bodydist X>30)*300
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
trigger1 = P2statetype=A&&enemynear,Vel Y>=0 && (enemynear,Pos Y=[-135+(enemynear,backedgebodydist<=10&&P2bodydist X<40)*40,-60])
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && enemynear,hitfall=1 && var(16)>1 && P2bodydist X<140 && var(56)<=100
trigger2 = P2statetype=A&&enemynear,Vel Y>=0 && (enemynear,Pos Y=[-155,-90]) && enemynear,Vel Y>8
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && enemynear,hitfall=1 && var(16)>1 && P2bodydist X<140 && var(56)<=100

;強エレクトリックサンダー
[state -1,elec_h]
type = ChangeState
value = 1020
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
triggerall = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = stateno=710 && movecontact=1 && var(16)<=1 && P2bodydist X<30

;アマゾンリバーラン
[state -1,amaz]
type = ChangeState
value = 710
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
triggerall = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = stateno=440 && movecontact=1
trigger2 = stateno=1020 &&movecontact && time>11
trigger3 = stateno=710 && Movecontact && p2bodydist X>50 && var(16)<=1

;屈中K
[state -1,cmk]
type = ChangeState
value = 440
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
triggerall = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = stateno=430 && movecontact=1 && var(16)<=1

;立ち強P
[state -1,chp]
type = ChangeState
value = 220
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
trigger1 = stateno=710 && movecontact=4 && var(16)>1

;屈弱K
[state -1,clk]
type = ChangeState
value = 430
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
trigger1 = stateno=220 && movecontact=1 && var(16)>1

;屈弱K
[state -1,clp]
type = ChangeState
value = 430
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && roundstate=2
trigger1 = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && Abs(P2bodydist X)<50 && ifelse(var(56)>350,random%5<3,random%4=0)

;ジャンプ強K(P)
[state -1,cutom_combo]
type = ChangeState
value = ifelse(vel X&&stateno=50&&P2bodydist X<90,625,650-(Vel X=0)*30)
triggerall = fvar(38)=1 && roundstate=2 && enemynear,Statetype!=L && var(21) && statetype=A
triggerall = P2statetype=A&&enemynear,Vel Y>-4 && (P2bodydist Y=[-120-(!vel X)*60,80])
trigger1 = ctrl && enemynear,hitfall=1 && var(16)>1 && P2bodydist X<120 && var(56)>50 && vel Y <0
trigger2 = ((stateno=[620,625])||stateno=650) && vel Y<6 && movecontact=1 && var(16)>1
trigger2 = (var(56)>60||(((prevstateno!=[620,625])||prevstateno!=650)&&var(56)<=60))

;ジャンプ
[state -1,cutom_combo]
type = ChangeState
value = 40
triggerall = fvar(38)=1 && roundstate=2 && enemynear,Statetype!=L && var(21) && statetype!=A
trigger1 = P2statetype=A&&(enemynear,Vel Y=[-6,8]) && (enemynear,Pos Y=[-160,-60])
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && enemynear,hitfall=1 && var(16)>1 && P2bodydist X<140 && var(56)>100

;歩き（前）
[state -1,cutom_combo]
type = ChangeState
value = 21
triggerall = fvar(38)=1 && roundstate=2 && enemynear,Statetype!=L && var(21) && statetype!=A
trigger1 = P2statetype=A&&enemynear,Vel Y>0 && (enemynear,Pos Y=[-160,-60])
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && enemynear,hitfall=1 && var(16)>1 && (P2bodydist X=[120,160]) && var(56)>50

;========Land========
;===Anti Air===

;^^^^^^ブロッキング反撃^^^^^^
[state -1,chp]
type = changestate
value = var(24)
triggerall = fvar(38) && roundstate=2 && P2statetype!=L && statetype!=A
triggerall = (var(24)=430||var(24)=440||var(24)=450||(var(24)=[800,820]))
trigger1 = var(24) && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (stateno=52&&Time>=2))

[state -1,chp]
type = changestate
value = var(24)
triggerall = fvar(38) && roundstate=2 && P2statetype!=L && statetype=A
triggerall = var(24)=650
trigger1 = var(24) && ctrl

;===相手気絶用

;ダイレクトライトニング
[State -1,direct.diz]
type = ChangeState
value = 3000+(!var(59)&&(Power=[2000,2999]))*10+((Power>=3000 && (!var(59) || var(59)=2||var(59)=5)) ||(var(22)&&Power>=1000 && var(59)=4) || (var(22)&&var(59)=3&&(100*Life/const(data.life))<=30))*20
triggerall = fvar(38)=1 && roundstate=2 && !var(21) && (numhelper(15395)||var(48)<0); && fvar(27)>=48
triggerall = P2statetype!=L && statetype!=A && (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = (stateno=220||stateno=440) && var(3)=1 && (fvar(36)>0||var(16)>1) && movecontact
trigger1 = ((Power>=1000&&!var(59))||(Power>=3000 && (var(59)=2||var(59)=5))||(((100*Life/const(data.life))<=30||var(22))&&var(59)=3)||(Power>=1000 && var(59)=4)) && var(59)!=1

;強ローリングアタック
[state -1,rooling_z]
type = ChangeState
value = 1120
triggerall = fvar(38) && roundstate=2 && P2statetype!=L && statetype!=A && !var(21) && (numhelper(15395)||var(48)<0); && fvar(27)>=48
triggerall = (P2statetype!=A||(enemynear,Vel Y>0 && enemynear,Pos Y>-40))
trigger1 = Abs(P2bodydist X)<80 && (stateno=440) && movecontact=1 && var(3)=1 && (fvar(36)>0||var(16)>1)

;ジャンプ強キック
[state -1,jhk]
type = ChangeState
value = 650
triggerall = fvar(38) && P2statetype!=L && statetype=A && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = P2bodydist X<=ifelse(Vel X=0,55,80) && ifelse(enemynear,backedgebodydist <=5,1,P2bodydist X>-20)
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = Pos Y >-95 && Pos Y <-65 && random%5<3 && ctrl && Vel Y>1.5

;立ち強パンチ
[state -1,shp]
type = ChangeState
value = 220
triggerall = 0;fvar(38) && P2statetype!=L && statetype!=A && (numhelper(15395)||var(48)<0)
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30)) && !var(21)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X<=25 && random%5<3 && fvar(36)>0

;しゃがみ中キック
[state -1,shp]
type = ChangeState
value = 440
triggerall = fvar(38) && P2statetype!=L && statetype!=A && (numhelper(15395)||var(48)<0)
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30)) && !var(21)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X<60 && random%5<3 && fvar(36)>0

;パワーMAX発動
[State -1]
type = ChangeState
value = 2500
triggerall = fvar(38)=1 && roundstate=2 && statetype!=A && !fvar(35) && (numhelper(15395)||var(48)<0)
triggerall = Power >= ifelse(enemynear,life<=259,1000,2000) && var(59)=4 && !var(22)
triggerall = enemynear,Life>210
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = ((P2stateno=[15310,15340])||((P2stateno=[5310,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;ステップ(Step)
[State -1]
type = ChangeState
value = 102
triggerall = fvar(38)=1 && roundstate=2 && !fvar(35) && !(var(21)&&enemynear,hitfall=1) && (numhelper(15395)||var(48)<0)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X>160 && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=5300&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;バックステップ(Back Step)
[State -1]
type = ChangeState
value = 105
triggerall = fvar(38)=1 && roundstate=2 && !fvar(35) && fvar(29)<4 && !(var(21)&&enemynear,hitfall=1) && backedgebodydist>10 && !numhelper(15395)&&var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X<50 && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=5300&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;ゲージ溜め動作
[state -1]
type = ChangeState
value = 950
triggerall = fvar(38) && roundstate=2 && !(P2statetype=L && enemynear,alive) && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A && !var(22) && var(59)=3
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = ((P2stateno=[15310,15340])||((P2stateno=[5310,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;ジャンプ
[state -1]
type = ChangeState
value = 40
triggerall = fvar(38) && roundstate=2 && !(P2statetype=L && enemynear,alive) && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ((P2bodydist X=[60,80])||(P2bodydist X=[130,150])) && random%5=0
trigger1 = (P2stateno=15300||(P2stateno=5300&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;前進
[state -1]
type = ChangeState
value = 21
triggerall = fvar(38) && roundstate=2 && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ((P2bodydist X=[81,110])||P2bodydist X>150) && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=[15330,15340])||((P2stateno=[5300,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;後退
[state -1]
type = ChangeState
value = 22
triggerall = fvar(38) && roundstate=2 && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && (P2bodydist X<50) && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=[15330,15340])||((P2stateno=[5300,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;立ち
[state -1,jhp]
type = ChangeState
value = 3
triggerall = fvar(38) && P2statetype!=L && statetype!=A && (numhelper(15395)||var(48)<0)
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30)) && !var(21)
trigger1 = (ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ((P2bodydist X=[60,80])||(P2bodydist X=[130,150]))

;===ブロッキング後反撃・ガードクラッシュ後追撃用

;LV.3/MAXダイレクトライトニング
[State -1,direct.blo]
type = ChangeState
value = 3020
triggerall = fvar(38)=1 && statetype!=A && roundstate=2 && p2statetype!=L && !numhelper(15395)&&var(48)>=0
triggerall = (var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30)) && fvar(27)>=48
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2stateno=[5910,5920]) && enemynear,animtime<44 && random%5<=2 && P2bodydist X<40

;パワーMAX発動
[State -1]
type = ChangeState
value = 2500
triggerall = fvar(38)=1 && roundstate=2 && statetype!=A && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = Power >= ifelse(enemynear,life<=259,1000,2000) && var(59)=4 && !var(22)
triggerall = enemynear,Life>160
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2stateno=[5910,5920]) && enemynear,animtime<44 && P2bodydist X<80

;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = P2statetype!=A
triggerall = Power<1000 && !(var(59)=3&&(100*Life/const(data.life)<=30))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2Bodydist X =[60,88]) && ((prevstateno=[4000,4010])||fvar(32)=4)
trigger2 = (P2Bodydist X =[-15,88]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;立ち強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (enemynear,Pos Y=[-80,-40]) && P2statetype=A
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) 
trigger1 = (P2Bodydist X =[60,90]) && ((prevstateno=[4000,4010])||fvar(32)=4)
trigger2 = (P2Bodydist X =[-15,90]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = P2statetype!=A||(enemynear,Pos Y>-40 && P2statetype=A)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) 
trigger1 = (P2Bodydist X =[89,115]) && ((prevstateno=[4000,4010])||fvar(32)=4)
trigger2 = (P2Bodydist X =[89,115]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;ラン(Run)
[State -1]
type = ChangeState
value = 100
triggerall = fvar(38)=1 && roundstate=2 && statetype!=A && !var(21) && !numhelper(15395)&&var(48)>=0
triggerall = ((!fvar(37)&&(var(59)=[3,5]))||(fvar(37)&&ceil(fvar(14))%4>1))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = P2Bodydist X>=110 && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;前進
[state -1]
type = ChangeState
value = 21
triggerall = fvar(38) && roundstate=2 && !var(21) && !numhelper(15395)&&var(48)>=0
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = (P2Bodydist X =[80,110]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;===============

;~~~~~~~~~~~~~~~~
;LV.3ダイレクトライトニング
[State -1,direct]
type = ChangeState
value = 3020
triggerall = fvar(38)=1 && roundstate=2 && p2statetype!=L && statetype != A && !var(18)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30)) && fvar(27)>=48 && enemy,numproj>0
triggerall = enemynear,hitfall=0 && !(P2movetype=H&&(p2stateno=[840,845]))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || StateNo=40 || (StateNo=52 && Time>=2)) && ifelse((var(23)=[1,100])&&var(59)!=4,var(54)%3=0,var(54)%(58-(fvar(33)!=0)*40)=0) && (P2bodydist X=[-15,120])
trigger2 = movecontact && (stateno=220||stateno=440) && fvar(36)>0
trigger3 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger3 = (P2stateno=[5910,5920]) && enemynear,animtime<44 && random%5<=2 && P2bodydist X<140
trigger4 = movecontact=1 && (stateno=200||stateno=430)&&var(16)>1&&var(3)=1


;LV.2ダイレクトライトニング
[State -1,direct]
type = ChangeState
value = 3010
triggerall = fvar(38)=1 && roundstate=2 && p2statetype!=L && !var(18)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = !var(59) && Power>=2000 && fvar(27)>=48
triggerall = enemynear,hitfall=0 && !(P2movetype=H&&(p2stateno=[840,845]))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || StateNo=40 || (StateNo=52 && Time>=2)) && var(54)%(58-(fvar(33)!=0)*40)=0 && (P2bodydist X=[-15,120])
trigger2 = movecontact && (stateno=220||stateno=440) && fvar(36)>0
trigger3 = movecontact && (stateno=430||stateno=200)&&var(16)>1&&var(3)=1

;LV.1ダイレクトライトニング
[State -1,direct]
type = ChangeState
value = 3000
triggerall = fvar(38)=1 && roundstate=2 && !var(21) && !var(56) && fvar(27)>=48 && p2statetype!=L && !var(18)
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500)) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = enemynear,hitfall=0 && !(P2movetype=H&&(p2stateno=[840,845]))
trigger1 = movecontact && (stateno=220||stateno=440) && fvar(36)>0
trigger2 = movecontact=1 && (stateno=430||stateno=200)&&var(16)>1&&var(3)=1 && P2bodydist X<=80
trigger3 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || StateNo=40 || (StateNo=52 && Time>=2)) && var(54)%4-(fvar(33)!=0)=0 && (P2bodydist X=[60,120]) && var(59)=3 && (100*Life/const(data.life))<=30

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;強バーチカルローリング
[State -1,vertical_c]
type = ChangeState
value = 1320
triggerall = fvar(38)=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A && !fvar(35)
triggerall = fvar(28)>=48 && enemynear,Hitfall=0 && !((P2stateno=[840,845])&&(P2movetype=H||enemynear,hitover))
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=52 && Time>=2))
trigger1 = P2statetype=A && enemynear,Vel Y>=0 && enemynear,Pos Y<-60 && enemynear,Pos Y>-140 && (P2bodydist X=[80,160]) && enemynear,hitfall=0 && !(P2movetype=H&&(p2stateno=[840,845]))

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;弱ローリングアタック
[State -1,rolling_x]
type = ChangeState
value = 1100
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && fvar(27)>=48 && !fvar(35)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=52 && Time>=2))
trigger1 = (P2bodydist X=[100,140]) && enemynear,statetype=L && random%3=0 && enemynear,backedgebodydist>60 && var(54)%2=0 && random%3=0
trigger2 = (P2bodydist X=[140,160]) && enemynear,statetype!=L && enemynear,statetype!=A && random%25<=0 && var(54)%3=0

;中ローリングアタック
[State -1,rolling_y]
type = ChangeState
value = 1110
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && fvar(27)>=48 && !fvar(35)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=52 && Time>=2))
trigger1 = (P2bodydist X=[160,180]) && enemynear,statetype=L && random%3=0 && enemynear,backedgebodydist>60 && var(54)%3=0
trigger2 = (P2bodydist X=[220,240]) && enemynear,statetype!=L && enemynear,statetype!=A && random%35<=0

;強ローリングアタック
[State -1,rolling_z]
type = ChangeState
value = 1120
triggerall = fvar(38)=1 && roundstate=2 && p2statetype!=L && Statetype!=A && fvar(27)>=48 && P2statetype!=L && !fvar(35) && backedgebodydist>40
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=52 && Time>=2)) && var(54)<100 && random<300 && !(P2bodydist X<=140 && backedgebodydist<=40) && P2bodydist X>140
trigger2 = movecontact=1 && (stateno=430||stateno=200)&&var(16)>1&&var(3)=1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;エレクトリックサンダー・強
[State -1,electric_z]
type = ChangeState
value = 1020
triggerall = statetype!=A && fvar(38)=1 && !fvar(35) && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = ((ctrl && (prevstateno=400||prevstateno=52))||(stateno=52&&time>=2)) && random<350 && p2bodydist X<20

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;サプライズフォワード
[State -1,sfwd]
type = ChangeState
value = 1400
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=52 && Time>=2))
trigger1 = P2bodydist X<100 && P2statetype=L && random%3=0 && !(P2stateno=5120&&(enemynear,animtime=[-18,-15])) && enemynear,backedgebodydist>10 && var(54)%3=0
trigger2 = (stateno=430 || stateno=440) && var(3)=1 && (var(54)%20=[0,2]) && enemynear,backedgebodydist>20

;サプライズバック
[State -1,sback]
type = ChangeState
value = 1500
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && backedgebodydist >60
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=52 && Time>=2)) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger1 = (P2Bodydist X =[0,55]) && enemynear,Vel X=0 && (enemynear,Pos Y>-80 && enemynear,Pos Y<-55) && enemynear,Vel Y>0 && var(54)%4=0
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = (P2Bodydist X =[0,90]) && enemynear,Vel X>0 && (enemynear,Pos Y>-80 && enemynear,Pos Y<-55) && enemynear,Vel Y>0 && var(54)%4=0
trigger3 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger3 = fvar(33) && random%5=0 && var(54)%6=0 && P2bodydist X<60
trigger4 = (stateno=430 || stateno=440) && var(3)=1 && (var(54)%20=[3+(P2bodydist X<=20),5])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~
;~~~Chain Combo~~~
;チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = 450
triggerall = fvar(38) && !(var(21)&&var(16)>1)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = stateno=440 && var(16)>2 && P2bodydist X<60
trigger2 = (stateno=200||stateno=400||stateno=430) && var(16)>1 && (P2bodydist X=[45,60])

;チェーンコンボ(中K)
[State -1, Chain]
type = ChangeState
value = 440
triggerall = fvar(38) && !(var(21)&&var(16)>1)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = (stateno=200||stateno=400||stateno=430) && var(16)>1 && P2bodydist X<45

;空中チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = 650
triggerall = fvar(38) && !(var(21)&&var(16)>1)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = movecontact=1
trigger1 = (stateno=[620,625]) && var(54)%5<2 && P2bodydist X<50

[State -1]
;回り込み
type = ChangeState
value = 900
triggerall = fvar(38) && roundstate=2 && !(var(21) && enemy,hitfall=1)
triggerall = (!fvar(37)&&(var(59)<=1 || var(59)=4))||(fvar(37) && ceil(fvar(14))%32>15) && (fvar(29)=[-2,0])
triggerall = statetype != A && (ctrl||StateNo=3||StateNo=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=100&&animelemtime(2)>=0)||stateno=101)
trigger1 = var(54)<=400 && enemy,numproj>0 && P2BodyDist X>160 && ((enemynear,movetype=A && Enemynear,Time>((P2BodyDist X)/10+2))||enemynear,movetype!=A) && inguarddist && enemynear,Statetype!=L
trigger2 = (random < ifelse(P2bodydist X>170,1,ifelse(fvar(33),6,ifelse(var(55)>20,1,3)))) && P2BodyDist X>=120 && !(P2Statetype=L&&enemynear,alive)
trigger3 = enemynear,statetype=A && enemynear,Vel Y>=0 && random<300 && Abs(P2bodydist X)<40 && var(54)<ifelse(backedgebodydist <20,700,150) && enemynear,backedgebodydist >100 && !(P2Statetype=L&&enemynear,alive) && P2movetype!=H
trigger4 = P2movetype!=A&&inguarddist&&enemynear,numhelper&&P2bodydist X>180&&var(54)<=350
trigger5 = (P2bodydist X=[80,120]) && ((enemynear,Statetype=L && (p2stateno=5100||p2stateno=5071))||enemynear,hitfall=1 && enemynear,statetype!=L && enemynear,Pos Y>-20)
trigger5 = var(54)%2=0 && (enemynear,backedgebodydist<=2||enemynear,backedgebodydist>30)

;避け
[State -1]
type = ChangeState
value = 910
triggerall = fvar(38) && roundstate=2 && !(P2Statetype=L&&enemynear,alive&&P2bodydist X>90) && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = ((!fvar(37)&&var(59)=3)||(fvar(37) && ceil(fvar(14))%64>31)) && !fvar(31) && !numproj && (fvar(29)=[-2,0])
triggerall = statetype != A && (ctrl||StateNo=3||StateNo=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=100&&animelemtime(2)>=0)||stateno=101)
trigger1 = P2BodyDist X>=100 && (enemynear,Pos Y>-40 && enemynear,Vel Y<=0) && var(54)%7>ifelse(floor(var(55)/10)>0,5,4) && ifelse(P2bodydist X>170,var(54)<=500,1)
trigger2 = var(54)<=400 && enemy,numproj>0 && P2BodyDist X>160 && ((enemynear,movetype=A && Enemynear,Time>((P2BodyDist X)/10+2))||enemynear,movetype!=A) && inguarddist
trigger3 = ((stateno=100&&time>3)||stateno=101||enemynear,animtime<-24)&&P2movetype=A&&enemynear,time>22
trigger4 = P2movetype!=A&&inguarddist&&enemynear,numhelper&&P2bodydist X>180&&var(54)<=350

;Pカウンター攻撃
[State -1]
type = ChangeState
value = 920
triggerall = fvar(38)=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = StateNo=910 && (Time=[15,25]) && Abs((P2BodyDist X) = [0,50]) && random <30

;Kカウンター攻撃
[State -1]
type = ChangeState
value = 930
triggerall = fvar(38)=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = StateNo=910 && (Time=[15,25]) && Abs((P2BodyDist X) = [40,70]) && (random =[31,46])

;ガードキャンセル移動（前）
[State -1]
type = ChangeState
value = 2100
triggerall = fvar(38)=1 && (roundstate=2 || (RoundState=3 && Win))
triggerall = ((Power >= 1000 && (!var(59)||var(59)=3||(var(59)=4&&!(Power<2000&&var(22)))))||(Power>=1500&&var(59)=1)||(var(59)=3 && var(22))||(Power>=3000&&(var(59)=2||var(59)=5))) && var(31)>=0
triggerall = (!fvar(37)&&var(59)=4)||(fvar(37)&&ceil(fvar(14))%512>255)
triggerall = StateNo=150 || StateNo=152
trigger1 = random<9 && P2BodyDist X < 120 && var(31)>=0 && gethitvar(ctrltime)>=17 && backedgebodydist <40 && var(59)!=1
trigger2 = life<28 && gethitvar(ctrltime)>=17 && backedgebodydist <40 && (P2stateno=[1000,3999]) && P2bodydist X<40 && (prevstateno=[150,153]) && random%12=0

;ガードキャンセル攻撃
[State -1]
type = ChangeState
value = 2000
triggerall = fvar(38)=1 && roundstate=2
triggerall = ((Power >= 1000 && (!var(59)||var(59)=3||(var(59)=4&&!(Power<2000&&var(22)))))||(Power>=1500&&var(59)=1)||(var(59)=3 && var(22))||(Power>=3000&&(var(59)=2||var(59)=5))) && var(31)>=0
triggerall = (!fvar(37)&&(!var(59)||var(59)=1||var(59)=3||var(59)=4))||(fvar(37)&&ceil(fvar(14))%256>127)
trigger1 = (StateNo=150||StateNo=152) && (((prevstateno=[150,155])&&((P2stateno=[1000,4999])||Gethitvar(damage)))||backedgebodydist<=0||var(31)<10) && (Abs(life-enemy,life)<=300||Life>500)
trigger1 = random <ifelse(Life<22,80,15) && P2bodydist X<70 && var(59)!=1
trigger2 = life<28 && (P2stateno=[1000,3999]) && P2bodydist X<50 && (prevstateno=[150,153]) && random%12=0

;ゲージ溜め動作(Power Charge)
[State -1]
type = ChangeState
value = 950
triggerall = fvar(38)=1 && roundstate=2 && statetype!=A && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = !var(22) && var(59)=3 && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 =  (P2Statetype=L && enemynear,alive && var(54)<ifelse((100*Life/const(data.life))<30,850+(power>850)*150,650+(power>850)*150) && (P2BodyDist X >100||(P2stateno=[5100,5101])))||(enemynear,hitfall&&enemynear,canrecover)
trigger2 = (P2statetype!=A || (P2statetype=A && enemynear,Pos Y>-40 && enemynear,Vel Y<=0))
trigger2 = P2BodyDist X>=120 && ifelse(power>750,var(54)%11<3,ifelse(fvar(34),var(54)%8<1,var(54)%12<2))

;パワーMAX発動
[State -1]
type = ChangeState
value = 2500
triggerall = fvar(38)=1 && roundstate=2 && statetype!=A && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = Power >= 2000 && var(59)=4 && !var(22)
triggerall = (100*enemy,Life/enemy,const(data.life))>30 && (100*Life/const(data.life))>30
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = abs(enemynear,Pos X - Pos X) >= 140 && Random <= ifelse(Power>=3000,40,6)
trigger2 = !(P2stateno=5120&&enemynear,animtime>-17) && p2statetype=L && Random <= ifelse(Power>=3000,400,50)
trigger3 = P2bodydist X<140 && (P2stateno=[5910,5920]) && enemynear,animtime<22 && random%5<=2 && fvar(27)>=40

;時間差起き上がり
[state -3,varset]
type = varSet
triggerall = fvar(38)=1
triggerall = stateno=5110 && var(2)=1
triggerall = !numhelper(15395) && var(48)>=0
triggerall = ((!fvar(37)&&(!var(59)||var(59)=2 || var(59)=3)) || (fvar(37) && ceil(fvar(14))%32768>16383))
trigger1 = random%3=1 && Abs(P2bodydist X)<=50 && var(54)%3=0
var(1)=1

;ダウン回避
[state -3,varset]
type = ChangeState
value = 5200
triggerall = fvar(38) && roundstate=2 && !fvar(35)
triggerall = ((!fvar(37)&&(var(59)=1||var(59)=4 || var(59)=5)) || (fvar(37) && ceil(fvar(14))%65536>32767))
triggerall = (stateno=5100||(stateno=5110&&(prevstateno!=[5100,5101])))&&!fvar(11) && time<=4 && alive
trigger1 = random%3=1 && Abs(P2bodydist X)>=100 && var(54)%5=0

;ラン(Run)
[State -1]
type = ChangeState
value = 100
triggerall = fvar(38)=1 && roundstate=2 && !fvar(35) && !(var(21)&&var(16)>1)
triggerall = ((!fvar(37)&&(var(59)=[3,5]))||(fvar(37)&&ceil(fvar(14))%4>1))
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = statetype!=A && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ifelse(P2statetype=L&&P2stateno!=5120,var(54)%3=0,var(54)%6=4) && P2BodyDist X>=ifelse(P2statetype=L&&P2stateno!=5120,120,80)

;ステップ(Dash)
[State -1]
type = ChangeState
value = 102
triggerall = fvar(38)=1 && roundstate=2 && !fvar(35) && !(var(21)&&var(16)>1)
triggerall = ((!fvar(37)&&(var(59)=[0,2]))||(fvar(37)&&ceil(fvar(14))%2>0))
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = statetype!=A && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ifelse(P2statetype=L&&P2stateno!=5120,var(54)%3=0,var(54)%8=5) && (P2BodyDist X=[90,120])

;バックステップ(Back Dash)
[State -1]
type = ChangeState
value = 105
triggerall = fvar(38)=1 && roundstate=2 && !(fvar(37)&&!fvar(16)) && !(var(21)&&var(16)>1)
triggerall = !fvar(37)||(fvar(37)&&(ceil(fvar(14))%2>0||ceil(fvar(14))%4>1))
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = statetype!=A && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && backedgebodydist>40 && var(54)%8=3 && (P2BodyDist X=[80,120])

;---------------------------------------------------------------------
;K通常投げ
[State -1]
type = ChangeState
value = 820-(P2statetype=A||P2movetype=H)*570
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A&& p2statetype!=L && !fvar(35) && var(56)<200
triggerall = (P2statetype!=A || (enemynear,Pos Y > -30 && enemynear,Vel Y < 0))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = P2BodyDist X <=22 && enemynear,movetype!=H && (var(54)<150||(enemynear,movetype=I && P2statetype=S && (enemynear,time=[18,22]))||((prevstateno=140 || prevstateno=1150) && time>2&&random%6>3))
trigger1 = (!fvar(33) || (fvar(33)=1&&fvar(30)>2) || (fvar(33)=4&&fvar(30)>6))

;P通常投げ
[State -1]
type = ChangeState
value = 800-(P2statetype=A||P2movetype=H)*580
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && p2statetype!=L && !fvar(35) && var(56)<200
triggerall = (P2statetype!=A || (enemynear,Pos Y > -30 && enemynear,Vel Y < 0))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = (P2BodyDist X <=22 && enemynear,movetype!=H) && (var(54)<250||(enemynear,movetype=I && P2statetype=S && (enemynear,time=[18,22]))||((prevstateno=140 || prevstateno=1150)&&random%6<=2))
trigger1 = (!fvar(33) || (fvar(33)=1&&fvar(30)>2) || (fvar(33)=4&&fvar(30)>6))

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

;---対空---
;立ち強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && (enemynear,Pos Y>-80 && enemynear,Pos Y<-60) && P2statetype!=L && enemynear,Vel Y>=0 && var(54)%3=0 && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall =enemynear,hitfall=0 && !(P2movetype=H&&(p2stateno=[840,845]))
trigger1 = (P2Bodydist X =[0,52]) && enemynear,Vel X=0
trigger2 = (P2Bodydist X =[15,90]) && enemynear,Vel X>0

;立ち強キック
[State -1]
type = ChangeState
value = 250
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype=A && (enemynear,Pos Y>-65 && enemynear,Pos Y<-55) && P2statetype!=L && enemynear,Vel Y>=0 && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
triggerall =enemynear,hitfall=0 && !(P2movetype=H&&(p2stateno=[840,845]))
trigger1 = (P2Bodydist X =[21,58]) && enemynear,Vel X=0
trigger2 = (P2Bodydist X =[35,70]) && enemynear,Vel X>0
;-----

;---連続技---
;立ち強パンチ
[State -1,shp]
type = ChangeState
value = 220
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500)) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[0,80]) && fvar(36)>7
;------

;\\\\牽制・連携（近距離）\\\
;立ち弱パンチ
[State -1,slp]
type = ChangeState
value = 200
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2bodydist X=[41,56]) && var(54)%6=3 && random%8=0 && fvar(33) && Power<1000
trigger1 = !((PrevStateNo=430||stateno=430) && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && P2BodyDist X<=60 && fvar(29)>=4)
trigger2 = (PrevStateNo=440||stateno=440) && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && P2BodyDist X<=45 && fvar(29)>=4

;しゃがみ弱キック
[State -1,clk]
type = ChangeState
value = 430
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = (P2Bodydist X =[-10,50]) && var(54)%2=0 && random%3=0
trigger2 = (PrevStateNo=430||stateno=430) && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && P2BodyDist X<=60 && fvar(29)>=4

;\\\\牽制（中距離）\\\
;アマゾンリバーラン
[State -1,3hp]
type = ChangeState
value = 710
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2BodyDist X =[120,142])
trigger1 = ((var(54)%15<5 && ifelse(fvar(33)>1,random%4=1,random%12=0))||(stateno=21&&random%5<=0&&var(54)%9<5))

;立ち中パンチ
[State -1,smp]
type = ChangeState
value = 210
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2bodydist X=[67,95]) && var(54)%7=1 && random%9=0 && enemynear,const(size.head.pos.y)<=-80

;しゃがみ強パンチ
[State -1,chp]
type = ChangeState
value = 420
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[75,112])
trigger1 = ((var(54)%11<4 && ifelse(fvar(33)>1,random%3=1,random%9=0))||(stateno=21&&random%3<=0&&var(54)%7<5))
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[0,42]) && fvar(32)>4;(4+(P2Bodydist X >=42)*4)

;しゃがみ中キック
[State -1,cmk]
type = ChangeState
value = 440
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35)
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[0,50]) && fvar(36)
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[31,75]) && var(54)%3=0 && random%4=0
trigger3 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[43,75]) && (fvar(32)=(5,6])

;しゃがみ強キック
[State -1,chk]
type = ChangeState
value = 450
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[70,88])
trigger1 = ((var(54)%9<4 && ifelse(fvar(33)>1,random%5=1,random%8=0))||(stateno=21&&random%4<=0&&var(54)%7<4))
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && (P2Bodydist X =[43,88]) && fvar(32)>6

;\\\飛び込み・空対空\\\\
;ジャンプ強パンチ
[State -1,jhp]
type = ChangeState
value = 620+(Vel X!=0)*5
triggerall = fvar(38)=1 && roundstate = 2 && Statetype=A && !fvar(35) && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = Ctrl && enemynear,statetype=A && (P2Bodydist X=[0,74]) && enemynear,Pos Y < -60 && enemynear,Pos Y > -120 && enemynear,vel Y>0 && Vel Y<0
trigger2 = Ctrl && Vel X>0 && (P2Bodydist X=[10,90]) && Vel Y > 1 &&enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A) && fvar(32)>3

;ジャンプ中パンチ
[State -1,jmp]
type = ChangeState
value = 610
triggerall = fvar(38)=1 && roundstate = 2 && Statetype=A && !fvar(35) && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = Ctrl && enemynear,statetype=A && (P2Bodydist X=[0,74]) && enemynear,Pos Y < -60 && enemynear,Pos Y > -120

;ジャンプ中キック
[State -1,jmk]
type = ChangeState
value = 640
triggerall = fvar(38)=1 && roundstate = 2 && Statetype=A && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = Ctrl && Vel X>0 && (P2Bodydist X=[-25,5]) && Vel Y > 0

;ジャンプ強キック
[State -1,jhk]
type = ChangeState
value = 650
triggerall = fvar(38)=1 && roundstate = 2 && Statetype=A && !(var(21)&&var(16)>1)
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = Ctrl && Vel X=0 && (P2Bodydist X=[10,75]) && Vel Y > 1
trigger2 = Ctrl && Vel X>0 && (P2Bodydist X=[10,90]) && Vel Y > 1 && (var(54)%2!=0||((var(59) = 2 || var(59) = 3 || var(59) = 4 || var(59) = 5)&&!fvar(37))||(fvar(37) && ceil(fvar(14))%4096>2047))
;
;\\\\\\\\\\\\\
;-----基本行動-----
[State -1]
;ガード
type = ChangeState
value = 131
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && StateType!=A &&!var(21) && !(((var(36)=[1,12]) && var(34)=2)||((var(37)=[1,12]) && var(35)=2))
triggerall = P2statetype!=A||(P2statetype=A && enemynear,Vel Y<0 && enemynear,Pos Y>=-40)
triggerall = (P2Movetype = A||inguarddist||(fvar(33)=1&&fvar(30)<3))
triggerall = ((ctrl && fvar(33) && random<900) || StateNo=13 || stateno=22)
trigger1 = Abs(P2BodyDist X) <=120
trigger1 = (fvar(32)!=2 || fvar(33)=1) && ifelse(P2bodydist X<40&&fvar(33)&&var(54)%8=0,random%3=0,1)
trigger2 = Abs(P2BodyDist X) >120
trigger3 = (var(54) = [220-(var(59)=2)*220,870]) && (P2BodyDist X >160||(Abs(P2bodydist Y)>60&&enemynear,time>24))
trigger3 = (enemy,numproj>0||(enemy,numhelper&&(enemynear,hitdefattr!=SCA,AA,AT,AP))) && ((enemynear,movetype=A && Enemynear,Time>20) || enemynear,movetype!=A) && random%7<5
trigger3 = !(var(59)=2&&enemy,numproj&&random%20!=0)

;ガード
[State -1]
type = ChangeState
value = Ifelse(StateType=A,132,130)
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && !(((var(36)=[1,12]) && var(34)=2)||((var(37)=[1,12]) && var(35)=2)) &&!var(21)
triggerall = !(!fvar(37)&&Var(59)&&statetype=A)&&!(fvar(37)&&ceil(fvar(14))%2048<1024&&statetype=A)
triggerall = ifelse(enemynear,P2dist X<0&&random<ifelse(fvar(33)=1,750,500),P2movetype=A&&(enemynear,P2dist X=[-(120-const(size.ground.back)),0]),inguarddist)
triggerall = !(P2statetype=A && enemynear,Vel Y<0 && enemynear,Pos Y>=-40)
triggerall = (P2Movetype = A||inguarddist||(fvar(33)=1&&fvar(30)<3))
triggerall = (ctrl||StateNo=3||(P2statetype=A&&(StateNo=13||stateno=21))||StateNo=22)
trigger1 = P2BodyDist X <=120 && (fvar(32)!=2 || fvar(33)=1)
trigger2 = P2BodyDist X >120
trigger3 = (var(54) = [200-(var(59)=2)*200,870]) && (P2BodyDist X >160||(Abs(P2bodydist Y)>60&&enemynear,time>24))
trigger3 = (enemy,numproj>0||(enemy,numhelper&&(enemynear,hitdefattr!=SCA,AA,AT,AP))) && ((enemynear,movetype=A && Enemynear,Time>20) || enemynear,movetype!=A) && random%7<5
trigger3 = !(var(59)=2&&enemy,numproj&&random%20!=0)

[State -1]
;ジャンプ
type = ChangeState
value = 40
triggerall = fvar(38)=1 && !fvar(35)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && StateType != A  && roundstate = 2
triggerall = !numhelper(15395) && var(48)>=0
triggerall = !enemynear,hitfall
trigger1 = enemy,numproj > 0 && (random =[990,1000]) && enemynear,MoveType != H
trigger1 = P2BodyDist X > 120
trigger2 = (p2stateno = 5110||(P2stateno=5120&&animtime<-14)) && random < 250 && P2BodyDist X <= 80 && ifelse(enemynear,backedgebodydist >20&&(P2bodydist X=[40,60]),var(54)%8<3,var(54)%3=0)
trigger3 = P2BodyDist X < 120 && var(54)>ifelse(P2bodydist X>90,965,950)
trigger4 = (P2BodyDist X = [120,160]) && var(54)>975 && enemy,numproj = 0
trigger5 = P2BodyDist X > 160 && BackEdgeBodyDist < 40 && var(54)>970 && enemy,numproj = 0
trigger6 = (P2bodydist X=[40,120]) && ((!fvar(37)&&(var(59)=[2,5]))||(fvar(37) && ceil(fvar(14))%4096>2047)) && var(54)%9<ifelse(P2movetype=H,3,2) && (!fvar(33)||var(54)<=750||P2movetype=H)
trigger6 = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<=0&&Pos Y>-40)
trigger7 = enemynear,Vel X >0 && P2BodyDist X <100 && enemynear,Pos Y <-60 && random<(ifelse(P2BodyDist X <60,350,250))
trigger7 = enemynear,Vel Y>=0 && enemynear,Vel Y<=1.0 && var(54)%3=0

[State -1]
;歩き（前）
type = ChangeState
value = 21
triggerall = fvar(38)=1 && roundstate=2 && !fvar(35)
triggerall = enemynear,numproj=0
triggerall = StateType != A
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = var(54)<ifelse(P2statetype=L,800,ifelse(P2bodydist X>ifelse(fvar(34),fvar(34)+60,140),380,220)) && (ctrl || StateNo=3 || StateNo=13)
trigger1 = ((!(P2Statetype=L&&enemynear,alive) && P2BodyDist X >70) || (p2Statetype=L && P2BodyDist X <= 60))
trigger2 = P2BodyDist X <40 && (stateNo=52 || (prevstateno=[200,440])) && ctrl && var(54)>750

[State -1]
;歩き（後）
type = ChangeState
value = 22
triggerall = fvar(38)=1 && roundstate=2
triggerall = !numhelper(15395) && var(48)>=0
triggerall = StateType != A
triggerall = (ctrl || StateNo=3 || StateNo=13 || stateNo=21)
trigger1 = ((fvar(27)=[35,50]) || (var(54)=[500,ifelse(P2Bodydist X>100,620,680)]))
trigger1 = ((!(P2Statetype=L&&enemynear,alive) && (P2BodyDist X = [60,80])) || (p2Statetype=L && P2BodyDist X < 80))
trigger2 = enemynear,statetype=A && enemynear,Pos Y<-60 && P2BodyDist X<70 && !enemynear,hitfall
trigger3 = ((P2Statetype=L&&enemynear,alive)||(enemynear,Pos Y>-60 && enemynear,hitfall)) && P2BodyDist X <=60

[State -1]
;しゃがみ
type = ChangeState
value = 13
triggerall = fvar(38) && roundstate=2 && StateType != A
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = (ctrl || stateNo=3) && P2BodyDist X>=60 && !var(21)
trigger2 = random < 300 && P2StateNo=5120 && ctrl
trigger3 = var(54)<500 && (prevStateNo=[400,450]) && ctrl
trigger4 = P2BodyDist X<60 && ctrl
trigger5 = P2bodydist X<=20 && stateno=21 && random%5<2
;------------------------------------



;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;Player
;…～……～……～……～……～……～……～

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;グランドシェイブローリングLV.1
[State -1,ground]
type = ChangeState
value = 3200
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && !var(21) && !var(56) && fvar(27)>=48 && Statetype!=A
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500)) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
triggerall = (!var(59) && (command="ground_a" || (Power <2000 && (command="ground_b" || command="ground_c")))) || ((var(59)=1||var(59)=3||var(59)=4) && (command="ground_a" || command="ground_b" || command="ground_c"))||var(24)=3200
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;グランドシェイブローリングLV.1(オリコン時)
[State -1,ground]
type = ChangeState
value = 3200
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && var(21) && Statetype!=A
triggerall = var(59)=1&&(var(56)&&(command="ground_a_2"||command="ground_b_2"||command="ground_c_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;グランドシェイブローリングLV.2
[State -1,ground]
type = ChangeState
value = 3210
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = !var(59) && Power>=2000 && fvar(27)>=48
triggerall = command="ground_b" || (Power <3000 && command="ground_c")||var(24)=3210
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;グランドシェイブローリングLV.3
[State -1,ground]
type = ChangeState
value = 3220
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && fvar(27)>=48 && Statetype!=A
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (var(59) && (command="ground_a" || command="ground_b" || command="ground_c")) || (!var(59) && command="ground_c")||var(24)=3220
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5]) && Statetype!=A

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;シャウトオブアースLV.1
[State -1,shout]
type = ChangeState
value = 3100
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && !var(21) && !var(56) && fvar(27)>=48 && Statetype!=A
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500)) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
triggerall = (!var(59) && (command="shout_x" || (Power <2000 && (command="shout_y" || command="shout_z")))) || ((var(59)=1||var(59)=3||var(59)=4) && (command="shout_x" || command="shout_y" || command="shout_z"))||var(24)=3100
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5]) && Statetype!=A

;シャウトオブアースLV.1(オリコン時)
[State -1,shout]
type = ChangeState
value = 3100
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && var(21) && Statetype!=A
triggerall = var(59)=1&&(var(56)&&(command="shout_x_2"||command="shout_y_2"||command="shout_z_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5]) && Statetype!=A

;シャウトオブアースLV.2
[State -1,shout]
type = ChangeState
value = 3110
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = !var(59) && Power>=2000 && fvar(27)>=48
triggerall = command="shout_y" || (Power <3000 && command="shout_z")||var(24)=3110
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

シャウトオブアースLV.3
[State -1,shout]
type = ChangeState
value = 3120
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && fvar(27)>=48 && Statetype!=A
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (var(59) && (command="shout_x" || command="shout_y" || command="shout_z")) || (!var(59) && command="shout_z")||var(24)=3120
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ダイレクトライトニングLV.1
[State -1,direct]
type = ChangeState
value = 3000
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && !var(21) && !var(56) && fvar(27)>=48 && Statetype!=A
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500)) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
triggerall = (!var(59) && (command="direct_x" || (Power <2000 && (command="direct_y" || command="direct_z")))) || ((var(59)=1||var(59)=3||var(59)=4) && (command="direct_x" || command="direct_y" || command="direct_z"))||var(24)=3000
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;ダイレクトライトニングLV.1(オリコン時)
[State -1,direct]
type = ChangeState
value = 3000
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && var(21) && Statetype!=A
triggerall = var(59)=1&&(var(56)&&(command="direct_x_2"||command="direct_y_2"||command="direct_z_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;ダイレクトライトニングLV.2
[State -1,direct]
type = ChangeState
value = 3010
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = !var(59) && Power>=2000 && fvar(27)>=48
triggerall = command="direct_y" || (Power <3000 && command="direct_z")||var(24)=3010
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;ダイレクトライトニングLV.3
[State -1,direct]
type = ChangeState
value = 3020
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && fvar(27)>=48 && Statetype!=A
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22))||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (var(59) && (command="direct_x" || command="direct_y" || command="direct_z")) || (!var(59) && command="direct_z")||var(24)=3020
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,5])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;バーチカルローリング・弱
[State -1,vertical_a]
type = ChangeState
value = 1300
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1300 || command="vertical_a")) || (var(21)>0 && command="vertical_a_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;バーチカルローリング・中
[State -1,vertical_b]
type = ChangeState
value = 1310
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1310 || command="vertical_b")) || (var(21)>0 && command="vertical_b_2")); && fvar(28)>=48
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;バーチカルローリング・強
[State -1,vertical_c]
type = ChangeState
value = 1320
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1320 || command="vertical_c")) || (var(21)>0 && command="vertical_c_2")); && fvar(28)>=48
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;バックステップローリング・弱
[State -1,back_rolling_a]
type = ChangeState
value = 1200
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1200 || command="back_rolling_a") && fvar(27)>=48) || (var(21)>0 && command="back_rolling_a_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;バックステップローリング・中
[State -1,back_rolling_b]
type = ChangeState
value = 1210
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1210 || command="back_rolling_b") && fvar(27)>=48) || (var(21)>0 && command="back_rolling_b_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;バックステップローリング・強
[State -1,back_rolling_c]
type = ChangeState
value = 1220
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1220 || command="back_rolling_c") && fvar(27)>=48) || (var(21)>0 && command="back_rolling_c_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ローリングアタック・弱
[State -1,rolling_x]
type = ChangeState
value = 1100
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1100 || command="rolling_x") && fvar(27)>=48) || (var(21)>0 && command="rolling_x_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;ローリングアタック・中
[State -1,rolling_y]
type = ChangeState
value = 1110
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1110 || command="rolling_y") && fvar(27)>=48) || (var(21)>0 && command="rolling_y_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;ローリングアタック・強
[State -1,rolling_z]
type = ChangeState
value = 1120
triggerall = fvar(38)!=1 && (roundstate=2 || (RoundState=3 && Win)) && Statetype!=A
triggerall = (((var(24)=1120 || command="rolling_z") && fvar(27)>=48) || (var(21)>0 && command="rolling_z_2"))
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)

;サプライズバック
[State -1]
type = ChangeState
value = 1500
triggerall = fvar(38)!=1 && roundstate=2 && Statetype!=A && (command="ab" || command="bc" || command="ac" || var(24)=1500) && command="holdback" && Statetype!=A
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || (var(3)=[3,6]))

;サプライズフォワード
[State -1]
type = ChangeState
value = 1400
triggerall = fvar(38)!=1 && roundstate=2 && Statetype!=A && (command="ab" || command="bc" || command="ac" || var(24)=1400) && command!="holdback" && Statetype!=A
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || (var(3)=[3,6]))
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;エレクトリックサンダー
[State -1,hyakkuretu]
type = varadd
trigger1 = var(45)>0
var(44) = 1
ignorehitpause=1

[State -1,hyakkuretu]
type = varset
triggerall = (command="x" || command="y" || command="z")&&!fvar(38)
trigger1 =  var(45)= 4 && var(44)>1 && (StateNo!=[1000,1020])
trigger2 = Anim=1000 && AnimElemTime(3)>=0; && AnimElemTime(7)<0
trigger3 = Anim=1010 && AnimElemTime(4)>=0; && AnimElemTime(8)<0
trigger4 = Anim=1020 && AnimElemTime(5)>=0; && AnimElemTime(9)<0
var(45) = ifelse(command="x",5,ifelse(command="y",6,7))

[State -1,hyakkuretu]
type = varadd
triggerall = (command="x" || command="y" || command="z") && (StateNo!=[1000,1020])
trigger1 = var(45)= 3 && var(44)>1
var(45) = 1

[State -1,hyakkuretu]
type = varadd
triggerall = (command="x" || command="y" || command="z") && (StateNo!=[1000,1020])
trigger1 = var(45)= 2 && var(44)>1
var(45) = 1

[State -1,hyakkuretu]
type = varadd
triggerall = (command="x" || command="y" || command="z") && (StateNo!=[1000,1020])
trigger1 = var(45)= 1 && var(44)>1
var(45) = 1

[State -1,hyakkuretu]
type = varadd
triggerall = (command="x" || command="y" || command="z") && (StateNo!=[1000,1020])
trigger1 = var(45)= 0
var(45) = 1

[State -1,hyakkuretu]
type = varset
trigger1 = var(45)=0 || (command="x" || command="y" || command="z")
var(44) = 0

[State -1,hyakkuretu]
type = varset
trigger1 = var(44)>12 && var(45)<=4
trigger2 = var(45)>=5 && (var(44)>12 || ((stateno=[1000,1020])&&(prevstateno!=[1000,1020])&&time=1))
trigger3 = var(44)>12 && var(45)<=3
trigger4 = var(44)>12 && var(45)<=2
trigger5 = var(44)>ifelse(stateno=1000,11,ifelse(stateno=1010,9,7)) && (stateno=[1000,1020]) && var(45)>=5
trigger5 = ifelse(stateno=1000,AnimElemTime(3)>=0,ifelse(stateno=1010,AnimElemTime(4)>=0,AnimElemTime(5)>=0))
trigger6 = var(44)>12 && var(45)<=1
var(45) = 0

[State -1,electric]
type = ChangeState
value = 1000+ifelse(var(45)=6,10,ifelse(var(45)=7,20,0))
triggerall = (command="x" || command="y" || command="z") && fvar(38)!=1 && var(45)>=5 && statetype!=A
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || var(3)=3 || var(3)=4 || var(3)=5)
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;----+----+----+----+----+----+----+----+----+----+----+----+----+----+
;回り込み(Rolling)
[State -1]
type = ChangeState
value = 900
triggerall = fvar(38)!=1 && (var(24)=900 || command="ax") && Statetype!=A
triggerall = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101 || (var(3)=4 && Statetype!=A) || (Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])))
trigger1 = !fvar(37) && (!var(59)||var(59)=1||var(59)=4)
trigger2 = fvar(37) && ceil(fvar(14))%32>15

;避け(Dodge)
[State -1]
type = ChangeState
value = 910
triggerall = fvar(38)!=1 && (var(24)=900 || command="ax") && !fvar(31) && statetype!=A
triggerall = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101 || (var(3)=4 && Statetype!=A) || (Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])))
trigger1 = !fvar(37) && var(59)=3
trigger2 = fvar(37) && ceil(fvar(14))%64>31

;Pカウンター攻撃(Counter Attack Punch)
[State -1]
type = ChangeState
value = 920
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && Statetype!=A && (command="x" || command="y" || command="z")
trigger1 = StateNo=910 && (Time=[15,25])

Kカウンター攻撃(Counter Attack Kick)
[State -1]
type = ChangeState
value = 930
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && Statetype!=A && (command="a" || command="b" || command="c")
trigger1 = StateNo=910 && (Time=[15,25])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ガードキャンセル攻撃(Counter Attack)
[State -1]
type = ChangeState
value = 2000
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && command="by" && command="holdfwd" && command!="holddown"
triggerall = ((Power >= 1000 && (!var(59)||var(59)=4))||(Power>=1500&&var(59)=1)||(Power>=3000&&(var(59)=2||var(59)=5))||(var(59)=3 && var(22))) && var(31)>=0
triggerall = (StateNo=150||StateNo=152)
trigger1 = !fvar(37)&&(!var(59)||var(59)=1||var(59)=3||var(59)=4)
trigger2 = fvar(37)&&ceil(fvar(14))%256>127

;ガードキャンセル移動（前）(Counter Movement)
[State -1]
type = ChangeState
value = 2100
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && command="ax" && command="holdfwd" && command!="holddown"
triggerall = ((Power >= 1000 && (!var(59)||var(59)=4))||(Power>=1500&&var(59)=1)||(Power>=3000&&(var(59)=2||var(59)=5))||(var(59)=3 && var(22))) && var(31)>=0
triggerall = (StateNo=150||StateNo=152)
trigger1 = !fvar(37)&&var(59)=4
trigger2 = fvar(37)&&ceil(fvar(14))%512>255

;ガードキャンセル移動（後）(Counter Movement)
[State -1]
type = ChangeState
value = 2200
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && command="ax" && command="holdback" && command!="holddown"
triggerall = ((Power >= 1000 && (!var(59)||var(59)=4))||(Power>=1500&&var(59)=1)||(Power>=3000&&(var(59)=2||var(59)=5))||(var(59)=3 && var(22))) && var(31)>=0
triggerall = (StateNo=150||StateNo=152)
trigger1 = !fvar(37)&&var(59)=4
trigger2 = fvar(37)&&ceil(fvar(14))%512>255

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ゲージ溜め動作(Power Charge)
[State -1]
type = ChangeState
value = 950
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && (command="cz"||var(24)=2400) && statetype!=A
triggerall = !var(22) && var(59)=3
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;オリコン発動（地上）(Custom Combo Ground)
[State -1]
type = ChangeState
value = 2400
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && (command="cz"||var(24)=2400)
triggerall = Power >= 3000 && var(59)=1 && statetype!=A
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;オリコン発動（空中）(Custom Combo air)
[State -1]
type = ChangeState
value = 2450
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && (command="cz"||var(24)=2400)
triggerall = Power >= 3000 && var(59)=1 && Statetype=A
trigger1 = Ctrl
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;パワーMAX発動(Power MAX ON)
[State -1]
type = ChangeState
value = 2500
triggerall = fvar(38)!=1 && (roundstate=[2,3]) && (command="cz"||var(24)=2400) && statetype!=A
triggerall = Power >= 1000 && var(59)=4 && !var(22)
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;時間差起き上がり(Tactical Recovery)
[state -3,varset]
type = varSet
triggerall = !fvar(38) && (roundstate=2 || (RoundState=3 && Win))
triggerall = stateno=5110 && var(2)=1
triggerall = (command="hold_x"&&command="hold_y")||(command="hold_y"&&command="hold_z")||(command="hold_x"&&command="hold_z")
trigger1 = !fvar(37) && (!var(59)||var(59)=2||var(59)=3)
trigger2 = fvar(37) && ceil(fvar(14))%32768>16383
var(1)=1

;ダウン回避(Safe Fall)
[State -1]
type = ChangeState
value = 5200
triggerall = !fvar(38) && roundstate=2 && alive
triggerall = ((!fvar(37)&&(var(59)=1||var(59)=4 || var(59)=5)) || (fvar(37) && ceil(fvar(14))%65536>32767))
triggerall = (stateno=5100||(stateno=5110&&(prevstateno!=[5100,5101])))&&!fvar(11) && time<=4
trigger1 = command = "recovery"

;----+----+----+----+----+----+----+----+----+----+----+----+----+----+

;ラン(Run)
[State -1]
type = ChangeState
value = 100
triggerall = fvar(38)!=1 && roundstate=2 && statetype!=A
triggerall = command = "FF" && ctrl
trigger1 = !fvar(37)&&(var(59) =[3,5])
trigger2 = fvar(37)&&ceil(fvar(14))%4>1

;ステップ(Dash)
[State -1]
type = ChangeState
value = 102
triggerall = fvar(38)!=1 && roundstate=2 && statetype!=A
triggerall = command = "FF" && ctrl
trigger1 = !fvar(37)&&(var(59) =[0,2])
trigger2 = fvar(37)&&ceil(fvar(14))%2>0

;バックステップ(Back Dash)
[State -1]
type = ChangeState
value = 105
triggerall = fvar(38)!=1 && roundstate=2 && statetype!=A
triggerall = command = "BB"&&ctrl
trigger1 = !fvar(37)
trigger2 = fvar(37)&&(ceil(fvar(14))%2>0||ceil(fvar(14))%4>1)

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",450,250)
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="c" && movecontact=1
trigger1 = (stateno=[200,450]) && (stateno!=[250,255]) && stateno!=450
trigger1 = stateno!=350

;チェーンコンボ(強P)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",(ifelse(command="holdfwd",710,420)),220)
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="z" && movecontact=1
trigger1 = (stateno=[200,450]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420
trigger1 = stateno!=320 && stateno!=350

;チェーンコンボ(中K)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",440,240+((P2bodydist X)<=25)*5)
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="b" && movecontact=1
trigger1 = (stateno=[200,450]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420 && (stateno!=[240,245]) && stateno!=440
trigger1 = stateno!=320 && stateno!=340 && stateno!=350

;チェーンコンボ(中P)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",410,ifelse(command="holdfwd",700,210))
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="y" && movecontact=1
trigger1 = (stateno=[200,450]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420 && (stateno!=[240,245]) && stateno!=440 && (stateno!=[210,215]) && stateno!=410
trigger1 = stateno!=310 && stateno!=320 && stateno!=340 && stateno!=350

;チェーンコンボ(弱K)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",430,230+((P2bodydist X)<=25)*5)
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="a" && movecontact=1
trigger1 = (stateno=[200,450]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420 && (stateno!=[240,245]) && stateno!=440 && (stateno!=[210,215]) && stateno!=410 && (stateno!=[230,235]) && stateno!=430
trigger1 = stateno!=310 && stateno!=320 && stateno!=330 && stateno!=340 && stateno!=350

;^^^^^^^^^^^^^^^^^^^^^^^^^^^
;空中チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = 650
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="c" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=610
trigger3 = stateno=[620,625]
trigger4 = stateno=630
trigger5 = stateno=640

;空中チェーンコンボ(強P)
[State -1, Chain]
type = ChangeState
value = 620+(Vel X!=0)*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="z" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=610
trigger3 = stateno=630
trigger4 = stateno=640

;空中チェーンコンボ(中K)
[State -1, Chain]
type = ChangeState
value = 640
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="b" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=610
trigger3 = stateno=630

;空中チェーンコンボ(中P)
[State -1, Chain]
type = ChangeState
value = 610
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="y" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=630

;空中チェーンコンボ(弱K)
[State -1, Chain]
type = ChangeState
value = 630
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="a" && movecontact=1
trigger1 = stateno=600
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;---------------------------------------------------------------------

;P通常投げ
[State -1]
type = ChangeState
value = 800
triggerall = fvar(38)!=1 && roundstate=2 && Statetype!=A && p2statetype!=A && p2statetype!=L
triggerall = ((command="z" && command!="holddown" && command!="holdup" && (command="holdback" || command="holdfwd"))||(var(24)=[800,805]))
trigger1 = Ctrl && P2BodyDist X <=22 && enemynear,movetype!=H

;K通常投げ
[State -1]
type = ChangeState
value = 820
triggerall = fvar(38)!=1 && roundstate=2 && Statetype!=A && p2statetype!=A && p2statetype!=L
triggerall = ((command="c" && command!="holddown" && command!="holdup" && (command="holdback" || command="holdfwd"))||(var(24)=[810,815]))
trigger1 = Ctrl && P2BodyDist X <=22 && enemynear,movetype!=H
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
; 挑発(Taunt)
[State -1]
type = ChangeState
value = 195
triggerall = !fvar(38)
triggerall = (Command="s"||var(24)=195) && StateType!=A
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = var(3)=1 || (var(3)=[3,5])
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;ロッククラッシュ
[State -1]
type = ChangeState
value = 700
triggerall = fvar(38)!=1 && roundstate=2 && Statetype!=A && ((command="y" && (command="holdback" || command="holdfwd") && P2bodydist X<=25 && command!="holddown")||var(24)=700)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;アマゾンリバーラン
[State -1]
type = ChangeState
value = 710
triggerall = fvar(38)!=1 && roundstate=2 && Statetype!=A && ((command="z" && command="holddown" && command="holdfwd")||var(24)=710)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="x" && command!="holddown" && (Anim!=[1000,1020]))||var(24)=200)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち中パンチ
[State -1]
type = ChangeState
value = 210
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="y" && command!="holddown" && (Anim!=[1000,1020]))||var(24)=210)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="z" && command!="holddown" && (Anim!=[1000,1020]))||var(24)=220)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち弱キック
[State -1]
type = ChangeState
value = 230+(P2bodydist X<=25)*5
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="a" && command!="holddown")||var(24)=230)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;近距離立ち中キック
[State -1]
type = ChangeState
value = 245
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="b" && command!="holddown" && P2BodyDist X <=25)||var(24)=245)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち中キック
[State -1]
type = ChangeState
value = 240
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="b" && command!="holddown")||var(24)=240)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち強キック
[State -1]
type = ChangeState
value = 250
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="c" && command!="holddown")||var(24)=250)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="x" && command="holddown" && (Anim!=[1000,1020]))||var(24)=400)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="y" && command="holddown" && (Anim!=[1000,1020]))||var(24)=410)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="z" && command="holddown" && (Anim!=[1000,1020]))||var(24)=420)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="a" && command="holddown")||var(24)=430)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="b" && command="holddown")||var(24)=440)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype!=A && ((command="c" && command="holddown")||var(24)=450)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype=A && (var(24)=600||command="x")
trigger1 = Ctrl
trigger2 = var(3)=4 && (stateno=[600,799])

;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 610
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype=A && (var(24)=610||command="y")
trigger1 = Ctrl
trigger2 = var(3)=4 && (stateno=[600,799])

;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620+ifelse(stateno=4130,var(2),Vel X!=0)*5
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype=A && (var(24)=620||command="z")
trigger1 = Ctrl
trigger2 = var(3)=4 && (stateno=[600,799])

;ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype=A && (var(24)=630||command="a")
trigger1 = Ctrl
trigger2 = var(3)=4 && (stateno=[600,799])

;ジャンプ中キック
[State -1]
type = ChangeState
value = 640
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype=A && (var(24)=640||command="b")
trigger1 = Ctrl
trigger2 = var(3)=4 && (stateno=[600,799])

;ジャンプ強キック
[State -1]
type = ChangeState
value = 650
triggerall = fvar(38)!=1 && roundstate = 2 && Statetype=A && (var(24)=650||command="c")
trigger1 = Ctrl
trigger2 = var(3)=4 && (stateno=[600,799])

;ガード
[State -1]
type = ChangeState
value = 120
triggerall = !fvar(38) && (roundstate=2 || (RoundState>=3 && Win)) && !var(21) && !var(56) && (stateno!=[120,140]) && inguarddist
triggerall = ctrl && ((command="holdback"&&P2dist X>=0&&(statetype!=A||(statetype=A&&P2dist X>=0)))||(command="holdfwd"&&statetype=A&&P2dist X<0))
trigger1 = statetype!=A&&command!="holdup"
trigger2 = !fvar(37) && !var(59) && var(7)!=1 && statetype=A
trigger3 = fvar(37) && ceil(fvar(14))%2048>1023 && var(7)!=1&&statetype=A
