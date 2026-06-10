;===========================================================================
; 常時監視ステート（－２）
;===========================================================================
[Statedef -2]

[State -2, AIレベル]
type = varset
trigger1 = 1
var(58) = 5;		←「var(58) = ○」の○を変えてください（１～９）
;			　また０にするとCPU時でもAIが入らなくなります

[State -2, 常時AI]
type = varset
triggerall = RoundState = 2
trigger1 = 0;		←１で常にAI
trigger2 = var(59)>0;	　０でCPU時のみAIが入ります
var(59) = var(58)

[State -2, ヒットストップAI]
type = varset
trigger1 = 1
var(5) = 7;		←AI操作時のヒットストップ時間を変更できます

[State -2, ヒットストップP]
type = varset
trigger1 = 1
var(6) = 7;		←人操作時のヒットストップ時間を変更できます


;設定ここまで
;---------------------------------------------------------------------------

[State -2, コンボ補正定数]
type = varset
trigger1 = 1
var(3) = 70

[State -2, ダメ補正リセット]
type = varset
triggerall = numenemy
trigger1 = enemy,numpartner = 0
trigger1 = enemynear,ctrl = 1 || p2movetype = A ||  p2movetype = I; || p2statetype = L
trigger2 = enemy,numpartner = 1
trigger2 = enemynear(0),life > 0
trigger2 = enemynear(0),ctrl = 1 || p2movetype = A ||  p2movetype = I
trigger3 = enemy,numpartner = 1
trigger3 = enemynear(0),life = 0
trigger3 = enemynear(1),ctrl = 1 || p2movetype = A ||  p2movetype = I
fvar(0) = 0.65

[State -2, ダメ補正下限]
type = varset
trigger1 = fvar(0) <= 0.1
fvar(0) = 0.1
ignorehitpause=1

[State -2, ヘルパー数]
type = varset
trigger1 = 1
var(0) = numhelper(1211)+numhelper(1212)+numhelper(1213)+numhelper(1214)+numhelper(1215)+numhelper(1216)

[State -2, エアハイク回数]
type = varset
trigger1 = Pos Y >= 0
var(4) = 1

[State -2, AI用起き上がりタイマー]
type = varset
trigger1 = enemynear,stateno = 5120 && enemynear,time>0
trigger1 = enemynear,animtime = 0
var(7) = 0

[State -2, AI用起き上がりタイマー]
type = varadd
trigger1 = var(7) <13
var(7) = 1

[State -2, 幻影刀ヒットフラグ]
type = varadd
trigger1 = var(8) <21
var(8) = 1
IgnoreHitPause = 1

[State -2, 残像消し]
type = afterimagetime
trigger1 = movetype = H
trigger2 = prevstateno = 810 && anim !=800
time = 1
IgnoreHitPause = 1

[State -2,被ダメボイス]
type = PlaySnd
triggerall = Time = 1 && Alive && Random <= 400
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = Anim = [5000,5022]
value = 5000,ifelse((anim = 5000 || anim = 5010 || anim = 5020),0,10)
channel = 1
lowpriority = 1
volume = -80
IgnoreHitPause = 1

[State -2,被ダメボイス]
type = PlaySnd
triggerall = Time = 1 && Alive && Random <= 400
trigger1 = StateNo = 5000 && GetHitVar(fall)
trigger2 = StateNo = 5020 || StateNo = 5071
value = 5000,20
channel = 1
lowpriority = 1
volume = -80
IgnoreHitPause = 1

[State -2, クリップボード]
type = DisplayToClipboard
trigger1 = 1
text = "var(9)=%d, var(8)=%d, Body-Distance X=%d,Y=%d \n"
params = var(9),var(8),floor(P2BodyDist X),floor(P2BodyDist Y)
IgnoreHitPause = 1

[State -2, 追加]
type = AppendToClipboard
trigger1 = 1
text = "Position X=%d,Y=%d, Velocity X=%f,Y=%f, Hit=%d \n"
params = floor(Pos X),floor(Pos Y),(Vel X),(Vel Y),(MoveHit)
IgnoreHitPause = 1

[State -2, 変数確認]
Type = null;DisplayToClipBoard
Trigger1 = 1
Text = "var(59)=%d,var(59)=%d,fvar(39)=%f\n"
Params = var(59),var(59),fvar(39)
IgnoreHitPause = 1


;===========================================================================
; 準常時監視ステート（－３）
;===========================================================================
[Statedef -3]

[State -3, イントロ音止め]
type = stopSnd
trigger1 = stateno = 0
trigger1 = time = 1
trigger1 = prevstateno = 191
channel = 0
IgnoreHitPause = 1

[State -3, 屈みSE]
type = PlaySnd
trigger1 = (stateno = 10) || (stateno = 12) || (stateno = 20)
trigger1 = Time = 1
value = 20,0

[State -3, 歩きSE]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElemTime(4) = 1 || AnimElemTime(9) = 1
trigger2 = stateno = 100
trigger2 = AnimElemTime(2) = 3 || AnimElemTime(6) = 3
value = 20,1

[State -3, ジャンプSE]
type = PlaySnd
trigger1 = stateno = 50 || stateno = 105
trigger1 = animelemtime(1) = 1
value = 50,ifelse ((pos y) >-20, 0, 1)

[State -3, エアハイクエフェクト]
type = Explod
trigger1 = stateno = 50
trigger1 = animelemtime(1) = 1
trigger1 = pos y <= -20
anim = 48
postype = p1
pos = 0, 0
scale = 0.5, 0.5
persistent = 1

[State -3, 着地SE]
type = PlaySnd
trigger1 = stateno = 52
trigger1 = Time = 1
value = 50,2

[State -3, 走りSE]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = Time = 1
value = 100,0

[State -3, ｽﾞｻｰ]
type = PlaySnd
trigger1 = anim = 5120 && animelemTime(2) = 0
trigger1 = random <= 400
value = 5200,1
channel = 1
volume = -60


;エフェクト消す
[State -3, 210:A1]
type = removeExplod
triggerall = numexplod(211)
trigger1 = anim = 210 && animelemtime(7) = 0
trigger2 = anim != 210
id = 211

[State -3, 215:A2]
type = removeExplod
triggerall = numexplod(216)
trigger1 = anim = 215 && animelemtime(5) = 0
trigger2 = anim != 215
id = 216

[State -3, 215:A2]
type = removeExplod
triggerall = numexplod(217)
trigger1 = anim = 215 && animelemtime(6) = 0
trigger2 = anim != 215
id = 217

[State -3, 220:A3]
type = removeExplod
triggerall = numexplod(221)
trigger1 = anim = 220 && animelemtime(5) = 0
trigger2 = anim != 220
id = 221

[State -3, 230:スナッチ]
type = removeExplod
triggerall = numexplod(231)
trigger1 = anim != 230
id = 231

[State -3, 260:C1]
type = removeExplod
triggerall = numexplod(261)
trigger1 = anim = 260 && animelemtime(5) = 0
trigger2 = anim != 260
id = 261

[State -3, 260:C1]
type = removeExplod
triggerall = numexplod(262)
trigger1 = anim = 260 && animelemtime(9) = 0
trigger2 = anim != 260
id = 262

[State -3, 410:ハイローラー]
type = removeExplod
triggerall = numexplod(411)
trigger1 = anim = 410 && animelemtime(7) = 0
trigger2 = anim != 410
id = 411

[State -3, 610:a1]
type = removeExplod
triggerall = numexplod(611)
trigger1 = anim = 610 && animelemtime(4) = 0
trigger2 = anim != 610
id = 611

[State -3, 615:a2]
type = removeExplod
triggerall = numexplod(616)
trigger1 = anim = 615 && animelemtime(4) = 0
trigger2 = anim != 615
id = 616

[State -3, 620:a3]
type = removeExplod
triggerall = numexplod(621)
trigger1 = anim = 620 && animelemtime(4) = 0
trigger2 = anim != 620
id = 621

[State -3, 630:スプリット]
type = removeExplod
triggerall = numexplod(631)
trigger1 = anim != 630
id = 631

[State -3, 800:バスター]
type = removeExplod
triggerall = numexplod(801)
trigger1 = anim != 800
id = 801

[State -3, 800:バスター]
type = removeExplod
triggerall = numexplod(802)
trigger1 = anim != 800
id = 802

[State -3, 815:バスター]
type = removeExplod
triggerall = numexplod(816)
trigger1 = anim != 815
trigger1 = anim != 825
id = 816

[State -3, 820:バスター]
type = removeExplod
triggerall = numexplod(821)
trigger1 = anim != 820
id = 821

[State -3, 820:バスター]
type = removeExplod
triggerall = numexplod(823)
trigger1 = anim != 822
id = 823

[State -3, 820:バスター]
type = removeExplod
triggerall = numexplod(824)
trigger1 = anim != 822
id = 824

[State -3, 900:バスター]
type = removeExplod
triggerall = numexplod(901)
trigger1 = anim != 900
id = 901

[State -3, 待機]
type = statetypeset
trigger1 = anim = 210 && animelem = 10
trigger2 = anim = 215 && animelem = 9
trigger3 = anim = 220 && animelem = 8
trigger4 = anim = 225 && animelem = 10
trigger5 = anim = 230 && animelem = 9
trigger6 = anim = 300 && animelem = 14
trigger7 = anim = 310 && animelem = 15
trigger8 = anim = 410 && animelem = 10
trigger9 = anim = 610 && animelem = 7
trigger10 = anim = 615 && animelem = 7
trigger11 = anim = 620 && animelem = 7
trigger12 = anim = 625 && animelem = 11
trigger13 = anim = 632 && animelem = 5
trigger14 = anim = 800 && animelem = 7
trigger15 = anim = 1200 && animelem = 11
movetype = I

[State -3, 幻影刀用タイマー]
type = varadd
triggerall = var(2) < 4000
trigger1 = numhelper(1211) = 1
trigger2 = numhelper(1212) = 1
trigger3 = numhelper(1213) = 1
trigger4 = numhelper(1214) = 1
trigger5 = numhelper(1215) = 1
trigger6 = numhelper(1216) = 1
var(2) = ifelse((anim=805||anim=810||anim=815||anim=825), 200, 1)



;===========================================================================
; AI用
;===========================================================================
[State -3, AI起動用ヘルパー]
type=helper
trigger1=!NumHelper(10000)
trigger1=roundstate=2
trigger1=alive
trigger1=var(59)=0
Trigger1=PrevStateNo=191||PrevStateNo=5900
Trigger1=ctrl&&stateno=0
helpertype=normal
name="AI"
stateno=10000
ID=10000
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

[State -3, AI起動用ヘルパー]
type=changestate
trigger1= ishelper(10000)
trigger1= stateno!=10000
value=10000

[State -3, AIフラグON]
type = VarSet
triggerall = !var(59)
triggerall = RoundState = [1,2]
trigger1 = command = "AI0"
trigger2 = command = "AI1"
trigger3 = command = "AI2"
trigger4 = command = "AI3"
trigger5 = command = "AI4"
trigger6 = command = "AI5"
trigger7 = command = "AI6"
trigger8 = command = "AI7"
trigger9 = command = "AI8"
trigger10 = command = "AI9"
trigger11 = command = "AI10"
trigger12 = command = "AI11"
trigger13 = command = "AI12"
trigger14 = command = "AI13"
trigger15 = command = "AI14"
trigger16 = command = "AI15"
trigger17 = command = "AI16"
trigger18 = command = "AI17"
trigger19 = command = "AI18"
trigger20 = command = "AI19"
trigger21 = command = "AI20"
trigger22 = command = "AI21"
trigger23 = command = "AI22"
trigger24 = command = "AI23"
trigger25 = command = "AI24"
trigger26 = command = "AI25"
trigger27 = command = "AI26"
trigger28 = command = "AI27"
trigger29 = command = "AI28"
trigger30 = command = "AI29"
trigger31 = command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
trigger51 = Command = "AI50"
var(59) = var(58)
IgnoreHitPause = 1

[State -3, AIフラグON]
type = VarSet
triggerall = !var(59)
triggerall = RoundState = [1,2]
triggerall = numhelper(10000) > 0
Trigger1 = Helper(10000),var(59)
var(59) = var(58)
IgnoreHitPause = 1

[State -3, AIスイッチ]
Type = VarSet
TriggerAll = Var(59) >= 1
Trigger1 = RoundState = 4
Trigger2 = Win = 1
Trigger3 = Lose = 1
Trigger4 = DrawGame = 1
var(59) = -var(59)

[State -3, AIスイッチ]
Type = VarSet
TriggerAll = Var(59) <= -1
Trigger1 = RoundState = 2
var(59) = -var(59)

;---------------------------------------------------------------------------
;回避・防御
;---------------------------------------------------------------------------
[State -3,シャッフル]
Type = ChangeState
Value = 310
TriggerAll = var(59)>3
TriggerAll = StateType!=A
TriggerAll = RoundState=2
TriggerAll = P2BodyDist X = [-5,40]
TriggerAll = P2BodyDist Y >= -50
TriggerAll = Ctrl ||stateno = 10 || stateno = 11
TriggerAll = enemynear,HitDefAttr=SCA,NA,SA,NT,ST
TriggerAll = Random<=var(59)*15
;TriggerAll = enemynear,AnimTime <= -23 || var(59)<7
TriggerAll = enemynear,Time>=30||enemynear,Ctrl;||(Time>10&&var(59)>6)
triggerall = backedgebodydist > 30
Trigger1 = enemynear,Time>=50
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

[State -3,ストリーク]
Type = ChangeState
value = 300
TriggerAll = var(59)&&RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2stateType != L
TriggerAll = P2movetype != H
TriggerAll = Ctrl || stateno = 20 || stateno = 10 || stateno = 11
TriggerAll = enemynear,hitdefattr=SCA,NP,SP
TriggerAll = P2BodyDist X = [120,200]
TriggerAll = P2BodyDist Y = [-50,0]
Triggerall = Random<=var(59)*20;30
Trigger1 = enemynear,Time>=50
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

[State -3,ﾊﾞｯｸｽﾃｯﾌﾟ]
Type     = ChangeState
Value    = 105
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=Ctrl || stateno = 195
TriggerAll=P2BodyDist X= [-5,90]; [-5,90(目分量)]
TriggerAll=enemynear,vel x<2
TriggerAll=P2MoveType=A
TriggerAll=Random<=var(59)*50;70||var(59)>8
TriggerAll=enemynear,Time>=30;||(!Time&&var(59)>8)
Triggerall = BackEdgeBodyDist > 30
Trigger1 = enemynear,Time>=50
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

[State -3,ジャンプ]
Type     = ChangeState
Value    = 40
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType!=A
triggerall = Pos Y = 0
TriggerAll=Ctrl || stateno = 10 || stateno = 11 || stateno = 20 ||stateno=100
TriggerAll=enemynear,HitDefAttr=SCA,AT || random < 300
TriggerAll=Random<=var(59)*40;65
TriggerAll=enemynear,Time>=30
Trigger1 = enemynear,Time>=50
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

[State -3,キャリバー]
Type = ChangeState
value = 640
TriggerAll=var(59)&&RoundState = 2
TriggerAll=pos Y < -15
TriggerAll=enemynear,hitdefattr=SCA,NP,SP
TriggerAll=Ctrl
TriggerAll=P2stateType != L
TriggerAll=P2BodyDist X = [160,260]
triggerAll=P2dist Y = [-65,25]
TriggerAll=P2stateNo != [120,159]
TriggerAll = Random <= var(59)*50;80
Trigger1 = enemynear,Time>=50
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

[State -3,ガード]
Type = ChangeState
Value = 120
ctrl = 1
TriggerAll=var(59)&&RoundState = 2
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100 || stateno = 195
triggerall = StateNo != [120,155]
TriggerAll = inguarddist
Trigger1 = Random <= var(59) * (50+(pos Y < 0)*15) || anim = 21
Trigger2 = P2BodyDist X > 90 || enemynear,Time > 50
Trigger2 = Random <= var(59) * 140

[State -3,空中ジャンプ]
Type     = null;ChangeState
Value    = 45
TriggerAll=var(59)&&RoundState = 2
triggerall = Pos Y <= -20
Triggerall = Ctrl && var(4);|| (Ctrl以外にも使える条件)
TriggerAll=enemynear,HitDefAttr=SCA,AT
TriggerAll=Random<=var(59)*30;40
TriggerAll=enemynear,Time>=30
Trigger1 = enemynear,Time>=50
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

;---------------------------------------------------------------------------
;コンボ
;---------------------------------------------------------------------------
[State -3, スイッチOFF]
type = varset
triggerall = numenemy
trigger1 = enemy,numpartner = 0
trigger1 = enemynear,ctrl = 1 || p2movetype = A ||  p2movetype = I
trigger2 = enemy,numpartner = 1
trigger2 = enemynear(0),life > 0
trigger2 = enemynear(0),ctrl = 1 || p2movetype = A ||  p2movetype = I
trigger3 = enemy,numpartner = 1
trigger3 = enemynear(0),life = 0
trigger3 = enemynear(1),ctrl = 1 || p2movetype = A ||  p2movetype = I
var(39) = 0

[State -3, スイッチON]
Type = VarSet
triggerall = movecontact
trigger1 = var(59) > 3 && Random <= var(59)*30
trigger2 = var(59) > 6 && Random <= var(59)*40
var(39) = 1

[State -3, スイッチOFF]
type = varset
triggerall = numenemy
trigger1 = enemy,numpartner = 0
trigger1 = enemynear,ctrl = 1 || p2movetype = A ||  p2movetype = I
trigger2 = enemy,numpartner = 1
trigger2 = enemynear(0),life > 0
trigger2 = enemynear(0),ctrl = 1 || p2movetype = A ||  p2movetype = I
trigger3 = enemy,numpartner = 1
trigger3 = enemynear(0),life = 0
trigger3 = enemynear(1),ctrl = 1 || p2movetype = A ||  p2movetype = I
trigger4 = var(59) < 6
var(9) = 0

[State -3,スナッチ→バスター]
Type = ChangeState
value = ifelse(Random<=var(59)*150, (ifelse(Random<500,810,825)), 800)
triggerall=numtarget(230)>0
Triggerall=movehit>0;P2stateNo != [120,159]
Trigger1=var(59)&&RoundState = 2
Trigger1=StateType != A
Trigger1=P2BodyDist X = [0,110]
Trigger1 = StateNo=230

[State -3,バスター（アルト]
Type = ChangeState
value = 810
TriggerAll=Ctrl|| stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
Triggerall=var(59)&&RoundState = 2
Triggerall=StateType != A
;triggerall=power>=1000
triggerall=Random<=var(59)*100
trigger1=var(8)<15
Trigger1=!InGuardDist
Trigger1=P2BodyDist X = [0,25]
trigger1=P2Dist Y = 0

[State -3,バスター]
Type = ChangeState
value = 800
TriggerAll=Ctrl|| stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
Triggerall=var(59)&&RoundState = 2
Triggerall=StateType != A
triggerall=Random<=var(59)*100
trigger1=var(8)<15
Trigger1=!InGuardDist
Trigger1=P2BodyDist X = [0,25]
trigger1=P2Dist Y = 0

[State -3,ﾙｰﾚｯﾄｽﾋﾟﾝ→キャリバー]
Type = ChangeState
value = 640
TriggerAll=var(59)&&RoundState = 2
TriggerAll=pos Y < -15
TriggerAll=Ctrl
TriggerAll=P2BodyDist X = [150,290]
triggerAll=P2dist Y = [-120,25]
Triggerall = var(9) = 632
Trigger1 = Random <= var(59)*100

[State -3,ﾙｰﾚｯﾄｽﾋﾟﾝ→ﾊｲﾛｰﾗｰorﾊﾞｯｸｽﾃｯﾌﾟ]
Type     = ChangeState
Value    = ifelse(((P2StateNo != [5200,5210])&&(target(625),pos Y >-100)), 410, 105)
TriggerAll=var(59)&&RoundState = 2
Triggerall = StateType != A
triggerall = ctrl || stateno = 10 || stateno = 11 || stateno = 20
triggerall = numtarget(625)>0
Triggerall = var(9) = 625
trigger1 = target(625),pos Y >-100
trigger1 = P2bodydist X < 70
Trigger1 = Random<=var(59)*100

[State -3,ﾙｰﾚｯﾄｽﾋﾟﾝ→スナッチ]
Type     = ChangeState
Value    = 230
TriggerAll=var(59)&&RoundState = 2
Triggerall = StateType != A
triggerall = ctrl || stateno = 10 || stateno = 11 || stateno = 20
triggerall = numtarget(625)>0
Triggerall = var(9) = 625
trigger1 = P2StateNo != [5200,5210]
trigger1 = P2bodydist X = [70,120]
trigger1 = target(625),pos Y = [-190,-100]
Trigger1 = Random<=var(59)*100

[State -3, 小足→屈ＳＳ]
Type     = ChangeState
value	 = 400
Triggerall=RoundState = 2
TriggerAll=(var(59)&&Random<=var(59)*120)||var(39)
TriggerAll=StateType != A
TriggerAll=P2MoveType=H && P2StateNo != [5200,5210]
TriggerAll = P2StateType != L
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [0,65]
TriggerAll=Movecontact>0
Trigger1 = StateNo=420

[State -3, 屈ＳＳ→立ＳＳ]
Type     = ChangeState
value	 = 200
Triggerall=RoundState = 2
TriggerAll=(var(59)&&Random<=var(59)*120)||var(39)
TriggerAll=StateType != A
TriggerAll=P2MoveType=H && P2StateNo != [5200,5210]
TriggerAll = P2StateType != L
;TriggerAll=enemynear,Const(size.head.pos.y) <= 50 && P2StateType = S
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-10,90]
TriggerAll=Movecontact>0
Trigger1 = StateNo=400
;trigger1 = animelemtime(3) > 2

[State -3, 立ＳＳ・Ａ１→Ａ２]
Type     = ChangeState
value	 = 215
Triggerall=RoundState = 2
TriggerAll=StateType != A
TriggerAll = P2StateType != L
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-10,105]
TriggerAll=P2BodyDist Y >= -100
Trigger1=(var(59)&&Random<=var(59)*120)||var(39)
Trigger1=P2MoveType=H && P2StateNo != [5200,5210]
Trigger1=Movecontact>0
Trigger1 = StateNo=200 || stateno=210
trigger2=(var(59)&&Random<=var(59)*100)||var(39)
trigger2= stateno = 210 && animelemtime(8) >= 0

[State -3, Ａ２→Ａ３]
Type     = ChangeState
value	 = 220
Triggerall=RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2StateType != L
TriggerAll=P2StateType != C
TriggerAll=enemynear,Const(size.head.pos.y) <= -55
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X=[0,100]
TriggerAll=P2BodyDist Y>=-70
Triggerall = StateNo=215
Trigger1=(var(59)&&Random<=var(59)*140)||var(39)
Trigger1=P2MoveType=H && P2StateNo != [5200,5210]
Trigger1=Movecontact>0
Trigger2=(var(59)&&Random<=var(59)*100)
Trigger2=animelemtime(8) >= 2

[State -3, Ａ２・Ａ３→ハイローラー]
Type     = ChangeState
value	 = 410
Triggerall=RoundState = 2
TriggerAll=(var(59)&&Random<=var(59)*110)||var(39)
TriggerAll=StateType != A
TriggerAll=P2MoveType=H && P2StateNo != [5200,5210]
TriggerAll = P2StateType != L
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X=[0,80]
TriggerAll=P2BodyDist Y>=-150
TriggerAll=enemynear,vel x <= 5
Triggerall = Movehit > 0
Trigger1 = StateNo=215
Trigger2 = StateNo=220

[State -3, Ａ３→Ａ４]
Type     = ChangeState
value	 = 225
Triggerall=RoundState = 2
TriggerAll=StateType != A
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X=[0,100]
Triggerall = StateNo=220
Trigger1=(var(59)&&Random<=var(59)*140)||var(39)
Trigger1=P2MoveType=H && P2StateNo != [5200,5210]
Trigger1=Movecontact>0
trigger2=(var(59)&&Random<=var(59)*70)
trigger2=animelemtime(7)>=2

[State -3, ハイローラーｊｃ]
Type     = ChangeState
value	 = 40
TriggerAll=(var(59)&&Random<=var(59)*150)||var(39)
Triggerall=RoundState = 2
TriggerAll=StateType != A
;TriggerAll=!InGuardDist
TriggerAll=Movehit>0
Trigger1 = StateNo=410

[State -3,ハイローラー]
Type     = ChangeState
Value    = 410
TriggerAll=var(59)&&RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear,StateType != L
Triggerall = !inguarddist
Triggerall = Random <= var(59)*100
triggerall = P2bodydist X = [-5,80]
triggerall = P2dist Y = [-200,-50]
triggerall = Ctrl || stateno = 10 || stateno = 11 || stateno = 20
trigger1 = EnemyNear,MoveType = H

[State -3, 空ＳＳ→空１]
Type     = ChangeState
value	 = 610
Triggerall=RoundState = 2
TriggerAll=(var(59)&&Random<=var(59)*150)||var(39)
TriggerAll=StateType = A
TriggerAll=P2MoveType=H && P2StateNo != [5200,5210]
TriggerAll = P2StateType != L
TriggerAll=!InGuardDist
;TriggerAll=P2BodyDist X=[-10,95]
;TriggerAll=P2BodyDist Y=[-65,10]
TriggerAll=Movecontact>0
Trigger1 = StateNo=600

[State -3, 空１→空２]
Type     = ChangeState
value	 = 615
Triggerall=RoundState = 2
TriggerAll=StateType = A
TriggerAll = P2StateType != L
TriggerAll=!InGuardDist
;TriggerAll=(P2BodyDist X=[25,110])
;TriggerAll=(P2BodyDist Y=[-120,20])
Triggerall = StateNo=610
Trigger1=(var(59)&&Random<=var(59)*130)||var(39)
Trigger1=P2MoveType=H && P2StateNo != [5200,5210]
Trigger1=Movecontact>0
Trigger2=(var(59)&&Random<=var(59)*100)||var(39)
Trigger2=animelemtime(6)>=0

[State -3, 空２→ﾙｰﾚｯﾄｽﾋﾟﾝ]
Type     = ChangeState
value	 = 625
Triggerall=RoundState = 2
TriggerAll=StateType = A
TriggerAll = P2StateType != L
TriggerAll=!InGuardDist
Triggerall = StateNo=615
triggerall = fvar(0) > 0.1
Trigger1=(var(59)&&Random<=var(59)*130)||var(39)
Trigger1=P2MoveType=H && P2StateNo != [5200,5210]
Trigger1=Movecontact>0
Trigger2=(var(59)&&Random<=var(59)*10)||var(39)
Trigger2=animelemtime(6)>=0

[State -3, 空２→空３]
Type     = ChangeState
value	 = 620
Triggerall=RoundState = 2
TriggerAll=StateType = A
TriggerAll = P2StateType != L
;TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X >= 10
;TriggerAll=(P2BodyDist Y=[-120,20])
Triggerall = StateNo=615
Trigger1=(var(59)&&Random<=var(59)*150)||var(39)
Trigger1=P2MoveType=H && P2StateNo != [5200,5210]
Trigger1=Movecontact>0
Trigger2=(var(59)&&Random<=var(59)*20)||var(39)
Trigger2=animelemtime(6)>=0


;---------------------------------------------------------------------------
;援護・ぶっぱ
;---------------------------------------------------------------------------
[State -3,チャージＳ]
Type = ChangeState
value = 1200
triggerall = numpartner = 1
TriggerAll = var(59)&&RoundState = 2
TriggerAll = StateType != A
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20
TriggerAll = !InGuardDist
triggerall = power >= 1500
triggerall = var(0) = 0
trigger1 = partner,life > 0
Trigger1 = partner,movetype=H
Trigger1 = Random<=var(59)*(80 + floor(power/100))

[State -3,スナッチ]
Type = ChangeState
value = 230
triggerall = numpartner = 1
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
TriggerAll=P2stateType != L
Triggerall=P2stateNo != [5200,5210]
TriggerAll=P2stateType != C
TriggerAll=P2BodyDist X = [90,170]
TriggerAll=P2BodyDist Y = [-40,0]
trigger1 = partner,life > 0
Trigger1 = partner,movetype=H
Trigger1 = Random <= var(59)*100

[State -3,スナッチ]
Type = ChangeState
value = 230;ifelse((power>=1000)&&(random<=300+floor(power/20)), 1230, 230)
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
TriggerAll=P2stateType != L
Triggerall=P2stateNo != [5200,5210]
TriggerAll=P2stateType != C
TriggerAll=P2BodyDist X = [100,150]
TriggerAll=P2BodyDist Y = [-40,0]
triggerall=random<=var(59)*115
Triggerall = var(9) = 0
Trigger1 = !InGuardDist
Trigger1 = EnemyNear,AnimTime <= -13
trigger1 = EnemyNear,MoveType = I
trigger1 = (EnemyNear,StateNo = [200,649])
Trigger2 = !InGuardDist
Trigger2 = EnemyNear,AnimTime <= -13
trigger2 = EnemyNear,MoveType = I
Trigger2 = EnemyNear,StateType = A
Trigger2 = !EnemyNear,Ctrl
trigger3 = prevstateno = 105
Trigger3 = !EnemyNear,Ctrl
trigger3 = (EnemyNear,StateNo = [200,649])
Trigger4 = (P2BodyDist X = [120,150]) || random <200
trigger4 = (P2stateno != [120,159]) || random <300
trigger4 = random<=var(59)*100

[State -3,ストリーク]
Type = ChangeState
value = 300
TriggerAll = var(59)&&RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2stateType != L
TriggerAll = P2movetype != H
TriggerAll = P2movetype=A||enemynear,Ctrl
TriggerAll = Ctrl || stateno = 20 || stateno = 10 || stateno = 11
TriggerAll = !InGuardDist || enemynear,hitdefattr=SCA,NP,SP || var(59)<4
TriggerAll = P2BodyDist X = [120,250]
TriggerAll = P2BodyDist Y = [-50,0]
TriggerAll = P2stateType != A
Trigger1 = var(9) = 0
Trigger1 = Random<=var(59)*60

;---------------------------------------------------------------------------
;移動
;---------------------------------------------------------------------------
[State -3,ダッシュ]
Type     = ChangeState
Value    = 100
ctrl = 0
Triggerall = var(59) && RoundState = 2
Triggerall = StateType != A
Triggerall = !inguarddist
Triggerall = Ctrl
Triggerall = var(9) = 0
Triggerall = P2BodyDist X >= 80
Trigger1 = P2movetype = I
trigger1 = Random <= var(59)*5
;trigger2 = var(59)<7
trigger2 = p2statetype = L
trigger2 = random<=var(59)*10
trigger3 = var(0)>0
trigger3 = random<=var(59)*20

[State -3,歩き]
Type     = ChangeState
Value    = 20
ctrl	 = 1
TriggerAll=var(59)&&RoundState = 2
Triggerall = StateType != A && (ctrl || stateno = 10 || stateno = 11)
Triggerall = !inguarddist
triggerall = stateno!=20 && stateno!=100
Triggerall = var(9) = 0 || var(9) = 625
trigger1 = Random <= var(59)*20	;(AILv)*(目分量20くらい)
Trigger1 = P2BodyDist X >= 80	;(目分量80くらい)

[State -3,ジャンプ]
Type     = ChangeState
Value    = 40
TriggerAll=var(59)&&RoundState = 2
Triggerall = StateType != A
triggerall = Pos Y = 0
Triggerall = !inguarddist
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
Trigger1 = P2movetype != H
trigger1 = P2dist Y >= 0
trigger1 = Random <= var(59)*(3+(var(59)=[4,6])*5)
Trigger2 = P2movetype != H
trigger2 = P2dist Y < 0
trigger2 = Random <= var(59)*(7+(var(59)=[4,6])*5)
Trigger3 = var(9) = 0
trigger3 = P2BodyDist X = [0,90] 
trigger3 = p2statetype = A && p2movetype = H 
trigger3 = enemynear,vel Y = [-1,1] 
Trigger4 = var(9) = 0
trigger4 = p2statetype = L
trigger4 = P2movetype = H
Trigger4 = P2BodyDist X <= 30
trigger4 = Random <= var(59)*(15+(var(59)=[4,6])*5)
trigger5 = stateno =805 || stateno =811
trigger5 = Random <= var(59)*(30+(var(59)=[4,6])*5)
trigger6 = var(9) = 632
;trigger6 = P2BodyDist X > 100

[State -3,ﾊﾞｯｸｽﾃｯﾌﾟ]
Type     = ChangeState
Value    = 105
TriggerAll=var(59)&&RoundState = 2
Triggerall = StateType != A
Triggerall = Ctrl
Triggerall = backedgebodydist > 100
Triggerall = var(9) = 0
Trigger1 = P2movetype != H || stateno=632
;Trigger1 = P2stateno != [120,159]
Trigger1 = P2BodyDist X <= 140
trigger1 = Random <= var(59)*(25+(P2stateno=[5200,5210])*30)
trigger2 = P2statetype = L
;trigger2 = P2movetype != H
Trigger2 = P2BodyDist X <= 10
trigger2 = Random <= var(59)*(3-(var(59)=[4,6])*5)

[State -3,空中ｼﾞｬﾝﾌﾟ]
Type     = ChangeState
TriggerAll=var(59)&&RoundState = 2
Triggerall = !inguarddist
triggerall = Pos Y <= -20
Triggerall = Ctrl && var(4)
;Triggerall = var(9) = 0
Trigger1 = vel Y > 0
trigger1 = Random <= var(59)*(25+(var(59)=[4,6])*10)	;(AILv)*(目分量35くらい)
Trigger2 = vel Y > 0
Trigger2 = backedgebodydist < 40
trigger2 = P2BodyDist X <= 30
trigger2 = Random <= var(59)*(30+(var(59)=[4,6])*10)
Value    = 45

[State -3,しゃがみ]
Type = ChangeState
value = 10
Ctrl = 0
TriggerAll=RoundState=2
TriggerAll=var(59)
TriggerAll=StateType != A
TriggerAll=P2stateType != A
TriggerAll=P2stateType != L
TriggerAll = ctrl
triggerall = stateno != 20 && stateno != 100
triggerall = !var(0)
Triggerall = var(9) = 0
Trigger1 = Random <= var(59)*20||var(59)>9
trigger1 = var(0) = 0
trigger1 = P2BodyDist X >= 40

[State -3,しゃがみ解除]
Type = ChangeState
value = 12
Ctrl = 1
TriggerAll=RoundState=2 || RoundState=3
TriggerAll=var(59)
TriggerAll=P2stateType = A || RoundState=3
TriggerAll= stateno = 11 && time > 30
Trigger1 = Random <= var(59)*10||var(59)>9

;---------------------------------------------------------------------------
;立ち回り
;---------------------------------------------------------------------------
[State -3,バスター（アルト]
Type = ChangeState
value = 810
TriggerAll=var(59)&&RoundState = 2
;triggerall=power>=1000
TriggerAll=StateType != A
TriggerAll=P2stateType != L
triggerall=ifelse(enemynear,prevstateno=5120,var(7)>5,1)
TriggerAll=Ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
triggerall=prevstateno!=[800,900]
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-5,60]
TriggerAll=P2Dist Y = 0 || (P2Dist Y >= -10 && enemynear,vel Y > 0)
triggerall=P2stateNo != [5200,5210]
Triggerall = var(9) = 0
Trigger1=P2movetype != H
Trigger1 = Random <= var(59)*(40+(enemynear,Const(size.head.pos.y)<=-60)*30)

[State -3, バスター（カットラス]
type = ChangeState
value = ifelse(statetype = S, 825, 826)
TriggerAll=var(59)&&RoundState = 2
triggerall=(statetype = A) || (statetype = S)
TriggerAll=P2stateType = A
triggerall=ifelse(enemynear,prevstateno=5120,var(7)>5,1)
TriggerAll=Ctrl
triggerall=prevstateno!=[800,900]
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-5,60]
TriggerAll=P2Dist Y = [-100,20]
triggerall=P2stateNo != [5200,5210]
Triggerall = var(9) = 0
Trigger1=P2movetype != H
Trigger1 = Random <= var(59)*60

[State -3,バスター]
Type = ChangeState
value = 800
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
triggerall=ifelse(enemynear,prevstateno=5120,var(7)>5,1)||var(59)<7
TriggerAll=Ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
triggerall=prevstateno!=[800,900]
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-5,60]
TriggerAll=P2Dist Y = 0 || (P2Dist Y >= -10 && enemynear,vel Y > 0)
triggerall=P2stateNo != [5200,5210]
Triggerall = var(9) = 0
Trigger1=P2movetype != H
Trigger1 = Random <= var(59)*(100+(enemynear,Const(size.head.pos.y)<=-60)*30)

[State -3,チャージＳ]
Type = ChangeState
value = 1200
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
;TriggerAll=P2stateType != L
;TriggerAll=P2movetype != H
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
TriggerAll = !InGuardDist
triggerall = power >= 1000
triggerall = var(0) = 0
Triggerall = var(9) = 0
Trigger1 = (P2BodyDist X=[0,49]); || (P2BodyDist X>100)
Trigger1 = Random<=var(59)*floor(power/100)
Trigger2 = P2BodyDist X=[50,100]
Trigger2 = Random<=var(59)*(20 + floor(power/100))
Trigger3 = P2movetype = H
Trigger3 = Random<=var(59)*(30 + floor(power/100))

[State -3,小足]
Type = ChangeState
value = 420
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
TriggerAll=P2stateType != A
TriggerAll=P2movetype != H
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20
TriggerAll=P2BodyDist X = [0,25]
TriggerAll=P2BodyDist Y = 0
TriggerAll = !InGuardDist
triggerall = prevstateno != 200 && prevstateno != 400 && prevstateno != 420
triggerall = stateno !=420
triggerAll = var(0) = 0
Triggerall = var(9) = 0
Trigger1 = Random <= var(59)*(90+(enemynear,Const(size.head.pos.y)<=-60)*30)

[State -3,屈ＳＳ]
Type = ChangeState
value = 400
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
TriggerAll=P2BodyDist X = [-5,70]
TriggerAll=P2BodyDist Y >= -20
triggerall = prevstateno != 200 && prevstateno != 400 && prevstateno != 420
triggerall = stateno !=400
TriggerAll = !InGuardDist
Triggerall = var(9) = 0
Triggerall = P2StateNo != [5200,5210]
Trigger1 = P2movetype != H
Trigger1 = (P2stateNo != [120,159])
Trigger1 = enemynear,Const(size.head.pos.y) <= -50
Trigger1 = Random <= var(59)*140
Trigger2 = P2movetype != H
Trigger2 = (P2stateNo != [120,159])
Trigger2 = enemynear,Const(size.head.pos.y) > -50
trigger2 = Random <= var(59)*140

[State -3,立ＳＳ]
Type = ChangeState
value = 200
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
TriggerAll=P2stateType != C
TriggerAll=enemynear,Const(size.head.pos.y) <= -60 || random <= (10-var(59))*50
TriggerAll=P2movetype != H
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-10,80]
TriggerAll=P2BodyDist Y >= -120
TriggerAll=(P2stateNo != [120,159])
Triggerall = P2StateNo != [5200,5210]
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
triggerall = prevstateno != 200 && prevstateno != 400 && prevstateno != 420
Triggerall = var(9) = 0
Trigger1 = Random <= var(59)*150

[State -3,A2]
Type = ChangeState
value = 215
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-5,80]
TriggerAll=P2BodyDist Y >= -100
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno=100
Triggerall = var(9) = 0
Trigger1=P2movetype != H
Trigger1=(P2stateNo != [120,159])||P2stateType=A
trigger1=stateno!=100
Trigger1 = Random <= var(59)*(40+(enemynear,Const(size.head.pos.y)<=-60)*30)
trigger2 = var(0) > 0
trigger2 = P2BodyDist X <= 30
;trigger2 = var(59)<7
trigger2 = Random <= var(59)*(60+(enemynear,Const(size.head.pos.y)<=-60)*30)
Trigger3 = P2movetype = H
Trigger3 = Random <= var(59)*80

[State -3,A1]
Type = ChangeState
value = 210
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
TriggerAll=!InGuardDist
TriggerAll=P2BodyDist X = [-5,80]
TriggerAll=P2BodyDist Y >= -100
TriggerAll=(P2stateNo != [120,159])
TriggerAll = ctrl || stateno = 10 || stateno = 11 || stateno = 20 || stateno=100
Triggerall = var(9) = 0
Trigger1=P2movetype != H
Trigger1=(P2stateNo != [120,159])||P2stateType=A
Trigger1 = Random <= var(59)*(20+(enemynear,Const(size.head.pos.y)<=-60)*30)
trigger2 = var(0) > 0
trigger2 = P2BodyDist X <= 30
;trigger2 = var(59)<7
trigger2 = Random <= var(59)*(40+(enemynear,Const(size.head.pos.y)<=-60)*30)
Trigger3 = P2movetype = H
Trigger3 = Random <= var(59)*80

[State -3,ハイローラー]
Type = ChangeState
value = 410
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=P2stateType != L
TriggerAll=P2BodyDist X=[10,70]
TriggerAll=P2BodyDist Y>=-160 || (P2BodyDist Y>=-200 && enemynear,vel Y>0)
TriggerAll=Ctrl||((stateno = [210,220]) && movecontact)|| stateno = 10 || stateno = 11 || stateno = 20 || stateno = 100
Triggerall = var(9) = 0
Trigger1 = P2movetype != H
Trigger1 = enemynear,Const(size.head.pos.y) > -60
Trigger1 = Random <= var(59)*(!inguarddist*40 + (P2stateType=A)*110)
Trigger2 = P2movetype != H
Trigger2 = !InGuardDist || enemynear,HitDefAttr=A,NA,SA,NT,ST,NP,SP
Trigger2 = enemynear,Const(size.head.pos.y) <= -60
trigger2 = Random <= var(59)*80
Trigger3 = P2movetype = H
Trigger3 = Random <= var(59)*80

[State -3,シャッフル]
Type = ChangeState
value = 310
TriggerAll = var(59)&&RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2stateType != L
TriggerAll = P2movetype != H
TriggerAll = P2movetype=A||enemynear,Ctrl
TriggerAll = Ctrl || stateno = 20 || stateno = 10 || stateno = 11
TriggerAll = P2BodyDist X <= 100 || (P2BodyDist X <= 150 && enemynear,vel X > 3)
triggerall = backedgebodydist > 30
triggerAll = var(0) = 0
TriggerAll = !InGuardDist || enemynear,hitdefattr=SCA,NA,SA,NT,ST,NP,SP
Triggerall = var(9) = 0
Trigger1 = Random<=var(59)*20;(10-var(59))*20
Trigger2 = var(59)=[4,6]
Trigger2 = Random <= var(59)*20

[State -3,空ＳＳ]
Type = ChangeState
value = 600
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType=A
TriggerAll=!InGuardDist
TriggerAll=Ctrl
triggerall=stateno!=600
triggerall=vel x<5
Triggerall = var(9) = 0 || var(9) = 410
Trigger1=P2BodyDist X=[-100,100]
Trigger1=P2BodyDist Y=[-10,50-(enemynear,Const(size.head.pos.y)<=-50)*20]
Trigger1=P2stateType != L
Trigger1 = Random <= var(59)*90

[State -3,空Ａ１]
Type = ChangeState
value = 610
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType=A
TriggerAll=!InGuardDist
TriggerAll=Ctrl
Triggerall = var(9) = 0 || var(9) = 410
Trigger1=P2BodyDist X=[-90,90]
Trigger1=P2BodyDist Y=[-25,60]
Trigger1=P2stateType != L
Trigger1 = Random <= var(59)*120

[State -3,スプリット]
Type = ChangeState
value = 630
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType=A
TriggerAll=!InGuardDist
triggerall=enemynear,numexplod = 0
triggerall=P2Dist Y >= -60
Triggerall=P2stateNo != [5200,5210]
Triggerall = var(9) = 0
Triggerall = numtarget(632) = 0
trigger1=(P2BodyDist X = [50,100]) || (P2BodyDist X = [-100,-50])
Trigger1=P2stateNo != [120,159]
Trigger1=Ctrl
Trigger1=Random<=var(59)*50
trigger1=Pos Y<=-20
trigger2 = P2BodyDist X = [-100,100]
Trigger2 = stateno = [600,620]
trigger2 = movehit > 0
Trigger2 = Random <= var(59)*30
trigger3 = P2BodyDist X = [-100,100]
Trigger3 = Ctrl
Trigger3 = P2statetype = L
Trigger3 = P2movetype = H
Trigger3 = Random<=var(59)*120

[State -3,キャリバー]
Type = ChangeState
value = 640
TriggerAll=var(59)&&RoundState = 2
TriggerAll=pos Y < -15
TriggerAll=!InGuardDist;|| random<300
TriggerAll=Ctrl
TriggerAll=P2stateType != L
TriggerAll=P2BodyDist X = [160,260]
triggerAll=P2dist Y = [-65,25]
TriggerAll=P2stateNo != [120,159]
Triggerall = var(9) = 0
Trigger1 = Random <= var(59)*(80+(var(59)=[4,6])*30)

[State -3,挑発]
Type     = ChangeState
Value    = 195
triggerall=enemynear,numpartner = 0
TriggerAll=var(59)&&RoundState = 2
TriggerAll=StateType != A
TriggerAll=Ctrl
TriggerAll=!inguarddist
triggerall = var(0) = 0
trigger1 = enemynear,stateno = 195 && enemynear,time < 20
trigger2 = P2movetype = I
trigger2 = Random<=(6-var(59))*1

[State -3,レインボウ]
Type = ChangeState
value = 199
TriggerAll = var(59)&&RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2StateType != L
TriggerAll = P2movetype != H
triggerall = !((enemynear,Const(size.head.pos.y) <= -50) && P2statetype = C)
TriggerAll = stateno = 100 || anim = 20
TriggerAll = P2BodyDist X <= 100 || (P2BodyDist X <= 130 && enemynear,vel X > 3)
TriggerAll = P2BodyDist Y >= -20
triggerall = P2stateno != [120,159]
Trigger1 = Random<=(10-var(59))*1
trigger2 = var(59)<7
Trigger2 = Random<=var(59)*5

