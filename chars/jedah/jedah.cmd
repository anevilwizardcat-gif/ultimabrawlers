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

;-AIコマンド用-----------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "fwd2"
command = F
time = 1

[Command]
name = "back2"
command = B
time = 1

[Command]
name = "up2"
command = U
time = 1

[Command]
name = "down2"
command = D
time = 1


;-AIコマンド用-----------------------------------------------
[Command]
name = "a3"
command = a
time = 1

[Command]
name = "b3"
command = b
time = 1

[Command]
name = "c3"
command = c
time = 1

[Command]
name = "x3"
command = x
time = 1

[Command]
name = "y3"
command = y
time = 1

[Command]
name = "z3"
command = z
time = 1

[Command]
name = "s3"
command = s
time = 1

[Command]
name = "fwd3"
command = F
time = 1

[Command]
name = "back3"
command = B
time = 1

[Command]
name = "up3"
command = U
time = 1

[Command]
name = "down3"
command = D
time = 1

;-| EX必殺技 |-----------------------------------------------------------
;---------------------------------------------------------------------
;==プロヴァ＝ディ＝セルヴォ(Prova=di=Servo)===
[Command]
name = "servo"
command = ~B, DB, D, DF, a+b
time = 18

[Command]
name = "servo"
command = ~B, DB, D, DF, b+c
time = 18

[Command]
name = "servo"
command = ~B, DB, D, DF, a+c
time = 18

;==フィナーレ＝ロッソ(Finale=Rosso)===
[Command]
name = "rosso"
command = ~D, D, x+y
time = 18

[Command]
name = "rosso"
command = ~D, D, y+z
time = 18

[Command]
name = "rosso"
command = ~D, D, x+z
time = 18

;==サントゥ＝アーリオ(Santuario)===
[Command]
name = "aglio"
command = ~B, D, DB, a+b
time = 18

[Command]
name = "aglio"
command = ~B, D, DB, b+c
time = 18

[Command]
name = "aglio"
command = ~B, D, DB, a+c
time = 18

;-| 必殺技 |-----------------------------------------------------------

;==スプレジオ(Sp=Redio)===
[Command]
name = "sp-redio"
command = ~F, D, DF, x
time = 18

[Command]
name = "sp-redio"
command = ~F, D, DF, y
time = 18

[Command]
name = "sp-redio"
command = ~F, D, DF, z
time = 18

[Command]
name = "sp-redio_2"
command = ~F, D, DF, ~x
time = 18

[Command]
name = "sp-redio_2"
command = ~F, D, DF, ~y
time = 18

[Command]
name = "sp-redio_2"
command = ~F, D, DF, ~z
time = 18

;==ディオ＝セーガ==
[Command]
name = "saga"
command = ~D, DF, F, x
time = 12

[Command]
name = "saga"
command = ~D, DF, F, y
time = 12

[Command]
name = "saga"
command = ~D, DF, F, z
time = 12

[Command]
name = "saga_2"
command = ~D, DF, F, ~x
time = 12

[Command]
name = "saga_2"
command = ~D, DF, F, ~y
time = 12

[Command]
name = "saga_2"
command = ~D, DF, F, ~z
time = 12

;==ネロ＝ファティカ(Nero=Factica)===
[Command]
name = "fatica"
command = ~D, DB, B, x
time = 12

[Command]
name = "fatica"
command = ~D, DB, B, y
time = 12

[Command]
name = "fatica"
command = ~D, DB, B, z
time = 12

[Command]
name = "fatica_2"
command = ~D, DB, B, ~x
time = 12

[Command]
name = "fatica_2"
command = ~D, DB, B, ~y
time = 12

[Command]
name = "fatica_2"
command = ~D, DB, B, ~z
time = 12

;==イラ＝スピンタ(Ira=Spinta)===
[Command]
name = "spinta"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "spinta"
command = ~F, DF, D, DB, B, b
time = 18

[Command]
name = "spinta"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "spinta_2"
command = ~F, DF, D, DB, B, ~a
time = 18

[Command]
name = "spinta_2"
command = ~F, DF, D, DB, B, ~b
time = 18

[Command]
name = "spinta_2"
command = ~F, DF, D, DB, B, ~c
time = 18

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 12

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 12

;-| ２～３個のボタン同時押し技 |-----------------------------------------------
[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
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

;-| ボタン離し設定 |--------------------------------------------------------------
[Command]
name = "~a"
command = ~a
time = 1

[Command]
name = "~b"
command = ~b
time = 1

[Command]
name = "~c"
command = ~c
time = 1

[Command]
name = "~x"
command = ~x
time = 1

[Command]
name = "~y"
command = ~y
time = 1

[Command]
name = "~z"
command = ~z
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

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command];
name = "up"
command = U
time = 1

[Command];
name = "down"
command = D
time = 1

[Command];
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
name = "holdbackdown";Guarding
command = /$DB
time = 1

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
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1
;---------------------------------------------------------------------------

[Statedef -1]

;CPU判別
[state -1]
type = varset
fvar(38) = 1
triggerall = !Ishelper
trigger1 = command="cpu1"
trigger2 = command="cpu2"
trigger3 = command="cpu3"
trigger4 = command="cpu4"
trigger5 = command="cpu5"
trigger6 = command="cpu6"
trigger7 = command="cpu7"
trigger8 = command="cpu8"
trigger9 = command="cpu9"
trigger10 = command="cpu10"
trigger11 = command="cpu11"
trigger12 = command="cpu12"
trigger13 = command="cpu13"
trigger14 = command="cpu14"
trigger15 = command="cpu15"
trigger16 = command="cpu16"
trigger17 = command="cpu17"
trigger18 = command="cpu18"
trigger19 = command="cpu19"
trigger20 = command="cpu20"
trigger21 = command="cpu21"
trigger22 = command="cpu22"
trigger23 = command="cpu23"
trigger24 = command="cpu24"
trigger25 = command="cpu25"
trigger26 = command="cpu26"
trigger27 = command="cpu27"
trigger28 = command="cpu28"
trigger29 = command="cpu29"
trigger30 = command="cpu30"
trigger31 = command="up"^^command="up2"
trigger32 = command="down"^^command="down2"
trigger33 = command="fwd"^^command="fwd2"
trigger34 = command="back"^^command="back2"
trigger35 = command="x"^^command="x2"
trigger36 = command="y"^^command="y2"
trigger37 = command="z"^^command="z2"
trigger38 = command="a"^^command="a2"
trigger39 = command="b"^^command="b2"
trigger40 = command="c"^^command="c2"
trigger41 = command="s"^^command="s2"
trigger42 = command="up"^^command="up3"
trigger43 = command="down"^^command="down3"
trigger44 = command="fwd"^^command="fwd3"
trigger45 = command="back"^^command="back3"
trigger46 = command="x"^^command="x3"
trigger47 = command="y"^^command="y3"
trigger48 = command="z"^^command="z3"
trigger49 = command="a"^^command="a3"
trigger50 = command="b"^^command="b3"
trigger51 = command="c"^^command="c3"
trigger52 = command="s"^^command="s3"
trigger53 = command="up3"^^command="up2"
trigger54 = command="down3"^^command="down2"
trigger55 = command="fwd3"^^command="fwd2"
trigger56 = command="back3"^^command="back2"
trigger57 = command="x3"^^command="x2"
trigger58 = command="y3"^^command="y2"
trigger59 = command="z3"^^command="z2"
trigger60 = command="a3"^^command="a2"
trigger61 = command="b3"^^command="b2"
trigger62 = command="c3"^^command="c2"
trigger63 = command="s3"^^command="s2"
trigger64 = numhelper(90000)
trigger64 = helper(90000),fvar(38) = 1
trigger65 = (Teamside=2||MatchNo>1)&&IsHomeTeam;Arcade
trigger66 = Teammode=Turns && (Numpartner||(NumEnemy && RoundNo>4 && (RoundNo-Enemy,roundsexisted)=1));Suvvv
trigger67 = 0;1にすると常時AI起動になります

;AI起動用ヘルパー
[state -1]
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

;めくりガード
[state -1]
type = helper
trigger1 = !numhelper(91000)
stateno=91000
id = 91000
name = "AI_Guard"
helpertype=Normal
keyctrl = 0
pos = 0,0
postype = P1
size.xscale = 0.001
size.yscale = 0.001
pausemovetime= 999999
supermovetime= 999999
ignorehitpause=1

[state -1]
type = varrandom
triggerall = statetype!=A||(vel Y>0&&(stateno!=[100,105])&&(stateno!=[600,699]))
trigger1 = gametime%30=0
trigger2 = (stateno=40||stateno=100||stateno=105)&&time=1
trigger3 = (stateno=151||stateno=153||stateno=155)&&time=1
v = 51
range = 0,999

;===AI(CPU)===
;\\\\\ダークフォース中コンボ\\\\\

;Jump High Punch
[State -1, slp]
type = ChangeState
value = 620
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)
triggerall = var(22) && !var(12)&&(stateno!=[100,110])
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=640 && movecontact && !var(10) && enemynear,const(size.head.pos.y)<-60 && P2statetype=S && var(16)>1

;Jump High Kick
[State -1, slp]
type = ChangeState
value = 650
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)
triggerall = var(22) && !var(12)&&(stateno!=[100,110])
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = (stateno=640||(stateno=610&&var(16)<=1&&random%5<3)) && movecontact && !var(10)

;Jump Medium Kick
[State -1, slp]
type = ChangeState
value = 640
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)
triggerall = var(22) && !var(12)&&(stateno!=[100,110])
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = (stateno=610||(stateno=600&&var(22)<48)) && movecontact && !var(10)

;Jump Medium Punch
[State -1, slp]
type = ChangeState
value = 610
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)
triggerall = var(22) && !var(12)&&(stateno!=[100,110])
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=630 && movecontact && !var(10)

;Jump Light Kick
[State -1, slp]
type = ChangeState
value = 630
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)
triggerall = var(22) && !var(12)&&(stateno!=[100,110])
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=600 && movecontact && !var(10)

;Jump Light Punch
[State -1, slp]
type = ChangeState
value = 600
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%2<1
triggerall = var(22) && !var(12)&&(stateno!=[100,110])
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = ctrl||(stateno=[120,132])
trigger1 = Pos Y>-50 && ifelse(var(16)>1,random%7<5,random%5<3)

;Jump
[State -1, slp]
type = ChangeState
value = 40
triggerall = fvar(38) && !(P2statetype=L && enemynear,alive) && fvar(37)=2
triggerall = statetype!=A
triggerall = var(22)>0 && var(22)>36
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(120*const(size.xscale))-const(size.ground.front))])
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=[120,132])
trigger1 = ifelse(fvar(36)>0,random%11<4,random%3=0) && var(51)<ifelse(var(16)>1,800+(P2statetype=S&&var(16)<10)*200,700)

;Stand/Crouch Light Kick
[State -1, slp]
type = ChangeState
value = 430-ifelse(var(59),P2bodydist X<(ceil(60*const(size.xscale))-const(size.ground.front)),random%3=0&&movecontact&&!(var(59)=2&&stateno=230))*200
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = !fvar(33)||(fvar(33)&&var(51)%4=0)||((enemynear,animtime=[-8,-4]) && enemynear,time>18 && !enemynear,ctrl && P2movetype!=H && fvar(33)!=1)
triggerall = P2bodydist X<(ceil(105*const(size.xscale))-const(size.ground.front))
triggerall = !(P2movetype=I && P2statetype!=A && enemynear,Vel X>0 && (P2stateno!=[5910,5920]) && enemynear,time>fvar(28) && random%5<3 && (enemynear,animtime!=[-8,-4]))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = var(22)>0 && var(22)>36 && fvar(36) && var(16)<=1 && random%2=0 && (var(51)=[650,900])

;\\\\\永久コンボ用\\\\\

;Jump Medium Punch
[State -1, slp]
type = ChangeState
value = 610
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)&&(fvar(37)=1||var(16)>=12||(var(59)=1&&((enemynear,life=[1,42])||var(16)>=50)))&&fvar(17)
triggerall = statetype=A&&!(var(12)&&Pos Y>-8&&Vel Y>0)&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%2<1
triggerall = (P2bodydist X=[(ceil(130*const(size.xscale))-const(size.ground.front)),(ceil(160*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=100&&time>7&&random%8<7

;Jump Light Punch
[State -1, slp]
type = ChangeState
value = 600
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)&&(fvar(37)=1||var(16)>=12||(var(59)=1&&((enemynear,life=[1,42])||var(16)>=50)))&&fvar(17)
triggerall = statetype=A&&!(var(12)&&Pos Y>-8&&Vel Y>0)&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%2<1
triggerall = P2bodydist X<(ceil(130*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=100&&time>8&&random%9<7

;Jump Light Kick
[State -1, slp]
type = ChangeState
value = 630
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)&&(fvar(37)=1||var(16)>=12||(var(59)=1&&((enemynear,life=[1,42])||var(16)>=50)))&&fvar(17)
triggerall = statetype=A&&!(var(12)&&Pos Y>-8&&Vel Y>0)&&P2bodydist X<(ceil(130*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=50&&var(11)%16<8&&random%9<8&&vel Y>0&&var(12)
trigger2 = stateno=600&&animelemtime(3)>0&&(!movecontact||var(10)<=0) && random%5<4&&var(59)=1

;Jump Medium Kick
[State -1, slp]
type = ChangeState
value = 640
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)&&fvar(37)=2
triggerall = statetype=A&&!(var(12)&&Pos Y>-8&&Vel Y>0)&&P2bodydist X<(ceil(130*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=630&&animelemtime(2)>2&&(!movecontact||var(10)<=0) && random%5<4&&var(59)=1&&((enemynear,life=[1,42])||var(16)>=50)

;Jump High Punch
[State -1, slp]
type = ChangeState
value = 620
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)&&fvar(37)=2&&fvar(17)
triggerall = statetype=A&&!(var(12)&&Pos Y>-8&&Vel Y>0)&&P2bodydist X<(ceil(160*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=100&&time>7&&!(Pos Y>-10&&Vel Y>0)&&random%10<9&&var(16)<12&&!var(59)
trigger2 = stateno=630&&animelemtime(2)>0&&(!movecontact||var(10)<=0) && random%5<4&&var(59)=1&&var(16)<50&&(enemynear,life!=[1,42])

;Dash
[State -1, slp]
type = ChangeState
value = 100
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)&&fvar(37)
triggerall = statetype!=A&&P2bodydist X<(ceil(160*const(size.xscale))-const(size.ground.front))
trigger1 = (ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])||stateno=52)&&fvar(17)&&random%10<9&&var(16)<ifelse(var(59)=1,53,15)


;Stand/Crouch Light Punch
[State -1, slp]
type = ChangeState
value = 400
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && var(59)!=2
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(100*const(size.xscale))-const(size.ground.front))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = random%7<5 && fvar(17)&&var(16)>ifelse(var(59)=1,52,13) && fvar(36)>0
trigger2 = stateno=400 && movecontact && var(10)<=0 && ((time=[4,5])||(movecontact=[10,12])) && P2bodydist X<(ceil(65*const(size.xscale))-const(size.ground.front))

;\\\\\遠距離\\\\\
;dio saga
[State -1, saga]
type = ChangeState
value = 1100+(Power>=3000&&random%3<ifelse(Power>=4000,3,1)&&var(59)!=2)*50
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A && !numhelper(6000)
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = (fvar(26)<fvar(28)&&fvar(27)<fvar(28))||random<=300
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=[120,132])
trigger1 = P2bodydist X>180 && var(51)%5=0 && random%9=0 && fvar(37)!=2 && fvar(16)<(5-fvar(37))
trigger2 = P2bodydist X>180 && (stateno=240||stateno=440) && (prevstateno!=[200,799]) && time<3 && var(51)%5<2 && fvar(37)=2 && fvar(16)<3;空キャンゲージ溜め用

;ゲージ溜め用
;Nero fatica
[State -1, saga]
type = ChangeState
value = 1300
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A && var(59)=2 && power<2500
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=[120,132])
trigger1 = P2bodydist X>160 && var(51)%ifelse(P2statetype=L&&(enemynear,anim!=[5120,5129]),4,9)<3 && random%7=0 && (!numhelper(6000)||random<200)
trigger2 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=[120,132])
trigger2 = P2bodydist X>120 && var(51)%5<3 && P2statetype=L&&(enemynear,anim!=[5120,5129]) && random%5=0 && fvar(33)<2

;ゲージ溜め用
;Crouch Medium Kick
[State -1, saga]
type = ChangeState
value = 440
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A && var(59)!=2
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])||(stateno=[120,132])
trigger1 = P2bodydist X>200 && var(51)%3=0 && random%7=0 && (!numhelper(6000)||random<200) && fvar(33)<2

;\\\\\中～遠距離\\\\\
;Stop Dark Force santu ario
[State -1, slp]
type = ChangeState
value = 2050
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive) && statetype!=A && var(22)>0 && !var(59)
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = P2bodydist X>140 && random%3=0 && var(51)%17<7

;finale rosso
[State -1, slp]
type = ChangeState
value = 3100
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !enemynear,hitfall
triggerall = Power>=1000
triggerall = statetype!=A
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = power>=2000 && (P2bodydist X=[160,180]) && ifelse(fvar(37)=1,random%9=0,random%5=0) && fvar(37)!=2 && var(51)%17<ifelse(numhelper(6000),ifelse(Power>=4000,5,4),ifelse(P2statetype=L,3,1))*ifelse(var(50)>1,2,1); && fvar()←一定時間相手が止まっているか
trigger2 = power>=2000 && P2bodydist X>180 && ifelse(fvar(37)=2&&!numhelper(6000),random%15=0,ifelse(fvar(37)=1,random%13=0,random%7=0)) && var(51)%19<ifelse(numhelper(6000),ifelse(Power>=3000,5,3),ifelse(P2statetype=L,2,1))*ifelse(var(50)>1,2,1)

;balzo perdono
[State -1, slp]
type = ChangeState
value = 110
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = !(pos y>=-20 && var(59)=2)
triggerall = statetype=A&&!(stateno=50&&time<1&&(prevstateno!=[600,799]))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)||1
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))
triggerall = ctrl||((stateno=[100,105])&&!(Pos Y>-10&&Vel Y>0))
trigger1 = ((P2bodydist X=[80,100])||P2bodydist X>140) && !fvar(33); && !(var(50)>1&&P2bodydist X<140)
trigger1 = Pos Y>ifelse(var(59)=1||var(59)=2,-115,-95) && Pos Y<ifelse(P2bodydist X>160&&Vel Y<0,-35,-20)
trigger1 = ifelse(stateno=100,var(51)<80&&P2bodydist X>80,ifelse(stateno=105,var(51)<350,ifelse(numhelper(6000),var(51)%7<4,var(51)%11<ifelse(var(59)=2,4,6))))
trigger2 = backedgebodydist<=10 && P2bodydist X<80 && Pos Y<-100 && random%4=0

;\\\\\中距離\\\\\
;dio saga
[State -1, saga]
type = ChangeState
value = 1100
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && (!(P2statetype=L && enemynear,alive)||(P2stateno=[5100,5110]))
triggerall = statetype!=A && !numhelper(6000)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = (P2bodydist X=[140-(!fvar(37))*80,180]) && ifelse(P2statetype=L,var(51)%4=0,ifelse(!fvar(37),var(51)%5=0,var(51)%7=0)) && random%9=0
trigger1 = !(fvar(37)=2&&P2statetype!=L)
trigger2 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger2 = (P2bodydist X=[60,120]) && var(58)%5<2 && P2statetype=L && enemynear,vel Y!=0 && random%3=0

;ira spinta
[State -1, slp]
type = ChangeState
value = 1500+((movecontact||P2bodydist X>60)&&Power>=5000&&random<=750)*50
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype=A
trigger1 = ctrl&&var(51)%35>(ceil(fvar(37)*1.5)+30-(var(50)>1)*20) && (P2bodydist X=[100,140]) && Pos Y<-90 && random%5=0
trigger2 = (stateno=600||stateno=630||(stateno=640&&!(var(59)=2&&!var(12)))) && (prevstateno!=[600,799]) && (movecontact=[1,13]) && var(10)<=0 && Pos Y<-40 && P2bodydist X<60;Cancelation
trigger2 = var(51)%20>(ceil(fvar(37)*1.5)+12-(var(50)>1)*7)
trigger3 = (stateno=610||stateno=620||stateno=640) && (prevstateno!=[600,799]) && var(12) && (var(10)<=0||!movecontact);Chain Combo
trigger3 = var(51)%17>(ceil(fvar(37)*1.5)+10-(var(50)>1)*7) && Pos Y<-40 && P2bodydist X<40
trigger4 = (prevstateno!=[600,799]) && var(10)<=0 && var(22)
trigger4 = (stateno=610||stateno=620||stateno=640)&&var(51)%17>(ceil(fvar(37)*1.25)+13) && Pos Y<-40 && P2bodydist X<80

;dio saga air
[State -1, slp]
type = ChangeState
value = 1200+(Power>=1000&&ifelse(P2bodydist X<120,random%2<ifelse(Power>=4000,2,1),Power>3000&&random%3<ifelse(Power>=4000,3,1)))*50
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && (!(P2statetype=L && enemynear,alive)||P2stateno=5110)
triggerall = statetype=A && ((Vel Y>-4 && Pos Y<-20)||var(22)) && !numhelper(6000)
trigger1 = (fvar(26)<fvar(28)&&fvar(27)<fvar(28))||random<=150
trigger1 = ctrl||((stateno=[100,105])&&!(Pos Y>-20&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(!var(10)||!movecontact))
trigger1 = (ctrl&&P2bodydist X>100)||(!ctrl&&(P2bodydist X=[120,160]))
trigger1 = (Pos Y>-60 && P2bodydist X<=160 && !(Pos Y<-30 && !var(22) && random%5<2))||P2bodydist X>160||(!sysvar(1)&&P2bodydist X>=145)||stateno=110
trigger1 = ifelse(stateno=105,var(51)<750,ifelse(stateno=110,var(51)<350,var(51)<ifelse(var(22)>0,400,450+(var(59)=2)*100)))
trigger2 = (stateno=[600,799]) && (prevstateno!=[600,799]) && var(12) && (var(10)<=0||!movecontact);Cancelation
trigger2 = Pos Y>-70 && (P2bodydist X=[70-(var(22)>0&&stateno=610)*20,120]) && ifelse(var(22)>0&&Pos Y>=-20,var(51)%5<2,var(51)%7<2) && time>6
trigger3 = (stateno=[600,799]) && (var(10)<=0||!movecontact) && var(22) && (prevstateno!=[600,799])
trigger3 = Pos Y>-60 && (P2bodydist X=[80,120]) && var(51)%4=0 && time>6
trigger4 = stateno=110 && var(10)<=0 && AnimElemTime(5)>=0 && random%5<2 && var(51)%7<ifelse(AnimElemTime(8)>=0,5,2)
trigger5 = stateno=640 && (time=[4,5]) && var(11)%4>=2 && prevstateno=50 && Pos Y<-80 && random%7<2 && P2bodydist X>=120

;Jump High Punch
[State -1, slp]
type = ChangeState
value = 620
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%8<4&&!(var(12)&&Pos Y>-8&&Vel Y>0)
trigger1 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=610 && (movecontact=[1,12]) && !var(10) && !var(12) && (!var(59)||var(22)>0||var(23)>0) && var(54)%5>2 && Vel Y<=2
trigger2 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(160*const(size.xscale))-const(size.ground.front))])
trigger2 = stateno=100&&time>7&&!(Pos Y>-10&&Vel Y>0)&&random<165 && fvar(37)&&var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50)
trigger2 = ifelse(P2bodydist X>=(ceil(100*const(size.xscale))-const(size.ground.front)),var(51)%5<3,1)
trigger2 = ifelse(var(59)=2,P2bodydist X>=(ceil(100*const(size.xscale))-const(size.ground.front)),1)
trigger3 = stateno=50 && var(11)=2 && (prevstateno=[600,799]) && Vel Y>0 && var(51)%2=0

;Jump Medium Punch
[State -1, slp]
type = ChangeState
value = 610
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%4<2&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = !(enemynear,vel Y<0&&vel Y<0&&(stateno!=[100,110]))
triggerall = (P2bodydist X=[(ceil(100*const(size.xscale))-const(size.ground.front))+(vel X>0&&stateno=50)*20,(ceil(180*const(size.xscale))-const(size.ground.front))+(vel X>0&&stateno=50)*20])
triggerall = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20&&var(51)%5<2)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger1 = ctrl&&(((Pos Y=[-90,-50])&&random%9=0&&var(51)%5<ifelse(!sysvar(1)||backedgebodydist<=5,2,3)&&vel Y<=0)||(((vel Y<0&&fvar(31)>=fvar(28))||(vel Y>2&&var(51)%5>ifelse(!sysvar(1)||backedgebodydist<=5,2,3)&&(Pos Y=[-75,-60])))&&random%3=0))
trigger2 = ((stateno=[100,110])&&(Pos Y<-10||var(51)%7<5)&&random%3=0)
trigger2 = (stateno=100&&var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50))||stateno!=100

;Jump Medium Kick
[State -1, slp]
type = ChangeState
value = 640
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%32<16&&!(var(12)&&Pos Y>-8&&Vel Y>0)
trigger1 = stateno=610 && (movecontact=[1,12]) && var(10)<=0 && !var(10) && !var(12) && (!var(59)||var(22)>0||var(23)>0) && Vel Y<=2

;Jump Light Kick
[State -1, slp]
type = ChangeState
value = 630
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%32<16&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(140*const(size.xscale))-const(size.ground.front)+(vel X>0)*20)
trigger1 = (ctrl||(stateno=50 && var(11)=2 && (prevstateno=[600,799]))) && Vel Y>3 && var(51)%2!=0 && var(51)<650

;Back Dash
[State -1, slp]
type = ChangeState
value = 105
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))||random<=100
triggerall = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = (P2bodydist X=[(ceil(100*const(size.xscale))-const(size.ground.front)),(ceil(160*const(size.xscale))-const(size.ground.front))])
trigger1 = var(51)%9<2 && random%9=0 && backedgebodydist>20 && !numhelper(6000)

;Dash
[State -1, slp]
type = ChangeState
value = 100
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)||(P2stateno=5040&&P2movetype=H&&enemynear,vel Y>1&&enemynear,pos Y>-55)
triggerall = !((fvar(29)>fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))||random<=100
triggerall = !fvar(33)||(fvar(33)&&var(51)%4=0)
triggerall = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = (P2bodydist X=[(ceil(120*const(size.xscale))-const(size.ground.front)),(ceil(240*const(size.xscale))-const(size.ground.front))])
trigger1 = ifelse((fvar(24)>0||P2movetype=H||fvar(22)<=0),var(51)%7<4,var(51)%11<ifelse(P2bodydist X>130,4,2)) && ifelse(P2movetype=H,random%5<3,random%7=0) && !(P2bodydist X<120 && var(50)>1) 
trigger1 = !(P2bodydist X<80&&!fvar(24)&&P2movetype!=H&&numhelper(6000)&&fvar(22)>=0)&&!(P2statetype=L&&enemynear,alive) && (!fvar(33)||random%2=0)
trigger2 = (P2bodydist X=[-15,(ceil(120*const(size.xscale))-const(size.ground.front))]) && var(50)<=1
trigger2 = var(51)%5<3 && ifelse(stateno=52||prevstateno=52,random%7<ifelse(P2statetype=L&&P2bodydist X>30,3,5),random%5<3) && (fvar(36)<0||(fvar(36)>0&&random<=600)) && !var(22) && !(P2statetype=L&&(P2stateno=[5100,5110]))
trigger3 = P2stateno=5120 && P2bodydist X<80 && (enemynear,animtime=[-10,-8])&&var(51)%5<3
trigger4 = numhelper(6000) && P2bodydist X<100 && var(51)%5<ifelse((ceil(100*const(size.xscale))-const(size.ground.front)),3,5) && random%4=0
trigger4 = (helper(6000),stateno=6050||helper(6000),stateno=6060)
trigger5 = P2statetype=L && P2bodydist X>160 && random%3=0 && P2stateno!=5120
trigger6 = P2stateno=5040&&P2movetype=H&&enemynear,vel Y>1 && P2bodydist X<120 && var(51)%5<3 && random%5<2
trigger7 = numhelper(6000)
trigger7 = ifelse((helper(6000),stateno=6050||helper(6000),stateno=6055),var(51)%5<(2+(P2bodydist X<=120)*2),var(51)%7<(2+(P2bodydist X<=100)*2)) && random%5<2
trigger8 = (P2stateno=5040&&P2movetype=H&&enemynear,vel Y>1&&enemynear,pos Y>-55)&&var(51)%ifelse(P2bodydist X<(ceil((108-(enemynear,vel X<0&&enemynear,backedgebodydist>10)*20)*const(size.xscale))-const(size.ground.front)),9,7)<2

;Crouch High Kick
[State -1, slp]
type = ChangeState
value = 450
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)||fvar(32)=1
triggerall = P2bodydist X<(ceil(107*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=240 && movecontact && !var(10) && var(16)>1 && var(51)%11<ifelse(enemy,life<40||fvar(36)>0||var(50)>1||var(59)=2||prevstateno=410||fvar(32)>=4,11,4) && !(var(59)<2&&var(16)>11&&enemynear,life>42);Chain Combo
trigger2 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger2 = fvar(32)=1 && enemynear,vel Y>0 && enemynear,pos Y<ifelse(enemynear,vel Y>5,-110,-90) && var(51)%7<4 && random%3=0

;Crouch High Punch
[State -1, slp]
type = ChangeState
value = 420
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(135*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=240 && movecontact && !var(10) && var(16)>1 && var(51)%11<ifelse(enemy,life<40,8,3);Chain Combo
trigger2 = stateno=410 && movecontact && !var(10) && !fvar(37);Chain Combo

;Stand High Punch
[State -1, slp]
type = ChangeState
value = 220
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(155*const(size.xscale))-const(size.ground.front))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = P2bodydist X>(ceil(120*const(size.xscale))-const(size.ground.front)) &&  ((p2movetype!=H&&random%11=0)||stateno=21||(P2movetype=H&&random%5=0)) && var(51)%11<ifelse(!fvar(37),5,2) && !numhelper(6000)

;Crouch Medium Punch
[State -1, slp]
type = ChangeState
value = 410
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(135*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=430 && movecontact && !var(10) && !fvar(37);Chain Combo
trigger2 = (stateno=430||stateno=230) && movecontact && !var(10) && fvar(37)>=1 && P2bodydist X<=5 && fvar(36)<0 && var(51)%5<ifelse(var(50)>1,5,3);Chain Combo

;Crouch Medium Kick
[State -1, slp]
type = ChangeState
value = 440
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
triggerall = !(P2movetype=I && P2statetype!=A && enemynear,Vel X>0 && (P2stateno!=[5910,5920]) && enemynear,time>fvar(28) && random%5<3)
trigger1 = P2statetype=A && (enemynear,pos Y=[-80-(enemynear,vel Y>6)*20,-55-(enemynear,vel Y>6)*20]) && (fvar(31)>=fvar(28)||fvar(32)=1) && enemynear,vel Y>=0
trigger1 = P2bodydist X=[(ceil((58+(enemynear,vel X>2)*25-(fvar(32)=1)*70)*const(size.xscale))-const(size.ground.front)),(ceil((108+(enemynear,vel X>2)*25+(random<300)*20)*const(size.xscale))-const(size.ground.front))]
trigger1 = random%4=0 && var(51)%7<ifelse(fvar(32)=1&&enemynear,power<1000,7,5)
trigger2 = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
trigger2 = (P2bodydist X=[(ceil((92-(fvar(24)=[4,6])*20)*const(size.xscale))-const(size.ground.front)),(ceil(128*const(size.xscale))-const(size.ground.front))])
trigger2 = (random%4=0||(fvar(24)=[4,7])) && var(51)%13<ifelse((fvar(24)=[4,7]),5,3) && (!fvar(33)||(fvar(33)&&var(51)%4=0)) && !fvar(36)
trigger3 = (P2bodydist X=[-15,(ceil(118*const(size.xscale))-const(size.ground.front))]) && numhelper(6000)
trigger3 = (helper(6000),stateno=6050||helper(6000),stateno=6060)&&abs(helper(6000),pos X-enemynear,Pos X)<80 && var(51)%5>=ifelse((ceil(100*const(size.xscale))-const(size.ground.front)),3,5) && random%3=0
trigger4 = (P2stateno=5040&&P2movetype=H&&enemynear,vel Y>1&&enemynear,pos Y>-55)&&var(51)%7>4&&P2bodydist X<(ceil((108-(enemynear,vel X<0&&enemynear,backedgebodydist>10)*20)*const(size.xscale))-const(size.ground.front))

;Stand Medium Kick
[State -1, slp]
type = ChangeState
value = 240
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = !fvar(33)||(fvar(33)&&var(51)%ifelse((enemynear,animtime=[-7,-3])&&fvar(33)>=2,2,4)=0)||((enemynear,animtime=[-10,-5]) && enemynear,time>18 && !enemynear,ctrl && P2movetype!=H && fvar(33)!=1)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = !(P2movetype=I && P2statetype!=A && enemynear,Vel X>0 && (P2stateno!=[5910,5920]) && enemynear,time>fvar(28) && random%5<3 && (enemynear,animtime!=[-10,-5]))
triggerall = (P2bodydist X=[-15,(ceil((135-(movecontact>0)*15+(random<250)*15)*const(size.xscale))-const(size.ground.front))])
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = P2bodydist X>(ceil(80*const(size.xscale))-const(size.ground.front)) && ((p2movetype!=H&&random%5=0)||stateno=21||P2movetype=H||(fvar(24)=[1,3]))&&(random%4=0||(fvar(33)>=1&&random%5<3)||(fvar(24)=[1,3])) && var(51)%11<6
trigger2 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger2 = fvar(36)>=8 && P2bodydist X>(ceil(80*const(size.xscale))-const(size.ground.front)) && random%5<3 && !fvar(17)
trigger3 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger3 = random%5<2 && var(51)%7<5 && enemynear,time>fvar(28) && (enemynear,animtime=[-10,-5]) && !enemynear,ctrl && P2movetype!=H;反撃確定時
trigger3 = P2bodydist X>=(ceil(105*const(size.xscale))-30-const(size.ground.front))

;Nero Fatica
[State -1, slp]
type = ChangeState
value = 1300+(Power>=3000&&random<=750)*50
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && backedgebodydist>20
triggerall = P2statetype=A && (enemynear,pos Y=[-100-(enemynear,vel Y>5)*20,-65-(enemynear,vel Y>5)*20]) && fvar(31)>=(fvar(28)+6) && enemynear,vel Y>=0 && !enemynear,hitfall
triggerall = P2bodydist X=[(ceil((45+(enemynear,vel X>2)*30-(fvar(32)=1)*20)*const(size.xscale))-const(size.ground.front)),(ceil((80+(enemynear,vel X>2)*30)*const(size.xscale))-const(size.ground.front))]
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = random%4=1 && ifelse(fvar(32)=1,var(51)%7<5,var(51)%5<2) && (enemynear,vel X>=0||enemynear,backedgebodydist<=5)

;Stand Light Punch
[State -1, slp]
type = ChangeState
value = 200
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = P2statetype=A && (enemynear,pos Y=[-90,-40]) && fvar(31)>=fvar(28) && enemynear,vel Y>=0
triggerall = P2bodydist X=[-10,(ceil((90+(enemynear,vel X>2||enemynear,backedgebodydist<=5)*20)*const(size.xscale))-const(size.ground.front))]
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = random%4=0 && var(51)%7<5 && (P2stateno=[154,155]) && ((projcontacttime(6000)=[1,15])||fvar(24)<0||fvar(36)<0)

;\\\\\近距離\\\\\
;Dark Force santu ario
[State -1, slp]
type = ChangeState
value = 2000
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && var(59)<2
triggerall = !var(22) && Power>=1000 && !var(29)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
trigger1 = (P2bodydist X=[(ceil(10*const(size.xscale))-const(size.ground.front)),(ceil(90*const(size.xscale))-const(size.ground.front))])
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = ifelse(fvar(33),random%5=1,random%7=1) && ifelse(fvar(37)=2,var(51)%110<ifelse(Power>=1000,12,ceil(floor(Power/1000)*1.25)),var(51)%135<ifelse(Power>=1000,12,ceil(floor(Power/1000)*1.25)))
trigger2 = (P2bodydist X=[(ceil(15*const(size.xscale))-const(size.ground.front)),(ceil(100*const(size.xscale))-const(size.ground.front))]) && numhelper(6000) && var(51)%11<ifelse(Power>=3000,5,3) && random%5<2
trigger2 = helper(6000),stateno=6050 && abs(enemynear,pos x-helper(6000),pos X)<100 && fvar(37)=2

;prova di servo
[State -1, slp]
type = ChangeState
value = 3000
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && (!(P2statetype=L && enemynear,alive)||P2stateno=5110)
triggerall = Power>=2000;1000
triggerall = statetype!=A && fvar(37)
trigger1 = ((prevstateno=200||prevstateno=400)&&(stateno=200||stateno=400))||((prevstateno=230||prevstateno=430)&&(stateno=230||stateno=430))
trigger1 = var(51)%ifelse((enemynear,life=[8,140]),10,13)<ifelse(Power>=4000,5,ifelse(var(51)<=440,ceil((Power-1000)/600),floor((Power-1000)/600)))
trigger1 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,15]) && !var(10) && var(59)!=2;Cancelation
trigger2 = (stateno=230||stateno=430) && (movecontact=[1,13]) && var(10)<=0 && !(var(59)=2&&stateno=prevstateno);Cancelation
trigger2 = P2bodydist X>(ceil(ifelse(var(59)=2,60-(random<500)*20,80)*const(size.xscale))-const(size.ground.front)) && (var(59)=2||var(51)<=700)
trigger2 = var(51)%ifelse((enemynear,life=[8,140]),10,13)<ifelse(Power>=4000,5,ifelse(var(51)<=440,ceil((Power-1000)/600),floor((Power-1000)/600)))


;ES dio saga
[State -1, slp]
type = ChangeState
value = 1150-(!fvar(37)&&random%2=0)*50
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && (!(P2statetype=L && enemynear,alive)||P2stateno=5110)
triggerall = Power>=1000
triggerall = statetype!=A && !numhelper(6000)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
trigger1 = (((stateno=200||stateno=400)&&(prevstateno=200||prevstateno=400))||((stateno=230||stateno=430)&&(prevstateno=230||prevstateno=430||P2bodydist X>50))) && (movecontact=[1,13]) && var(10)<=0 && var(59)!=2;Cancelation
trigger1 = var(51)<(ifelse(Power>=3000&&(prevstateno=230||prevstateno=430)&&var(59)!=2,800,ifelse(Power>=2000,450,300))-(var(59)>=1)*150)
trigger1 = P2bodydist X>(ceil(ifelse(prevstateno=200||prevstateno=230||prevstateno=400||prevstateno=430,40,80)*const(size.xscale))-const(size.ground.front))
trigger1 = !(enemynear,life<=(105-(var(59)=2)*21+(var(53)>1)*35))
trigger2 = (stateno=230||stateno=430) && (movecontact=[1,13]) && var(10)<=0 && !(var(59)=2&&stateno=prevstateno);Cancelation
trigger2 = P2bodydist X>(ceil(ifelse(var(59)=2,60-(random<400)*30,80)*const(size.xscale))-const(size.ground.front)) && (var(59)=2||var(51)<=700) && var(51)%11<ifelse(var(16)>1,5,4)

;sangue passare(サングェ＝パッサーレ)
[State -1, slp]
type = ChangeState
value = ifelse(P2statetype=A,240+(random%2=0)*10,1400)
triggerall = fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = P2bodydist X<=(ceil(46*const(size.xscale))-const(size.ground.front))&&P2movetype!=H&&!(P2statetype=L&&enemynear,alive)
triggerall = !var(31)&&var(59)!=2
triggerall = P2statetype!=A||(P2statetype=A&&enemynear,vel Y<0&&enemynear,pos Y>-40)
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = fvar(24)<(-2+(var(59)=1)*2) && random>(400+(2-fvar(37))*210) && var(51)%5<ifelse(var(59)=1,4,2)

;sp-redio(S2,CFJ)
[State -1, slp]
type = ChangeState
value = 1005+(Power>=1000)*50
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
trigger1 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0&&var(59)>0;Cancelation
trigger1 = var(16)>1 && !(var(59)=2&&stateno=prevstateno) && (prevstateno=400||prevstateno=230||prevstateno=430||var(16)>5||var(59)=2) && !(P2bodydist X>25&&var(59)=1&&Power<1000)
trigger1 = !(enemynear,life<=(105-(var(59)=2)*21+(var(53)>1)*35))

;Jump Light Punch
[State -1, slp]
type = ChangeState
value = 600
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%2<1&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)||(P2stateno=5040&&P2movetype=H&&enemynear,vel Y>1&&enemynear,pos Y>-45)
triggerall = (P2bodydist X=[-25,(ceil(120*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=50&&((prevstateno=610 && var(11)=2)||(prevstateno=650&&var(11)%64<32))
trigger1 = vel Y>0 && Pos Y<-20 && (Pos Y<-40||var(12)>0) && random%5<3
trigger2 = (stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>2&&Pos Y>=-20)&&!movecontact)
trigger2 = Pos Y>=-30 && random%7<ifelse(fvar(37)>=2,5,3) && var(58)%7<5&&var(11)%2<1
trigger3 = stateno=100&&time>7&&!(Pos Y>-10&&Vel Y>0)&&random%8<7 && var(51)%7<5 && var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50) && random%7<ifelse(fvar(37)=2,5,3)
trigger3 = !fvar(17) && (var(59)=2||(var(59)=1&&var(51)<700)||(!var(59)&&random%3=0))

;Jump Light Kick
[State -1, slp]
type = ChangeState
value = 630
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%16<8&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X=[-25,(ceil(120*const(size.xscale))-const(size.ground.front))]
trigger1 = stateno=600&&((animelemtime(3)>0&&var(12)&&var(59)=1)||(time>=(7-(var(12)!=0))&&var(59)=2))&&var(12)=1 && Pos Y>-24 && random%7<5 && var(51)%5<4&&(!movecontact||var(10)<=0)
trigger2 = stateno=50&&(time=[1,3])&&var(12) && !var(59) && random%5<3

;Jump Medium Punch
[State -1, slp]
type = ChangeState
value = 610
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%4<2&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(110*const(size.xscale))-const(size.ground.front))
trigger1 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&var(59)=2&&var(12)=1 && Pos Y>-24 && random%5<3 && var(51)%5<3&&(!movecontact||var(10)<=0)

;Jump Medium Kick
[State -1, slp]
type = ChangeState
value = 640
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%32<16&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X=[-30,(ceil(110*const(size.xscale))-const(size.ground.front)+(vel X>0)*20)]
trigger1 = (stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>2&&Pos Y>=-20)&&(var(10)<=0||(!movecontact&&var(51)%7<5)))
trigger1 = random%3=0
trigger2 = ctrl && (Pos Y=[-70,-45]) && (stateno!=[100,110]) && vel Y>2 && random%3=0&&var(11)%32<16 && var(51)<600
trigger3 = stateno=600&&((animelemtime(5)>0&&var(12)&&var(59)=1)||(time>=(4-(var(12)!=0)+15)&&var(59)=2))&&var(12)=1 && Pos Y>-24 && random%5<3&&(!movecontact||var(10)<=0)
trigger4 = stateno=630&&((animelemtime(2)>0&&var(12)&&var(59)=1)||(time>=(3-(var(12)!=0))&&var(59)=2))&&var(12)=1 && Pos Y>-24 && random%5<2&&((!movecontact&&time>12)||var(10)<=0) && var(51)%2<1
trigger5 = stateno=100&&time>7&&!(Pos Y>-10&&Vel Y>0)
trigger5 = var(51)%7<5 && var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50) && random%7<ifelse(fvar(37)=2,5,3) && !fvar(17) && var(59)!=2 && var(51)<150

;Jump High Punch
[State -1, slp]
type = ChangeState
value = 620
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%64<32&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
trigger1 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&var(59)=2&&var(12)=1 && Pos Y>-24 && random%5<2 && var(51)%5=2 && var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50)&&(!movecontact||var(10)<=0)
trigger2 = stateno=630&&((animelemtime(2)>0&&var(12)&&var(59)=1)||(time>=(3-(var(12)!=0))&&var(59)=2))&&var(12)=1 && Pos Y>-24 && random%5<2&&((!movecontact&&time>12)||var(10)<=0) && var(51)%2>=1

;Jump High Kick
[State -1, slp]
type = ChangeState
value = 650
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%64<32&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)||(P2stateno=5040&&P2movetype=H&&enemynear,vel Y>1&&enemynear,pos Y>-45)
triggerall = (P2bodydist X=[-45,(ceil(90*const(size.xscale))-const(size.ground.front))])
trigger1 = stateno=100&&time>7&&!(Pos Y>-10&&Vel Y>0)
trigger1 = var(51)%7<5 && var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50) && random%7<ifelse(fvar(37)=2,5,3) && !fvar(17) && var(59)!=2 && var(51)>=350
trigger2 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&var(59)=2&&var(12)=1 && Pos Y>-24 && random%5<2 && var(51)%11>=((floor(fvar(15))/100)-(2-floor(fvar(37)))*50)&&(!movecontact||var(10)<=0)
trigger3 = stateno=630&&((animelemtime(2)>0&&var(12)&&var(59)=1)||(time>=(3-(var(12)!=0))&&var(59)=2))&&var(12)=1 && Pos Y>-24 && random%5<2&&((!movecontact&&time>12)||var(10)<=0) && var(51)%2>=1
trigger4 = stateno=600&&((animelemtime(2)>0&&var(12)&&var(59)=1)||(time>=(3-(var(12)!=0))&&var(59)=2))&&var(12)=1 && Pos Y>-24 && random%5<2&&((!movecontact&&time>12)||var(10)<=0) && var(51)%11>=7

;Throw
[State -1, throw]
type = ChangeState
value = 800-(P2statetype=A)*590
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A
triggerall = !var(31)
triggerall = P2bodydist X<=(ceil((38+(var(59)=2)*6)*const(size.xscale))-const(size.ground.front))&&P2movetype!=H&&!(P2statetype=L&&enemynear,alive)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350&&enemynear,vel X<=0)
triggerall = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = var(51)%6<ifelse(fvar(33),2,1) && random%3=1
trigger2 = fvar(24)<0 && random>(150+(2-fvar(37))*200) && var(51)%9<7
trigger3 = (P2movetype=I && P2statetype!=A && enemynear,Vel X>0 && (P2stateno!=[5910,5920]) && enemynear,time>fvar(28) && random%5<3)
trigger4 = enemynear,time>fvar(28) && (enemynear,animtime=[-2,-1])&&random%7<5 && P2movetype!=H && !enemynear,ctrl;反撃確定時

;Stand High Kick
[State -1, slp]
type = ChangeState
value = 250
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = P2bodydist X<(ceil(80*const(size.xscale))-const(size.ground.front))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = random%7=0 && fvar(24)<0 && !fvar(37) && fvar(36)

;Crouch Medium Kick
[State -1, slp]
type = ChangeState
value = 440
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
trigger1 = (stateno=230||stateno=430) && P2bodydist X>(ceil(70*const(size.xscale))-const(size.ground.front)) && prevstateno!=230&&prevstateno!=430

;Stand Medium Kick
[State -1, slp]
type = ChangeState
value = 240
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = !fvar(33)||(fvar(33)&&var(51)%4=0)||((enemynear,animtime=[-10,-5]) && enemynear,time>18 && !enemynear,ctrl && P2movetype!=H && fvar(33)!=1)
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = (P2bodydist X=[-15,(ceil((135-(movecontact>0)*15)*const(size.xscale))-const(size.ground.front))])
trigger1 = (stateno=230||stateno=430) && movecontact && !var(10) && ifelse(var(16)>1,1,var(51)%11<ifelse(fvar(32)>=4,11,3)) && var(22)<=0 && !((var(16)>1||random%2=0)&&var(59)>=1&&Power>=1000);Chain Combo
trigger1 = !(var(22)>0 && var(22)>36)
trigger2 = stateno=410 && movecontact && !var(10)

;Stand Light Punch
[State -1, slp]
type = ChangeState
value = 200
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = (P2bodydist X=[65,85]) && random%4=0 && var(51)%9<2
trigger2 = (enemynear,pos y=[-55,-20]) && enemynear,vel Y<=.5 && (P2bodydist X=[40,65]) && (enemynear,vel X=[2,6]) && var(51)%12<3

;Stand/Crouch Light Kick
[State -1, slp]
type = ChangeState
value = 430-ifelse(var(59),P2bodydist X<(ceil(60*const(size.xscale))-const(size.ground.front)),random%3=0&&movecontact&&!(var(59)=2&&stateno=230))*200
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A && !(var(22)&&fvar(36))
triggerall = P2statetype!=A||(fvar(31)<fvar(28)&&enemynear,pos Y>-40&&random<350)
triggerall = !fvar(33)||(fvar(33)&&var(51)%4=0)||((enemynear,animtime=[-8,-4]) && enemynear,time>18 && !enemynear,ctrl && P2movetype!=H && fvar(33)!=1)
triggerall = P2bodydist X<(ceil(105*const(size.xscale))-const(size.ground.front))
triggerall = !(P2movetype=I && P2statetype!=A && enemynear,Vel X>0 && (P2stateno!=[5910,5920]) && enemynear,time>fvar(28) && random%5<3 && (enemynear,animtime!=[-8,-4]))
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = ((p2movetype!=H&&random%6=0)||(fvar(33)&&random%5<3)||stateno=21||P2movetype=H)&&ifelse(fvar(36)||P2movetype=H,random%5<2,random%3=0) && (!fvar(17)||(fvar(17)&&var(16)>ifelse(var(59)=1,52,13)))
trigger2 = (stateno=230||stateno=430)&&((time=[5,6])||(movecontact=[10,12])) && (!movecontact||var(10)<=0)
trigger2 = random%5<3 && var(10)<=0 && P2bodydist X<(ceil(80*const(size.xscale))-const(size.ground.front))
trigger3 = (stateno=200||stateno=400) && movecontact && !var(10) && ifelse(P2bodydist X>30,var(51)%5<2,var(51)%7<5);Chain Combo
trigger3 = (fvar(36)=[1,8]) && P2bodydist X<(ceil(80*const(size.xscale))-const(size.ground.front)) && random%5<3
trigger4 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger4 = random%5<2 && var(51)%7<5 && enemynear,time>fvar(28) && (enemynear,animtime=[-8,-4]) && !enemynear,ctrl && P2movetype!=H;反撃確定時
trigger5 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger5 = ((fvar(24)>=5 && var(16)>1)||(fvar(24)<-5&&var(51)%7<3)) && random%7<5 && var(59)=2 && Power>=1000

;Jump
[State -1, slp]
type = ChangeState
value = 40
triggerall = fvar(38) && !(P2statetype=L && enemynear,alive)
triggerall = statetype!=A
triggerall = ctrl||stateno=13||((stateno=[21,22])&&time>ifelse(fvar(33)>1,0,ifelse(P2bodydist X>180&&!numhelper(6000),16,10)))||((stateno=[120,131]))
triggerall = !(numhelper(6000)&&P2bodydist X<100)
trigger1 = P2bodydist X>(90-(var(22)>0)*10) && !(numhelper(6000)&&P2bodydist X<=(ceil(200*const(size.xscale))-const(size.ground.front)))
trigger1 = ifelse(P2bodydist X<140||(numhelper(6000)&&P2bodydist X>120)||(fvar(33)=[2,3]),var(51)%5<2,var(51)%4=0)
trigger2 = (P2bodydist X=[70,100]) && fvar(33)>1 && fvar(30)<4 && ifelse(fvar(34)<80,random%4=0,random%25=0) && fvar(37)

;カルマ＝エレガンテ
[state -1,guard]
type = ChangeState
value = 1700
triggerall = fvar(38) && var(53)>=0 && roundstate=2 && (!(P2statetype=L&&enemynear,alive)||P2stateno=5120)
triggerall = statetype=A&&!(vel Y<0&&stateno=50)&&var(59)=2
triggerall = !var(32)
trigger1 = ctrl&&stateno!=1700
trigger1 = Pos Y<-80 && ifelse(P2bodydist X<60&&vel X>0,var(51)%5<2,ifelse(P2bodydist X>180,var(51)%3=0,var(51)%4=0))

;===起き攻め・追い討ち
;ES rasare saga
[state -1,saga]
type = ChangeState
value = 960
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A && Power>=1000
triggerall = enemynear,alive
triggerall = (P2statetype=L&&(P2stateno!=[5101,5120]))||(((enemynear,Vel Y>2&&enemynear,Pos Y>(-enemynear,Vel Y*26))||(enemynear,Vel Y>-2&&enemynear,pos Y>-80))&&enemynear,hitfall&&P2statetype!=L&&!enemynear,canrecover&&enemynear,hitshakeover)&&P2stateno!=5020
triggerall = !var(30)&&abs(enemynear,vel X)<3
triggerall = enemynear,authorname="rei"||enemynear,authorname="gal129"
triggerall = ifelse(fvar(37),random%5<2,random%3=0) && var(51)%5<ifelse((enemynear,life=[8,56])&&fvar(37)=2,5,2)
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])
trigger1 = enemynear,vel Y<-1 && enemynear,pos Y>-10

;rasare saga
[state -1,saga]
type = ChangeState
value = 950
triggerall = fvar(38) && var(53)>=0 && roundstate=2
triggerall = statetype!=A
triggerall = enemynear,alive
triggerall = (P2statetype=L&&(P2stateno!=[5110,5120]))||(((enemynear,Vel Y>2&&enemynear,Pos Y>(-enemynear,Vel Y*26))||(enemynear,Vel Y>-2&&enemynear,pos Y>-80))&&enemynear,hitfall&&P2statetype!=L&&!enemynear,canrecover&&enemynear,hitshakeover)&&P2stateno!=5020
triggerall = !var(30)
triggerall = ifelse(fvar(37),random%5<2,random%3=0) && var(51)%5<ifelse(P2bodydist X>180&&!(P2statetype=L&&(P2stateno!=[5101,5120])),4,3)
trigger1 = ctrl||stateno=13||(stateno=[21,22])||(stateno=[120,132])

;~~~~防御面
;Dark Force Savior2
[State -1, slp]
type = ChangeState
value = 2100
triggerall = fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = Roundstate=2 && !(enemynear,alive && P2statetype=L)
triggerall = var(59)=1
triggerall = Power>=2000 && !var(29) && !var(23)
trigger1 = (ctrl||stateno=13||(stateno=[21,22]))&&anim!=47&&stateno!=140
trigger1 = P2bodydist X>80 && random<ifelse(power>=4000,220,20)

;移動起き上がり
;Movement Recover
[state -1,recover]
type = varset
var(31) = 5*ifelse(backedgebodydist<60&&random%2=0,1,-1)
triggerall = fvar(38)
triggerall = stateno=5110 && var(2)=1
trigger1 = random<ifelse(backedgebodydist<20,350,650)

;sp-redio
[State -1, slp]
type = ChangeState
value = 1000+(var(59)>0)*5+(Power>=1000&&random<ifelse(Power>=3000,300,180)&&var(59)!=2)*50
triggerall = fvar(38) && var(53)>=0
triggerall = statetype!=A
trigger1 = (stateno=[150,153])&&(var(21)=[-12+(var(59)>=3)*6,0])
trigger1 = ((enemynear,prevstateno=[200,799])||(fvar(32)!=2&&var(51)<200)||fvar(33)=1) && var(21)>-6 && var(51)%ifelse(fvar(33)=1&&fvar(30)<6,8,20)<ifelse(fvar(37)=2,2,ifelse(fvar(37)=1,1,0))
trigger1 = P2bodydist X<(ceil(150*const(size.xscale))-const(size.ground.front))


;~~~Guard
[State -1]
;ガード
type = ChangeState
value = 131
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && !(P2statetype=L&&enemynear,alive) && StateType!=A
triggerall = !(P2statetype=A&&(fvar(31)>=fvar(28)||(fvar(31)>=(fvar(28)-4)&&random<=200)))
triggerall = (enemynear,Movetype = A||(enemy,numproj>0||(P2movetype!=A&&enemy,numhelper&&!(enemynear,hitdefattr=SCA,AA,AT,AP)) && inguarddist)||(fvar(33)=1&&fvar(30)<2))
triggerall = (ctrl|| StateNo=13)
trigger1 = inguarddist
trigger2 = Statetype!=A && P2BodyDist X >120 && enemy,numproj=0

;ガード
[State -1]
type = ChangeState
value = Ifelse(StateType=A,132,130)
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && !(P2statetype=L&&enemynear,alive)
triggerall = ifelse(enemynear,P2dist X<0&&random<500,enemynear,P2dist X<=(-160+const(size.ground.front)),inguarddist)
triggerall = (enemynear,Movetype = A||(enemy,numproj>0||(P2movetype!=A&&enemy,numhelper&&!(enemynear,hitdefattr=SCA,AA,AT,AP)) && inguarddist)||(fvar(33)=1&&fvar(30)<2))
triggerall = (ctrl||StateNo=3||(P2statetype=A&&((StateNo=13&&fvar(31)>=fvar(28))||stateno=21))||StateNo=22)
trigger1 = inguarddist
trigger2 = Statetype!=A && P2BodyDist X >120 && enemy,numproj=0

;背面ガード
[state -2]
type = ChangeState
value = ifelse(statetype=A,132,ifelse(P2statetype=A&&fvar(31)>=fvar(28),130,131))
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && enemynear,Statetype!=L
triggerall = enemynear,p2dist X>0
triggerall = (ctrl||StateNo=3||StateNo=13||StateNo=22)
trigger1 = numhelper(91000)
trigger1 = helper(91000),inguarddist && ifelse((P2dist X=[-15,0]),var(51)<=600,1)&&!inguarddist

[State -1]
;歩き（前）
type = ChangeState
value = 21
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && P2Statetype!=L && !fvar(35)
triggerall = !((fvar(29)>fvar(28)||fvar(31)>=fvar(28)||fvar(27)>fvar(28)||fvar(26)>fvar(28)))
triggerall = StateType != A
triggerall = (ctrl || StateNo=3 || (StateNo=13&&time>14)||(stateno=[120,132]))
trigger1 = var(51)<ifelse(P2Bodydist X>140&&P2bodydist X>(fvar(34)+20),380,260)
trigger1 = P2Statetype!=L && ((P2bodydist X=[(ceil((125-(!fvar(37))*40)*const(size.xscale))-const(size.ground.front)),(ceil(150*const(size.xscale))-const(size.ground.front))]) || (P2bodydist X>140&&P2bodydist X>(fvar(34)+20)))
trigger2 = P2Statetype=L && P2BodyDist X > 60 && random%3=0

[State -1]
;歩き（後）
type = ChangeState
value = 22
triggerall = fvar(38) && (roundstate=2 || (RoundState=3 && Win)) && P2Statetype!=L && !fvar(35)
triggerall = StateType != A
triggerall = (ctrl || StateNo=3 || (StateNo=13&&time>14) || (stateNo=21&&time>4))
trigger1 = (var(51)=[500,ifelse(P2statetype=L&&P2bodydist X<30,850,ifelse(P2Bodydist X>120,620,680))])
trigger1 = ((P2Statetype!=L && (P2BodyDist X = [80,120])) || (P2Statetype=L && P2BodyDist X < 80))
trigger2 = (fvar(29)>=fvar(28)||fvar(31)>=fvar(28)||fvar(27)>=fvar(28)||fvar(26)>=fvar(28)) && random<350 && ((P2statetype=A&&!enemynear,hitfall)||random%3=0)
trigger3 = (P2bodydist X=[(ceil((42+(enemynear,vel X>2)*20)*const(size.xscale))-const(size.ground.front)),(ceil((78+(enemynear,vel X>2)*20)*const(size.xscale))-const(size.ground.front))])
trigger3 = fvar(31)>=fvar(28) && random<=350 && P2statetype=A&&!enemynear,hitfall
trigger4 = numhelper(91000)
trigger4 = (var(51)%ifelse(helper(91000),var(25)>1,floor(helper(91000),var(25)*2.0/3)+3,3)<helper(91000),var(20)||(P2bodydist X>100&&P2bodydist X>(helper(91000),var(26)+20)))
trigger4 = helper(91000),var(20)>0 && ((fvar(33)&&P2bodydist X<80)||((random%9=0||fvar(33))&&P2bodydist X>120&&P2bodydist X<(helper(91000),var(23)+20)))

[State -1]
;しゃがみ
type = ChangeState
value = 13
triggerall = fvar(38) && roundstate=2 && StateType != A
trigger1 = (ctrl || stateNo=3 || ((stateno=[21,22])&&time>14&&random%4=0)) && !(P2statetype=L&&enemynear,alive) && P2BodyDist X >=60
trigger2 = P2BodyDist X<60 && ctrl
trigger3 = (ctrl || stateNo=3||((stateno=[21,22])&&time>14))
trigger3 = (fvar(29)>=fvar(28) || fvar(27)>=fvar(28)||fvar(26)>=fvar(28)) && random<350
;______________________________
;===Player===
;~~~EX special moves~~~~

;finale rosso
[State -1, slp]
type = ChangeState
value = 3100
triggerall = !fvar(38) && var(53)>=0 && var(53)>=0
triggerall = Power>=1000
triggerall = statetype!=A
triggerall = (command = "rosso"&&(fvar(14)=[21,30]))||var(9)=3100
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,15]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;prova di servo
[State -1, slp]
type = ChangeState
value = 3000
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = statetype!=A
triggerall = command = "servo"||var(9)=3000
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,15]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;Santuario
[State -1, df]
type = ChangeState
value = 2000
triggerall = !fvar(38) && var(53)>=0 && var(59)=1
triggerall = statetype!=A
triggerall = ((command="aglio"||var(9)=2000)&&!var(22))
triggerall = Power>=1000
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||(stateno=230&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,15-(var(59)>=3)*ifelse(var(9)!=0,3,5)]) && var(10)<=0;Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=210||stateno=230||stateno=400||stateno=410||stateno=440),8,3) && (!movecontact||var(10)<=0)

;~~~ES special moves~~~
;ES sp-redio
[State -1, slp]
type = ChangeState
value = 1050+(var(59)>0)*5
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = statetype!=A
triggerall = (command = "sp-redio"&&(command="xy"||command="yz"||command="xz"))||var(9)=1050
trigger1 = (stateno=[150,153])&&(var(21)=[-12,0])
trigger2 = (ctrl||stateno=40||(stateno=[100,105]))&&var(59)>0
trigger3 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0&&var(59)>0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger4 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;ES ira spinta
[State -1, slp]
type = ChangeState
value = 1550
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = statetype=A
triggerall = (command = "spinta"&&(command="ab"||command="bc"||command="ac"))||var(9)=1550
trigger1 = ctrl||((stateno=[100,105])&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(!var(10)||!movecontact))
trigger2 = (stateno=600||stateno=630||stateno=640) && ((prevstateno!=[600,799])||(var(59)=1&&(prevstateno=600||prevstateno=630)))
trigger2 = ifelse(var(59)=2,(movecontact=[1,9+(stateno=640)*2])&&!var(11)&&stateno!=640,(movecontact=[1,13])) && var(10)<=0;Cancelation
trigger3 = (stateno=[600,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=600||stateno=630||stateno=640||stateno=650),8,3) && (!movecontact||var(10)<=0)
trigger4 = (stateno=[600,799]) && (prevstateno!=[600,799]) && var(12) && (var(10)<=0||!movecontact);Chain Combo
trigger5 = (stateno=[600,799]) && (prevstateno!=[600,799]) && (var(10)<=0||!movecontact) && var(22)

;ES nero fatica
[State -1, slp]
type = ChangeState
value = 1350
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = statetype!=A
triggerall = (command = "fatica"&&(command="xy"||command="yz"||command="xz"))||var(9)=1350
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;ES dio saga air
[State -1, slp]
type = ChangeState
value = 1250
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = statetype=A && ((Vel Y>-4 && Pos Y<-20)||var(22)) && !numproj && !numhelper(6000)
triggerall = (command = "saga"&&(command="xy"||command="yz"||command="xz"))||var(9)=1250
trigger1 = ctrl||((stateno=[100,105])&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(!var(10)||!movecontact))
trigger2 = (stateno=600||stateno=630||stateno=640) && ((prevstateno!=[600,799])||(var(59)=1&&(prevstateno=600||prevstateno=630)))
trigger2 = ifelse(var(59)=2,(movecontact=[1,9+(stateno=640)*2])&&!var(11)&&stateno!=640,(movecontact=[1,13])) && var(10)<=0;Cancelation
trigger3 = (stateno=[600,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=600||stateno=630||stateno=640||stateno=650),8,3) && (!movecontact||var(10)<=0)
trigger4 = (stateno=[600,799]) && (prevstateno!=[600,799]) && var(12) && (var(10)<=0||!movecontact);Chain Combo
trigger5 = (stateno=[600,799]) && (prevstateno!=[600,799]) && (var(10)<=0||!movecontact) && var(22)

;ES dio saga
[State -1, slp]
type = ChangeState
value = 1150
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = statetype!=A && !numhelper(6000)
triggerall = (command = "saga"&&(command="xy"||command="yz"||command="xz"))||var(9)=1150
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;ES rasare saga
[state -1,saga]
type = ChangeState
value = 960
triggerall = !fvar(38) && var(53)>=0
triggerall = Power>=1000
triggerall = (statetype!=A||(StateType=A&&(prevstateno=40&&stateno=50&&time<ifelse(var(59)>=4,5,2))))
triggerall = enemynear,alive
triggerall = (P2statetype=L&&P2stateno!=5120)||(((enemynear,Vel Y>2&&enemynear,Pos Y>(-enemynear,Vel Y*26))||(enemynear,Vel Y>-2&&enemynear,pos Y>-80))&&enemynear,hitfall&&P2statetype!=L&&!enemynear,canrecover&&enemynear,hitshakeover)
triggerall = (command="xy"||command="yz"||command="xz"||command="ab"||command="bc"||command="ac")&&command="holdup"
triggerall = !var(30)
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;~~~Special moves~~~~
;sp-redio
[State -1, slp]
type = ChangeState
value = 1000+(var(59)>0)*5
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "sp-redio"||(command = "sp-redio_2"&&(stateno!=[200,799]))||(var(9)=[1000,1020])
trigger1 = (stateno=[150,153])&&(var(21)=[-12,0])
trigger2 = (ctrl||stateno=40||(stateno=[100,105]))&&var(59)>0
trigger3 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0&&var(59)>0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger4 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;ira spinta
[State -1, slp]
type = ChangeState
value = 1500
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A
triggerall = command = "spinta"||(command = "spinta_2"&&(stateno!=[200,799]))||(var(9)=[1500,1520])
trigger1 = ctrl||(stateno=[100,105])||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))
trigger2 = (stateno=600||stateno=630||stateno=640) && ((prevstateno!=[600,799])||(var(59)=1&&(prevstateno=600||prevstateno=630)))
trigger2 = ifelse(var(59)=2,(movecontact=[1,9+(stateno=640)*2])&&!var(11)&&stateno!=640,(movecontact=[1,13])) && var(10)<=0;Cancelation
trigger3 = (stateno=[600,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=600||stateno=630||stateno=640||stateno=650),8,3) && (!movecontact||var(10)<=0)
trigger4 = (stateno=[600,799]) && (prevstateno!=[600,799]) && var(12) && (var(10)<=0||!movecontact);Chain Combo
trigger5 = (stateno=[600,799]) && (prevstateno!=[600,799]) && (var(10)<=0||!movecontact) && var(22)

;sangue passare(サングェ＝パッサーレ)
[State -1, slp]
type = ChangeState
value = 1400
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = P2bodydist X<=(ceil(46*const(size.xscale))-const(size.ground.front))&&P2movetype!=H&&P2statetype!=A&&!(P2statetype=L&&enemynear,alive)
triggerall = !var(31)&&var(59)!=2
triggerall = (command = "spinta"&&(command="b"||command="c"))||(var(9)=[1410,1420])
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;nero fatica
[State -1, slp]
type = ChangeState
value = 1300
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "fatica"||(command = "fatica_2"&&(stateno!=[200,799]))||(var(9)=[1300,1320])
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;dio saga air
[State -1, slp]
type = ChangeState
value = 1200
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A && ((Vel Y>-4 && Pos Y<-20)||var(22)) && !numproj && !numhelper(6000)
triggerall = command = "saga"||(command = "saga_2"&&(stateno!=[200,799]))||(var(9)=[1200,1220])
trigger1 = ctrl||(stateno=[100,105])||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))
trigger2 = (stateno=600||stateno=630||stateno=640) && ((prevstateno!=[600,799])||(var(59)=1&&(prevstateno=600||prevstateno=630)))
trigger2 = ifelse(var(59)=2,(movecontact=[1,9+(stateno=640)*2])&&!var(11)&&stateno!=640,(movecontact=[1,13])) && var(10)<=0;Cancelation
trigger3 = (stateno=[600,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=600||stateno=630||stateno=640||stateno=650),8,3) && (!movecontact||var(10)<=0)
trigger4 = (stateno=[600,799]) && (prevstateno!=[600,799]) && var(12) && (var(10)<=0||!movecontact);Cancelation
trigger5 = (stateno=[600,799]) && (prevstateno!=[600,799]) && (var(10)<=0||!movecontact) && var(22) && (prevstateno!=[600,799])

;dio saga
[State -1, slp]
type = ChangeState
value = 1100
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A && !numhelper(6000)
triggerall = command = "saga"||(command = "saga_2"&&(stateno!=[200,799]))||(var(9)=[1100,1120])
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||((stateno=230||stateno=430)&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13]) && var(10)<=0 && !((var(59)=[2,3])&&(prevstateno=[200,799]));Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;rasare saga
[state -1,saga]
type = ChangeState
value = 950
triggerall = !fvar(38) && var(53)>=0
triggerall = (statetype!=A||(StateType=A&&(prevstateno=40&&stateno=50&&time<ifelse(var(59)>=4,5,2))))
triggerall = enemynear,alive
triggerall = (P2statetype=L&&P2stateno!=5120)||(((enemynear,Vel Y>2&&enemynear,Pos Y>(-enemynear,Vel Y*26))||(enemynear,Vel Y>-2&&enemynear,pos Y>-80))&&enemynear,hitfall&&P2statetype!=L&&!enemynear,canrecover&&enemynear,hitshakeover)&&P2stateno!=5020
triggerall = (command="x"|| command="y"|| command="z"|| command="a"|| command="b"|| command="c")&&command="holdup"
triggerall = !var(30)
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=230||stateno=400||stateno=430),8,3) && (!movecontact||var(10)<=0)

;~~~~~
;Dark Force Savior2
[State -1, slp]
type = ChangeState
value = 2100
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = (command = "ax"||command = "by"||command = "cz")&&var(59)=1
triggerall = Power>=2000 && !var(29) && !var(23)
trigger1 = ctrl&&anim!=47&&stateno!=140

;Dark Force santu ario
[State -1, slp]
type = ChangeState
value = 2000+(var(22)>0)*50
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = (command = "ax"||command = "by"||command = "cz")&&!var(59)
triggerall = Power>=1000 && !var(29)
trigger1 = ctrl&&anim!=47&&stateno!=140

;移動起き上がり
;Movement Recover
[state -1,recover]
type = varset
var(31) = 5*ifelse(command="holdfwd",1,-1)
triggerall = !fvar(38)
triggerall = stateno=5110 && var(2)=1
trigger1 = command="holdfwd"||command="holdback"

;~~~~
;Friend Ship
[State -1, throw]
type = ChangeState
value = 195
triggerall = !fvar(38) && var(53)>=0 && var(59)<=2
triggerall = statetype!=A && ifelse(var(59)>=2,1,var(14)<16)
triggerall = command="s"||var(9)=195
trigger1 = ctrl||stateno=40||(stateno=[100,105])
trigger2 = (stateno=200||stateno=400||(stateno=230&&!(prevstateno=200||prevstateno=400))) && (movecontact=[1,13-(var(59)>=3)*ifelse(var(9)!=0,3,5)]) && var(10)<=0 && !((var(59)=[2,3])&&prevstateno=stateno);Cancelation
trigger3 = (stateno=[200,799]) && (prevstateno!=[200,799]) && time<ifelse((stateno=200||stateno=210||stateno=230||stateno=400||stateno=410||stateno=440),8,3) && (!movecontact||var(10)<=0)

;~~~~Dash~~~~
;balzo perdono
[State -1, slp]
type = ChangeState
value = 110
triggerall = !fvar(38) && var(53)>=0
triggerall = !(pos y>=-20 && var(59)=2)
triggerall = statetype=A&&!(stateno=50&&time<1&&(prevstateno!=[600,799]))
triggerall = (fvar(13)>=17&&P2dist X>=0)||(fvar(13)<=-17&&P2dist X<0);command = "FF"
trigger1 = ctrl||(stateno=[100,105])

;Dash
[State -1, slp]
type = ChangeState
value = 100
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = (fvar(13)>=17&&P2dist X>=0)||(fvar(13)<=-17&&P2dist X<0);command = "FF"
trigger1 = ctrl

;BackDash
[State -1, slp]
type = ChangeState
value = 105
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = (fvar(13)<=-17&&P2dist X>=0)||(fvar(13)>=17&&P2dist X<0);command = "BB"
trigger1 = ctrl

;~~~Basic moves~~~~
;Throw
[State -1, throw]
type = ChangeState
value = 800
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = !var(31)
triggerall = ((P2bodydist X<=(ceil((38+(var(59)=2)*6)*const(size.xscale))-const(size.ground.front))&&P2movetype!=H&&P2statetype!=A&&!(P2statetype=L&&enemynear,alive))&&var(59)!=2)||var(59)=2
triggerall = (((command = "y"||command = "z")&&(command="holdback"||command="holdfwd")&&var(59)!=2)||(command="ax"&&var(59)=2))&&command!="holddown"&&command!="holdup"
trigger1 = ctrl

;Air Throw
[State -1, throw]
type = ChangeState
value = 850
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A && var(59)!=2
triggerall = P2bodydist X<=(ceil(37*const(size.xscale))-const(size.air.front))&&(P2bodydist Y=[ceil(-24*const(size.xscale)),ceil(24*const(size.xscale))])&&Pos Y<=ceil(-74*const(size.xscale))
triggerall = P2movetype!=H&&P2statetype=A&&!(P2statetype=L&&enemynear,alive)
triggerall = (command = "y"||command = "z")&&(command="holdback"||command="holdfwd")&&command!="holddown"&&command!="holdup"
trigger1 = ctrl

;Stand/Crouch Light Punch
[State -1, slp]
type = ChangeState
value = ifelse(command="holddown",400,200)
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "x"||var(9)=1||var(9)=11
trigger1 = ctrl
trigger2 = (stateno=200||stateno=400||(stateno=230||stateno=430)&&var(59)=2) && time>4 && (!movecontact||var(10)<=0);連打キャンセル

;Stand/Crouch Light Kick
[State -1, slp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=14,430,230)
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "a"||((var(9)=4||var(9)=14)&&!(stateno=230||stateno=430))
trigger1 = ctrl
trigger2 = (((stateno=230||stateno=430) && time>5)||((stateno=200||stateno=400) && time>4 && var(59)=2)) && (!movecontact||var(10)<=0);
trigger3 = (stateno=200||stateno=400) && (movecontact=[1,11+(var(59)=2)*3]) && var(10)<=0;Chain Combo

;Stand/Crouch Medium Punch
[State -1, slp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=12,410,210)
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "y"||var(9)=2||var(9)=12
trigger1 = ctrl
trigger2 = (stateno=200||stateno=400||stateno=230||stateno=430) && (movecontact=[1,11+(var(59)=2)*3]) && var(10)<=0;Chain Combo

;Stand/Crouch Medium Kick
[State -1, slp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=15,440,240)
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "b"||var(9)=5||var(9)=15
trigger1 = ctrl
trigger2 = (stateno=[200,799]) && (stateno!=240 && stateno!=440 && stateno!=220 && stateno!=420 && stateno!=250 && stateno!=450) && (movecontact=[1,11+(var(59)=2)*3]) && var(10)<=0;Chain Combo

;Stand/Crouch High Punch
[State -1, shp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=13,420,220)
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "z"||var(9)=3||var(9)=13
trigger1 = ctrl
trigger2 = (stateno=[200,799]) && (stateno!=220 && stateno!=420 && stateno!=250 && stateno!=450) && (movecontact=[1,11+(var(59)=2)*3]) && var(10)<=0;Chain Combo

;Stand/Crouch High Kick
[State -1, shp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=16,450,250)
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype!=A
triggerall = command = "c"||var(9)=6||var(9)=16
trigger1 = ctrl
trigger2 = (stateno=[200,799]) && (stateno!=250 && stateno!=450) && (movecontact=[1,11+(var(59)=2)*3]) && var(10)<=0;Chain Combo

;~~~~Jump Moves~~~~

;Jump Light Punch
[State -1, slp]
type = ChangeState
value = 600
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%2<1&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = command = "x"||var(9)=1
trigger1 = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger2 = stateno=630&&(animelemtime(2)>0||(time>=(3-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger3 = stateno=610&&time>=(22+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger4 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger5 = stateno=620&&time>=(37+(var(10)<=0)*1-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger6 = stateno=650&&time>=(20-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2

;Jump Light Kick
[State -1, slp]
type = ChangeState
value = 630
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%16<8&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = command = "a"||var(9)=4
trigger1 = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger2 = (stateno=[200,799]) && stateno=600 && (movecontact=[1,12]) && var(10)<=0 && !var(12) && (!var(59)||var(22)>0||var(23)>0);Chain Combo
trigger3 = stateno=600&&(animelemtime(3)>0||(time>=(4-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger4 = stateno=610&&time>=(22+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger5 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger6 = stateno=620&&time>=(37+(var(10)<=0)*1-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger7 = stateno=650&&time>=(20-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2

;Jump Medium Punch
[State -1, slp]
type = ChangeState
value = 610
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%4<2&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = command = "y"||var(9)=2
trigger1 = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger2 = (stateno=[200,799]) && (stateno!=610&&stateno!=620&&stateno!=640&&stateno!=650) && (movecontact=[1,12]) && var(10)<=0 && !var(12) && (!var(59)||var(22)>0||var(23)>0);Chain Combo
trigger3 = stateno=600&&(animelemtime(3)>0||(time>=(4-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger4 = stateno=630&&(animelemtime(2)>0||(time>=(3-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger5 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger6 = stateno=620&&time>=(37+(var(10)<=0)*1-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger7 = stateno=650&&time>=(20-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2

;Jump Medium Kick
[State -1, slp]
type = ChangeState
value = 640
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%32<16&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = command = "b"||var(9)=5
trigger1 = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger2 = (stateno=[200,799]) && (stateno!=620&&stateno!=640&&stateno!=650) && (movecontact=[1,12]) && var(10)<=0 && !var(12) && (!var(59)||var(22)>0||var(23)>0);Chain Combo
trigger3 = stateno=600&&(animelemtime(3)>0||(time>=(4-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger4 = stateno=630&&(animelemtime(2)>0||(time>=(3-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger5 = stateno=610&&time>=(22+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger6 = stateno=620&&time>=(37+(var(10)<=0)*1-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger7 = stateno=650&&time>=(20-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2

;Jump High Punch
[State -1, slp]
type = ChangeState
value = 620
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%8<4&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = command = "z"||var(9)=3
trigger1 = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger2 = (stateno=[200,799]) && (stateno!=620&&stateno!=650) && (movecontact=[1,12]) && var(10)<=0 && !var(12) && (!var(59)||var(22)>0||var(23)>0);Chain Combo
trigger3 = stateno=600&&(animelemtime(3)>0||(time>=(4-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger4 = stateno=630&&(animelemtime(2)>0||(time>=(3-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger5 = stateno=610&&time>=(22+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger6 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger7 = stateno=650&&time>=(20-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2

;Jump High Kick
[State -1, slp]
type = ChangeState
value = 650
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(stateno=50&&prevstateno=40&&time<2)&&var(11)%64<32&&!(var(12)&&Pos Y>-8&&Vel Y>0)
triggerall = command = "c"||var(9)=6
trigger1 = ctrl||((stateno=[100,105])&&time>7&&!(Pos Y>-10&&Vel Y>0))||(stateno=110&&time>9&&!(AnimElemtime(6)>=0&&Vel Y>0&&Pos Y>=-20)&&(var(10)<=0||!movecontact))||(stateno=50&&(prevstateno=[600,799])&&var(22)!=-1)
trigger2 = (stateno=[200,799]) && (stateno!=650) && (movecontact=[1,12]) && var(10)<=0 && !var(12) && (!var(59)||var(22)>0||var(23)>0);Chain Combo
trigger3 = stateno=600&&(animelemtime(3)>0||(time>=(4-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger4 = stateno=630&&(animelemtime(2)>0||(time>=(3-(var(12)!=0))&&var(59)=2))&&(!movecontact||var(10)<=0)&&var(59);ジャンプ攻撃再入力用（S2,CFJ)
trigger5 = stateno=610&&time>=(22+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger6 = stateno=640&&time>=(16+(var(10)<=0)*6-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2
trigger7 = stateno=620&&time>=(37+(var(10)<=0)*1-(var(12)!=0))&&(!movecontact||var(10)<=0) && var(59)=2

;空中ガード用(斜め上でも空中ガード可能に)
[state -1,guard]
type = ChangeState
value = 120
triggerall = !fvar(38)
triggerall = statetype=A&&inguarddist
triggerall = command="holdback"
trigger1 = ctrl && ((command="holdback"&&P2dist X>=0&&statetype=A&&P2dist X>=0)||(command="holdfwd"&&statetype=A&&P2dist X<0))

;カルマ＝エレガンテ
[state -1,guard]
type = ChangeState
value = 1700
triggerall = !fvar(38) && var(53)>=0
triggerall = statetype=A&&!(vel Y<0&&stateno=50)&&var(59)=2
triggerall = command="holdup"
triggerall = !var(32)
trigger1 = ctrl&&stateno!=1700
