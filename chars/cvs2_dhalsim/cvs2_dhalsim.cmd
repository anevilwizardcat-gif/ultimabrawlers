
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
time = 0

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
;---------------------------------------------------------------------
;~~~~~~~ヨガテンペスト
[Command]
name = "tempest"
command = ~F,DF,D,DB, B, DF,D,DB, B, x
time = 38

[Command]
name = "tempest"
command = ~F,DF,D,DB, B, DF,D,DB, B, y
time = 38

[Command]
name = "tempest"
command = ~F,DF,D,DB, B, DF,D,DB, B, z
time = 38

;~~~~~~~ヨガボルケイノ
[Command]
name = "volcano_a"
command = ~D, DF, F, D, DF, a
time = 24

[Command]
name = "volcano_b"
command = ~D, DF, F, D, DF, b
time = 24

[Command]
name = "volcano_c"
command = ~D, DF, F, D, DF, c
time = 24

;~~~~ヨガストリーム
[Command]
name = "stream_x"
command = ~D, DF, F, D, DF, x
time = 24

[Command]
name = "stream_y"
command = ~D, DF, F, D, DF, y
time = 24

[Command]
name = "stream_z"
command = ~D, DF, F, D, DF, z
time = 24

;-| 必殺技 |-----------------------------------------------------------
;ヨガテレポート
[Command]
name = "teleport_ppp1"
command = ~F, D, DF, x+y
time = 18

[Command]
name = "teleport_ppp1"
command = ~F, D, DF, y+z
time = 18

[Command]
name = "teleport_ppp1"
command = ~F, D, DF, x+z
time = 18

[Command]
name = "teleport_ppp2"
command = ~B, D, DB, x+y
time = 18

[Command]
name = "teleport_ppp2"
command = ~B, D, DB, y+z
time = 18

[Command]
name = "teleport_ppp2"
command = ~B, D, DB, x+z
time = 18

[Command]
name = "teleport_kkk1"
command = ~F, D, DF, a+b
time = 18

[Command]
name = "teleport_kkk1"
command = ~F, D, DF, b+c
time = 18

[Command]
name = "teleport_kkk1"
command = ~F, D, DF, a+c
time = 18

[Command]
name = "teleport_kkk2"
command = ~B, D, DB, a+b
time = 18

[Command]
name = "teleport_kkk2"
command = ~B, D, DB, b+c
time = 18

[Command]
name = "teleport_kkk2"
command = ~B, D, DB, a+c
time = 18

;ヨガブラスト
[Command]
name = "blast_a"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "blast_b"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "blast_c"
command = ~F, DF, D, DB, B, c
time = 20

;ヨガフレイム
[Command]
name = "flame_x"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "flame_y"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "flame_z"
command = ~F, DF, D, DB, B, z
time = 20

;ヨガファイア
[Command]
name = "fire_x"
command = ~D, DF, F, x
time = 12

[Command]
name = "fire_y"
command = ~D, DF, F, y
time = 12

[Command]
name = "fire_z"
command = ~D, DF, F, z
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
;↓の記述はCMDの必須項目です。
[Statedef -1]
;===========================================================================
;キャンセル設定

[State -1,0]
type =Varset
trigger1 = var(3)>0
var(3)=0
ignorehitpause=1

;通常技→必殺技
[State -1,special]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && !fvar(21) && (!fvar(37)||(fvar(37)&&ceil(fvar(13))%512<256))
triggerall = !((prevstateno=[200,205])&&(stateno!=[200,205])&&(stateno!=[210,215])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = !((prevstateno=[400,405])&&(stateno!=[200,205])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = (prevstateno!=[210,229])&&(prevstateno!=[240,299])&&(prevstateno!=[410,429])&&(prevstateno!=[440,499])
triggerall = (prevstateno!=[310,325])&&(prevstateno!=[340,395])&&(prevstateno!=[600,799])
trigger1 = (StateNo=205&&AnimElemtime(3)<0) || (StateNo=215&&AnimElemtime(3)<0) || (StateNo=235&&AnimElemtime(4)<0) || (StateNo=245&&AnimElemtime(7)<0) || (StateNo=255&&AnimElemtime(8)<0)
trigger2 = (StateNo=405&&AnimElemtime(3)<0) || (StateNo=415&&AnimElemtime(3)<0) || (StateNo=430&&AnimElemtime(5)<1) || (StateNo=435&&AnimElemtime(4)<0) || (StateNo=440&&AnimElemtime(5)<0) || (StateNo=445&&AnimElemTime(4)<0)
trigger3 = (StateNo=930&&AnimElemtime(6)<0)
var(3)=1
ignorehitpause = 1

;通常技→スーパーコンボ（超必殺技）
[State -1,super]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && !fvar(21) && (!fvar(37)||(fvar(37)&&ceil(fvar(13))%512<256))
triggerall = !((prevstateno=[200,205])&&(stateno!=[200,205])&&(stateno!=[210,215])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = !((prevstateno=[400,405])&&(stateno!=[200,205])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = (prevstateno!=[210,229])&&(prevstateno!=[240,299])&&(prevstateno!=[410,429])&&(prevstateno!=[440,499])
triggerall = (prevstateno!=[310,325])&&(prevstateno!=[340,395])&&(prevstateno!=[600,799])
trigger1 = (StateNo=200 && AnimElemTime(4)<0) || (StateNo=205 && AnimElemTime(4)<0) || (StateNo=215 && AnimElemTime(5)<0) || (StateNo=225 && AnimElemTime(4)<0)
trigger2 = (StateNo=425 && AnimElemTime(3)<0) ||(StateNo=430 && AnimElemTime(8)<0) || (StateNo=455 && AnimElemTime(4)<0)
var(3)=2
ignorehitpause = 1

;通常技→必殺技
[State -1,special]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && fvar(21) && (!fvar(37)||(fvar(37)&&ceil(fvar(13))%512<256))
triggerall = !((prevstateno=[200,205])&&(stateno!=[200,205])&&(stateno!=[210,215])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = !((prevstateno=[400,405])&&(stateno!=[200,205])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = (prevstateno!=[210,229])&&(prevstateno!=[240,299])&&(prevstateno!=[410,429])&&(prevstateno!=[440,499])
triggerall = (prevstateno!=[310,325])&&(prevstateno!=[340,395])&&(prevstateno!=[600,799])
trigger1 = (StateNo=205&&AnimElemtime(3)<0) || (StateNo=215&&AnimElemtime(3)<0) || StateNo=235 || StateNo=245 || StateNo=255
trigger2 = StateNo=405 || StateNo=415 || (StateNo=430&&AnimElemtime(5)<0) || StateNo=435 || (StateNo=440&&AnimElemtime(5)<0) || StateNo=445
trigger3 = StateNo=930
var(3)=1
ignorehitpause = 1

;通常技→スーパーコンボ（超必殺技）
[State -1,super]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && fvar(21) && (!fvar(37)||(fvar(37)&&ceil(fvar(13))%512<256))
triggerall = !((prevstateno=[200,205])&&(stateno!=[200,205])&&(stateno!=[210,215])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = !((prevstateno=[400,405])&&(stateno!=[200,205])&&(stateno!=[230,235])&&(stateno!=[400,405])&&(stateno!=[430,435]))
triggerall = (prevstateno!=[210,229])&&(prevstateno!=[240,299])&&(prevstateno!=[410,429])&&(prevstateno!=[440,499])
triggerall = (prevstateno!=[310,325])&&(prevstateno!=[340,395])&&(prevstateno!=[600,799])
trigger1 = StateNo=200 || (StateNo=205 && AnimElemTime(4)<0) || (StateNo=215 && AnimElemTime(5)<0) || (StateNo=225 && AnimElemTime(4)<0)
trigger2 = StateNo=425 ||(StateNo=430 && AnimElemTime(8)<0) || StateNo=455
var(3)=2
ignorehitpause = 1

;通常技→必殺技（キャンセルエニィムーブ）
[State -1,super]
type = VarSet
triggerall = !var(21) && movecontact && !var(3) && fvar(37) && ceil(fvar(13))%512>255
trigger1 = StateNo=[200,799]
trigger2 = stateno=[920,930]
var(3)=1
ignorehitpause = 1

;空振りキャンセル
[State -1,swing]
type = VarSet
triggerall = !var(3)
triggerall = (prevstateno!=[200,799])
trigger1 = ((StateNo=[200,799])||(stateno=[920,930]))&& ifelse(var(56)>0&&(StateNo=[200,799]),1,time<5) && !movecontact
var(3)=3
ignorehitpause = 1

;オリコン中
[State -1,oricom]
type = VarSet
triggerall = var(59)=1 && var(56)>0 && !var(3)
trigger1 = (StateNo=[200,799]) && movecontact
trigger2 = StateNo=1050 && AnimElemTime(5)>=0 && (projcontacttime(6000)=[1,12])
trigger3 = StateNo=1150 && (AnimElemTime(6)>=0||Anim=1150) && (projcontacttime(6100)=[1,12])
trigger4 = StateNo=1250 && (AnimElemTime(6)>=0||Anim=1250) && (projcontacttime(6200)=[1,12])
var(3)=4
ignorehitpause = 1

;LV2キャンセル
[State -1,oricom]
type = VarSet
triggerall = !var(3) && Statetype!=A && var(1)=1
triggerall = numtarget
trigger1 = StateNo=3050 && (AnimElemTime(6)>=0||Anim=3050) && (projhittime(6300)=[1,12])
trigger2 = StateNo=3150 && (AnimElemTime(6)>=0||Anim=3150) && (projhittime(6400)=[1,12])
var(3)=5
ignorehitpause = 1

;スーパーコンボキャンセル
[State -1,oricom]
type = VarSet
triggerall = fvar(37) && ceil(fvar(13))%256>127
triggerall = (StateNo=[1000,2099]) && !var(3) && !var(21)
triggerall = numtarget
trigger1 = StateNo=1050 && AnimElemTime(5)>=0 && (projhittime(6000)=[1,12])
trigger2 = StateNo=1150 && (AnimElemTime(6)>=0||Anim=1150) && (projhittime(6100)=[1,12])
trigger3 = StateNo=1250 && (AnimElemTime(6)>=0||Anim=1250) && (projhittime(6200)=[1,12])
var(3)=6
ignorehitpause = 1

;=====================================================================
;AI行動ルーチン
;=====================================================================
;AI起動
[State -1,AI_Switch]
type = varset
triggerall = !fvar(38)
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
trigger52 = (command="up"^^command="up2") || (command="down"^^command="down2")||(command="fwd"^^command="fwd2") || (command="back"^^command="back2")
trigger53 = (command="x"^^command="x2") || (command="y"^^command="y2")||(command="z"^^command="z2")||(command="a"^^command="a2")||(command="b"^^command="b2")||(command="c"^^command="c2")
trigger54 = 0;~~~デフォルトは0ですが、1にするとAI常時起動になり、プレイヤー操作ができなくなります。いわゆる観戦用ですので、WATCHモード使用時にONにするのをお勧めします。
fvar(38) = 1

;タッグ用行動移行
[state -1,AI_TagON]
type = VarSet
triggerall = fvar(38)=1
trigger1 = NumPartner
trigger1 = Partner,Alive
trigger1 = 1;~~~~~~~~~0でOFF~~~~~
fvar(38) = 2

;タッグ用行動解除
[state -1,AI_TagOFF]
type = VarSet
triggerall = fvar(38)=2
trigger1 = NumPartner
trigger1 = !Partner,Alive
trigger2 = !NumPartner
fvar(38) = 1

;AI起動用ヘルパー
[state -1,AI_Helper]
type = helper
trigger1 = !numhelper(90000) && !fvar(38) && alive
trigger1 = 0;roundstate=2 && !Ctrl && stateno=0 &&((PrevStateNo=[190,194])||PrevStateNo=5900)
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
triggerall = fvar(38) && (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = gametime%30=0 || StateNo=900
v = 54
range = 0,999

[State -1,random]
type = VarSet
triggerall = fvar(38)
trigger1 = StateNo=40
var(54)=500+random%3

;----------CPU------------------
;===========オリジナルコンボ中=======
;オリジナルコンボ発動
[state -1,oricom]
type = ChangeState
value = 2400
triggerall = fvar(38) && P2statetype!=L && statetype!=A && !var(21) && var(59)=1 && Power>=3000 && roundstate=2
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = !numhelper(15395)&&var(48)>=0
trigger1 = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = P2bodydist X<=(ceil((78+4*1.2*4)*const(size.xscale))-const(size.ground.front))
trigger1 = ifelse(enemy,life<100||(fvar(33)=[1,3])||(fvar(36)=[0,6]),random%4=1,random%5=1)
trigger2 = !numhelper(15395)&&var(48)>=0
trigger2 = 0;(P2Bodydist X =[-10,80]) && P2statetype=A&&(enemynear,Vel Y=[-1,4])&&(enemynear,Pos Y=[-85,-60]);対空（有効なレシピがなさそうなので封印）
trigger3 = ABS(P2Bodydist X) <=(83*const(size.xscale)-const(size.ground.front)) && enemynear,hitfall=1 && ifelse(enemynear,facing=facing,enemynear,frontedgebodydist<=5,enemynear,backedgebodydist<=5)&&(enemynear,Pos Y=[-95,-15]);画面端追撃
trigger3 = (P2stateno=[5000,5070])

;--対地---

;Ｋ通常投げ(Kick Throw)
[State -1,k_throw]
type = ChangeState
value = ifelse(P2statetype=A,250-(backedgebodydist <=120)*5,810)
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && enemynear,life<80 && !numhelper(15395)&&var(48)>=0
triggerall = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = var(56)>345 && random%4=1 && var(39) && P2bodydist X<=26 && (ctrl||stateno=3||stateno=13||stateno=21||stateno=22) && enemy,life<80

;弱ヨガファイア
[State -1,fire_x]
type = ChangeState
value = 1000
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21) && !numhelper(15395)&&var(48)>=0
triggerall = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<0 && enemynear,pos Y>-40 && !enemynear,hitfall)
triggerall = !numproj
trigger1 = random%3<=1 && Abs(P2bodydist X)<=80 && (stateno=425||stateno=440||stateno=1050)&&(prevstateno=425||prevstateno=440||prevstateno=1050) && var(3)=4 && var(16)<2

;しゃがみ強キック
[State -1,chk]
type = ChangeState
value = 450
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
triggerall = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<0 && enemynear,pos Y>-40 && !enemynear,hitfall)
trigger1 = (stateno=425||stateno=430||stateno=440) && var(3)=4 && movecontact && random%8<7 && var(56)<=60 && var(16)>1

;しゃがみ弱キック
[State -1,clk]
type = ChangeState
value = 430
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
triggerall = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<0 && enemynear,pos Y>-40 && !enemynear,hitfall)
trigger1 = (stateno=425||stateno=430||stateno=440) && var(3)=4 && movecontact=1 && var(16)>9 && P2bodydist X<=(ceil((78+24)*const(size.xscale))-const(size.ground.front))

;4しゃがみ強パンチ
[State -1,4chp]
type = ChangeState
value = 425
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
triggerall = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<0 && enemynear,pos Y>-40 && !enemynear,hitfall)
trigger1 = ((stateno=440 && AnimElemTime(8)>=0)||stateno=425) && var(3)=4 && movecontact && (var(16)=[2,9]) && P2bodydist X<=(ceil((84-30)*const(size.xscale))-const(size.ground.front))

;しゃがみ中キック
[State -1,cmk]
type = ChangeState
value = 440
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
triggerall = (P2statetype!=A||(enemynear,Vel Y<0 && enemynear,Pos Y>-40))
trigger1 = random%2=1 && P2bodydist X<=(ceil((78+4*1.2*4)*const(size.xscale))-const(size.ground.front)) && (ctrl||stateno=3||stateno=13||stateno=21||stateno=22)
trigger2 = (stateno=425||(stateno=440 && AnimElemTime(8)>=0)) && var(3)=4 && movecontact && var(16)<=9 && P2bodydist X<=(ceil((78+4.0*1.2*8)*const(size.xscale))-const(size.ground.front))
trigger3 = (stateno=1050||stateno=440) && var(3)=4 && var(16)<2 && P2bodydist X<=ceil((78+4.0*1.2*8)*const(size.xscale))-const(size.ground.front)

;LV.1ヨガボルケイノ
[State -1,vol]
type = ChangeState
value = 3100
triggerall = fvar(38) && P2statetype!=L && statetype!=A && roundstate=2 && var(21) 
trigger1 = random%10<7 && stateno=450 && movecontact && var(3)=4 && var(16)>1
trigger2 = ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])||((stateno=215||stateno=245||stateno=255||stateno=1250) && var(3)=4)
trigger2 = var(56)<=90 && var(16)>1 && P2statetype=A && enemynear,hitfall
trigger2 = P2Bodydist X <110 && random%5<3 && enemynear,Vel Y>-3 && (enemynear,Pos Y=[-135,-55])

;--対空オリコン---

;回り込み
[State -1,roll]
type = ChangeState
value = 900
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
trigger1 = var(56)>90 && (stateno=215||stateno=245||stateno=1250) && var(3)=4 && (movecontact||(projcontacttime(6200)=[1,10]))
trigger1 = P2Bodydist X >=60 && P2statetype=A&&enemynear,hitfall&&(enemynear,Pos Y=[-140,-60])
trigger1 = ifelse(enemynear,facing=facing,enemynear,frontedgebodydist>10,enemynear,backedgebodydist>10) && random%5<3

;4立ち強キック
[State -1,4shk]
type = ChangeState
value = 255
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
trigger1 = var(56)>80 && (stateno=425||stateno=245) && var(3)=4
trigger1 = (enemynear,Pos Y=[-60,-40])
trigger1 = ABS(P2Bodydist X) <=((83-10)*const(size.xscale)-const(size.ground.front)) && enemynear,hitfall=1 && random%5<4 && ifelse(enemynear,facing=facing,enemynear,frontedgebodydist<=5,enemynear,backedgebodydist<=5)

;4しゃがみ強パンチ
[State -1,4chp]
type = ChangeState
value = 425
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
trigger1 = var(56)>50 && P2statetype=A&&enemynear,Vel Y>1&&enemynear,Pos Y>-40
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = ABS(P2Bodydist X) <=((83-10)*const(size.xscale)-const(size.ground.front)) && enemynear,hitfall=1 && random%5<4 && ifelse(enemynear,facing=facing,enemynear,frontedgebodydist<=5,enemynear,backedgebodydist<=5)

;ヨガブラスト
[State -1,blast]
type = ChangeState
value = 1200+(var(16)<9)*20
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])||((stateno=215||stateno=255||stateno=245||stateno=1250) && var(3)=4))
trigger1 = var(56)>50 && P2statetype=A&&(enemynear,Pos Y=[-130,-80])&&enemynear,Vel Y<=2
trigger1 = ABS(P2Bodydist X)<(90*const(size.xscale)-const(size.ground.front)) && enemynear,hitfall && random%5<4 && ifelse(enemynear,facing=facing,enemynear,frontedgebodydist<=5,enemynear,backedgebodydist<=5)
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])||((stateno=215||stateno=255||stateno=245||stateno=1250) && var(3)=4))
trigger2 = var(56)>60 && ABS(P2Bodydist X)<(90*const(size.xscale)-const(size.ground.front)) && P2statetype=A&&enemynear,Vel Y>1&&(enemynear,Pos Y=[-100,-60])
trigger2 = ifelse(enemynear,facing=facing,enemynear,frontedgebodydist>5,enemynear,backedgebodydist>5) && random%5<2

;4立ち中
[State -1,4sm]
type = ChangeState
value = 215+(P2Bodydist X >20)*30
triggerall = fvar(38) && P2statetype!=L && statetype!=A && var(21)
trigger1 = var(56)>70 && P2statetype=A&&enemynear,Vel Y>2&&(enemynear,Pos Y=[-50,-30])
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = ABS(P2Bodydist X) <=(100*const(size.xscale)-const(size.ground.front)) && enemynear,hitfall=1 && random%5<4 && ifelse(enemynear,facing=facing,enemynear,frontedgebodydist<=5,enemynear,backedgebodydist<=5)
trigger2 = var(56)>80 && ABS(P2Bodydist X) <=(100*const(size.xscale)-const(size.ground.front)) && P2statetype=A&&enemynear,Vel Y>1&&(enemynear,Pos Y=[-130,-25])
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])||((stateno=215||stateno=245||stateno=1250) && var(3)=4 && (movecontact||(projcontacttime(6200)=[1,10]))))
trigger2 = ifelse(enemynear,facing=facing,enemynear,frontedgebodydist>5,enemynear,backedgebodydist>5) && random%5<2

;-----------

;===相手気絶用

;ヨガストリーム/ヨガテンペスト
[state -1,supercombo]
type = ChangeState
value = 3000+(!var(59)&&Power>=2000)*10+((Power>=3000 && (var(59)=2||var(59)=5)) ||(var(22)&&Power>=1000 && var(59)=4) || (var(22)&&var(59)=3&&(100*Life/const(data.life))<=30))*2000
triggerall = fvar(38) && roundstate=2 && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = P2statetype!=L && statetype!=A && (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
triggerall = ((Power>=1000&&!var(59))||(Power>=3000 && (var(59)=2||var(59)=5))||(((100*Life/const(data.life))<=30||var(22))&&var(59)=3)||(Power>=1000 && var(59)=4)) && var(59)!=1
trigger1 = stateno=255 && var(3)=1 && (fvar(36)>0||var(16)>1) && movecontact && !(!(var(59)=3||var(59)=5)&&enemynear,Life<=70)
trigger1 = enemynear,backedgebodydist>10

;4ジャンプ強パンチ
[state -1,jhp]
type = ChangeState
value = 625
triggerall = fvar(38) && P2statetype!=L && statetype=A && !var(21) && (numhelper(15395)||var(48)<0)
trigger1 = P2bodydist X<=ifelse(Vel X=0,55,80) && ifelse(enemynear,backedgebodydist <=5,1,P2bodydist X>=-15)
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = Pos Y >-55 && Pos Y <-25 && random%6<5 && ctrl && Vel Y>1.5

;パワーMAX発動
[State -1,max]
type = ChangeState
value = 2500
triggerall = fvar(38) && roundstate=2 && statetype!=A && !fvar(35) && (numhelper(15395)||var(48)<0)
triggerall = Power >= ifelse(enemynear,life<=259,1000,2000) && var(59)=4 && !var(22)
triggerall = enemynear,Life>200
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = ((P2stateno=[15310,15340])||((P2stateno=[5310,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;ステップ(Step)
[State -1,step]
type = ChangeState
value = 102
triggerall = fvar(38) && roundstate=2 && !fvar(35) && !(var(21)&&enemynear,hitfall=1) && (numhelper(15395)||var(48)<0)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X>160 && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=5300&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;バックステップ(Back Step)
[State -1,step_b]
type = ChangeState
value = 105
triggerall = fvar(38) && roundstate=2 && !fvar(35) && fvar(29)<4 && !(var(21)&&enemynear,hitfall=1) && backedgebodydist>10 && !numhelper(15395)&&var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X<50 && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=5300&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;ゲージ溜め動作
[state -1,charge]
type = ChangeState
value = 950
triggerall = fvar(38) && roundstate=2 && !(P2statetype=L && enemynear,alive) && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A && !var(22) && var(59)=3
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = ((P2stateno=[15310,15340])||((P2stateno=[5310,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;ジャンプ
[state -1.jump]
type = ChangeState
value = 40
triggerall = fvar(38) && roundstate=2 && !(P2statetype=L && enemynear,alive) && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ((P2bodydist X=[90,120])||(P2bodydist X=[160,180])) && random%4=0
trigger1 = (P2stateno=15300||(P2stateno=5300&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;前進
[state -1,fwd]
type = ChangeState
value = 21
triggerall = fvar(38) && roundstate=2 && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && ((P2bodydist X=(120,160))||P2bodydist X>180) && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=[15330,15340])||((P2stateno=[5300,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;後退
[state -1,bwd]
type = ChangeState
value = 22
triggerall = fvar(38) && roundstate=2 && !var(21) && (numhelper(15395)||var(48)<0)
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && (P2bodydist X<91) && random%3=0
trigger1 = (P2stateno=15300||(P2stateno=[15330,15340])||((P2stateno=[5300,5350])&&enemynear,fvar(39)=1&&(enemynear,authorname="rei"||enemynear,authorname="gal129")))

;===ブロッキング後反撃・ガードクラッシュ後追撃用

;ヨガテンペスト
[State -1,tempest]
type = ChangeState
value = 3200
triggerall = fvar(38) && statetype!=A && roundstate=2 && p2statetype!=L && !numhelper(15395)&&var(48)>=0
triggerall = (var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2stateno=[5910,5920]) && enemynear,animtime<44 && random%5<=2 && P2bodydist X<100

;パワーMAX発動
[State -1,max]
type = ChangeState
value = 2500
triggerall = fvar(38) && roundstate=2 && statetype!=A && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = Power >= ifelse(enemynear,life<=259,1000,2000) && var(59)=4 && !var(22)
triggerall = enemynear,Life>160
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2stateno=[5910,5920]) && enemynear,animtime<44 && P2bodydist X<80

;しゃがみ強キック
[State -1,chk]
type = ChangeState
value = 450+(P2Bodydist X <ceil(83*const(size.xscale))-const(size.ground.front))*5
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = P2statetype!=A
triggerall = Power<1000 && !(var(59)=3&&(100*Life/const(data.life)<=30))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2Bodydist X =(ceil(83*0*const(size.xscale))-const(size.ground.front),ceil((78+8*8)*const(size.xscale))-const(size.ground.front)]) && ((prevstateno=[4000,4010])||fvar(32)=4)
trigger2 = (P2Bodydist X =(ceil(83*0*const(size.xscale))-const(size.ground.front),ceil((78+8*8)*const(size.xscale))-const(size.ground.front)]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;立ち強パンチ
[state -1,shp]
type = ChangeState
value = 220
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = P2statetype!=A
triggerall = !(Power>=1000 && !(var(59)=3&&(100*Life/const(data.life)<=30))&&P2bodydist X<145)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2Bodydist X =(ceil(128*const(size.xscale))-const(size.ground.front),ceil(246*const(size.xscale))-const(size.ground.front)]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;立ち中パンチ
[state -1,smp]
type = ChangeState
value = 210
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = P2statetype!=A
triggerall = !(Power>=1000 && !(var(59)=3&&(100*Life/const(data.life)<=30))&&P2bodydist X<145)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2Bodydist X =(ceil((78+8*8)*const(size.xscale))-const(size.ground.front),ceil(188*const(size.xscale))-const(size.ground.front))) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;4立ち強キック
[State -1,4shk]
type = ChangeState
value = 255
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (enemynear,Pos Y=[-80,-40]) && P2statetype=A
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) 
trigger1 = (P2Bodydist X =[ceil(0*const(size.xscale))-const(size.ground.front),ceil(83*const(size.xscale))-const(size.ground.front)]) && ((prevstateno=[4000,4010])||fvar(32)=4)
trigger2 = (P2Bodydist X =[-15,ceil(50*const(size.xscale))-const(size.ground.front)]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;ラン(Run)
[State -1,run]
type = ChangeState
value = 100
triggerall = fvar(38) && roundstate=2 && statetype!=A && !var(21) && !numhelper(15395)&&var(48)>=0
triggerall = ((!fvar(37)&&(var(59)=[3,5]))||(fvar(37)&&ceil(fvar(14))%4>1))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = P2Bodydist X>=110 && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;前進
[state -1,fwd]
type = ChangeState
value = 21
triggerall = fvar(38) && roundstate=2 && !var(21) && !numhelper(15395)&&var(48)>=0
triggerall = statetype!=A
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && random%3=0
trigger1 = (P2Bodydist X =[80,110]) && ((P2stateno=[5910,5929])||(P2stateno=[15910,15929]))

;===============

;その他

;強ヨガフレイム
[state -1,flame_z]
type = ChangeState
value = 1120
triggerall = fvar(38) && roundstate=2 && statetype!=A && !var(21)
triggerall = (P2statetype!=A||(enemynear,Vel Y>0 && enemynear,Pos Y>-40))
trigger1 = !numhelper(15395)&&var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = P2stateno = 5120 && (enemynear,animtime=[-25,-15]) &&random%3=0 && P2bodydist X=(95*const(size.xscale)-const(size.ground.front)) && enemynear,life<=10 && enemynear,power<1000

;---コンボパーツ--
;4しゃがみ中キック
[state -1,4cmk]
type = ChangeState
value = 445
triggerall = fvar(38) && P2statetype!=L && statetype!=A
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30)) && !var(21)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2bodydist X<=60 && random%5<3 && fvar(36)>0

;LV.1ヨガボルケイノ
[State -1,vol_a]
type = ChangeState
value = 3100
triggerall = fvar(38) && roundstate=2 && statetype!=A && !var(21) && p2statetype!=L
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500&&(enemy,life=[70,140]))) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = P2Bodydist X<99*const(size.xscale)-const(size.ground.front) && var(16)>1 && enemynear,hitfall && (enemynear,pos Y =[-105,-75]) && var(18)<3
trigger2 = P2Bodydist X<50*const(size.xscale)-const(size.ground.front) && (stateno=3050||stateno=3150) && (anim=3050||anim=3150) && var(1)=1 && var(3)=5 && var(16)>1 && (enemynear,life=[70,100]) && enemynear,hitfall
trigger2 = enemynear,backedgebodydist>5

;強ヨガブラスト
[State -1,blast_c]
type = ChangeState
value = 1220
triggerall = fvar(38) && roundstate=2 && !(P2statetype=L&&enemynear,alive) && Statetype!=A && !var(21)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = !(P2movetype=H&&P2stateno=5040)
triggerall = !(P2movetype=H&&P2stateno=870)
trigger1 = (P2Bodydist X<((99*const(size.xscale))-const(size.ground.front))&&EnemyNear,BackEdgeBodyDist<5)||(P2Bodydist X<((70*const(size.xscale))-const(size.ground.front)))&&EnemyNear,BackEdgeBodyDist<50
trigger1 = (stateno=3050||stateno=3150) && (anim=3050||anim=3150) && var(1)=1 && var(3)=5 && var(16)>1 && enemynear,hitfall

;ヨガファイア
[State -1,fire]
type = ChangeState
value = 1000+(enemynear,backedgebodydist<200)*20
triggerall = fvar(38) && roundstate=2 && !(P2statetype=L&&enemynear,alive) && Statetype!=A && !var(21)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (stateno=3050||stateno=3150) && (anim=3050||anim=3150) && var(1)=1 && var(3)=5 && var(16)>1 && enemynear,hitfall

;弱ヨガフレイム
[state -1,flame_x]
type = ChangeState
value = 1100
triggerall = fvar(38) && roundstate=2 && P2statetype!=L && statetype!=A && !var(21)
triggerall = (P2statetype!=A||(enemynear,Vel Y>0 && enemynear,Pos Y>-40))
trigger1 = 1;P2bodydist X<(135*const(size.xscale)-const(size.ground.front))
trigger1 = (stateno=425||stateno=255||stateno=445) && movecontact && var(3)=1 && var(16)>1

;LV2ヨガストリーム
[State -1,stream_y]
type = ChangeState
value = 3010
triggerall = fvar(38) && statetype!=A && roundstate=2 && p2statetype!=L
triggerall = !var(59) && Power>=2000
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = !numhelper(15395)&&var(48)>=0
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = fvar(33) && fvar(30)<4 && P2bodydist X<=195*const(size.xscale)-const(size.ground.front) && random%6=0 && var(54)%7=0
trigger2 = (stateno=210||stateno=425||stateno=440||stateno=445) && movecontact && (var(16)>1||fvar(32)=5) && (var(3)=[1,2]) && P2Bodydist X<140 && fvar(38)=1
trigger3 = !numhelper(15395)&&var(48)>=0
trigger3 = (fvar(36)=[4,6]) && stateno=52 && time>=2 && var(7)=1 && P2bodydist X<=80
trigger4 = !numhelper(15395)&&var(48)>=0
trigger4 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger4 = ((P2stateno=[5910,5920])||(P2stateno=[15910,15920])) && enemynear,animtime<44 && random%5<=2 && P2bodydist X<(195*const(size.xscale)-const(size.ground.front)) && enemynear,life>=110
trigger5 = (stateno=425) && (movecontact=[1,2]) && random%3=2 && (var(3)=[1,2])
trigger5 = (P2Bodydist X =[ceil(85*const(size.xscale))-const(size.ground.front),ceil(134*const(size.xscale))-const(size.ground.front)]);仕込み
trigger6 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger6 = fvar(29)<-1 && (P2Bodydist X =[ceil(65*const(size.xscale))-const(size.ground.front),ceil(134*const(size.xscale))-const(size.ground.front)]);暴れ潰し

;LV2ヨガボルケイノ
[State -1,vol2]
type = ChangeState
value = 3110
triggerall = fvar(38) && statetype!=A && roundstate=2 && p2statetype!=L && !numhelper(15395)&&var(48)>=0
triggerall = !var(59) && Power>=2000
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = !(P2movetype=H&&P2stateno=5040)
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = P2Bodydist X<50*const(size.xscale)-const(size.ground.front) && (var(16)>1||fvar(32)=5) && enemynear,hitfall && enemynear,pos Y <=-65 && var(18)<3
trigger1 = !(P2movetype=H&&P2stateno=870)
trigger2 = (enemynear,vel X=[0,4]) && (enemynear,vel Y=[-1,3]) && (P2bodydist X=[30+(enemynear,vel X>0&&backedgebodydist>10)*10,ceil(99*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-105,-75])
trigger2 = !numhelper(15395)&&var(48)>=0
trigger2 = !(P2movetype=H&&P2stateno=870)
trigger2 = var(54)%5<3 && var(18)<4
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger3 = P2Bodydist X<80*const(size.xscale)-const(size.ground.front) && (var(16)>1||fvar(32)=5) && enemynear,backedgebodydist<10
trigger3 = (stateno=[450,455]) && movecontact && (var(3)=[1,2])

;ヨガテンペスト
[State -1,tem]
type = ChangeState
value = 3200
triggerall = fvar(38) && statetype!=A && roundstate=2 && p2statetype!=L
triggerall = (!var(59)&&Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = !(P2movetype=H&&P2stateno=5040)
trigger1 = !numhelper(15395)&&var(48)>=0
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = fvar(33) && fvar(30)<4 && P2bodydist X<=60 && random%5=0 && var(54)%8=0 && !var(59)
trigger2 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger2 = (stateno=210||stateno=425||stateno=440||stateno=445) && movecontact && (var(16)>1||fvar(32)=5) && (var(3)=[1,2]) && P2Bodydist X<152*const(size.xscale)-const(size.ground.front) && fvar(38)=1
trigger3 = !numhelper(15395)&&var(48)>=0
trigger3 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger3 = (fvar(36)=[6,8]) && stateno=52 && time>=2 && var(7)=1 && P2bodydist X<(142*const(size.xscale)-const(size.ground.front))
trigger4 = !numhelper(15395)&&var(48)>=0
trigger4 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger4 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger4 = ((P2stateno=[5910,5920])||(P2stateno=[15910,15920])) && enemynear,animtime<44 && random%5<=2
trigger4 = (P2bodydist X=[100*const(size.xscale)-const(size.ground.front),162*const(size.xscale)-const(size.ground.front)]) && (enemynear,life>=110||(enemynear,life>=80&&var(59)>=2))
trigger5 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger5 = !(P2movetype=H&&P2stateno=870)
trigger5 = P2Bodydist X<(140*const(size.xscale)-const(size.ground.front)) && var(16)>1 && enemynear,hitfall && (enemynear,pos Y =[-105,-20]) && var(18)<5
trigger6 = !numhelper(15395)&&var(48)>=0
trigger6 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger6 = (enemynear,vel X=[-1,4]) && (enemynear,vel Y=[-1,3]) && (P2bodydist X=[90+(enemynear,vel X>0&&backedgebodydist>10)*10,ceil(152*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-115,-75])
trigger6 = var(54)%5<3
trigger7 = P2Bodydist X<130*const(size.xscale)-const(size.ground.front) && (var(16)>1||fvar(32)=5)
trigger7 = (stateno=[450,455]) && movecontact && (var(3)=[1,2])
trigger8 = (stateno=425) && (movecontact=[1,2]) && random%3=2 && (var(3)=[1,2]) && P2Bodydist X>100;仕込み

;Lv.3ヨガボルケイノ
[State -1,vol3]
type = ChangeState
value = 3120
triggerall = fvar(38) && statetype!=A && roundstate=2 && p2statetype!=L
triggerall = (!var(59)&&Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = !(P2movetype=H&&P2stateno=5040)
trigger1 = !numhelper(15395)&&var(48)>=0
trigger1 = (enemynear,vel X=[0,4]) && (enemynear,vel Y=[-1,3]) && (P2bodydist X=[30+(enemynear,vel X>0&&backedgebodydist>10)*10,ceil(99*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-105,-75])
trigger1 = !(P2movetype=H&&P2stateno=870)
trigger1 = var(54)%5<3 && var(18)<4
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))

;LV.1ヨガストリーム
[State -1,stream_x]
type = ChangeState
value = 3000
triggerall = fvar(38) && roundstate=2 && statetype!=A && !var(21)
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && Power>=1500&&(enemy,life=[70,140]))) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && ((100*Life/const(data.life))<=30))))
triggerall = (var(59)=3||(var(59)!=3 && (enemy,life=[70,140])))
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = (stateno=210||stateno=425||stateno=440||stateno=445) && movecontact && (var(3)=[1,2]) && var(16)>1 && P2Bodydist X<175*const(size.xscale)-const(size.ground.front)
trigger2 = p2statetype!=L
trigger2 = !numhelper(15395)&&var(48)>=0
trigger2 = (fvar(36)=[4,6]) && stateno=52 && time>=2 && var(7)=1 && P2bodydist X<=80
trigger3 = !numhelper(15395)&&var(48)>=0
trigger3 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger3 = p2statetype!=L
trigger3 = ((P2stateno=[5910,5920])||(P2stateno=[15910,15920])) && enemynear,animtime<44 && random%5<=2 && (P2bodydist X=[100*const(size.xscale)-const(size.ground.front),195*const(size.xscale)-const(size.ground.front)]) && (enemynear,life=[80,110])
trigger4 = p2statetype!=L
trigger4 = !numhelper(15395)&&var(48)>=0
trigger4 = !var(22) && var(59)=3 && (100*Life/const(data.life))<=30
trigger4 = (stateno=[200,599]) && movecontact && var(16)<2 &&(var(3)=[1,2]) && random%10<7 && P2bodydist X<=80
trigger5 = !numhelper(15395)&&var(48)>=0
trigger5 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger5 = P2stateno = 5120 && (enemynear,animtime=[-21,-8]) &&random%3=0 && P2bodydist X=(195*const(size.xscale)-const(size.ground.front)) && enemynear,life<=21 && enemynear,power<1000
trigger6 = (stateno=425) && (movecontact=[1,4]) && random%3<=1 && (var(3)=[1,2])
trigger6 = (P2Bodydist X =[ceil(85*const(size.xscale))-const(size.ground.front),ceil(134*const(size.xscale))-const(size.ground.front)]);仕込み

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;--タッグ用--
;ヨガテレポート
[State -1,tele]
type = ChangeState
value = 1320-(P2bodydist X<50&&enemy(1),P2bodydist X<50&&random%5=0)*20
triggerall = fvar(38)=2 && roundstate=2
triggerall = Enemynear,NumPartner
triggerall = NumEnemy=2
triggerall = Enemy(0),Alive && Enemy(1),Alive
trigger1 = ((ctrl&&StateType!=A)||(ctrl&&Statetype=A && PrevStateNo!=1350)||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = fvar(33) && var(54)%2=0 && P2bodydist X <=100 && backedgebodydist<=20

;4しゃがみ弱キック/4しゃがみ強パンチ
[state -1,t5]
type = ChangeState
value = ifelse((ceil(fvar(13))%32>15 && fvar(37)&&stateno!=405),405,435-(enemynear,gethitvar(hitcount)>1)*10)
triggerall = fvar(38)=2 && roundstate=2 && !var(21) && !fvar(35)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
triggerall = statetype!=A && P2statetype!=L
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = P2bodydist X<70*const(size.xscale)-const(size.ground.front)
trigger1 = random%2=1

;しゃがみ中キック
[state -1,t4]
type = ChangeState
value = 440
triggerall = fvar(38)=2 && roundstate=2 && !var(21) && !fvar(35)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
triggerall = statetype!=A && P2statetype!=L
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2bodydist X=(70*const(size.xscale)-const(size.ground.front),(78+4.0*1.2*6)*const(size.xscale)-const(size.ground.front)])
trigger1 = random%2=0

;立ち弱キック
[state -1,t3]
type = ChangeState
value = 230
triggerall = fvar(38)=2 && roundstate=2 && !var(21) && !fvar(35)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
triggerall = statetype!=A && P2statetype!=L
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2bodydist X=((78+4.0*1.2*6)*const(size.xscale)-const(size.ground.front),112*const(size.xscale)-const(size.ground.front)))
trigger1 = random%2=0

;しゃがみ強パンチ
[state -1,t2]
type = ChangeState
value = 420
triggerall = fvar(38)=2 && roundstate=2 && !var(21) && !fvar(35)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
triggerall = statetype!=A && P2statetype!=L
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2bodydist X=[112*const(size.xscale)-const(size.ground.front),210*const(size.xscale)-const(size.ground.front)])
trigger1 = random%4=3

;立ち強パンチ
[state -1,t1]
type = ChangeState
value = 220
triggerall = fvar(38)=2 && roundstate=2 && !var(21) && !fvar(35)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
triggerall = statetype!=A && P2statetype!=L
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (P2bodydist X=(210*const(size.xscale)-const(size.ground.front),246*const(size.xscale)-const(size.ground.front)])
trigger1 = random%5=4

;立ち強キック
[State -1,shk]
type = ChangeState
value = 250
triggerall = fvar(38)=2 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||(fvar(32)=[13,15]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = (enemynear,vel Y=[0,3+(enemynear,pos Y<-100)*5])
trigger1 = (P2bodydist X=[ceil(150*const(size.xscale))-const(size.ground.front),ceil(212*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-135,-75])
trigger1 = random%10<8

;ヨガファイア
[state -1,t0]
type = ChangeState
value = 1000+(P2bodydist X>350*const(size.xscale)-const(size.ground.front))*20
triggerall = fvar(38)=2 && roundstate=2 && !var(21) && !fvar(35) && !numproj
triggerall = statetype!=A; && P2statetype!=L
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = P2bodydist X>246*const(size.xscale)-const(size.ground.front)
trigger1 = random%5<=2 && var(54)%20<=167
trigger2 = P2statetype=L && (enemynear,anim!=[5120,5129]) && random%3=0 && P2bodydist X>100

;-----

;必殺技
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ヨガテレポート
[State -1,tele]
type = ChangeState
value = 1320-(P2bodydist X<40&&random%8=0)*20
triggerall = fvar(38) && roundstate=2
triggerall = !numhelper(15395) && var(48)>=0
trigger1 = ((ctrl&&StateType!=A)||(ctrl&&Statetype=A && PrevStateNo!=1350)||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = fvar(33) && var(54)%5=0 && P2bodydist X <=100 && backedgebodydist<=10

;ヨガファイア
[State -1,fire]
type = ChangeState
value = 1000+((P2bodydist X>160||random%4=1)&&P2StateType!=L)*20
triggerall = fvar(38)=1 && roundstate=2 && Statetype!=A && !fvar(35) && !numproj
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))) && (fvar(23)>8||stateno=3050||stateno=3150)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40)||stateno=3050||stateno=3150) && !numhelper(15395)&&var(48)>=0
triggerall = fvar(23)>15
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = P2bodydist X>120 && ifelse(P2bodydist X>160,var(54)%10=0,var(54)%7=0) && random%5=0 && !enemynear,hitfall && !((P2stateno=[800,845])&&P2movetype=I)
trigger2 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger2 = (P2bodydist X=[100,180]) && var(54)%7=0 && random%6=0 && !enemynear,hitfall && !((P2stateno=[800,845])&&P2movetype=I)
trigger3 = (StateNo=[430,435]) && (P2bodydist X=[-5,50]) && movecontact=1 && var(3)=1 && (var(16)<=1||P2bodydist X>30) && enemynear,backedgebodydist>20 && var(54)%7<4 && enemynear,hitfall=0
trigger4 = (StateNo=[440,445]) && var(16)<=1 && var(3)=1 && movecontact=1 && var(54)%11<5 && enemynear,backedgebodydist>15 && enemynear,hitfall=0 && !((P2stateno=[800,845])&&P2movetype=I)
trigger5 = (Stateno=[200,599]) && var(16)<=1 && var(3)=1 && movecontact=1 && var(54)%3<1 && enemynear,backedgebodydist>15 && enemynear,hitfall=0 && !((P2stateno=[800,845])&&P2movetype=I)
trigger6 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger6 = P2statetype=L && ((enemynear,anim!=[5120,5129])||((enemynear,anim=[5120,5129]) && P2bodydist X>160)) && random%3=0 && P2bodydist X>100 && var(51)%5<ifelse(P2bodydist X>160,5,4)

;==================
;~~~Chain Combo~~~
;チェーンコンボ(弱K)
[State -1, Chain]
type = ChangeState
value = 430
triggerall = fvar(38) && !(var(21)&&var(16)>1) && !numhelper(15395)&&var(48)>=0
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = (stateno=400||stateno=405)

;チェーンコンボ(中P)
[State -1, Chain]
type = ChangeState
value = 415
triggerall = fvar(38) && !(var(21)&&var(16)>1) && !numhelper(15395)&&var(48)>=0
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = (stateno=430||stateno=435) && P2Bodydist X <=(ceil(50*const(size.xscale))-const(size.ground.front))

;チェーンコンボ(強P)
[State -1, Chain]
type = ChangeState
value = 425
triggerall = fvar(38) && !(var(21)&&var(16)>1) && !numhelper(15395)&&var(48)>=0
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = (stateno=405||stateno=415||stateno=430||stateno=435||stateno=440||stateno=445) && var(16)>1 && P2bodydist X<=20

;チェーンコンボ(中K)
[State -1, Chain]
type = ChangeState
value = 440
triggerall = fvar(38) && !(var(21)&&var(16)>1) && !numhelper(15395)&&var(48)>=0
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = (stateno=405||stateno=415||stateno=430||stateno=435) && var(16)>1

;チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = 450
triggerall = fvar(38)=1 && !(var(21)&&var(16)>1) && !numhelper(15395)&&var(48)>=0
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = movecontact=1
trigger1 = (stateno=415||stateno=425||stateno=440||stateno=445) && var(16)>1

;空中チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = 655
triggerall = fvar(38) && !(var(21)&&var(16)>1) && !numhelper(15395)&&var(48)>=0
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = movecontact=1
trigger1 = stateno=625 && var(54)%5<2 && P2bodydist X<50

;回り込み
[State -1,rolling]
type = ChangeState
value = 900
triggerall = fvar(38) && roundstate=2 && !(var(21) && enemy,hitfall=1) && !numhelper(15395)&&var(48)>=0
triggerall = (!fvar(37)&&(var(59)<=1 || var(59)=4))||(fvar(37) && ceil(fvar(14))%32>15)
triggerall = statetype != A && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(((stateno=100&&animelemtime(2)>=0)||stateno=101)&&((P2movetype=A&&enemynear,time>22)||(P2movetype!=A&&inguarddist)||enemynear,numproj)))
trigger1 = var(54)<=400 && enemy,numproj>0 && P2BodyDist X>160 && ((enemynear,movetype=A && Enemynear,Time>((P2BodyDist X)/10+2))||enemynear,movetype!=A) && inguarddist && enemynear,Statetype!=L
trigger2 = (random < ifelse(P2bodydist X>170,1,ifelse(fvar(33),6,ifelse(var(55)>20,2,4)))) && P2BodyDist X>=120 && !(P2Statetype=L&&enemynear,alive)
trigger3 = enemynear,statetype=A && enemynear,Vel Y>=0 && random<300 && Abs(P2bodydist X)<40 && var(54)<ifelse(backedgebodydist <20,700,150) && enemynear,backedgebodydist >100 && !(P2Statetype=L&&enemynear,alive) && P2movetype!=H
trigger4 = P2movetype!=A&&inguarddist&&enemynear,numhelper&&P2bodydist X>180&&var(54)<=350

;避け
[State -1,dodge]
type = ChangeState
value = 910
triggerall = fvar(38) && roundstate=2 && (!(P2Statetype=L&&enemynear,alive)||(P2stateno=5120&&enemynear,animtime>-8)) && !(var(21) && enemy,hitfall=1) && !fvar(29) && !numhelper(15395)&&var(48)>=0
triggerall = ((!fvar(37)&&var(59)=3)||(fvar(37) && ceil(fvar(14))%64>31)) && !fvar(31) && !numproj
triggerall = statetype != A && (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(((stateno=100&&animelemtime(2)>=0)||stateno=101)&&((P2movetype=A&&enemynear,time>22)||(P2movetype!=A&&inguarddist)||enemynear,numproj)))
trigger1 = P2BodyDist X>=60 && (enemynear,Pos Y>-40 && enemynear,Vel Y<=0) && var(54)%7>ifelse(floor(var(55)/10)>0,5,4) && ifelse(P2bodydist X>170,var(54)<=500,1)
trigger2 = var(54)<=400 && enemy,numproj>0 && P2BodyDist X>130 && ((enemynear,movetype=A && Enemynear,Time>((P2BodyDist X)/10+2))||enemynear,movetype!=A) && inguarddist
trigger3 = ((stateno=100&&time>3)||stateno=101||enemynear,animtime<-24)&&P2movetype=A&&enemynear,time>22
trigger4 = P2movetype!=A&&inguarddist&&enemynear,numhelper&&P2bodydist X>180&&var(54)<=350

;Pカウンター攻撃
[State -1,counter_p]
type = ChangeState
value = 920
triggerall = fvar(38) && roundstate=2 && Statetype!=A && P2Statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = StateNo=910 && (Time=[15,25])
trigger1 = (P2BodyDist X = [ceil(206*const(size.xscale))-const(size.ground.front),ceil(246*const(size.xscale))-const(size.ground.front)]) && random%4=0
trigger2 = (P2BodyDist X = [ceil(128*const(size.xscale))-const(size.ground.front),ceil(246*const(size.xscale))-const(size.ground.front)]) && ((enemynear,time>18 && enemynear,animtime>-10 && (var(56)=[150,850]) && random%3=0)||(var(56)<250&&random%6=0))

;Kカウンター攻撃
[State -1,counter_k]
type = ChangeState
value = 930
triggerall = fvar(38) && roundstate=2 && Statetype!=A && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = StateNo=910 && (Time=[15,25]) && (P2BodyDist X = [(ceil(33*const(size.xscale))-const(size.ground.front))+(enemynear,vel X>3)*20,(ceil(100*const(size.xscale))-const(size.ground.front))+(enemynear,vel X>3)*20]) && random%3=0
trigger1 = P2statetype=A && enemynear,vel Y>1 && (enemynear,pos Y=[-100,-70])

;ガードキャンセル移動（前）
[State -1,gc_f]
type = ChangeState
value = 2100
triggerall = fvar(38) && roundstate=2 && !numhelper(15395)&&var(48)>=0
triggerall = ((Power >= 1000 && (!var(59)||var(59)=3||(var(59)=4&&!(Power<2000&&var(22)))))||(Power>=1500&&var(59)=1)||(var(59)=3 && var(22))||(Power>=3000&&(var(59)=2||var(59)=5))) && var(31)>=0
triggerall = (!fvar(37)&&var(59)=4)||(fvar(37)&&ceil(fvar(14))%512>255)
triggerall = StateNo=150 || StateNo=152
trigger1 = random<9 && P2BodyDist X < 60 && var(31)>=0 && gethitvar(ctrltime)>=17 && backedgebodydist <40 && var(59)!=1
trigger2 = life<28 && gethitvar(ctrltime)>=17 && backedgebodydist <40 && (P2stateno=[1000,3999]) && P2bodydist X<60 && (prevstateno=[150,153]) && random%12=0

;ガードキャンセル攻撃
[State -1,gc]
type = ChangeState
value = 2000
triggerall = fvar(38) && roundstate=2 && !numhelper(15395)&&var(48)>=0
triggerall = ((Power >= 1000 && (!var(59)||var(59)=3||(var(59)=4&&!(Power<2000&&var(22)))))||(Power>=1500&&var(59)=1)||(var(59)=3 && var(22))||(Power>=3000&&(var(59)=2||var(59)=5))) && var(31)>=0
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = (!fvar(37)&&(!var(59)||var(59)=1||var(59)=3||var(59)=4))||(fvar(37)&&ceil(fvar(14))%256>127)
trigger1 = (StateNo=150||StateNo=152) && (((prevstateno=[150,155])&&((P2stateno=[1000,4999])||Gethitvar(damage)))||backedgebodydist<=0||var(31)<10) && (Abs(life-enemy,life)<=300||Life>500)
trigger1 = random <ifelse(Life<22,80,15) && P2bodydist X<(ceil((78+4*1.2*7)*const(size.xscale))-const(size.ground.front)) && var(59)!=1
trigger2 = life<40 && (P2stateno=[1000,3999]) && P2bodydist X<(ceil((78+4*1.2*7)*const(size.xscale))-const(size.ground.front)) && (prevstateno=[150,153]) && random%10=0

;ゲージ溜め動作(Power Charge)
[State -1,charge]
type = ChangeState
value = 950
triggerall = fvar(38) && roundstate=2 && statetype!=A && !numhelper(15395)&&var(48)>=0 && !fvar(35) && !var(42)
triggerall = !var(22) && var(59)=3 && (ctrl || StateNo=3 || StateNo=13 || StateNo=21 || StateNo=22) && !fvar(35)
trigger1 =  (P2Statetype=L && P2stateno!=5120 && enemynear,alive && var(54)<ifelse((100*Life/const(data.life))<30,850+(power>850)*150,650+(power>850)*150) && (P2BodyDist X >100||(P2stateno=[5100,5101])))||(enemynear,hitfall&&enemynear,canrecover)
trigger2 = (P2statetype!=A || (P2statetype=A && enemynear,Pos Y>-40 && enemynear,Vel Y<=0))
trigger2 = P2BodyDist X>=120 && ifelse(power>750,var(54)%11<3,ifelse(fvar(34)>=120,var(54)%8<1,var(54)%12<2))

;パワーMAX発動
[State -1,max]
type = ChangeState
value = 2500
triggerall = fvar(38) && roundstate=2 && statetype!=A && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !fvar(35)
triggerall = Power >= 2000 && var(59)=4 && !var(22)
triggerall = (100*enemy,Life/enemy,const(data.life))>30 && (100*Life/const(data.life))>30
triggerall = (Ctrl||stateno=13||stateno=21||stateno=22)
trigger1 = abs(enemynear,Pos X - Pos X) >= 140 && Random <= ifelse(Power>=3000,40,6)
trigger2 = !(P2stateno=5120&&enemynear,animtime>-17) && p2statetype=L && Random <= ifelse(Power>=3000,400,50)
trigger3 = P2bodydist X<100 && (P2stateno=[5910,5920]) && enemynear,animtime<22 && random%5<=2

;時間差起き上がり
[state -3,varset]
type = varSet
triggerall = fvar(38)=1
triggerall = stateno=5110 && var(2)=1
triggerall = ((!fvar(37)&&(!var(59)||var(59)=2 || var(59)=3)) || (fvar(37) && ceil(fvar(14))%32768>16383))
trigger1 = random%4=1 && Abs(P2bodydist X)<=50 && var(54)%4=0
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
[State -1,run]
type = ChangeState
value = 100
triggerall = fvar(38) && roundstate=2 && !fvar(35) && statetype!=A && !(var(21)&&enemynear,hitfall=1) && !numhelper(15395)&&var(48)>=0
triggerall = ((!fvar(37)&&(var(59)=[3,5]))||(fvar(37)&&ceil(fvar(14))%4>1))
triggerall = ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = var(54)%6=4 && P2BodyDist X>=145
trigger2 = var(54)<=(475+(fvar(34)>=120)*80) && (P2bodydist X=[35,145]) && random%7<4 && P2movetype=H

;ステップ(Dash)
[State -1,step]
type = ChangeState
value = 102
triggerall = fvar(38) && roundstate=2 && !fvar(35) && !(var(21)&&enemynear,hitfall=1) && !numhelper(15395)&&var(48)>=0
triggerall = ((!fvar(37)&&(var(59)=[0,2]))||(fvar(37)&&ceil(fvar(14))%2>0))
triggerall = ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = statetype!=A && (P2BodyDist X=[90,140]) && var(54)%12=5

;バックステップ(Back Dash)
[State -1,b_step]
type = ChangeState
value = 105
triggerall = fvar(38) && roundstate=2 && !fvar(35) && fvar(29)<4 && !(var(21)&&enemynear,hitfall=1) && backedgebodydist>20 && !numhelper(15395)&&var(48)>=0
triggerall = !fvar(37)||(fvar(37)&&(ceil(fvar(14))%2>0||ceil(fvar(14))%4>1))
triggerall = ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = (P2statetype!=A || (enemynear,Pos Y > -30 && enemynear,Vel Y < 0))
trigger1 = statetype!=A && (var(54)%12=[10-(P2bodydist X=[80,120])*2,10]) && (P2BodyDist X=[56,130]) && !fvar(32) && !fvar(36) && !fvar(29)

;---------------------------------------------------------------------
;K通常投げ
[State -1,throw_k]
type = ChangeState
value = ifelse(P2statetype=A,250+(backedgebodydist <=120)*5,810)
triggerall = fvar(38) && roundstate=2 && Statetype!=A && p2statetype!=L && !fvar(35) && !var(21)
triggerall = (P2statetype!=A || (enemynear,Pos Y > -30 && enemynear,Vel Y < 0))
triggerall = !numhelper(15395) && var(48)>=0
triggerall = P2movetype!=H && ABS(P2BodyDist X) <=22
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]))
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (var(54)<(ifelse(prevstateno=101||prevstateno=102||(stateno=21 && time>3),250,120)-(var(15)>=40||(fvar(23)<20&&Power>=1000))*100)||(P2movetype=I && P2statetype=S && (enemynear,time=[18,22])))
trigger1 = (!fvar(33) || (fvar(33)=4&&fvar(30)>6))
trigger2 = fvar(32)>4 && random%8<7

;P通常投げ
[State -1,p_throw]
type = ChangeState
value = ifelse(P2statetype=A,220+(backedgebodydist <=120)*5,800)
triggerall = fvar(38) && roundstate=2 && Statetype!=A && p2statetype!=L && !fvar(35) && !var(21) && !numhelper(15395)&&var(48)>=0
triggerall = (P2statetype!=A || (enemynear,Pos Y > -30 && enemynear,Vel Y < 0))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && P2movetype!=H && P2BodyDist X <=22
trigger1 = (var(54)<(ifelse(prevstateno=101||prevstateno=102||(stateno=21 && time>3),300,140)-(var(15)>=40||(fvar(23)<20&&Power>=1000))*100)||(P2movetype=I && P2statetype=S && (enemynear,time=[18,22])))
trigger1 = (!fvar(33) || (fvar(33)=4&&fvar(30)>6))

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;立ち強パンチ
[State -1,shp]
type = ChangeState
value = 220
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (P2bodydist X=[ceil(200*const(size.xscale))-const(size.ground.front),ceil(246*const(size.xscale))-const(size.ground.front)-ceil(enemynear,vel X)])
trigger1 = var(54)%9=3 && random%13=4 && (!fvar(33)||(fvar(33)&&var(54)%4=0))
trigger2 = fvar(32)>11
trigger2 = (P2Bodydist X =[ceil(180*const(size.xscale))-const(size.ground.front),ceil(246*const(size.xscale))-const(size.ground.front)])
trigger3 = ceil(fvar(13))%32>15 && fvar(37)
trigger3 = (stateno=210||stateno=410) && movecontact=1 && random%3 && (P2Bodydist X =[ceil(180*const(size.xscale))-const(size.ground.front),ceil(246*const(size.xscale))-const(size.ground.front)])

;しゃがみ強パンチ
[State -1,chp]
type = ChangeState
value = 420
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (P2bodydist X=[ceil(180*const(size.xscale))-const(size.ground.front),ceil(210*const(size.xscale))-const(size.ground.front)-ceil(enemynear,vel X)])
trigger1 = var(54)%8=4 && random%11=2 && (!fvar(33)||(fvar(33)&&var(54)%4=0))
trigger2 = fvar(32)>8
trigger2 = (P2Bodydist X =[ceil(130*const(size.xscale))-const(size.ground.front),ceil(180*const(size.xscale))-const(size.ground.front)])

;しゃがみ中パンチ
[State -1,cmp]
type = ChangeState
value = 410
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (P2bodydist X=[ceil(170*const(size.xscale))-const(size.ground.front),ceil(210*const(size.xscale))-const(size.ground.front)-ceil(enemynear,vel X)])
trigger1 = var(54)%7=3 && random%9=2 && (!fvar(33)||(fvar(33)&&var(54)%4=0))

;立ち弱キック
[State -1,slk]
type = ChangeState
value = 230
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (P2bodydist X=[ceil(120*const(size.xscale))-const(size.ground.front),ceil(184*const(size.xscale))-const(size.ground.front)-ceil(enemynear,vel X)])
trigger1 = var(54)%4=3 && random%6=2 && (!fvar(33)||(fvar(33)&&var(54)%4=0))
trigger2 = ceil(fvar(13))%32>15 && fvar(37)
trigger2 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger2 = (P2bodydist X=[ceil(120*const(size.xscale))-const(size.ground.front),ceil(184*const(size.xscale))-const(size.ground.front)-ceil(enemynear,vel X)])
trigger2 = var(54)%3=1 && random%4=2 && (!fvar(33)||(fvar(33)&&var(54)%4=0))

;4しゃがみ強キック
[State -1,4chk]
type = ChangeState
value = 455
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !numhelper(15395)&&var(48)>=0
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||(fvar(32)=[13,15]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = (P2Bodydist X =[ceil(50*const(size.xscale))-const(size.ground.front),ceil(83*const(size.xscale))-const(size.ground.front)]) && var(54)%6=0 && random%16=1 && (!fvar(33)||(fvar(33)&&var(54)%8=0))
trigger1 = !fvar(35)
trigger2 = (fvar(36)=[8,12]) && (P2Bodydist X =[ceil(50*const(size.xscale))-const(size.ground.front),ceil(83*const(size.xscale))-const(size.ground.front)])
trigger2 = !fvar(35)
trigger3 = fvar(32)>6
trigger3 = (P2Bodydist X =[ceil(40*const(size.xscale))-const(size.ground.front),ceil(83*const(size.xscale))-const(size.ground.front)])

;しゃがみ強キック
[State -1,chk]
type = ChangeState
value = 450
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !numhelper(15395)&&var(48)>=0
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||(fvar(32)=[13,15]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = (P2Bodydist X =[ceil((78+20)*const(size.xscale))-const(size.ground.front),ceil((78+40)*const(size.xscale))-const(size.ground.front)]) && var(54)%5=0 && random%19=1 && (!fvar(33)||(fvar(33)&&var(54)%8=0))
trigger1 = !fvar(35)
trigger2 = (fvar(36)=[8,12]) && (P2Bodydist X =[ceil(100*const(size.xscale))-const(size.ground.front),ceil(118*const(size.xscale))-const(size.ground.front)])
trigger2 = !fvar(35)
trigger3 = fvar(32)>10
trigger3 = (P2Bodydist X =[ceil(78*const(size.xscale))-const(size.ground.front),ceil((78+40)*const(size.xscale))-const(size.ground.front)])

;立ち中パンチ
[State -1,smp]
type = ChangeState
value = 210
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18) && !var(21)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (P2bodydist X=[ceil(150*const(size.xscale))-const(size.ground.front),ceil(214*const(size.xscale))-const(size.ground.front)-ceil(enemynear,vel X)])
trigger1 = var(54)%5=3 && random%5=2 && (!fvar(33)||(fvar(33)&&var(54)%4=0))
trigger2 = ceil(fvar(13))%32>15 && fvar(37)
trigger2 = (stateno=230) && movecontact=1 && (P2Bodydist X =[ceil(130*const(size.xscale))-const(size.ground.front),ceil(200*const(size.xscale))-const(size.ground.front)])

;4立ち中パンチ
[State -1,4smp]
type = ChangeState
value = 215
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18) && !var(21)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (enemynear,vel Y=[0,3]) && (P2bodydist X=[10+(enemynear,vel X>0&&backedgebodydist>10)*10,ceil(35*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-85,-65])
trigger1 = var(54)%5<3

;4立ち弱パンチ
[State -1,4slp]
type = ChangeState
value = 205
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18) && !var(21)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (enemynear,vel Y=[0+(enemynear,pos Y<-70)*2,5]) && (P2bodydist X=[-10+(enemynear,vel X>0&&backedgebodydist>10)*10,ceil(43*const(size.xscale))-const(size.ground.front)+(enemynear,vel x>0)*20]) && (enemynear,pos Y=[-85,-45])
trigger1 = var(54)%5<3

;立ち弱パンチ
[State -1,slp]
type = ChangeState
value = 200
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18) && !var(21)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (enemynear,vel Y=[0,4]) && (P2bodydist X=[ceil(44*const(size.xscale))-const(size.ground.front)+(enemynear,vel x>0)*20,ceil(69*const(size.xscale))-const(size.ground.front)+(enemynear,vel x>0)*20]) && (enemynear,pos Y=[-75,-45])
trigger1 = var(54)%7<2

;4立ち中キック
[State -1,4smk]
type = ChangeState
value = 245
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18) && !var(21)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (P2bodydist X=[ceil(50*const(size.xscale))-const(size.ground.front)+(enemynear,vel x>0)*20,ceil(100*const(size.xscale))-const(size.ground.front)+(enemynear,vel x>0)*20])
trigger1 = var(54)%5<3 && (enemynear,vel Y=[0+(enemynear,pos Y<-65)*1,4]) && (enemynear,pos Y=[-75,-55])
trigger2 = fvar(32)=1 &&(P2bodydist X=[ceil(23*const(size.xscale))-const(size.ground.front),ceil(100*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-75,-55])

;立ち中キック
[State -1,smk]
type = ChangeState
value = 240
triggerall = 0;fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||(fvar(32)=[13,15]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = (P2Bodydist X =[ceil((174+40)*const(size.xscale))-const(size.ground.front),ceil((212+40)*const(size.xscale))-const(size.ground.front)])&&var(54)%12=0 && random%20=1 && (!fvar(33)||(fvar(33)&&var(54)%6=0))
trigger2 = fvar(32)=1 &&(P2bodydist X=[ceil(174*const(size.xscale))-const(size.ground.front),ceil(212*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-115,-85])

;立ち強キック
[State -1,shk]
type = ChangeState
value = 250
triggerall = fvar(38) && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(18)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||(fvar(32)=[13,15]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = fvar(38)=1 &&(P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger1 = (P2Bodydist X =[ceil((110+30)*const(size.xscale))-const(size.ground.front),ceil((212+30)*const(size.xscale))-const(size.ground.front)])&&var(54)%ifelse(P2bodydist X<140,3,5)=0 && random%11=1 && (!fvar(33)||(fvar(33)&&var(54)%6=0))
trigger2 = fvar(32)=1 &&(P2bodydist X=[ceil(180*const(size.xscale))-const(size.ground.front),ceil(212*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-125,-85])
trigger3 = (enemynear,vel Y=[0,3+(enemynear,pos Y<-100)*5])
trigger3 = (P2bodydist X=[ceil((160-30)*const(size.xscale))-const(size.ground.front),ceil((212-10)*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-135,-75]) && (enemynear,vel X=[-3,5])
trigger3 = random%15<9 && var(54)%10<7
trigger4 = (enemynear,vel Y=[-2,3]) && (P2bodydist X=[ceil(140*const(size.xscale))-const(size.ground.front),ceil((212-20)*const(size.xscale))-const(size.ground.front)]) && (enemynear,pos Y=[-145,-75])
trigger4 = (P2StateNo=[120,159]) && EnemyNear,Time>16

;4しゃがみ強パンチ
[State -1,4chp]
type = ChangeState
value = 425
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(21)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||fvar(32)>14)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && var(16)<2
trigger1 = (P2Bodydist X =[ceil(0*const(size.xscale))-const(size.ground.front),ceil(84*const(size.xscale))-const(size.ground.front)])
trigger1 = var(54)%7<ifelse((stateno=100||stateno=21),5+(time<12),4)
trigger1 = ifelse(enemynear,vel X>=5,var(54)<=500,1) && random%4=0
trigger2 = (fvar(32)=[8,16]) && random%7<3
trigger2 = (P2Bodydist X =(ceil(54*const(size.xscale))-const(size.ground.front),ceil(104*const(size.xscale))-const(size.ground.front)])
trigger3 = fvar(29)>4 && P2Bodydist X <=(ceil(50*const(size.xscale))-const(size.ground.front))
trigger4 = (P2Bodydist X =[ceil(90*const(size.xscale))-const(size.ground.front),ceil(124*const(size.xscale))-const(size.ground.front)])
trigger4 = var(54)%14<6 && random%8=0;牽制技出がかり潰し用

;4しゃがみ中キック
[State -1,4cmk]
type = ChangeState
value = 445
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(21)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||fvar(32)>14)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && var(16)<2
trigger1 = (P2Bodydist X =[ceil(50*const(size.xscale))-const(size.ground.front),ceil(83*const(size.xscale))-const(size.ground.front)])
trigger1 = var(54)%9<ifelse((stateno=100||stateno=21),6+(time<12),5)
trigger1 = ifelse(enemynear,vel X>=5,var(54)<=500,1) && random%4=0
trigger2 = (fvar(32)=[10,16]) && random%6<2
trigger2 = (P2Bodydist X =[ceil(40*const(size.xscale))-const(size.ground.front),ceil(83*const(size.xscale))-const(size.ground.front)])
trigger3 = fvar(29)>4 && P2Bodydist X <=(ceil(83*const(size.xscale))-const(size.ground.front))

;しゃがみ中キック
[State -1,cmk]
type = ChangeState
value = 440
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !fvar(35) && !numhelper(15395)&&var(48)>=0 && !var(21)
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0))||fvar(32)>14)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && var(16)<2
trigger1 = (P2Bodydist X =[ceil((78+4*4)*const(size.xscale))-const(size.ground.front),ceil((78+4*8)*const(size.xscale))-const(size.ground.front)])
trigger1 = var(54)%8<ifelse((stateno=100||stateno=21),6+(time<12),5)
trigger1 = ifelse(enemynear,vel X>=5,var(54)<=500,1) && random%3=0
trigger2 = (fvar(32)=[10,16]) && random%6<2
trigger2 = (P2Bodydist X =[ceil((78+4*3)*const(size.xscale))-const(size.ground.front),ceil((78+4*8)*const(size.xscale))-const(size.ground.front)])
trigger3 = fvar(29)>5 && P2Bodydist X <=(ceil(73*const(size.xscale))-const(size.ground.front))

;4しゃがみ弱キック/パンチ
[State -1,4clk/p]
type = ChangeState
value = 435-(ceil(fvar(13))%32>15 && fvar(37)&&stateno!=405)*30
triggerall = fvar(38)=1 && roundstate = 2 && Statetype!=A && P2statetype!=L && !var(21) && !fvar(35) && !numhelper(15395)&&var(48)>=0
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132]) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger1 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger1 = (P2Bodydist X =[-15,30]) && ifelse((stateno=[100,101])&&fvar(23)<20,1,var(54)%3!=0) && (!fvar(33)||(fvar(33)&&var(54)%4=0))
trigger2 = enemynear,Pos Y>-40 && (enemynear,Vel Y<0 || enemynear,statetype!=A)
trigger2 = (!fvar(33)||(fvar(33)&&ifelse(fvar(33)=4,var(54)%3=0,var(54)%5=0)))
trigger2 = (ctrl && (prevstateno=425||prevstateno=435)) && Abs(P2bodydist X)<=30 && var(16)<ifelse(fvar(36),4,3) && fvar(8)<3
trigger3 = (P2bodydist X=[10,30+(enemynear,vel X>3)*15+(enemynear,vel X)*2]) && enemynear,P2dist X>0 && enemynear,vel X>=0 && (enemynear,pos Y=[-60-(enemynear,vel Y>5)*7,-50-(enemynear,vel Y>5)*7]) && (enemynear,vel Y=[3,4.9])
trigger3 = random%5<3
trigger4 = fvar(29)>3 && P2Bodydist X <=(ceil(73*const(size.xscale))-const(size.ground.front))

;弱ドリルキック
[State -1,ldri]
type = ChangeState
value = 730
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L && !var(21)
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = Pos Y <=-50
trigger1 = Ctrl && (P2Bodydist X=[ceil((100+(5*1.2*((-Pos Y/2.5)-4)))*const(size.xscale))-const(size.air.front),ceil((100+(5*1.2*((-Pos Y/2.5)+2)))*const(size.xscale))-const(size.air.front)])
trigger1 = random%4=0; && (Pos Y =[-155,-70])

;中ドリルキック
[State -1,mdri]
type = ChangeState
value = 740
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L && !var(21)
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = Pos Y <=-50
trigger1 = Ctrl && (P2Bodydist X=[ceil((69-10+(4*1.2*((-Pos Y/4)-2)))*const(size.xscale))-const(size.air.front),ceil((69-10+(4*1.2*((-Pos Y/4)+2)))*const(size.xscale))-const(size.air.front)])
trigger1 = random%2=0; && (Pos Y =[-135,-70])

;強ドリルキック
[State -1,hdri]
type = ChangeState
value = 750
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L && !var(21)
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
triggerall = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
triggerall = Pos Y <=-50
trigger1 = Ctrl && (P2Bodydist X=[ceil((36+(2.5*1.2*((-Pos Y/5)-2)))*const(size.xscale))-const(size.air.front),ceil((36+(2.5*1.2*((-Pos Y/5)+2)))*const(size.xscale))-const(size.air.front)])
trigger1 = random%9<7; && (Pos Y =[-135,-70])

;ジャンプ強キック
[State -1,jhk]
type = ChangeState
value = 650
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = Ctrl && Vel X=0 && (P2Bodydist X=[ceil(80*const(size.xscale))-(enemynear,backedgebodydist <=0)*10,ceil(188*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])
trigger1 = (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0))
trigger1 = (P2bodydist Y=[-150,-80])
trigger2 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-150,-80])
trigger2 = (P2Bodydist X=[ceil(80*const(size.xscale))-(enemynear,backedgebodydist <=0)*10,ceil(188*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;ジャンプ中キック
[State -1,jmk]
type = ChangeState
value = 640
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (P2Bodydist X=(ceil(132*const(size.xscale))-const(size.air.front),ceil(158*const(size.xscale))-const(size.air.front)])
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = Pos Y >-85 && Pos Y <-45 && random%5<3 && ctrl && Vel Y>1
trigger2 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-40,40])
trigger2 = (P2Bodydist X=(ceil(132*const(size.xscale))-const(size.air.front),ceil(158*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;ジャンプ強パンチ
[State -1,jhp]
type = ChangeState
value = 620
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = (P2Bodydist X=[ceil(86*const(size.xscale))-const(size.air.front),ceil(132*const(size.xscale))-const(size.air.front)])
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = Pos Y >-85 && Pos Y <-45 && random%5<3 && ctrl && Vel Y>1
trigger2 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-30,50])
trigger2 = (P2Bodydist X=[ceil(86*const(size.xscale))-const(size.air.front),ceil(132*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;ジャンプ中パンチ
[State -1,jmp]
type = ChangeState
value = 610
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = Ctrl && Vel X=0 && (P2Bodydist X=[ceil(100*const(size.xscale))-(enemynear,backedgebodydist <=0)*10,ceil(152*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])
trigger1 = (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0))
trigger1 = (P2bodydist Y=[-80,0])
trigger2 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-80,0])
trigger2 = (P2Bodydist X=[ceil(100*const(size.xscale))-(enemynear,backedgebodydist <=0)*10,ceil(152*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;4ジャンプ強キック
[State -1,4jhk]
type = ChangeState
value = 655
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = Ctrl && Vel X=0 && (P2Bodydist X=[-5-(enemynear,backedgebodydist <=0)*10,ceil(82*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])
trigger1 = (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0))
trigger1 = (P2bodydist Y=[-120,-20])
trigger2 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-120,-20])
trigger2 = (P2Bodydist X=[-5-(enemynear,backedgebodydist <=0)*10,ceil(82*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;4ジャンプ強パンチ
[State -1,4jhp]
type = ChangeState
value = 625
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = P2bodydist X<(73*const(size.xscale)-const(size.air.front))
trigger1 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))
trigger1 = Pos Y >-65 && Pos Y <-45 && random%5<3 && ctrl && Vel Y>1.5
trigger2 = Ctrl && Vel X=0 && (P2Bodydist X=[-5-(enemynear,backedgebodydist <=0)*10,ceil(73*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])
trigger2 = (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0))
trigger2 = (P2bodydist Y=[-70,20])
trigger3 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-70,20])
trigger3 = (P2Bodydist X=[-5-(enemynear,backedgebodydist <=0)*10,ceil(73*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;4ジャンプ中キック
[State -1,4jmk]
type = ChangeState
value = 645
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && P2statetype!=L
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = !(P2movetype=H&&(P2stateno=[800,845]))
trigger1 = Ctrl && Vel X=0 && (P2Bodydist X=[-5-(enemynear,backedgebodydist <=0)*10,ceil(88*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15]) && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0))
trigger1 = (P2bodydist Y=[-40,30])
trigger2 = Ctrl && Vel X>0 && (Vel Y > 0||(P2statetype=A&&enemynear,Vel Y>-1&&vel Y<0)) && var(54)%6!=0 && (P2bodydist Y=[-40,30])
trigger2 = (P2Bodydist X=[-20-(enemynear,backedgebodydist <=0)*10,ceil(30*const(size.xscale))-const(size.air.front)+(vel X>2||enemynear,vel X>2)*15])

;ドリル頭突き
[State -1,drih]
type = ChangeState
value = 720
triggerall = fvar(38) && roundstate = 2 && Statetype=A && !numhelper(15395)&&var(48)>=0 && !var(21)
triggerall = !((var(36)=[1,12]) && var(34)=2)&&!(var(51)<=6&&!fvar(37)&&var(59)=5)
triggerall = Pos Y <=-50
trigger1 = Ctrl && P2Bodydist X>200 && P2StateType=A && P2MoveType=H && Enemynear,hitfall && Enemynear,Pos Y <=-40 && random%2=1;吹き飛び相手接近
trigger2 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-40))
trigger2 = Ctrl && Pos Y <=-90 && P2Bodydist X<30 && random%4=2 && FrontEdgeBodydist>200;相手飛び越し

;--------------------------

;背面ガード
[state -2]
type = ChangeState
value = 120
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && enemynear,Statetype!=L && !(((var(36)=[1,12]) && var(34)=2)||((var(37)=[1,12]) && var(35)=2)) &&!var(21)
triggerall = !(!fvar(37)&&Var(59)&&statetype=A)&&!(fvar(37)&&ceil(fvar(14))%2048<1024&&statetype=A)
triggerall = enemynear,p2dist X>0
triggerall = (ctrl||StateNo=3||StateNo=13||StateNo=22)
trigger1 = numhelper(91000)
trigger1 = helper(91000),inguarddist&&!inguarddist

[State -1,guard]
;ガード
type = ChangeState
value = 131
triggerall = fvar(38) && roundstate=2 && StateType!=A &&!var(21) && !(((var(36)=[1,12]) && var(34)=2)||((var(37)=[1,12]) && var(35)=2))
triggerall = P2statetype!=A||(P2statetype=A && enemynear,Vel Y<0 && enemynear,Pos Y>=-40)
triggerall = (P2Movetype = A||inguarddist||(fvar(33)=1&&fvar(30)<3))
triggerall = ((ctrl && fvar(33)) || StateNo=13 || stateno=22)
trigger1 = Abs(P2BodyDist X) <=120
trigger1 = (fvar(32)!=2 || fvar(33)=1) && ifelse(P2bodydist X<40&&fvar(33)&&var(54)%8=0,random%3=0,1)
trigger2 = Abs(P2BodyDist X) >120
trigger3 = (var(54) = [220-(var(59)=2)*220,870]) && (P2BodyDist X >160||(Abs(P2bodydist Y)>60&&enemynear,time>24))
trigger3 = (enemy,numproj>0||(enemy,numhelper&&(enemynear,hitdefattr!=SCA,AA,AT,AP))) && ((enemynear,movetype=A && Enemynear,Time>20) || enemynear,movetype!=A) && random%7<5
trigger3 = !(var(59)=2&&enemy,numproj&&random%20!=0)

;ガード
[State -1,guard]
type = ChangeState
value = Ifelse(StateType=A,132,130)
triggerall = fvar(38) && roundstate=2 && !(((var(36)=[1,12]) && var(34)=2)||((var(37)=[1,12]) && var(35)=2)) &&!var(21)
triggerall = !(Var(59)&&statetype=A)
triggerall = ifelse(enemynear,P2dist X<0&&random<ifelse(fvar(33)=1,750,500),P2movetype=A&&(enemynear,P2dist X=[-(120-const(size.ground.back)),0]),inguarddist)
triggerall = !(P2statetype=A && enemynear,Vel Y<0 && enemynear,Pos Y>=-40)
triggerall = (P2Movetype = A||inguarddist||(fvar(33)=1&&fvar(30)<3))
triggerall = (ctrl||StateNo=3||(P2statetype=A&&(StateNo=13||stateno=21))||StateNo=22)
trigger1 = P2BodyDist X <=120 && (fvar(32)!=2 || fvar(33)=1)
trigger2 = P2BodyDist X >120
trigger3 = (var(54) = [200-(var(59)=2)*200,870]) && (P2BodyDist X >160||(Abs(P2bodydist Y)>60&&enemynear,time>24))
trigger3 = (enemy,numproj>0||(enemy,numhelper&&(enemynear,hitdefattr!=SCA,AA,AT,AP))) && ((enemynear,movetype=A && Enemynear,Time>20) || enemynear,movetype!=A) && random%7<5
trigger3 = !(var(59)=2&&enemy,numproj&&random%20!=0)

[State -1,1]
;ジャンプ
type = ChangeState
value = 40
triggerall = fvar(38) && !fvar(35) && !fvar(29) && (!enemynear,hitfall||var(18)>=4||(enemynear,hitfall&&P2BodyDist X>230)) && !numhelper(15395)&&var(48)>=0 && !var(21)
triggerall = (ctrl||stateno=3||stateno=13||(stateno=[21,22])||(stateno=[120,132])) && StateType != A  && roundstate = 2
trigger1 = enemy,numproj > 0 && (random =[960,1000]) && enemynear,MoveType != H && P2BodyDist X > 150
trigger2 = P2stateno = 5120 && random < 250 && P2BodyDist X <= 80 && var(54)%5<2
trigger3 = P2BodyDist X < 120 && var(54)>960
trigger4 = (P2BodyDist X = [140,190]) && var(54)>880 && !enemy,numproj
trigger5 = P2BodyDist X > 150 && BackEdgeBodyDist < 40 && var(54)>970 && !enemy,numproj
trigger6 = (P2bodydist X=[70,150]) && ((!fvar(37)&&(var(59)=[2,5]))||(fvar(37) && ceil(fvar(14))%4096>2047)) && var(54)%8<ifelse((prevstateno=[200,799])||P2movetype=H,4,3-(random%2=0)-(P2bodydist X>100)) && (!fvar(33)||var(54)<=250)
trigger6 = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<0&&enemynear,pos Y>-40)
trigger7 = enemynear,Vel X >0 && P2BodyDist X <140 && enemynear,Pos Y <-60 && random<(ifelse(P2BodyDist X <60,350,250))
trigger7 = enemynear,Vel Y>-1 && enemynear,Vel Y<=1.0 && var(54)%3=0
trigger8 = (P2BodyDist X=[0,50]) && enemynear,backedgebodydist >10 && var(54)%7<3
trigger8 = (P2statetype!=A || (P2statetype=A&&enemynear,Vel Y<0&&enemynear,Pos Y>-30))

[State -1,1]
;歩き（前）
type = ChangeState
value = 21
triggerall = fvar(38) && roundstate=2 && StateType != A && !fvar(35)
triggerall = !(enemynear,hitfall=1&&enemynear,backedgebodydist<=5) && !numhelper(15395)&&var(48)>=0 && enemynear,numproj=0
triggerall = !((P2bodydist X=[10,50+(enemynear,vel X>3)*15+(enemynear,vel X)*2])&&enemynear,P2dist X>0&&enemynear,vel X>=0&&(enemynear,pos Y=[-60-(enemynear,vel Y>5)*7,-50-(enemynear,vel Y>5)*7])&&(enemynear,vel Y=[.1,2.9])&&var(54)%5<3)
trigger1 = var(54)<ifelse(P2bodydist X>160,620,ifelse(P2bodydist X>100,340,220)) && (ctrl || StateNo=3 || StateNo=13 || (stateno=[120,131]))
trigger1 = ((P2Statetype!=L && (P2BodyDist X >ifelse(fvar(34)>=80,fvar(34)+20,80)||((P2bodydist X=[100,140])&&random%4=0))) || (P2Statetype=L && P2BodyDist X > 70))
trigger2 = P2BodyDist X <40 && (stateNo=52 || (prevstateno=[200,799])) && ctrl && var(54)>700

[State -1,1]
;歩き（後）
type = ChangeState
value = ifelse(inguarddist,120,22)
triggerall = fvar(38) && roundstate=2 && !fvar(35) && enemynear,hitfall=0 && backedgebodydist>5 && !numhelper(15395)&&var(48)>=0
triggerall = !((P2bodydist X=[10,50+(enemynear,vel X>3)*15+(enemynear,vel X)*2])&&enemynear,P2dist X>0&&enemynear,vel X>=0&&(enemynear,pos Y=[-60-(enemynear,vel Y>5)*7,-50-(enemynear,vel Y>5)*7])&&(enemynear,vel Y=[.1,2.9])&&var(54)%5<3)
triggerall = roundstate=2 && StateType != A
triggerall = (ctrl || StateNo=3 || StateNo=13 || (stateNo=21&&time>16))
trigger1 = (var(54)=[500,ifelse(P2Bodydist X>100,620,680)])
trigger1 = ((enemynear,Statetype!=L && (P2BodyDist X = [ifelse(fvar(34)>=80,fvar(34)+20,80),ifelse(fvar(34)>=140,fvar(34)+20,140)])) || (enemynear,Statetype=L && P2BodyDist X > 60))
trigger2 = p2statetype=A && enemynear,Pos Y<-60 && P2BodyDist X<70 && enemynear,vel Y>=0

[State -1,1]
;しゃがみ
type = ChangeState
value = 13
triggerall = fvar(38) && roundstate=2 && StateType != A
trigger1 = (ctrl || stateNo=3) && P2BodyDist X>=60
trigger2 = P2StateNo=5120 && ctrl
trigger3 = var(54)<500 && (prevStateNo=[400,460]) && ctrl
trigger4 = P2BodyDist X<60 && ctrl
trigger5 = (P2bodydist X=[10,50+(enemynear,vel X>3)*15+(enemynear,vel X)*2])&&enemynear,P2dist X>0&&enemynear,vel X>=0&&(enemynear,pos Y=[-60-(enemynear,vel Y>5)*7,-50-(enemynear,vel Y>5)*7])&&(enemynear,vel Y=[.1,2.9])&&var(54)%5<3
;------------------------------------

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;Player
;…～……～……～……～……～……～……～
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;============
;ヨガテンペスト(LV.3/MAX 専用)(Yoga Tempest(LV.3/MAX only))
[State -1,tempest]
type = ChangeState
value = 3200
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (command="tempest"||var(24)=3200)
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;LV.1ヨガボルケイノ(Lv.1 Yoga Volcano)
[State -1, volcano_a]
type = ChangeState
value = 3100
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && (Power>=1500||var(21)))) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && (100*Life/const(data.life))<=30)))
triggerall = (!var(59) && (command="volcano_a" || (Power <2000 && (command="volcano_b" || command="volcano_c")))) || ((var(59)=1||var(59)=3||var(59)=4) && (command="volcano_a" || command="volcano_b" || command="volcano_c"))||var(24)=3100
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;LV.2ヨガボルケイノ(Lv.2 Yoga Volcano)
[State -1, volcano_b]
type = ChangeState
value = 3110
triggerall = !fvar(38) && roundstate=2 && !var(59) && Power>=2000 && Statetype!=A
triggerall = command="volcano_b" || (Power <3000 && command="volcano_c")||var(24)=3110
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;LV.3ヨガボルケイノ(Lv.3 Yoga Volcano)
[State -1, volcano_c]
type = ChangeState
value = 3120
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (var(59) && (command="volcano_a" || command="volcano_b" || command="volcano_c"||var(24)=3120)) || (!var(59) && command="volcano_c")
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;LV.1ヨガストリーム(Lv.1 Yoga Stream)
[State -1, stream_x]
type = ChangeState
value = 3000
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = (((!var(59)||var(59)=4) && Power>=1000 && !var(22)) || (var(59)=1 && (Power>=1500||var(21)))) || (var(59)=3 && ((var(22)&&(100*Life/const(data.life))>30)||(!var(22) && (100*Life/const(data.life))<=30)))
triggerall = (!var(59) && (command="stream_x" || (Power <2000 && (command="stream_y" || command="stream_z")))) || ((var(59)=1||var(59)=3||var(59)=4) && (command="stream_x" || command="stream_y" || command="stream_z"))||var(24)=3000
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;LV.2ヨガストリーム(Lv.2 Yoga Stream)
[State -1, stream_y]
type = ChangeState
value = 3010
triggerall = !fvar(38) && roundstate=2 && !var(59) && Power>=2000 && Statetype!=A
triggerall = command="stream_y" || (Power <3000 && command="stream_z")||var(24)=3010
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;LV.3ヨガストリーム(Lv.3 Yoga Stream)
[State -1, stream_z]
type = ChangeState
value = 3020
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = (!var(59) && Power>=3000)||(var(59)=4 && var(22) && Power>=1000)||((var(59)=2||var(59)=5)&&Power>=3000)||(var(59)=3 && var(22) && (100*Life/const(data.life)<=30))
triggerall = (var(59) && (command="stream_x" || command="stream_y" || command="stream_z"||var(24)=3020)) || (!var(59) && command="stream_z")
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=[1,6])

;~~~~~~~~~~~~~~~~~~~~Special Moves~~~~~~~~~~~~~~~~~~~~

;ヨガテレポート/Yoga Teleport
[State -1,teleport]
type = ChangeState
value = 1300+ifelse((command="teleport_kkk2"||var(24)=1330),30,ifelse((command="teleport_kkk1"||var(24)=1320),20,ifelse((command="teleport_ppp2"||var(24)=1310),10,0)))
triggerall = !fvar(38) && roundstate=2
triggerall = ((var(24)=[1300,1330]) ||command="teleport_kkk2" || command="teleport_kkk1" || command="teleport_ppp2" || command="teleport_ppp1")
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101) && Statetype!=A
trigger2 = Ctrl && Statetype=A && PrevStateNo!=1350
trigger3 = (var(3)=1 || (var(3)=[3,5]))

;ヨガブラスト/Yoga Blast
[State -1,blast]
type = ChangeState
value = 1200+ifelse((command="blast_c"||var(24)=1220),20,ifelse((command="blast_b"||var(24)=1210),10,0))
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = ((var(24)=[1200,1220]) ||command="blast_a" || command="blast_b" || command="blast_c")
triggerall = !numproj
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || (var(3)=[3,5]))

;ヨガフレイム/Yoga Flame
[State -1,flame]
type = ChangeState
value = 1100+ifelse((command="flame_z"||var(24)=1120),20,ifelse((command="flame_y"||var(24)=1110),10,0))
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = ((var(24)=[1100,1120]) ||command="flame_x" || command="flame_y" || command="flame_z")
triggerall = !numproj
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || (var(3)=[3,5]))


;ヨガファイア/Yoga Fire
[State -1,fire]
type = ChangeState
value = 1000+ifelse((command="fire_z"||var(24)=1020),20,ifelse((command="fire_y"||var(24)=1010),10,0))
triggerall = !fvar(38) && roundstate=2 && Statetype!=A
triggerall = ((var(24)=[1000,1020]) ||command="fire_x" || command="fire_y" || command="fire_z")
triggerall = !numproj
trigger1 = (Ctrl || Stateno=40 || (StateNo=52 && Time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = (var(3)=1 || (var(3)=[3,5]))

;----+----+----+----+----+----+----+----+----+----+----+----+----+----+
;回り込み(Rolling)
[State -1]
type = ChangeState
value = 900
triggerall = !fvar(38) && (var(24)=900 || command="ax") && Statetype!=A
triggerall = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101 || (var(3)=4 && Statetype!=A) || (Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])))
trigger1 = !fvar(37) && (!var(59)||var(59)=1||var(59)=4)
trigger2 = fvar(37) && ceil(fvar(14))%32>15

;避け(Dodge)
[State -1]
type = ChangeState
value = 910
triggerall = !fvar(38) && (var(24)=900 || command="ax") && !fvar(31) && statetype!=A
triggerall = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101 || (var(3)=4 && Statetype!=A) || (Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])))
trigger1 = !fvar(37) && var(59)=3
trigger2 = fvar(37) && ceil(fvar(14))%64>31

;Ｐカウンター攻撃(Counter Attack Punch)
[State -1]
type = ChangeState
value = 920
triggerall = !fvar(38) && (roundstate=[2,3]) && Statetype!=A && (command="x" || command="y" || command="z")
trigger1 = StateNo=910 && (Time=[15,25])

;Ｋカウンター攻撃(Counter Attack Kick)
[State -1]
type = ChangeState
value = 930
triggerall = !fvar(38) && (roundstate=[2,3]) && Statetype!=A && (command="a" || command="b" || command="c")
trigger1 = StateNo=910 && (Time=[15,25])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ガードキャンセル攻撃(Counter Attack)
[State -1]
type = ChangeState
value = 2000
triggerall = !fvar(38) && (roundstate=[2,3]) && command="by" && command="holdfwd" && command!="holddown"
triggerall = ((Power >= 1000 && (!var(59)||var(59)=4))||(Power>=1500&&var(59)=1)||(Power>=3000&&(var(59)=2||var(59)=5))||(var(59)=3 && var(22))) && var(31)>=0
triggerall = (StateNo=150||StateNo=152)
trigger1 = !fvar(37)&&(!var(59)||var(59)=1||var(59)=3||var(59)=4)
trigger2 = fvar(37)&&ceil(fvar(14))%256>127

;ガードキャンセル移動（前）(Counter Movement)
[State -1]
type = ChangeState
value = 2100
triggerall = !fvar(38) && (roundstate=[2,3]) && command="ax" && command="holdfwd" && command!="holddown"
triggerall = ((Power >= 1000 && (!var(59)||var(59)=4))||(Power>=1500&&var(59)=1)||(Power>=3000&&(var(59)=2||var(59)=5))||(var(59)=3 && var(22))) && var(31)>=0
triggerall = (StateNo=150||StateNo=152)
trigger1 = !fvar(37)&&var(59)=4
trigger2 = fvar(37)&&ceil(fvar(14))%512>255

;ガードキャンセル移動（後）(Counter Movement)
[State -1]
type = ChangeState
value = 2200
triggerall = !fvar(38) && (roundstate=[2,3]) && command="ax" && command="holdback" && command!="holddown"
triggerall = ((Power >= 1000 && (!var(59)||var(59)=4))||(Power>=1500&&var(59)=1)||(Power>=3000&&(var(59)=2||var(59)=5))||(var(59)=3 && var(22))) && var(31)>=0
triggerall = (StateNo=150||StateNo=152)
trigger1 = !fvar(37)&&var(59)=4
trigger2 = fvar(37)&&ceil(fvar(14))%512>255

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ゲージ溜め動作(Power Charge)
[State -1]
type = ChangeState
value = 950
triggerall = !fvar(38) && (roundstate=[2,3]) && (command="cz"||var(24)=2400) && statetype!=A
triggerall = !var(22) && var(59)=3
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;オリコン発動（地上）(Custom Combo Ground)
[State -1]
type = ChangeState
value = 2400
triggerall = !fvar(38) && (roundstate=[2,3]) && (command="cz"||var(24)=2400)
triggerall = Power >= 3000 && var(59)=1 && statetype!=A
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;オリコン発動（空中）(Custom Combo air)
[State -1]
type = ChangeState
value = 2450
triggerall = !fvar(38) && (roundstate=[2,3]) && (command="cz"||var(24)=2400)
triggerall = Power >= 3000 && var(59)=1 && Statetype=A
trigger1 = Ctrl
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;パワーMAX発動(Power MAX ON)
[State -1]
type = ChangeState
value = 2500
triggerall = !fvar(38) && (roundstate=[2,3]) && (command="cz"||var(24)=2400) && statetype!=A
triggerall = Power >= 1000 && var(59)=4 && !var(22)
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = Time<2 && (stateno=[200,799]) && (prevstateno!=[200,799])

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;時間差起き上がり(Tactical Recovery)
[state -3,varset]
type = varSet
triggerall = !fvar(38) && roundstate=2
triggerall = stateno=5110 && var(2)=const(data.liedown.time)
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
triggerall = !fvar(38) && roundstate=2 && statetype!=A
triggerall = command = "FF" && ctrl
trigger1 = !fvar(37)&&(var(59) =[3,5])
trigger2 = fvar(37)&&ceil(fvar(14))%4>1

;ステップ(Dash)
[State -1]
type = ChangeState
value = 102
triggerall = !fvar(38) && roundstate=2 && statetype!=A
triggerall = command = "FF" && ctrl
trigger1 = !fvar(37)&&(var(59) =[0,2])
trigger2 = fvar(37)&&ceil(fvar(14))%2>0

;バックステップ(Back Dash)
[State -1]
type = ChangeState
value = 105
triggerall = !fvar(38) && roundstate=2 && statetype!=A
triggerall = command = "BB"&&ctrl
trigger1 = !fvar(37)
trigger2 = fvar(37)&&(ceil(fvar(14))%2>0||ceil(fvar(14))%4>1)

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",450,250)+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="c" && movecontact=1
trigger1 = (stateno=[200,550]) && (stateno!=[250,255]) && stateno!=450
trigger1 = stateno!=350 && stateno!=550

;チェーンコンボ(強P)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",420,220)+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="z" && movecontact=1
trigger1 = (stateno=[200,550]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420
trigger1 = stateno!=320 && stateno!=350 && stateno!=550

;チェーンコンボ(中K)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",440,240)+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="b" && movecontact=1
trigger1 = (stateno=[200,550]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420 && (stateno!=[240,245]) && stateno!=440
trigger1 = stateno!=320 && (stateno!=[340,350]) && (stateno!=[540,550])

;チェーンコンボ(中P)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",410,210)+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="y" && movecontact=1
trigger1 = (stateno=[200,550]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420 && (stateno!=[240,245]) && stateno!=440 && (stateno!=[210,215]) && stateno!=410
trigger1 = stateno!=310 && stateno!=320 && (stateno!=[340,350]) && (stateno!=[540,550])

;チェーンコンボ(弱K)
[State -1, Chain]
type = ChangeState
value = ifelse(command="holddown",430,230)+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%32>15 && fvar(37) && statetype!=A
triggerall = command="a" && movecontact=1
trigger1 = (stateno=[200,550]) && (stateno!=[250,255]) && stateno!=450 && (stateno!=[220,225]) && stateno!=420 && (stateno!=[240,245]) && stateno!=440 && (stateno!=[210,215]) && stateno!=410 && stateno!=230 && stateno!=45
trigger1 = stateno!=310 && stateno!=320 && stateno!=330 && (stateno!=[340,350]) && (stateno!=[540,550])

;^^^^^^^^^^^^^^^^^^^^^^^^^^^
;空中チェーンコンボ(強K)
[State -1, Chain]
type = ChangeState
value = 650+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="c" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=610
trigger3 = stateno=620
trigger4 = stateno=630
trigger5 = stateno=640

;空中チェーンコンボ(強P)
[State -1, Chain]
type = ChangeState
value = 620+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="z" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=610
trigger3 = stateno=630
trigger4 = stateno=640
trigger5 = stateno=710
trigger6 = (stateno=[730,740])

;空中チェーンコンボ(中K)
[State -1, Chain]
type = ChangeState
value = 640+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="b" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=610
trigger3 = stateno=630
trigger4 = stateno=710
trigger5 = stateno=730

;空中チェーンコンボ(中P)
[State -1, Chain]
type = ChangeState
value = 610+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="y" && movecontact=1
trigger1 = stateno=600
trigger2 = stateno=630
trigger3 = stateno=730

;空中チェーンコンボ(弱K)
[State -1, Chain]
type = ChangeState
value = 630+(command="holdback")*5
triggerall = !fvar(38)
triggerall = ceil(fvar(13))%64>31 && fvar(37) && statetype=A
triggerall = command="a" && movecontact=1
trigger1 = stateno=600
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;---------------------------------------------------------------------

;Ｐ通常投げ(Punch Throw)
[State -1]
type = ChangeState
value = 800
triggerall = !fvar(38) && roundstate=2 && Statetype!=A && p2statetype!=A && p2statetype!=L
triggerall = ((command="z" && command!="holddown" && command!="holdup" && (command="holdback" || command="holdfwd"))||(var(24)=[800,805]))
trigger1 = Ctrl && P2BodyDist X <=22 && (enemynear,movetype!=H||var(21))

;Ｋ通常投げ(Kick Throw)
[State -1]
type = ChangeState
value = 810
triggerall = !fvar(38) && roundstate=2 && Statetype!=A && p2statetype!=A && p2statetype!=L
triggerall = ((command="c" && command!="holddown" && command!="holdup" && (command="holdback" || command="holdfwd"))||(var(24)=[810,815]))
trigger1 = Ctrl && P2BodyDist X <=22 && (enemynear,movetype!=H||var(21))

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
; 空中挑発(Air Taunt)
[State -1]
type = ChangeState
value = 196
triggerall = !fvar(38)
triggerall = (Command="s"||var(24)=195) && StateType=A
trigger1 = Ctrl && var(7)!=1
trigger2 = var(3)=1 || (var(3)=[3,5])

; 挑発(Taunt)
[State -1]
type = ChangeState
value = 195
triggerall = !fvar(38)
triggerall = (Command="s"||var(24)=195) && StateType!=A
trigger1 = (Ctrl || StateNo=40 || (StateNo=52 && time>=2) || (StateNo=100 && animelemtime(2) >=0) || StateNo=101)
trigger2 = var(3)=1 || (var(3)=[3,5])
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="x" && command!="holddown")||var(24)=200)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち中パンチ
[State -1]
type = ChangeState
value = 210+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="y" && command!="holddown")||var(24)=210)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち強パンチ
[State -1]
type = ChangeState
value = 220+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="z" && command!="holddown")||var(24)=220)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち弱キック
[State -1]
type = ChangeState
value = 230+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="a" && command!="holddown")||var(24)=230)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち中キック
[State -1]
type = ChangeState
value = 240+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="b" && command!="holddown")||var(24)=240)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;立ち強キック
[State -1]
type = ChangeState
value = 250+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="c" && command!="holddown")||var(24)=250)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="x" && command="holddown")||var(24)=400)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="y" && command="holddown")||Var(24)=410)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="z" && command="holddown")||var(24)=420)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="a" && command="holddown")||var(24)=430)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4 || ((stateno=200||stateno=400)&&time>=6)

;しゃがみ中キック
[State -1]
type = ChangeState
value = 440+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="b" && command="holddown")||var(24)=440)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;しゃがみ強キック
[State -1]
type = ChangeState
value = 450+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype!=A && ((command="c" && command="holddown")||var(24)=450)
trigger1 = Ctrl || (StateNo=100 && animelemtime(2) >=0) || StateNo=101
trigger2 = var(3)=4

;-------
;ドリル頭突き
[State -1]
type = ChangeState
value = 720
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && ((command="z"&&command="holddown")||var(24)=720)
triggerall = Pos Y <=-50
trigger1 = Ctrl
trigger2 = var(3)=4

;弱ドリルキック
[State -1]
type = ChangeState
value = 730
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && ((command="a"&&command="holddown")||var(24)=730)
triggerall = Pos Y <=-50
trigger1 = Ctrl
trigger2 = var(3)=4

;中ドリルキック
[State -1]
type = ChangeState
value = 740
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && ((command="b"&&command="holddown")||var(24)=740)
triggerall = Pos Y <=-50
trigger1 = Ctrl
trigger2 = var(3)=4

;強ドリルキック
[State -1]
type = ChangeState
value = 750
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && ((command="c"&&command="holddown")||var(24)=750)
triggerall = Pos Y <=-50
trigger1 = Ctrl
trigger2 = var(3)=4

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && (command="x"||var(24)=600)
trigger1 = Ctrl
trigger2 = var(3)=4

;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 610+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype=A &&( command="y"||var(24)=610)
trigger1 = Ctrl
trigger2 = var(3)=4

;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && (command="z"||var(24)=620)
trigger1 = Ctrl
trigger2 = var(3)=4

;ジャンプ弱キック
[State -1]
type = ChangeState
value = 630+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && (command="a"||var(24)=630)
trigger1 = Ctrl
trigger2 = var(3)=4

;ジャンプ中キック
[State -1]
type = ChangeState
value = 640+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && (command="b"||var(24)=640)
trigger1 = Ctrl
trigger2 = var(3)=4

;ジャンプ強キック
[State -1]
type = ChangeState
value = 650+(command="holdback")*5
triggerall = !fvar(38) && roundstate = 2 && Statetype=A && (command="c"||var(24)=650)
trigger1 = Ctrl
trigger2 = var(3)=4

;ガード
[State -1]
type = ChangeState
value = 120
triggerall = !fvar(38) && roundstate=2 && !var(21) && !var(56) && (stateno!=[120,140]) && inguarddist
triggerall = ctrl && ((command="holdback"&&P2dist X>=0&&(statetype!=A||(statetype=A&&P2dist X>=0)))||(command="holdfwd"&&statetype=A&&P2dist X<0))
trigger1 = statetype!=A&&command!="holdup"
trigger2 = !fvar(37) && !var(59) && var(7)!=1 && statetype=A
trigger3 = fvar(37) && ceil(fvar(14))%2048>1023 && var(7)!=1&&statetype=A
