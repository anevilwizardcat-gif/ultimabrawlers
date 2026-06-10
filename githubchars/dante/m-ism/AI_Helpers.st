;===========================================<AI_Helper>==============================================
;Adapted from Winane's (http://www.mugenguild.com/winane)
[Statedef 9741]
type=A
movetype=I
physics=N
anim=0
ctrl=0

[State 9741, wrong]
type=destroyself
trigger1= (parent,ID)!=(root,ID)
[State 9741, Safety]
type=selfstate
trigger1= !ishelper
value=0

[State 9741, uglyhack]
type=varset
trigger1= !var(1)
var(2)=1
[State 9741, pausecheck]
type=varset
trigger1= !(root,alive)
trigger2= roundstate!=2
trigger3= root,var(59)
var(2)=1

[State 9741, facing]
type=turn
trigger1= var(9):=(facing!=root,facing)

[State 9741, dirturnonAI]
type=parentvarset
triggerall= !var(2) && !var(9)
trigger1= root,command="fwd"
trigger2= root,command="back"
trigger3= root,command="up"
trigger4= root,command="down"
var(59)=1
[State 9741, dirturnoffAI]
type=parentvarset
triggerall= !var(2) && !var(9) && (root,var(59)>=1)
trigger1= command="fwd" && root,command="fwd"
trigger2= command="back" && root,command="back"
trigger3= command="up" && root,command="up"
trigger4= command="down" && root,command="down"
var(59)=-1

[State 9741, buttonturnonAI]
type=parentvarset
triggerall= !var(2)
trigger1= root,command="a"
trigger2= root,command="b"
trigger3= root,command="c"
trigger4= root,command="x"
trigger5= root,command="y"
trigger6= root,command="z"
trigger7= root,command="start"
var(59)=1
[State 9741, buttonturnoffAI]
type=parentvarset
triggerall= !var(2) && (root,var(59)>=1)
trigger1= command="a" && root,command="a"
trigger2= command="b" && root,command="b"
trigger3= command="c" && root,command="c"
trigger4= command="x" && root,command="x"
trigger5= command="y" && root,command="y"
trigger6= command="z" && root,command="z"
trigger7= command="start" && root,command="start"
var(59)=-1

[State 9741, unpausecheck]
type=varset
triggerall= var(2)
trigger1= root,command="fwd" || root,command="back" || root,command="up" || root,command="down"
trigger2= root,command="a" || root,command="b" || root,command="c"
trigger3= root,command="x" || root,command="y" || root,command="z"
trigger4= root,command="start"
trigger5= var(2)=1
trigger5= var(2):=0
var(2)=1

[State 9741, goodbye]
type=parentvarset
trigger1= root,var(59)=-1
trigger1= var(3):=1
var(59)=0

[State 9741, goodbye]
type=destroyself
triggerall= var(1):=1
trigger1= root,var(59) || var(3)
trigger2= !(root,alive)
trigger3= roundstate!=2

;===========================================================================
;AI hadou-check helper
;飛び道具対策ヘルパー55555（suparpause,pause無視）
;var(0):飛び道具対策変数１　相手攻撃判断＆カウントダウン用
;var(1):飛び道具対策変数２　反応までのカウントアップ用
;var(2):
;var(3)~var(53):ヘルパーリダイレクト用
;var(54):最大ループ回数設定
;var(55):55555,55559ループカウント用
;var(56):55557ループカウント用
;var(57):リダイレクト変数のうち、現在の最高の値
;var(58):結果から状況判断
;var(59):対策テスト用

;fvar(0)~fvar(x):ｘ速度など。確率変動に使う

;※var(3+var(55))が、「現在調査中のＩＤ用変数」

;全員共通のループステート１
[Statedef 55555]
type=A
movetype=I
physics=N
ctrl=0
anim=0
sprpriority=0
velset=0,0

[State -2];AIswitch暴発防止(1回だけしか判定しない)
type=varadd
trigger1=prevstateno!=55555
trigger1=prevstateno!=55557
trigger1=numhelper(9741)
trigger1=helper(9741),time=1
var(2)=1

[State -2];ループ回数設定
type=varset
trigger1=!var(54)
var(54)=3;10

[State -2];カウンタ
type=varadd
trigger1=prevstateno!=55555
trigger1=prevstateno!=55557
fvar(7)=1

[State -2];フラグ
type=varset
trigger1=prevstateno!=55555
trigger1=prevstateno!=55557
fvar(8)=0

[State -2];フラグ
type=varset
;▼相手攻撃中
trigger1=floor(fvar(7))%10=0
trigger1=root,p2movetype=A||root,inguarddist
trigger1=root,movetype!=H
;▼nフレーム毎
trigger2=floor(fvar(7))>=60
trigger2=fvar(7):=0||1;カウントリセット
fvar(8)=1

;ＩＤ探索ステートへ
[State -2]
type=ChangeState
triggerall=!numhelper(55556);このＦの中でまだＩＤ予測をしていない（失敗していない）
trigger1=var(56)!=-1||prevstateno=55559;このＦの中でまだＩＤ探索に失敗していない
trigger1=!playerIDexist(var(3+var(55)));変数が現在使用中ではない
trigger1=fvar(8)
value=55557

;透明化
[State -2]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

;無敵化
[State -2]
type=Nothitby
trigger1=1
value=SCA

;本体の後ろに配置
[State -2]
type=posset
trigger1=1
x=root,pos x+enemynear(!enemynear,alive*enemy,alive),const(size.attack.dist)*enemynear(!enemynear,alive*enemy,alive),facing

[State -2]
type=turn
;相手と逆向き
trigger1=facing=enemynear,facing

;ＩＤ用変数の最高値記録
[State 55555]
type=varset
trigger1=var(57)<var(3+var(55))
var(57)=var(3+var(55))

;ループバック
[State 55555]
type=ChangeState
trigger1=!numhelper(55556)	;何か見つかった１
trigger1=var(56)!=-1		;何か見つかった２
trigger1=var(55)<var(54)	;ループが指定回数未満
trigger1=var(55):=var(55)+1||1	;インクリメント（ループカウンタ増加処理）
value=55555

;カウンタ初期化
[State -2]
type=VarSet
trigger1=1
var(55)=0

;inguarddist系反応判断用
[State -2]
type=VarAdd
trigger1=var(0)>0
var(0)=-1

;inguarddist系反応判断用
[State -2]
type=VarSet
trigger1=!enemynear,ctrl&&enemynear,stateno>=200
trigger2=inguarddist
trigger3=root,inguarddist
var(0)=15

;inguarddist系反応判断用
[State -2]
type=VarAdd
trigger1=var(0)
var(1)=1

;inguarddist系反応判断用
[State -2]
type=Varset
trigger1=!var(0)
var(1)=0

;コンボ用変数みたいなもの
[State 55555 対策テスト]
type=varset
trigger1=1
var(59)=0

;終了したらキャラ別対策判断用のステートへ
[State -2]
type=ChangeState
trigger1=1
value=55559

;---------------------------------------------
;ＩＤ予測ヘルパー用ステート
[Statedef 55556]
anim=0
ctrl=0

;即消える
[State 55556]
type=destroyself
trigger1=ishelper
trigger1=1

;---------------------------------------------
;ループステート
[Statedef 55557]
anim=0
ctrl=0

;開始値を最高値に合わせる
[State -2]
type=varset
trigger1=prevstateno!=55557
var(3+var(55))=var(57)+1

;ループカウンタ増加
[State -2]
type=varadd
var(56)=1
trigger1=var(56)!=-1

;ループカウンタ初期化
[State -2]
type=Varset
trigger1=prevstateno!=55557
var(56)=0

;ふるいにかける。１つでも該当するなら次へ
[State -2]
type=varadd
;指定IDが存在しない
trigger1=!playerIDExist(var(3+var(55)))
;飛び道具と思わしくない、長時間存在しているヘルパー
trigger2=playerIDExist(var(3+var(55)))
trigger2=playerID(var(3+var(55))),movetype!=A&&!(playerID(var(3+var(55))),hitdefattr=SCA,AA,AP,AT)
trigger2=playerID(var(3+var(55))),time>200
trigger2=enemy,name!="Vergil"||enemy,authorname!="bugya"||(playerID(var(3+var(55))),stateno!=7003&&playerID(var(3+var(55))),stateno!=7006);絶刀対策
;エリアオーバー1
trigger3=playerIDExist(var(3+var(55)))
trigger3=abs(playerID(var(3+var(55))),Screenpos x)>500
;エリアオーバー2
trigger4=playerIDExist(var(3+var(55)))
trigger4=abs(playerID(var(3+var(55))),pos y)>500
;味方の
trigger5=playerIDExist(var(3+var(55)))
trigger5=teamside=playerID(var(3+var(55))),teamside
var(3+var(55))=1

[state -2];id確認用。一定回数繰り返して当たりがこなかったら、中止して次に備える
type=Helper
trigger1=var(56)>10
trigger1=var(56):=-1
trigger1=!numhelper(55556)
helpertype=normal
name="id_check"
ID=55556
pos=0, 0
postype=right
facing=1
stateno=55556
ownpal=1
supermovetime=99999
pausemovetime=99999

;変数の値を今出したばかりのヘルパーのものに
[State -2]
type=varset
trigger1=var(56)=-1
trigger1=numhelper(55556)
var(3+var(55))=helper(55556),id

;ヘルパーが無ければ初期値に戻す
[State -2]
type=varset
trigger1=var(56)=-1
trigger1=!numhelper(55556)
var(3+var(55))=var(57)+1

;ループバック
[State -2]
type=ChangeState
value=55557
triggerall=var(56)!=-1
trigger1=!playerIDExist(var(3+var(55)))
trigger2=playerIDExist(var(3+var(55)))
trigger2=playerID(var(3+var(55))),movetype!=A&&!(playerID(var(3+var(55))),hitdefattr=SCA,AA,AP,AT)
trigger2=playerID(var(3+var(55))),time>200
trigger2=enemy,name!="Vergil"||enemy,authorname!="bugya"||(playerID(var(3+var(55))),stateno!=7003&&playerID(var(3+var(55))),stateno!=7006);絶刀対策
trigger3=playerIDExist(var(3+var(55)))
trigger3=abs(playerID(var(3+var(55))),Screenpos x)>500
trigger4=playerIDExist(var(3+var(55)))
trigger4=abs(playerID(var(3+var(55))),pos y)>500
trigger5=playerIDExist(var(3+var(55)))
trigger5=teamside=playerID(var(3+var(55))),teamside

;終わったら戻る
[State -2]
type=ChangeState
value=55555
trigger1=1

;---------------------------------------------
;飛び道具対策ステート
[Statedef 55559]
anim=0
ctrl=0

;１Ｆ経ったらまたＩＤ取得から
[State 55559]
type=CHangeState
trigger1=time>0
value=55555

;変数の値に該当するヘルパーが存在しないならここでループカウンタ増加させてまた初めから
[State 55559]
type=CHangeState
trigger1=!playerIDExist(var(3+var(55)))
trigger1=var(55)<var(54)-1
trigger1=var(55):=var(55)+1
value=55559

;判断用変数初期化
[State 55555]
type=varset
trigger1=prevstateno!=55559
var(58)=0


[State 55555 地上波動]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**0)
trigger1=playerID(var(3+var(55))),hitdefattr = SA,AA,AP;SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>-100
var(58)=2**0

[State 55555 空中波動]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**1)
trigger1=playerID(var(3+var(55))),hitdefattr = SA,AA,AP;SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*5>=-90
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>-100
var(58)=2**1

[State 55555];設置
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**2)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),vel x=0
trigger1=playerID(var(3+var(55))),time>=20
var(58)=2**2

[State 55555 地上波動　ロイガ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**3)
trigger1=playerID(var(3+var(55))),hitdefattr = SA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*5+root,vel y*5=[-100,40]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*5<=15
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*5>=-50 || root,inguarddist
var(58)=2**3

[State 55555 空中波動 ロイガ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**4)
trigger1=playerID(var(3+var(55))),hitdefattr = SA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*5+root,vel y*5>=-100+(root,statetype=A)*40
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*5+root,vel y*5<=40
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*5<=0
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*5>=-50 || root,inguarddist
var(58)=2**4

[State 55555 地上波動　飛び道具飛び越し]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**5)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*15=[-30,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*15<=150
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*15>=100
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),hitdefattr = SCA,AP
var(58)=2**5

[State 55555 地上波動　飛び道具すり抜け]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**6)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*1=[-120,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>5
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*1<=30
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*1>=-50 || root,inguarddist
var(58)=2**6

[State 55555 ラウンドトリップ-小パン]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**7)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=1401 && playerID(var(3+var(55))),anim=1401
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*4=[-60,50]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*4=[30,50]
var(58)=2**7

[State 55555 ラウンドトリップ-ライジングドラゴン]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**8)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=1401 && playerID(var(3+var(55))),anim=1401
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*4=[-90,50]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*4=[-30,50]
var(58)=2**8

[State 55555 地上波動 通りすぎ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**9)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*6-root,vel x*6<0
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
var(58)=2**9

[State 55555 近すぎ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**10)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-120,120]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-120,120]
var(58)=2**10

[State 55555 近すぎ(地上)]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**11)
trigger1=playerID(var(3+var(55))),hitdefattr = SC,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-120,120]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-120,120]
var(58)=2**11

[State 55555 近すぎ(空中)]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**12)
trigger1=playerID(var(3+var(55))),hitdefattr = A,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-120,120]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-120,120]
var(58)=2**12

[State 55555 近すぎ(ロイガ)]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**13)
trigger1=playerID(var(3+var(55))),hitdefattr = SA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y+playerID(var(3+var(55))),vel y*5+root,vel y*5=[-60,40]
trigger1=abs(playerID(var(3+var(55))),vel x)=0
trigger1=(playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-50,50])
trigger1=playerID(var(3+var(55))),movecontact=0
var(58)=2**13

[State 55555 次元斬対策(出現確認)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**14)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7003,7004])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),stateno!=7004 || playerID(var(3+var(55))),time<=15
var(58)=2**14

[State 55555 絶刀対策(出現確認)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**14)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7006,7007])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),stateno!=7007 || playerID(var(3+var(55))),time<=15
var(58)=2**14

[State 55555 次元斬対策(ジャンプ不可)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**15)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7003,7004])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-100,55+100]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90-110,90-90-(playerID(var(3+var(55))),stateno=7003&&playerID(var(3+var(55))),time<=15)*21]
trigger1=playerID(var(3+var(55))),stateno!=7004 || playerID(var(3+var(55))),time<=15
var(58)=2**15

[State 55555 絶刀対策(ジャンプ不可)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**15)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7006,7007])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-100,55+100]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90-110,90-90-(playerID(var(3+var(55))),stateno=7006&&playerID(var(3+var(55))),time<=15)*21]
trigger1=playerID(var(3+var(55))),stateno!=7007 || playerID(var(3+var(55))),time<=15
var(58)=2**15

[State 55555 次元斬対策(前進不可)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**16)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7003,7004])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-(root,statetype=A)*10,55+90+(root,statetype=A)*80]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90,90]
trigger1=playerID(var(3+var(55))),stateno!=7004 || playerID(var(3+var(55))),time<=15
trigger1=playerID(var(3+var(55))),stateno!=7003 || playerID(var(3+var(55))),time>=33-25 || playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>=90-20-55+(root,statetype=A)*50
var(58)=2**16

[State 55555 絶刀対策(前進不可)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**16)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7006,7007])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-(root,statetype=A)*10,55+90+(root,statetype=A)*80]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90,90]
trigger1=playerID(var(3+var(55))),stateno!=7007 || playerID(var(3+var(55))),time<=15
trigger1=playerID(var(3+var(55))),stateno!=7006 || playerID(var(3+var(55))),time>=33-25 || playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>=90-20-55+(root,statetype=A)*50
var(58)=2**16

[State 55555 次元斬対策(後退不可)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**17)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7003,7004])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-90-(root,statetype=A)*50,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90,90]
trigger1=playerID(var(3+var(55))),stateno!=7004 || playerID(var(3+var(55))),time<=15
trigger1=playerID(var(3+var(55))),stateno!=7003 || playerID(var(3+var(55))),time>=33-25 || playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)<=-90+20+55-(root,statetype=A)*50
var(58)=2**17

[State 55555 絶刀対策(後退不可)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**17)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7006,7007])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-55-90-(root,statetype=A)*50,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90,90]
trigger1=playerID(var(3+var(55))),stateno!=7007 || playerID(var(3+var(55))),time<=15
trigger1=playerID(var(3+var(55))),stateno!=7006 || playerID(var(3+var(55))),time>=33-25 || playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)<=-90+20+55-(root,statetype=A)*50
var(58)=2**17

[State 55555 次元斬対策(ロイガ可)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**18)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=7003
;trigger1=playerID(var(3+var(55))),facing*(root,pos x+root,vel x*root,facing-playerID(var(3+var(55))),pos x)=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=root,facing*(playerID(var(3+var(55))),pos x-(root,pos x+root,vel x*root,facing))=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),pos y-(root,pos y+root,vel y)=[-65-(root,statetype!=A)*20,65]
trigger1=33-playerID(var(3+var(55))),time = [0,5]
var(58)=2**18

[State 55555 次元斬対策(ロイガ可)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**18)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=7004
trigger1=!playerID(var(3+var(55))),movecontact
;trigger1=playerID(var(3+var(55))),facing*(root,pos x+root,vel x*root,facing-playerID(var(3+var(55))),pos x)=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=root,facing*(playerID(var(3+var(55))),pos x-(root,pos x+root,vel x*root,facing))=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),pos y-(root,pos y+root,vel y)=[-65-(root,statetype!=A)*20,65]
trigger1=playerID(var(3+var(55))),time = [0,15]
var(58)=2**18

[State 55555 絶刀対策(ロイガ可)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**18)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=7006
;trigger1=playerID(var(3+var(55))),facing*(root,pos x+root,vel x*root,facing-playerID(var(3+var(55))),pos x)=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=root,facing*(playerID(var(3+var(55))),pos x-(root,pos x+root,vel x*root,facing))=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),pos y-(root,pos y+root,vel y)=[-65-(root,statetype!=A)*20,65]
trigger1=33-playerID(var(3+var(55))),time = [0,5]
var(58)=2**18

[State 55555 絶刀対策(ロイガ可)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**18)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=7007
trigger1=!playerID(var(3+var(55))),movecontact
;trigger1=playerID(var(3+var(55))),facing*(root,pos x+root,vel x*root,facing-playerID(var(3+var(55))),pos x)=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=root,facing*(playerID(var(3+var(55))),pos x-(root,pos x+root,vel x*root,facing))=[-65-(root,statetype=A)*5,55+(root,statetype=A)*5]
trigger1=playerID(var(3+var(55))),pos y-(root,pos y+root,vel y)=[-65-(root,statetype!=A)*20,65]
trigger1=playerID(var(3+var(55))),time = [0,15]
var(58)=2**18

[State 55555 次元斬対策(垂直ジャンプ不可)];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**19)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7003,7004])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-60-10,55+10]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90-130,90-90-(playerID(var(3+var(55))),stateno=7003&&playerID(var(3+var(55))),time<=15)*21]
trigger1=playerID(var(3+var(55))),stateno!=7004 || playerID(var(3+var(55))),time<=15
var(58)=2**19

[State 55555 絶刀対策(垂直ジャンプ不可)];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**19)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7006,7007])
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-60-10,55+10]
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90-130,90-90-(playerID(var(3+var(55))),stateno=7006&&playerID(var(3+var(55))),time<=15)*21]
trigger1=playerID(var(3+var(55))),stateno!=7007 || playerID(var(3+var(55))),time<=15
var(58)=2**19

[State 55555 なにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**20)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
var(58)=2**20

[State 55555 前方になにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**21)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-160,160]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>=0
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
var(58)=2**21

[State 55555 後方になにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**22)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-160,160]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)<0
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
var(58)=2**22

[State 55555 なにかあるなら（ロイガ）]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**23)
trigger1=playerID(var(3+var(55))),hitdefattr = SA,AA,AP
var(58)=2**23

[State 55555 なにかあるなら（次元斬）];次元斬発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**24)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7003,7004])
trigger1=playerID(var(3+var(55))),stateno!=7004 || playerID(var(3+var(55))),time<=15
var(58)=2**24

[State 55555 なにかあるなら（絶刀）];絶刀発生33
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**24)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && (playerID(var(3+var(55))),stateno=[7006,7007])
trigger1=playerID(var(3+var(55))),stateno!=7007 || playerID(var(3+var(55))),time<=15
var(58)=2**24

[State 55555 なにかあるなら（ラウンドトリップ）]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**25)
trigger1=enemy,name="Vergil" && enemy,authorname="bugya" && playerID(var(3+var(55))),stateno=1401
var(58)=2**25

[State 55555 なにか射出物があるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**26)
trigger1=playerID(var(3+var(55))),movetype = A || playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>-100
var(58)=2**26

[State 55555 なにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**27)
trigger1=playerID(var(3+var(55))),movetype = A || playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
var(58)=2**27

[State 55555 ミリオンダラー打ち返し]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**28)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*3=[-60,50]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*3>=90
var(58)=2**28

;ループカウンタ増加、初めに戻る
[State 55559]
type=CHangeState
trigger1=var(55)<var(54)
trigger1=var(55):=var(55)+1||1
value=55559

;---------------------------------------------------------------------------
;proj飛び道具対策
;---------------------------------------------------------------------------
;※異なる速度で打ち出される同ステートの飛び道具に対応できない
;※距離によって速度が異なる場合がある（飛び道具のサイズを考慮できないため）

;///// fvar(30) proj飛び道具 - 被弾までの時間 /////
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(30)= 0
IgnoreHitPause= 1

;移動型
[State 55555]
Type = null
triggerall = ishelper
triggerall = numenemy
triggerall = enemynear,stateno != fvar(32)
triggerall = enemynear,stateno != fvar(33)
triggerall = enemynear,stateno != fvar(34)
triggerall = enemynear,stateno != fvar(35)
triggerall = enemynear,stateno != fvar(36)
triggerall = enemynear,stateno != fvar(37)
triggerall = enemynear,stateno != fvar(38)
trigger1 = fvar(15)
trigger1 = enemynear,stateno = ceil(fvar(15))%100000
trigger1 = fvar(30) := ceil(fvar(15)/100000)%1000 - enemynear,time + root,p2bodydist x / fvar(16)
trigger2 = fvar(17)
trigger2 = enemynear,stateno = ceil(fvar(17))%100000
trigger2 = fvar(30) := ceil(fvar(17)/100000)%1000 - enemynear,time + root,p2bodydist x / fvar(18)
trigger3 = fvar(19)
trigger3 = enemynear,stateno = ceil(fvar(19))%100000
trigger3 = fvar(30) := ceil(fvar(19)/100000)%1000 - enemynear,time + root,p2bodydist x / fvar(20)
trigger4 = fvar(21)
trigger4 = enemynear,stateno = ceil(fvar(21))%100000
trigger4 = fvar(30) := ceil(fvar(21)/100000)%1000 - enemynear,time + root,p2bodydist x / fvar(22)
trigger5 = fvar(23)
trigger5 = enemynear,stateno = ceil(fvar(23))%100000
trigger5 = fvar(30) := ceil(fvar(23)/100000)%1000 - enemynear,time + root,p2bodydist x / fvar(24)
IgnoreHitPause= 1

;非移動型
[State 55555]
Type = null
triggerall = ishelper
triggerall = numenemy
triggerall = enemynear,stateno != fvar(32)
triggerall = enemynear,stateno != fvar(33)
triggerall = enemynear,stateno != fvar(34)
triggerall = enemynear,stateno != fvar(35)
triggerall = enemynear,stateno != fvar(36)
triggerall = enemynear,stateno != fvar(37)
triggerall = enemynear,stateno != fvar(38)
trigger1 = fvar(25)
trigger1 = enemynear,stateno = ceil(fvar(25))%100000
trigger1 = fvar(30) := ceil(fvar(25)/100000)%1000 - enemynear,time
trigger2 = fvar(26)
trigger2 = enemynear,stateno = ceil(fvar(26))%100000
trigger2 = fvar(30) := ceil(fvar(26)/100000)%1000 - enemynear,time
trigger3 = fvar(27)
trigger3 = enemynear,stateno = ceil(fvar(27))%100000
trigger3 = fvar(30) := ceil(fvar(27)/100000)%1000 - enemynear,time
trigger4 = fvar(28)
trigger4 = enemynear,stateno = ceil(fvar(28))%100000
trigger4 = fvar(30) := ceil(fvar(28)/100000)%1000 - enemynear,time
trigger5 = fvar(29)
trigger5 = enemynear,stateno = ceil(fvar(29))%100000
trigger5 = fvar(30) := ceil(fvar(29)/100000)%1000 - enemynear,time
IgnoreHitPause= 1

;///// fvar(31) ブラックリスト格納用 /////
[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
trigger1 = roundstate != 2
fvar(31)= 0
IgnoreHitPause= 1

[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = !fvar(31)
trigger1 = fvar(30)
trigger1 = (root,stateno = [900,910]) && root,time = 1
fvar(31)= enemynear,stateno
IgnoreHitPause= 1

[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = fvar(31)
trigger1 = root,prevstateno = [900,910]
trigger1 = root,movetype != H
fvar(31)= 0
IgnoreHitPause= 1

[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = fvar(31)
triggerall = root,prevstateno = [900,910]
triggerall = root,movetype = H
triggerall = fvar(31) != fvar(32)
triggerall = fvar(31) != fvar(33)
triggerall = fvar(31) != fvar(34)
triggerall = fvar(31) != fvar(35)
triggerall = fvar(31) != fvar(36)
triggerall = fvar(31) != fvar(37)
triggerall = fvar(31) != fvar(38)
trigger1 = !fvar(32)
trigger1 = fvar(32) := fvar(31)
trigger2 = !fvar(33)
trigger2 = fvar(33) := fvar(31)
trigger3 = !fvar(34)
trigger3 = fvar(34) := fvar(31)
trigger4 = !fvar(35)
trigger4 = fvar(35) := fvar(31)
trigger5 = !fvar(36)
trigger5 = fvar(36) := fvar(31)
trigger6 = !fvar(37)
trigger6 = fvar(37) := fvar(31)
trigger7 = !fvar(38)
trigger7 = fvar(38) := fvar(31)
fvar(31)= 0
IgnoreHitPause= 1

;///// fvar(10) proj飛び道具が射出された瞬間 /////
[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
trigger1 = 1
fvar(10)= ifelse(!fvar(39) && enemynear,numproj,1,0)
IgnoreHitPause= 1

;///// fvar(11) 計測中フラグ /////
[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = enemynear,projcontacttime(0) != 1
;ラウンドが終了したら計測中止
trigger1 = roundstate != 2
;本体が動いたら計測中止
trigger2 = fvar(11) = 1
trigger2 = root,vel x || root,vel y
;飛び道具の数が変われば計測中止
trigger3 = fvar(11) = 1 && fvar(13)
trigger3 = enemynear,numproj != ceil(fvar(13))/100000
fvar(11)= 0
IgnoreHitPause= 1

;計測開始
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(10)
trigger1 = enemynear,stateno <= 99999
trigger1 = enemynear,time <= 999
trigger1 = ceil(root,p2bodydist x) <= 99999
trigger1 = enemynear,numproj <= 21474
fvar(11)= 1
IgnoreHitPause= 1

;飛び道具がヒット
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 1
trigger1 = enemynear,projcontacttime(0) = 1
fvar(11)= 2
IgnoreHitPause= 1

;///// fvar(12) 一時保存情報 - 1 /////
;1~10000           ;相手のステート（射出ステート）
;100000~1000000000 ;相手のtime（射出までの時間）
[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
trigger1 = fvar(10)
fvar(12)= enemynear,stateno + enemynear,time * 100000
IgnoreHitPause= 1

[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(11)
fvar(12)= 0
IgnoreHitPause= 1

;///// fvar(13) 一時保存情報 - 2 /////
;1~10000           ;相手との距離
;100000~1000000000 ;射出された瞬間の飛び道具の数
[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
trigger1 = fvar(10)
fvar(13)= ceil(root,p2bodydist x) + enemynear,numproj * 100000
IgnoreHitPause= 1

[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(11)
fvar(13)= 0
IgnoreHitPause= 1

;///// fvar(14) タイマー /////
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(11)
fvar(14)= 0
IgnoreHitPause= 1

[State 55555]
Type = VarAdd
triggerall = ishelper
trigger1 = fvar(11) = 1
fvar(14)= 1
IgnoreHitPause= 1

;///// fvar(15)~fvar(24) 移動型リスト /////
;1~10000              ;相手のステート（射出ステート）
;100000~10000000      ;相手のtime（射出までの時間）
;100000000~1000000000 ;飛び道具の速度（距離/タイマー）
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 2
trigger1 = !fvar(15) || (ceil(fvar(12))%100000 = ceil(fvar(15))%100000 && (ceil(fvar(13))%100000)/fvar(14) > fvar(16))
trigger1 = fvar(14) > 1;ヒットまでに時間がある≒移動型
trigger1 = fvar(16) := (ceil(fvar(13))%100000)/fvar(14);飛び道具の速度（距離/タイマー）
trigger1 = fvar(11) := 0 || 1
fvar(15)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 2
trigger1 = !fvar(17) || (ceil(fvar(12))%100000 = ceil(fvar(17))%100000 && (ceil(fvar(13))%100000)/fvar(14) > fvar(18))
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(15))%100000
trigger1 = fvar(14) > 1;ヒットまでに時間がある≒移動型
trigger1 = fvar(18) := (ceil(fvar(13))%100000)/fvar(14);飛び道具の速度（距離/タイマー）
trigger1 = fvar(11) := 0 || 1
fvar(17)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 2
trigger1 = !fvar(19) || (ceil(fvar(12))%100000 = ceil(fvar(19))%100000 && (ceil(fvar(13))%100000)/fvar(14) > fvar(20))
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(15))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(17))%100000
trigger1 = fvar(14) > 1;ヒットまでに時間がある≒移動型
trigger1 = fvar(20) := (ceil(fvar(13))%100000)/fvar(14);飛び道具の速度（距離/タイマー）
trigger1 = fvar(11) := 0 || 1
fvar(19)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 2
trigger1 = !fvar(21) || (ceil(fvar(12))%100000 = ceil(fvar(21))%100000 && (ceil(fvar(13))%100000)/fvar(14) > fvar(22))
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(15))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(17))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(19))%100000
trigger1 = fvar(14) > 1;ヒットまでに時間がある≒移動型
trigger1 = fvar(22) := (ceil(fvar(13))%100000)/fvar(14);飛び道具の速度（距離/タイマー）
trigger1 = fvar(11) := 0 || 1
fvar(21)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 2
trigger1 = !fvar(23) || (ceil(fvar(12))%100000 = ceil(fvar(23))%100000 && (ceil(fvar(13))%100000)/fvar(14) > fvar(24))
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(15))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(17))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(19))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(21))%100000
trigger1 = fvar(14) > 1;ヒットまでに時間がある≒移動型
trigger1 = fvar(24) := (ceil(fvar(13))%100000)/fvar(14);飛び道具の速度（距離/タイマー）
trigger1 = fvar(11) := 0 || 1
fvar(23)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1

;///// fvar(25)~fvar(29) 非移動型リスト /////
;1~10000              ;相手のステート（射出ステート）
;100000~10000000      ;相手のtime（射出までの時間）
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(25)
trigger1 = fvar(11) = 2
trigger1 = fvar(14) <= 1;ヒットまでに時間がない≒非移動型
trigger1 = fvar(11) := 0 || 1
fvar(25)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(26)
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(25))%100000
trigger1 = fvar(11) = 2
trigger1 = fvar(14) <= 1;ヒットまでに時間がない≒非移動型
trigger1 = fvar(11) := 0 || 1
fvar(26)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(27)
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(25))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(26))%100000
trigger1 = fvar(11) = 2
trigger1 = fvar(14) <= 1;ヒットまでに時間がない≒非移動型
trigger1 = fvar(11) := 0 || 1
fvar(27)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(28)
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(25))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(26))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(27))%100000
trigger1 = fvar(11) = 2
trigger1 = fvar(14) <= 1;ヒットまでに時間がない≒非移動型
trigger1 = fvar(11) := 0 || 1
fvar(28)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = !fvar(29)
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(25))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(26))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(27))%100000
trigger1 = ceil(fvar(12))%100000 != ceil(fvar(28))%100000
trigger1 = fvar(11) = 2
trigger1 = fvar(14) <= 1;ヒットまでに時間がない≒非移動型
trigger1 = fvar(11) := 0 || 1
fvar(29)= ceil(fvar(12))%100000 + ceil(fvar(12)/100000)%1000*100000
IgnoreHitPause= 1

;保存できないので計測終了
[State 55555]
Type = VarSet
triggerall = ishelper
trigger1 = fvar(11) = 2
fvar(11)= 0
IgnoreHitPause= 1

;///// fvar(39) 直前のproj飛び道具状況 /////
[State 55555]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
trigger1 = 1
fvar(39)= ifelse(enemynear,numproj,1,0)
IgnoreHitPause= 1

[State -2 デバッグ用]
type=null;displayToClipboard
trigger1=1
ignorehitpause=1
text=" var(2)=%d var(4)=%d var(3)=%d var(5)=%d var(6)=%d"
params=var(2),var(4),var(3),var(5),var(6)

[State -2 デバッグ用]
type=null;AppendToClipboard
trigger1=1
ignorehitpause=1
text=" \nvar(7)=%d var(59)=%d var(55)=%d var(54)=%d var(58)=%d"
params=var(7),var(59),var(55),var(54),var(58)

[State -2 デバッグ用]
type=displayToClipboard
trigger1=1
ignorehitpause=1
text=" fvar(10)=%d "
params=ceil(fvar(10))


[State 55555];カウンタ初期化
type=varset
trigger1=1
var(55)=0

[State 55555];カウンタ初期化
type=varset
trigger1=1
var(56)=0

[State -2];直前のヘルパー数
type=varset
trigger1=1
fvar(9)=enemy,numhelper

;===========================================================================
[Statedef 22222];ステージ右端検出用
Type = A
Ctrl = 0
Anim = 0
Velset = -10,0
Movetype = I
Physics = N
Sprpriority = 1

[State -2,消失]
type=DestroySelf
triggerall=isHelper
trigger1=roundstate!=[1,2]

[State 22222]
type = assertspecial
trigger1 = 1
flag = invisible

[State 22222]
type = NotHitBy
value = SCA
trigger1 = 1

[State 22222,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 22222]
type = Projectile
Trigger1 = time = 0
velocity = 10,0
projID = 2222
projhits = 9999
projpriority = 9999
projanim = 0
offset = 0,0
projstagebound = 0
Projedgebound = 100000
projremove = 0
Projremovetime = -1
supermovetime = 9999
pausemovetime = 9999

[State 22222]
type = velset
Trigger1 = Root,NumProjID(2222) = 0
Trigger1 = time > 0
x = 0
y = 0

;///// var(0) 猶予 /////
;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
var(0)= 0
IgnoreHitPause= 1

;猶予
[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns
triggerall= p2movetype = A || p2stateno >= 200 || enemynear,hitdefattr = SCA,AA,AT,AP
triggerall= enemynear,stateno != var(23)
triggerall= enemynear,stateno != var(24)
triggerall= enemynear,stateno != var(25)
triggerall= enemynear,stateno != var(26)
triggerall= enemynear,stateno != var(27)
triggerall= enemynear,stateno != var(28)
triggerall= enemynear,stateno != var(29)
trigger1 = p2stateno = var(1)%100000
trigger1 = var(0) := var(1)/100000 - enemynear,time
trigger2 = p2stateno = var(2)%100000
trigger2 = var(0) := var(2)/100000 - enemynear,time
trigger3 = p2stateno = var(3)%100000
trigger3 = var(0) := var(3)/100000 - enemynear,time
trigger4 = p2stateno = var(4)%100000
trigger4 = var(0) := var(4)/100000 - enemynear,time
trigger5 = p2stateno = var(5)%100000
trigger5 = var(0) := var(5)/100000 - enemynear,time
trigger6 = p2stateno = var(6)%100000
trigger6 = var(0) := var(6)/100000 - enemynear,time
trigger7 = p2stateno = var(7)%100000
trigger7 = var(0) := var(7)/100000 - enemynear,time
trigger8 = p2stateno = var(8)%100000
trigger8 = var(0) := var(8)/100000 - enemynear,time
trigger9 = p2stateno = var(9)%100000
trigger9 = var(0) := var(9)/100000 - enemynear,time
trigger10 = p2stateno = var(10)%100000
trigger10 = var(0) := var(10)/100000 - enemynear,time
trigger11 = p2stateno = var(11)%100000
trigger11 = var(0) := var(11)/100000 - enemynear,time
trigger12 = p2stateno = var(12)%100000
trigger12 = var(0) := var(12)/100000 - enemynear,time
trigger13 = p2stateno = var(13)%100000
trigger13 = var(0) := var(13)/100000 - enemynear,time
trigger14 = p2stateno = var(14)%100000
trigger14 = var(0) := var(14)/100000 - enemynear,time
trigger15 = p2stateno = var(15)%100000
trigger15 = var(0) := var(15)/100000 - enemynear,time
trigger16 = p2stateno = var(16)%100000
trigger16 = var(0) := var(16)/100000 - enemynear,time
trigger17 = p2stateno = var(17)%100000
trigger17 = var(0) := var(17)/100000 - enemynear,time
trigger18 = p2stateno = var(18)%100000
trigger18 = var(0) := var(18)/100000 - enemynear,time
trigger19 = p2stateno = var(19)%100000
trigger19 = var(0) := var(19)/100000 - enemynear,time
trigger20 = p2stateno = var(20)%100000
trigger20 = var(0) := var(20)/100000 - enemynear,time
IgnoreHitPause= 1

;///// var(1)~var(20) フラグ /////
[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000 || enemynear,time < var(1)/100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(1) || enemynear,stateno = var(1)
trigger1= var(1) := enemynear,stateno
trigger1= var(1) := (var(1) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000 || enemynear,time < var(2)/100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(2) || enemynear,stateno = var(2)
trigger1= var(2) := enemynear,stateno
trigger1= var(2) := (var(2) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000 || enemynear,time < var(3)/100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(3) || enemynear,stateno = var(3)
trigger1= var(3) := enemynear,stateno
trigger1= var(3) := (var(3) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000 || enemynear,time < var(4)/100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(4) || enemynear,stateno = var(4)
trigger1= var(4) := enemynear,stateno
trigger1= var(4) := (var(4) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000 || enemynear,time < var(5)/100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(5) || enemynear,stateno = var(5)
trigger1= var(5) := enemynear,stateno
trigger1= var(5) := (var(5) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000 || enemynear,time < var(6)/100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(6) || enemynear,stateno = var(6)
trigger1= var(6) := enemynear,stateno
trigger1= var(6) := (var(6) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000 || enemynear,time < var(7)/100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(7) || enemynear,stateno = var(7)
trigger1= var(7) := enemynear,stateno
trigger1= var(7) := (var(7) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000 || enemynear,time < var(8)/100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(8) || enemynear,stateno = var(8)
trigger1= var(8) := enemynear,stateno
trigger1= var(8) := (var(8) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000 || enemynear,time < var(9)/100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(9) || enemynear,stateno = var(9)
trigger1= var(9) := enemynear,stateno
trigger1= var(9) := (var(9) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000 || enemynear,time < var(10)/100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(10) || enemynear,stateno = var(10)
trigger1= var(10) := enemynear,stateno
trigger1= var(10) := (var(10) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000 || enemynear,time < var(11)/100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(11) || enemynear,stateno = var(11)
trigger1= var(11) := enemynear,stateno
trigger1= var(11) := (var(11) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000 || enemynear,time < var(12)/100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(12) || enemynear,stateno = var(12)
trigger1= var(12) := enemynear,stateno
trigger1= var(12) := (var(12) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000 || enemynear,time < var(13)/100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(13) || enemynear,stateno = var(13)
trigger1= var(13) := enemynear,stateno
trigger1= var(13) := (var(13) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000 || enemynear,time < var(14)/100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(14) || enemynear,stateno = var(14)
trigger1= var(14) := enemynear,stateno
trigger1= var(14) := (var(14) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000 || enemynear,time < var(15)/100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(15) || enemynear,stateno = var(15)
trigger1= var(15) := enemynear,stateno
trigger1= var(15) := (var(15) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000 || enemynear,time < var(16)/100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(16) || enemynear,stateno = var(16)
trigger1= var(16) := enemynear,stateno
trigger1= var(16) := (var(16) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000 || enemynear,time < var(17)/100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(17) || enemynear,stateno = var(17)
trigger1= var(17) := enemynear,stateno
trigger1= var(17) := (var(17) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000 || enemynear,time < var(18)/100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(18) || enemynear,stateno = var(18)
trigger1= var(18) := enemynear,stateno
trigger1= var(18) := (var(18) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000 || enemynear,time < var(19)/100000
trigger1= enemynear,stateno != var(20)%100000
trigger1= !var(19) || enemynear,stateno = var(19)
trigger1= var(19) := enemynear,stateno
trigger1= var(19) := (var(19) + enemynear,time*100000)
IgnoreHitPause= 1

[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)%100000
trigger1= enemynear,stateno != var(2)%100000
trigger1= enemynear,stateno != var(3)%100000
trigger1= enemynear,stateno != var(4)%100000
trigger1= enemynear,stateno != var(5)%100000
trigger1= enemynear,stateno != var(6)%100000
trigger1= enemynear,stateno != var(7)%100000
trigger1= enemynear,stateno != var(8)%100000
trigger1= enemynear,stateno != var(9)%100000
trigger1= enemynear,stateno != var(10)%100000
trigger1= enemynear,stateno != var(11)%100000
trigger1= enemynear,stateno != var(12)%100000
trigger1= enemynear,stateno != var(13)%100000
trigger1= enemynear,stateno != var(14)%100000
trigger1= enemynear,stateno != var(15)%100000
trigger1= enemynear,stateno != var(16)%100000
trigger1= enemynear,stateno != var(17)%100000
trigger1= enemynear,stateno != var(18)%100000
trigger1= enemynear,stateno != var(19)%100000
trigger1= enemynear,stateno != var(20)%100000 || enemynear,time < var(20)/100000
trigger1= !var(20) || enemynear,stateno = var(20)
trigger1= var(20) := enemynear,stateno
trigger1= var(20) := (var(20) + enemynear,time*100000)
IgnoreHitPause= 1

;///// var(21) ブラックリスト格納用 /////
;発動
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = !var(21)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !root,inguarddist || (!enemy,numproj && !(helper(55555),var(58)&2**21))
trigger1 = (root,inguarddist || p2movetype = A) && enemynear,p2dist x >= 0 && var(0) > 0
trigger1 = root,movetype != H && root,time = 1
trigger1 = var(22) := enemynear,stateno
var(21)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
var(21)= 0
IgnoreHitPause= 1

;///// var(22) 発動時点での相手ステート /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !var(21)
var(22)= 0
IgnoreHitPause= 1

;///// var(23)~var(29) ブラックリスト /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = var(23)
triggerall = var(24)
triggerall = var(25)
triggerall = var(26)
triggerall = var(27)
triggerall = var(28)
triggerall = var(22) != var(23)
triggerall = var(22) != var(24)
triggerall = var(22) != var(25)
triggerall = var(22) != var(26)
triggerall = var(22) != var(27)
triggerall = var(22) != var(28)
triggerall = !var(29)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(29)= var(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = var(23)
triggerall = var(24)
triggerall = var(25)
triggerall = var(26)
triggerall = var(27)
triggerall = var(22) != var(23)
triggerall = var(22) != var(24)
triggerall = var(22) != var(25)
triggerall = var(22) != var(26)
triggerall = var(22) != var(27)
triggerall = !var(28)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(28)= var(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = var(23)
triggerall = var(24)
triggerall = var(25)
triggerall = var(26)
triggerall = var(22) != var(23)
triggerall = var(22) != var(24)
triggerall = var(22) != var(25)
triggerall = var(22) != var(26)
triggerall = !var(27)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(27)= var(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = var(23)
triggerall = var(24)
triggerall = var(25)
triggerall = var(22) != var(23)
triggerall = var(22) != var(24)
triggerall = var(22) != var(25)
triggerall = !var(26)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(26)= var(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = var(23)
triggerall = var(24)
triggerall = var(22) != var(23)
triggerall = var(22) != var(24)
triggerall = !var(25)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(25)= var(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = var(23)
triggerall = var(22) != var(23)
triggerall = !var(24)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(24)= var(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(21)
triggerall = !var(23)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(21)
trigger1 = root,movetype = H
var(23)= var(22)
IgnoreHitPause= 1

;///// var(30) 多段技ヒットカウント /////
;多段技情報 --- var(33)~var(39)
;1~99     ヒットカウント
;100~9900 最大のヒット間隔
;10000~   多段技ステートナンバー

;多段技情報を保存
[State 22222]
Type = null
triggerall= ishelper
triggerall= var(31)
trigger1= enemynear,stateno != var(31)%100000
trigger1= var(30) >= 2;同じステートで2HIT以上
trigger1= !var(33) || (var(31)%100000 = var(33)/10000 && var(32)/1000000%100*100 > var(33)/100%100) || (var(31)%100000 = var(33)/10000 && var(32)/100000000 > var(33)%100)
trigger1= var(33) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
trigger2= enemynear,stateno != var(31)%100000
trigger2= var(30) >= 2;同じステートで2HIT以上
trigger2= !var(34) || (var(31)%100000 = var(34)/10000 && var(32)/1000000%100*100 > var(34)/100%100) || (var(31)%100000 = var(34)/10000 && var(32)/100000000 > var(34)%100)
trigger2= var(31)%100000 != var(33)/10000
trigger2= var(34) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
trigger3= enemynear,stateno != var(31)%100000
trigger3= var(30) >= 2;同じステートで2HIT以上
trigger3= !var(35) || (var(31)%100000 = var(35)/10000 && var(32)/1000000%100*100 > var(35)/100%100) || (var(31)%100000 = var(35)/10000 && var(32)/100000000 > var(35)%100)
trigger3= var(31)%100000 != var(33)/10000
trigger3= var(31)%100000 != var(34)/10000
trigger3= var(35) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
trigger4= enemynear,stateno != var(31)%100000
trigger4= var(30) >= 2;同じステートで2HIT以上
trigger4= !var(36) || (var(31)%100000 = var(36)/10000 && var(32)/1000000%100*100 > var(36)/100%100) || (var(31)%100000 = var(36)/10000 && var(32)/100000000 > var(36)%100)
trigger4= var(31)%100000 != var(33)/10000
trigger4= var(31)%100000 != var(34)/10000
trigger4= var(31)%100000 != var(35)/10000
trigger4= var(36) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
trigger5= enemynear,stateno != var(31)%100000
trigger5= var(30) >= 2;同じステートで2HIT以上
trigger5= !var(37) || (var(31)%100000 = var(37)/10000 && var(32)/1000000%100*100 > var(37)/100%100) || (var(31)%100000 = var(37)/10000 && var(32)/100000000 > var(37)%100)
trigger5= var(31)%100000 != var(33)/10000
trigger5= var(31)%100000 != var(34)/10000
trigger5= var(31)%100000 != var(35)/10000
trigger5= var(31)%100000 != var(36)/10000
trigger5= var(37) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
trigger6= enemynear,stateno != var(31)%100000
trigger6= var(30) >= 2;同じステートで2HIT以上
trigger6= !var(38) || (var(31)%100000 = var(38)/10000 && var(32)/1000000%100*100 > var(38)/100%100) || (var(31)%100000 = var(38)/10000 && var(32)/100000000 > var(38)%100)
trigger6= var(31)%100000 != var(33)/10000
trigger6= var(31)%100000 != var(34)/10000
trigger6= var(31)%100000 != var(35)/10000
trigger6= var(31)%100000 != var(36)/10000
trigger6= var(31)%100000 != var(37)/10000
trigger6= var(38) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
trigger7= enemynear,stateno != var(31)%100000
trigger7= var(30) >= 2;同じステートで2HIT以上
trigger7= !var(39) || (var(31)%100000 = var(39)/10000 && var(32)/1000000%100*100 > var(39)/100%100) || (var(31)%100000 = var(39)/10000 && var(32)/100000000 > var(39)%100)
trigger7= var(31)%100000 != var(33)/10000
trigger7= var(31)%100000 != var(34)/10000
trigger7= var(31)%100000 != var(35)/10000
trigger7= var(31)%100000 != var(36)/10000
trigger7= var(31)%100000 != var(37)/10000
trigger7= var(31)%100000 != var(38)/10000
trigger7= var(39) := var(32)/100000000 + var(32)/10000%100*100 + var(31)%100000*10000 || 1
IgnoreHitPause= 1

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate!=2
trigger2= enemynear,stateno != var(31)%100000
var(30)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
trigger1= root,fvar(28)
var(30)= 1
IgnoreHitPause= 1

;///// var(31) 多段技判断開始相手ステート /////
;1~99999 相手ステート
;100000~ 発生タイム

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate!=2
trigger2= enemynear,stateno != var(31)%100000
var(31)= 0
IgnoreHitPause= 1

[State 22222];計測開始
Type = VarSet
triggerall= ishelper
trigger1= var(30) = 1
trigger1= enemynear,movetype = A
trigger1= numhelper(33333)
trigger1= helper(33333),fvar(39) != 2;コンボに組み込まれてるものは無視
var(31)= enemynear,stateno + enemynear,time*100000
IgnoreHitPause= 1

;///// var(32) 多段技ヒット間隔 /////
;1~99             現在のヒット間隔カウント
;100~9900         直前のヒット間隔
;10000~990000     最大のヒット間隔
;1000000~99000000 最小のヒット間隔
;100000000~       直前のヒットカウント

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate!=2
trigger2= root,fvar(28) && var(30) <= 1
var(32)= 0 + 1000000*99;最小値だけ初期値99
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= var(31)
trigger1= var(30)
trigger1= var(32)%100 < 99
var(32)= 1
IgnoreHitPause= 1

[State 22222];ヒットカウントが更新されたら最大のヒット間隔更新
Type = VarSet
triggerall= ishelper
triggerall= var(31)
triggerall= var(30) >= 2
trigger1= var(30) > var(32)/100000000
trigger1= var(32)%100 > var(32)/10000%100
var(32)= var(32)%10000 + var(32)%100*10000 + var(32)/1000000*1000000
IgnoreHitPause= 1

[State 22222];ヒットカウントが更新されたら最小のヒット間隔更新
Type = VarSet
triggerall= ishelper
triggerall= var(31)
triggerall= var(30) >= 2
trigger1= var(30) > var(32)/100000000
trigger1= var(32)%100 < var(32)/1000000%100
var(32)= var(32)%1000000 + var(32)%100*1000000 + var(32)/100000000*100000000
IgnoreHitPause= 1

[State 22222];ヒットカウントが更新されたらリセット
Type = VarSet
triggerall= ishelper
triggerall= var(31)
triggerall= var(30) >= 2
trigger1= var(30) > var(32)/100000000
;現在のヒット間隔カウント + 直前のヒット間隔 + 最大最小のヒット間隔
var(32)= 0 + var(32)%100*100 + var(32)/10000%10000*10000
IgnoreHitPause= 1

[State 22222];ヒットカウント記憶
Type = VarSet
triggerall= ishelper
triggerall= var(31)
trigger1= var(30) <= 20;記憶は20hitまで
var(32)= var(30)*100000000+ var(32)%100000000
IgnoreHitPause= 1

;///// var(40) 多段技ロイガフラグ /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= 1
var(40)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= var(30) >= 1
;敵のステート = 記憶したステート
trigger1= enemynear,stateno = var(33)/10000
;現在のヒットカウント < 記憶したヒットカウント
trigger1= var(30) < var(33)%100
;記憶したヒット間隔 - 現在のヒット間隔 % 記憶したヒット間隔 = ロイガ受付時間
trigger1= (var(33)%10000/100) - (var(32)%100) % (var(33)%10000/100) = [1,5]
;相手ステート時間がまだある
trigger1= enemynear,animtime*-1 > 5
;以下同じ
trigger2= enemynear,stateno = var(34)/10000
trigger2= var(30) < var(34)%100
trigger2= (var(34)%10000/100) - (var(32)%100) % (var(34)%10000/100) = [1,5]
trigger2= enemynear,animtime*-1 > 5
trigger3= enemynear,stateno = var(35)/10000
trigger3= var(30) < var(35)%100
trigger3= (var(35)%10000/100) - (var(32)%100) % (var(35)%10000/100) = [1,5]
trigger3= enemynear,animtime*-1 > 5
trigger4= enemynear,stateno = var(36)/10000
trigger4= var(30) < var(36)%100
trigger4= (var(36)%10000/100) - (var(32)%100) % (var(36)%10000/100) = [1,5]
trigger4= enemynear,animtime*-1 > 5
trigger5= enemynear,stateno = var(37)/10000
trigger5= var(30) < var(37)%100
trigger5= (var(37)%10000/100) - (var(32)%100) % (var(37)%10000/100) = [1,5]
trigger5= enemynear,animtime*-1 > 5
trigger6= enemynear,stateno = var(38)/10000
trigger6= var(30) < var(38)%100
trigger6= (var(38)%10000/100) - (var(32)%100) % (var(38)%10000/100) = [1,5]
trigger6= enemynear,animtime*-1 > 5
trigger7= enemynear,stateno = var(39)/10000
trigger7= var(30) < var(39)%100
trigger7= (var(39)%10000/100) - (var(32)%100) % (var(39)%10000/100) = [1,5]
trigger7= enemynear,animtime*-1 > 5
var(40)= 1
IgnoreHitPause= 1

;///// var(47) 相手起き上がり時間（保存用 /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= roundstate!=2
trigger1= 1
var(47)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= var(47)/10000 < 1
triggerall= var(47) >= 0
trigger1= enemynear,stateno = 5110
trigger2= enemynear,stateno = 5120
var(47)= 1
IgnoreHitPause= 1

[State 22222];計測終了フラグ
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= var(47)/10000 < 1
triggerall= var(47) >= 0
trigger1= enemynear,stateno = 5120
trigger1= enemynear,animtime = -1
var(47)= 10000
IgnoreHitPause= 1

[State 22222];計測中断フラグ
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= var(47)/10000 < 1
triggerall= var(47) > 0
trigger1= enemynear,stateno != 5110
trigger1= enemynear,stateno != 5120
var(47)= -1
IgnoreHitPause= 1

[State 22222];詐欺飛び失敗
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= var(49)
trigger1= root,movetype = H
trigger1= root,stateno != [120,155]
trigger2= root,stateno = 52 && root,time = 1
trigger2= root,p2statetype = L
var(47)= -1
IgnoreHitPause= 1

;///// var(48) 相手起き上がり時間（計測用 /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= roundstate!=2
trigger1= 1
var(48)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= var(48) >= 0
trigger1= enemynear,stateno = 5110
trigger2= enemynear,stateno = 5120
var(48)= 1
IgnoreHitPause= 1

[State 22222];保存してる起き上がり時間と異なるなら
Type = null;VarSet
triggerall= ishelper
triggerall= var(48) >= 0
trigger1= enemynear,stateno = 5120
trigger1= enemynear,animtime = -1
trigger1= var(47)/10000 >= 1
trigger1= var(47)%10000 < var(48)
var(47)= -1
IgnoreHitPause= 1

[State 22222];保存してる起き上がり時間と異なるなら
Type = VarSet
triggerall= ishelper
triggerall= var(48) >= 0
trigger1= enemynear,stateno = 5120
trigger1= enemynear,animtime = -1
trigger1= var(47)/10000 >= 1
trigger1= var(47)%10000 > var(48)
var(47)= var(48)+10000
IgnoreHitPause= 1

[State 22222];計測終了
Type = VarSet
triggerall= ishelper
triggerall= var(48) >= 0
trigger1= enemynear,stateno = 5120
trigger1= enemynear,animtime = -1
var(48)= 0
IgnoreHitPause= 1

[State 22222];計測中断フラグ
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= var(48) > 0
trigger1= enemynear,stateno != 5110
trigger1= enemynear,stateno != 5120
var(48)= -1
IgnoreHitPause= 1

;///// var(49) 詐欺飛びフラグ /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= root,stateno != 42
trigger1= root,stateno != 52
trigger1= root,stateno != [120,155]
trigger1= root,statetype != A
var(49)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,stateno = 42 && root,time = 1
var(49)= 1
IgnoreHitPause= 1

;///// var(50) 意識の方向 /////
;0:止, 1:前, -1:後

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate!=2
var(50)= 0
IgnoreHitPause= 1

;意識の発生
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate=2
trigger1= root,vel x
trigger1= root,statetype!=A || root,movetype!=A || root,stateno<1000
trigger1= root,movetype!=H
trigger1= root,stateno!=[5000,5999]
var(50)= ifelse(root,vel x>0,1,-1)
IgnoreHitPause= 1

;意識の変化
[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,movetype=H
trigger2= root,movetype=A && root,time=1
trigger3= var(51)>=90
var(50)= 0
IgnoreHitPause= 1

;///// var(51) 意識の方向タイマー /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !var(50)
trigger2= root,vel x && root,movetype!=H
var(51)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
trigger1= var(50)
trigger1= !root,vel x || root,movetype=H
var(51)= 1
IgnoreHitPause= 1

;///// var(52) ジャンプ意識の方向 /////
;-10:止, 0:垂直, 1:前, -1:後

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate!=2
var(52)= -10
IgnoreHitPause= 1

;意識の発生
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate=2
trigger1= root,statetype=A
trigger1= root,movetype=I
trigger1= root,stateno!=[5000,5999]
trigger1= root,stateno!=106
var(52)= ifelse(!root,vel x,0,ifelse(root,vel x>0,1,-1))
IgnoreHitPause= 1

;意識の変化
[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(53)>=90
var(52)= -10
IgnoreHitPause= 1

;///// var(53) ジャンプ意識の方向タイマー /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= var(52) = -10
trigger2= root,statetype=A && root,movetype!=H && (root,stateno!=[5000,5999]) && root,stateno!=106
var(53)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
trigger1= var(52)
var(53)= 1
IgnoreHitPause= 1

;///// var(54) 歩き意識の方向 /////
;0:止, 1:前, -1:後

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate!=2
var(54)= 0
IgnoreHitPause= 1

;意識の発生
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= roundstate=2
trigger1= root,stateno=[20,29]
var(54)= ifelse(root,vel x>0,1,-1)
IgnoreHitPause= 1

;意識の変化
[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,movetype=H
trigger2= root,movetype=A && root,time=1
trigger3= var(55)>=90
var(54)= 0
IgnoreHitPause= 1

;///// var(55) 歩き意識の方向タイマー /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !var(54)
trigger2= root,stateno=[20,29]
var(55)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
trigger1= var(54)
trigger1= root,stateno!=[20,29]
var(55)= 1
IgnoreHitPause= 1

;///// var(56) コンボパーツ使用フラグ /////
;2**0  リベリオン１段目
;2**1  べオ１段目
;2**2  ケルベロス１段目
;2**3  小パン
;2**4  ビーストアッパー
;2**5  下段回し蹴り
;2**6  百列キック→べオ１段目
;2**7  百列キック→ケルベロス１段目
;2**10 昇竜→エリアル
;2**11 昇竜→ヌェー
;2**12 昇竜→エアハイク

;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(56)= 0
IgnoreHitPause= 1

;リベリオン１段目
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**0)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,stateno = 210
trigger1 = root,time = 1
var(56)= 2**0
IgnoreHitPause= 1

;ベオ１段目
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**1)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,stateno = 200
trigger1 = root,time = 1
var(56)= 2**1
IgnoreHitPause= 1

;ケルベロス１段目
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**2)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,stateno = 300
trigger1 = root,time = 1
var(56)= 2**2
IgnoreHitPause= 1

;小パン
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**3)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,stateno = 430
trigger1 = root,time = 1
var(56)= 2**3
IgnoreHitPause= 1

;ビーストアッパー
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**4)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,stateno = 410
trigger1 = root,time = 1
var(56)= 2**4
IgnoreHitPause= 1

;下段回し蹴り
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**5)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,stateno = 205
trigger1 = root,time = 1
var(56)= 2**5
IgnoreHitPause= 1

;百列キック→べオ１段目
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**6)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = numhelper(33333)
trigger1 = helper(33333),var(25)
trigger1 = root,stateno = 200
trigger1 = root,time = 1
var(56)= 2**6
IgnoreHitPause= 1

;百列キック→ケルベロス１段目
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**7)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = root,p2statetype != A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = numhelper(33333)
trigger1 = helper(33333),var(25)
trigger1 = root,stateno = 300
trigger1 = root,time = 1
var(56)= 2**7
IgnoreHitPause= 1

;昇竜→エリアル
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**10)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = numhelper(33333)
trigger1 = !helper(33333),var(23)
trigger1 = root,p2statetype = A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,prevstateno = 1000 || (root,prevstateno = [2600,2610])
trigger1 = root,stateno = 600
trigger1 = root,time = 1
var(56)= 2**10
IgnoreHitPause= 1

;昇竜→ンウェー
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**11)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = numhelper(33333)
trigger1 = !helper(33333),var(23)
trigger1 = root,p2statetype = A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,prevstateno = 1000 || (root,prevstateno = [2600,2610])
trigger1 = root,stateno = 610
trigger1 = root,time = 1
var(56)= 2**11
IgnoreHitPause= 1

;昇竜→エアハイク
[State 22222]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(56)&2**12)
trigger1 = !root,var(19) && !root,var(22)
trigger1 = numhelper(33333)
trigger1 = !helper(33333),var(23)
trigger1 = root,p2statetype = A
trigger1 = root,p2movetype = H
trigger1 = root,p2stateno != [120,155]
trigger1 = root,prevstateno = 1000 || (root,prevstateno = [2600,2610])
trigger1 = root,stateno = 45
trigger1 = root,time = 1
var(56)= 2**12
IgnoreHitPause= 1

;///// var(57) 刺しこみステート /////
;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = var(58) >= 600
var(57)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = root,movetype = A
trigger1 = root,p2movetype != H
trigger1 = root,p2statetype != L
trigger1 = numhelper(33333)
trigger1 = helper(33333),fvar(39) != 1
var(57)= root,stateno
IgnoreHitPause= 1

;///// var(58) 刺しこみタイマー /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1 = RoundState != 2
trigger2 = root,movetype = A
trigger2 = root,p2movetype != H
trigger2 = root,p2statetype != L
trigger2 = numhelper(33333)
trigger2 = helper(33333),fvar(39) != 1
var(58)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
trigger1 = RoundState = 2
trigger1 = root,p2movetype != H
trigger1 = var(58) < 600
var(58)= 1
IgnoreHitPause= 1

;///// var(59) タッグ陣形 /////
;2**0   相対
;2**1   挟撃
;2**2   被挟撃
;2**3   分断（自分孤立）
;2**4   分断（相方孤立）
;2**10  孤立相対
;2**11  孤立被挟撃
;2**20  盾陣形

;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= 1
var(59)= 0
IgnoreHitPause= 1

;相対陣形
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numpartner
triggerall= numenemy > 1
triggerall= partner,alive
trigger1= root,pos x*root,facing <= partner,pos x*root,facing
trigger1= partner,pos x*root,facing <= enemy(0),pos x*root,facing
trigger1= enemy(0),pos x*root,facing <= enemy(1),pos x*root,facing
trigger2= partner,pos x*root,facing <= root,pos x*root,facing
trigger2= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger2= enemy(0),pos x*root,facing <= enemy(1),pos x*root,facing
trigger3= root,pos x*root,facing >= partner,pos x*root,facing
trigger3= partner,pos x*root,facing >= enemy(0),pos x*root,facing
trigger3= enemy(0),pos x*root,facing >= enemy(1),pos x*root,facing
trigger4= partner,pos x*root,facing >= root,pos x*root,facing
trigger4= root,pos x*root,facing >= enemy(0),pos x*root,facing
trigger4= enemy(0),pos x*root,facing >= enemy(1),pos x*root,facing
trigger5= root,pos x*root,facing <= partner,pos x*root,facing
trigger5= partner,pos x*root,facing <= enemy(1),pos x*root,facing
trigger5= enemy(1),pos x*root,facing <= enemy(0),pos x*root,facing
trigger6= partner,pos x*root,facing <= root,pos x*root,facing
trigger6= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger6= enemy(1),pos x*root,facing <= enemy(0),pos x*root,facing
trigger7= root,pos x*root,facing >= partner,pos x*root,facing
trigger7= partner,pos x*root,facing >= enemy(1),pos x*root,facing
trigger7= enemy(1),pos x*root,facing >= enemy(0),pos x*root,facing
trigger8= partner,pos x*root,facing >= root,pos x*root,facing
trigger8= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger8= enemy(1),pos x*root,facing >= enemy(0),pos x*root,facing
var(59)= 2**0
IgnoreHitPause= 1

;挟撃陣形
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numpartner
triggerall= numenemy > 1
triggerall= partner,alive
trigger1= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger1= enemy(0),pos x*root,facing <= enemy(1),pos x*root,facing
trigger1= enemy(1),pos x*root,facing <= partner,pos x*root,facing
trigger2= partner,pos x*root,facing <= enemy(1),pos x*root,facing
trigger2= enemy(1),pos x*root,facing <= enemy(0),pos x*root,facing
trigger2= enemy(0),pos x*root,facing <= root,pos x*root,facing
trigger3= root,pos x*root,facing >= enemy(0),pos x*root,facing
trigger3= enemy(0),pos x*root,facing >= enemy(1),pos x*root,facing
trigger3= enemy(1),pos x*root,facing >= partner,pos x*root,facing
trigger4= partner,pos x*root,facing >= enemy(1),pos x*root,facing
trigger4= enemy(1),pos x*root,facing >= enemy(0),pos x*root,facing
trigger4= enemy(0),pos x*root,facing >= root,pos x*root,facing
trigger5= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger5= enemy(1),pos x*root,facing <= enemy(0),pos x*root,facing
trigger5= enemy(0),pos x*root,facing <= partner,pos x*root,facing
trigger6= partner,pos x*root,facing <= enemy(0),pos x*root,facing
trigger6= enemy(0),pos x*root,facing <= enemy(1),pos x*root,facing
trigger6= enemy(1),pos x*root,facing <= root,pos x*root,facing
trigger7= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger7= enemy(1),pos x*root,facing >= enemy(0),pos x*root,facing
trigger7= enemy(0),pos x*root,facing >= partner,pos x*root,facing
trigger8= partner,pos x*root,facing >= enemy(0),pos x*root,facing
trigger8= enemy(0),pos x*root,facing >= enemy(1),pos x*root,facing
trigger8= enemy(1),pos x*root,facing >= root,pos x*root,facing
var(59)= 2**1
IgnoreHitPause= 1

;被挟撃陣形
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numpartner
triggerall= numenemy > 1
triggerall= partner,alive && enemy(0),alive && enemy(1),alive
trigger1= enemy(0),pos x*root,facing <= root,pos x*root,facing
trigger1= root,pos x*root,facing <= partner,pos x*root,facing
trigger1= partner,pos x*root,facing <= enemy(1),pos x*root,facing
trigger2= enemy(1),pos x*root,facing <= root,pos x*root,facing
trigger2= root,pos x*root,facing <= partner,pos x*root,facing
trigger2= partner,pos x*root,facing <= enemy(0),pos x*root,facing
trigger3= enemy(0),pos x*root,facing <= partner,pos x*root,facing
trigger3= partner,pos x*root,facing <= root,pos x*root,facing
trigger3= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger4= enemy(1),pos x*root,facing <= partner,pos x*root,facing
trigger4= partner,pos x*root,facing <= root,pos x*root,facing
trigger4= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger5= enemy(0),pos x*root,facing >= root,pos x*root,facing
trigger5= root,pos x*root,facing >= partner,pos x*root,facing
trigger5= partner,pos x*root,facing >= enemy(1),pos x*root,facing
trigger6= enemy(1),pos x*root,facing >= root,pos x*root,facing
trigger6= root,pos x*root,facing >= partner,pos x*root,facing
trigger6= partner,pos x*root,facing >= enemy(0),pos x*root,facing
trigger7= enemy(0),pos x*root,facing >= partner,pos x*root,facing
trigger7= partner,pos x*root,facing >= root,pos x*root,facing
trigger7= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger8= enemy(1),pos x*root,facing >= partner,pos x*root,facing
trigger8= partner,pos x*root,facing >= root,pos x*root,facing
trigger8= root,pos x*root,facing >= enemy(0),pos x*root,facing
var(59)= 2**2
IgnoreHitPause= 1

;分断陣形（自分孤立）
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numpartner
triggerall= numenemy > 1
triggerall= partner,alive && enemy(0),alive && enemy(1),alive
trigger1= partner,pos x*root,facing <= enemy(0),pos x*root,facing
trigger1= enemy(0),pos x*root,facing <= root,pos x*root,facing
trigger1= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger2= partner,pos x*root,facing >= enemy(0),pos x*root,facing
trigger2= enemy(0),pos x*root,facing >= root,pos x*root,facing
trigger2= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger3= partner,pos x*root,facing <= enemy(1),pos x*root,facing
trigger3= enemy(1),pos x*root,facing <= root,pos x*root,facing
trigger3= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger4= partner,pos x*root,facing >= enemy(1),pos x*root,facing
trigger4= enemy(1),pos x*root,facing >= root,pos x*root,facing
trigger4= root,pos x*root,facing >= enemy(0),pos x*root,facing
var(59)= 2**3
IgnoreHitPause= 1

;分断陣形（相方孤立）
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numpartner
triggerall= numenemy > 1
triggerall= partner,alive && enemy(0),alive && enemy(1),alive
trigger1= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger1= enemy(0),pos x*root,facing <= partner,pos x*root,facing
trigger1= partner,pos x*root,facing <= enemy(1),pos x*root,facing
trigger2= root,pos x*root,facing >= enemy(0),pos x*root,facing
trigger2= enemy(0),pos x*root,facing >= partner,pos x*root,facing
trigger2= partner,pos x*root,facing >= enemy(1),pos x*root,facing
trigger3= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger3= enemy(1),pos x*root,facing <= partner,pos x*root,facing
trigger3= partner,pos x*root,facing <= enemy(0),pos x*root,facing
trigger4= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger4= enemy(1),pos x*root,facing >= partner,pos x*root,facing
trigger4= partner,pos x*root,facing >= enemy(0),pos x*root,facing
var(59)= 2**4
IgnoreHitPause= 1

;孤立相対陣形
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numenemy > 1
triggerall= enemy(0),alive && enemy(1),alive
trigger1= !numpartner
trigger1= root,pos x*root,facing <= enemynear(0),pos x*root,facing
trigger1= enemynear(0),pos x*root,facing <= enemynear(1),pos x*root,facing
trigger2= !numpartner
trigger2= root,pos x*root,facing >= enemynear(0),pos x*root,facing
trigger2= enemynear(0),pos x*root,facing >= enemynear(1),pos x*root,facing
trigger3= numpartner
trigger3= !partner,alive
trigger3= root,pos x*root,facing <= enemynear(0),pos x*root,facing
trigger3= enemynear(0),pos x*root,facing <= enemynear(1),pos x*root,facing
trigger4= numpartner
trigger4= !partner,alive
trigger4= root,pos x*root,facing >= enemynear(0),pos x*root,facing
trigger4= enemynear(0),pos x*root,facing >= enemynear(1),pos x*root,facing
trigger5= !numpartner
trigger5= root,pos x*root,facing <= enemynear(1),pos x*root,facing
trigger5= enemynear(1),pos x*root,facing <= enemynear(0),pos x*root,facing
trigger6= !numpartner
trigger6= root,pos x*root,facing >= enemynear(1),pos x*root,facing
trigger6= enemynear(1),pos x*root,facing >= enemynear(0),pos x*root,facing
trigger7= numpartner
trigger7= !partner,alive
trigger7= root,pos x*root,facing <= enemynear(1),pos x*root,facing
trigger7= enemynear(1),pos x*root,facing <= enemynear(0),pos x*root,facing
trigger8= numpartner
trigger8= !partner,alive
trigger8= root,pos x*root,facing >= enemynear(1),pos x*root,facing
trigger8= enemynear(1),pos x*root,facing >= enemynear(0),pos x*root,facing
var(59)= 2**10
IgnoreHitPause= 1

;孤立被挟撃陣形
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numenemy > 1
triggerall= enemy(0),alive && enemy(1),alive
trigger1= !numpartner
trigger1= enemy(0),pos x*root,facing <= root,pos x*root,facing
trigger1= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger2= !numpartner
trigger2= enemy(1),pos x*root,facing <= root,pos x*root,facing
trigger2= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger3= !numpartner
trigger3= enemy(0),pos x*root,facing >= root,pos x*root,facing
trigger3= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger4= !numpartner
trigger4= enemy(1),pos x*root,facing >= root,pos x*root,facing
trigger4= root,pos x*root,facing >= enemy(0),pos x*root,facing
trigger5= numpartner
trigger5= !partner,alive
trigger5= enemy(0),pos x*root,facing <= root,pos x*root,facing
trigger5= root,pos x*root,facing <= enemy(1),pos x*root,facing
trigger6= numpartner
trigger6= !partner,alive
trigger6= enemy(1),pos x*root,facing <= root,pos x*root,facing
trigger6= root,pos x*root,facing <= enemy(0),pos x*root,facing
trigger7= numpartner
trigger7= !partner,alive
trigger7= enemy(0),pos x*root,facing >= root,pos x*root,facing
trigger7= root,pos x*root,facing >= enemy(1),pos x*root,facing
trigger8= numpartner
trigger8= !partner,alive
trigger8= enemy(1),pos x*root,facing >= root,pos x*root,facing
trigger8= root,pos x*root,facing >= enemy(0),pos x*root,facing
var(59)= 2**11
IgnoreHitPause= 1

;盾陣形
[State 22222]
Type = VarAdd
triggerall= ishelper
triggerall= numpartner
triggerall= partner,alive
triggerall= !(var(59)&2**2)
trigger1= root,pos x*root,facing <= partner,pos x*root,facing
trigger1= partner,pos x*root,facing <= enemynear(0),pos x*root,facing
trigger2= root,pos x*root,facing >= partner,pos x*root,facing
trigger2= partner,pos x*root,facing >= enemynear(0),pos x*root,facing
var(59)= 2**20
IgnoreHitPause= 1

;///// fvar(0) すかし判定 /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(0)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= fvar(1) > 0
triggerall= fvar(2) > 0
triggerall= fvar(3) > 0
triggerall= enemynear,stateno = fvar(1)
triggerall= enemynear,anim != fvar(2) || enemynear,animelemno(0) > fvar(3) || enemynear,movecontact
triggerall= !enemynear,vel x
triggerall= !enemynear,vel y
triggerall= !enemynear,animtime >= -20
trigger1= fvar(1) != fvar(6)
trigger1= fvar(1) != fvar(7)
trigger1= fvar(1) != fvar(8)
trigger1= fvar(1) != fvar(9)
trigger1= fvar(1) != fvar(10)
trigger1= fvar(1) != fvar(11)
trigger1= fvar(1) != fvar(12)
fvar(0)= 1
IgnoreHitPause= 1

;///// fvar(1) すかし(stateno) /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno != fvar(1)
fvar(1)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,hitdefattr = SCA,AA,AT,AP
trigger2= fvar(34)
fvar(1)= enemynear,stateno
IgnoreHitPause= 1

;///// fvar(2) すかし(anim) /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(1)
fvar(2)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= fvar(1)
trigger1= !fvar(2)
fvar(2)= enemynear,anim
IgnoreHitPause= 1

;///// fvar(3) すかし(animelemno) /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(1)
fvar(3)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= fvar(1)
trigger1= !fvar(3)
fvar(3)= enemynear,animelemno(0)
IgnoreHitPause= 1

;///// fvar(4) ブラックリスト格納用 /////
;発動
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(4)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !root,inguarddist || (!enemy,numproj && !(helper(55555),var(58)&2**21))
trigger1 = (root,inguarddist || p2movetype = A) && enemynear,p2dist x >= 0 && fvar(0) > 0
trigger1 = root,movetype != H && root,time = 1
trigger1 = fvar(5) := enemynear,stateno
fvar(4)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
fvar(4)= 0
IgnoreHitPause= 1

;///// fvar(5) 発動時点での相手ステート /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(4)
fvar(5)= 0
IgnoreHitPause= 1

;///// fvar(6)~fvar(12) ブラックリスト /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(9)
triggerall = fvar(10)
triggerall = fvar(11)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = fvar(5) != fvar(9)
triggerall = fvar(5) != fvar(10)
triggerall = fvar(5) != fvar(11)
triggerall = !fvar(12)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(12)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(9)
triggerall = fvar(10)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = fvar(5) != fvar(9)
triggerall = fvar(5) != fvar(10)
triggerall = !fvar(11)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(11)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(9)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = fvar(5) != fvar(9)
triggerall = !fvar(10)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(10)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = !fvar(9)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(9)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = !fvar(6)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(6)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(5) != fvar(6)
triggerall = !fvar(7)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(7)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = !fvar(6)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(6)= fvar(5)
IgnoreHitPause= 1

;///// fvar(20) 汎用コンボfacing /////
[State 22222]
type = VarSet
trigger1 = 1
fvar(20) = -(root,facing)*(enemynear,facing)
ignorehitpause = 1

;///// fvar(21) 汎用コンボ相手摩擦係数 /////
[State 22222]
Type = VarSet
Trigger1 = 1
fvar(21) = ifelse(p2statetype=C,(enemynear,const(movement.crouch.friction)),(enemynear,const(movement.stand.friction)))
IgnoreHitPause = 1

;///// fvar(22) 直前の攻撃ステート /////
[State 22222]
Type = VarSet
Trigger1 = root,movetype = A || root,stateno = 900 || root,stateno = 930 || (root,stateno = [191,199])
Trigger1 = root,time = 1
fvar(22) = root,stateno
IgnoreHitPause = 1

;///// fvar(23) 地空比率 /////
[State 22222]
Type = VarSet
Trigger1 = roundstate != 2
fvar(23) = 0
IgnoreHitPause = 1

[State 22222]
Type = VarAdd
Trigger1 = roundstate = 2
Trigger1 = root,prevstateno != 191 && root,prevstateno != 5900
Trigger1 = root,movetype != H
Trigger1 = root,statetype != L
Trigger1 = root,statetype != A
Trigger1 = fvar(23) < 100
fvar(23) = ifelse(root,movetype = I,2,1)
IgnoreHitPause = 1

[State 22222]
Type = VarAdd
Trigger1 = roundstate = 2
Trigger1 = root,prevstateno != 191 && root,prevstateno != 5900
Trigger1 = root,movetype != H
Trigger1 = root,statetype != L
Trigger1 = root,statetype = A
Trigger1 = fvar(23) > -100
fvar(23) = ifelse(root,movetype = I,-2.2,-1.2)
IgnoreHitPause = 1

;///// fvar(24) 直前必殺ステート /////
;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = fvar(25) >= 300
fvar(24)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = root,movetype = A
trigger1 = root,p2movetype != H
trigger1 = numhelper(33333)
trigger1 = helper(33333),fvar(39) != 1
trigger1 = root,stateno >= 1000
fvar(24)= root,stateno
IgnoreHitPause= 1

;///// fvar(25) 直前必殺タイマー /////
;リセット
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1 = RoundState != 2
trigger2 = root,movetype = A
trigger2 = root,p2movetype != H
trigger2 = numhelper(33333)
trigger2 = helper(33333),fvar(39) != 1
trigger2 = root,stateno >= 1000
fvar(25)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarAdd
triggerall= ishelper
trigger1 = RoundState = 2
trigger1 = root,p2movetype != H
trigger1 = fvar(25) < 600
fvar(25)= 1
IgnoreHitPause= 1

;///// fvar(28) コンボスカフラグ /////
;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
fvar(28)= 0
IgnoreHitPause= 1

;エリアルn段目～エリアルn+1段目
[State 22222]
Type = VarAdd
triggerall = numhelper(33333)
triggerall = ishelper
triggerall = !(ceil(fvar(28))&2**0)
trigger1 = fvar(29) = [600,602]
trigger1 = root,stateno = [601,603]
trigger1 = root,animtime >= -1
trigger1 = !root,movecontact && enemynear,movetype != H
trigger1 = root,stateno != fvar(29)
fvar(28)= 2**0
IgnoreHitPause= 1

;エリアル1段目～ンウェー
[State 22222]
Type = VarAdd
triggerall = numhelper(33333)
triggerall = ishelper
triggerall = !(ceil(fvar(28))&2**1)
trigger1 = fvar(29) = 600
trigger1 = helper(33333),fvar(34) = fvar(29)
trigger1 = root,stateno = 610
trigger1 = root,animtime >= -1
trigger1 = !root,movecontact && enemynear,movetype != H
fvar(28)= 2**1
IgnoreHitPause= 1

;対空～レインストーム(画面中央)
[State 22222]
Type = VarAdd
triggerall = numhelper(33333)
triggerall = ishelper
triggerall = !(ceil(fvar(28))&2**2)
trigger1 = fvar(29) = 1000 || fvar(29) = 2600 || fvar(29) = 2610
trigger1 = root,fvar(31) > 0
trigger1 = root,stateno = 1601
trigger1 = enemynear,movetype != H || enemynear,statetype = L
fvar(28)= 2**2
IgnoreHitPause= 1

;対空～レインストーム(画面端)
[State 22222]
Type = VarAdd
triggerall = numhelper(33333)
triggerall = ishelper
triggerall = !(ceil(fvar(28))&2**3)
trigger1 = fvar(29) = 1000 || fvar(29) = 2600 || fvar(29) = 2610
trigger1 = root,fvar(31) > 0
trigger1 = root,stateno = 1601
trigger1 = enemynear,movetype != H || enemynear,statetype = L
trigger1 = enemynear,backedgedist <= 1 || enemynear,frontedgebodydist <= 1
fvar(28)= 2**3
IgnoreHitPause= 1

;///// fvar(29) 直前にヒットした攻撃 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = root,movehit || root,projhit = 1
fvar(29)= root,stateno
IgnoreHitPause= 1

;///// fvar(30) HP差分 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(30)= fvar(31)-root,life
IgnoreHitPause= 1

;///// fvar(31) 直前のHP /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(31)= root,life
IgnoreHitPause= 1

;///// fvar(32) 敵HP差分 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(32)= fvar(33)-enemynear,life
IgnoreHitPause= 1

;///// fvar(33) 直前の敵HP /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(33)= enemynear,life
IgnoreHitPause= 1

;///// fvar(34) 飛び道具が射出された瞬間 /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = numhelper(55555)
trigger1 = 1
fvar(34)= ifelse(!fvar(35) && (enemy,numproj || helper(55555),var(58)&2**23),1,0)
IgnoreHitPause= 1

;///// fvar(35) 直前の飛び道具状況 /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = numhelper(55555)
trigger1 = 1
fvar(35)= ifelse(enemy,numproj || helper(55555),var(58)&2**23,1,0)
IgnoreHitPause= 1

;///// fvar(36) 敵パワー差分 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(36)= enemynear,power-fvar(37)
IgnoreHitPause= 1

;///// fvar(37) 直前の敵パワー値 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(37)= enemynear,power
IgnoreHitPause= 1

;///// fvar(38) ノーヒットストレス /////
;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = root,movetype = A
trigger2 = root,p2movetype = H
trigger2 = root,p2stateno != [120,155]
trigger2 = fvar(32) > 0
fvar(38)= 1.0
IgnoreHitPause= 1

;タイムストレス
[State 22222]
Type = VarAdd
triggerall = ishelper
trigger1 = root,movetype = I
trigger1 = root,p2movetype != H
fvar(38)= .001
IgnoreHitPause= 1

;ガードストレス
[State 22222]
Type = VarAdd
triggerall = ishelper
trigger1 = root,stateno = [120,155]
fvar(38)= .01
IgnoreHitPause= 1

;ライフストレス
[State 22222]
Type = VarAdd
triggerall = ishelper
trigger1 = fvar(30) > 0
fvar(38)= fvar(30) / 200.0
IgnoreHitPause= 1

;///// fvar(39) stop /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = roundstate=2
trigger1 = 1
fvar(39)= ifelse(root,movetype = I && root,anim<200 && !root,vel x && !root,vel y,fvar(39)+1,0)
IgnoreHitPause= 1


[State -2 デバッグ用]
type=displayToClipboard
trigger1=1
ignorehitpause=1
text="var(0)=%d"
params=var(0)

[State -2 デバッグ用]
type=AppendToClipboard
trigger1=1
ignorehitpause=1
text="\nvar(51)=%d, var(52)=%d, var(53)=%d, var(54)=%d, var(55)=%d"
params=var(51), var(52), var(53), var(54), var(55)

;===========================================================================
[Statedef 33333];ステージ左端検出用
Type = A
Ctrl = 0
Anim = 0
Velset = -10,0
Movetype = I
Physics = N
Sprpriority = 1

[State -2,消失]
type=DestroySelf
triggerall=isHelper
trigger1=roundstate!=[1,2]

[State 33333]
type = assertspecial
trigger1 = 1
flag = invisible

[State 33333]
type = NotHitBy
value = SCA
trigger1 = 1

[State 33333,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 33333]
type = Projectile
Trigger1 = time = 0
velocity = -10,0
projID = 3333
projhits = 9999
projpriority = 9999
projanim = 0
offset = 0,0
projstagebound = 0
Projedgebound = 100000
projremove = 0
Projremovetime = -1
supermovetime = 9999
pausemovetime = 9999

[State 33333]
type = velset
Trigger1 = Root,NumProjID(3333) = 0
Trigger1 = time > 0
x = 0
y = 0

;///// var(0) 固定乱数 /////
[State 33333]
type = VarSet
triggerall= ishelper
trigger1= 1
var(0)= random
ignorehitpause= 1

;///// var(10) ガード不可フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= 1
var(10)= 0
IgnoreHitPause= 1

;相手が立ガ不可(下段)攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(11)
var(10)= 2**0
IgnoreHitPause= 1

;相手が屈ガ不可(中段)攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(12)
var(10)= 2**1
IgnoreHitPause= 1

;相手が空ガ不可攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(13)
var(10)= 2**2
IgnoreHitPause= 1

;相手が認識不可攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(14)
var(10)= 2**3
IgnoreHitPause= 1

;相手が詳細不明攻撃中(対応は認識不可攻撃と同じ)
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(15) || enemynear,stateno=var(16) || enemynear,stateno=var(17)
var(10)= 2**3
IgnoreHitPause= 1

;///// var(11) 立ちガード不可攻撃(下段) /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
triggerall= enemynear,statetype!=C
trigger1= root,prevstateno=130
trigger2= root,prevstateno=[150,151]
var(11)= enemynear,stateno
IgnoreHitPause= 1

;///// var(12) 屈みガード不可攻撃(中段) /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
triggerall= enemynear,statetype!=A
trigger1= root,prevstateno=131
trigger2= root,prevstateno=[152,153]
var(12)= enemynear,stateno
ignorehitpause= 1

;///// var(13) 空中ガード不可攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
trigger1= root,prevstateno=132
trigger2= root,prevstateno=[154,155]
var(13)= enemynear,stateno
IgnoreHitPause= 1

;///// var(14) 認識不可攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= root,p2dist x>enemy,Const(size.attack.dist)
var(14)= enemynear,stateno
IgnoreHitPause= 1

;///// var(15) 詳細不明攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(16)
trigger1= enemynear,stateno != var(17)
var(15)= enemynear,stateno
IgnoreHitPause= 1

;///// var(16) 詳細不明攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(16)
trigger1= enemynear,stateno != var(17)
var(16)= enemynear,stateno
IgnoreHitPause= 1

;///// var(17) 詳細不明攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(16)
trigger1= enemynear,stateno != var(17)
var(17)= enemynear,stateno
IgnoreHitPause= 1

;///// var(18) ガー不疑惑 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno >= 1000
trigger1= root,prevstateno=[120,155]
var(18)= enemynear,stateno
IgnoreHitPause= 1

;///// var(19) ダメージ原因 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= fvar(39) != 2
triggerall= root,movetype=H
trigger1= 1
var(19)= root,prevstateno
IgnoreHitPause= 1

;///// var(20) スカフラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,stateno!=var(20)
trigger2= var(22)>=180
trigger3= root,stateno=var(21)
var(20)= 0
IgnoreHitPause= 1

;(通常)攻撃をスカしたら
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,animtime=-1 || root,ctrl
triggerall= !root,movecontact
trigger1= root,stateno=[200,699]
trigger1= root,stateno!=var(21)
var(20)= enemynear,stateno
IgnoreHitPause= 1

;///// var(21) ヒット攻撃ステート /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,movetype!=A
var(21)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,movetype=A
trigger1= root,movecontact
var(21)= root,stateno
IgnoreHitPause= 1

;///// var(22) スカタイマー(念の為) /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= !var(20)
var(22)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(20)
var(22)= 1
IgnoreHitPause= 1

;///// var(23) レインストーム使用カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = !enemynear,hitfall
trigger3 = root,stateno = 3700 && root,time = 1
trigger4 = root,stateno = 3600 && root,time = 1
var(23)= 0
IgnoreHitPause= 1

;終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemynear,hitfall
trigger1 = root,stateno = 1600
trigger1 = root,time = 1
var(23)= 1
IgnoreHitPause= 1

;///// var(24) ハイタイム使用カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = root,p2movetype != H
trigger3 = root,stateno = 3700 && root,time = 1
trigger4 = root,stateno = 3600 && root,time = 1
var(24)= 0
IgnoreHitPause= 1

;終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 400
trigger1 = root,movehit = 1
var(24)= 1
IgnoreHitPause= 1

;///// var(25) 百列キック使用カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = root,p2statetype = L
trigger3 = root,p2statetype = A
var(25)= 0
IgnoreHitPause= 1

;終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 203
trigger1 = root,time = 1
var(25)= 1
IgnoreHitPause= 1

;///// var(26) 対M20 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = 1
var(26)= 0
IgnoreHitPause= 1

[State 33333];絶刀
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4050; || enemy,stateno = 3500
var(26)= 1
IgnoreHitPause= 1

[State 33333];絶刀
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4051; || enemy,stateno = 3501
var(26)= 2
IgnoreHitPause= 1

[State 33333];絶刀
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 3502 || enemy,stateno = 4052
var(26)= 3
IgnoreHitPause= 1

[State 33333];絶刀
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 3505 || enemy,stateno = 4053
var(26)= 4
IgnoreHitPause= 1

[State 33333];兜割り５連
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4010
var(26)= 10
IgnoreHitPause= 1

[State 33333];兜割り５連
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4011
var(26)= 11
IgnoreHitPause= 1

[State 33333];兜割り５連
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4012
var(26)= 12
IgnoreHitPause= 1

[State 33333];兜割り５連
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4013
var(26)= 13
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4020
var(26)= 20
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4021
var(26)= 21
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4022
var(26)= 22
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4023
var(26)= 23
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4024
var(26)= 24
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4025
var(26)= 25
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4026
var(26)= 26
IgnoreHitPause= 1

[State 33333];切り上げコンボ
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4027
var(26)= 27
IgnoreHitPause= 1

[State 33333];幻影剣展開
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4040
var(26)= 40
IgnoreHitPause= 1

[State 33333];待機
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4100
var(26)= 100
IgnoreHitPause= 1

[State 33333];歩く
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4120
var(26)= 120
IgnoreHitPause= 1

[State 33333];エアトリック
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4130
var(26)= 130
IgnoreHitPause= 1

[State 33333];エアトリック
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4131
var(26)= 131
IgnoreHitPause= 1

[State 33333];M20移行
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4000
var(26)= 1000
IgnoreHitPause= 1

[State 33333];M20移行
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4001
var(26)= 1001
IgnoreHitPause= 1

[State 33333];M20移行
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4002
var(26)= 1002
IgnoreHitPause= 1

[State 33333];M20移行
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemy,name = "Vergil"
trigger1 = enemy,authorname = "bugya"
trigger1 = enemy,stateno = 4003
var(26)= 1003
IgnoreHitPause= 1

;///// var(27) 挑発使用カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(27)= 0
IgnoreHitPause= 1

;終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 195
trigger1 = root,time = 1
var(27)= 1
IgnoreHitPause= 1

;///// var(28) カウンター準備カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = !(root,stateno = 99901 || root,stateno = 22)
var(28)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = root,stateno = 99901 || root,stateno = 22
var(28)= 1
IgnoreHitPause= 1

;///// var(29) ストレス /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = root,movehit = 1 || root,projhittime(0) = 1
trigger2 = root,p2movetype = H
var(29)= 0
IgnoreHitPause= 1

;ガードストレス(var(29)%1000
[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = root,stateno = [120,155]
trigger1 = !var(29) || var(29)%1000+1 < 1000
var(29)= 1
IgnoreHitPause= 1

;ライフストレス(var(29)/1000
[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = numhelper(22222)
trigger1 = helper(22222),fvar(30) > 0
trigger1 = !var(29) || var(29)/1000+ceil(helper(22222),fvar(30)) < 1000
var(29)= ceil(helper(22222),fvar(30)) * 1000
IgnoreHitPause= 1

;///// var(30) ブロフラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,stateno!=var(30)
var(30)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,stateno=905 || root,prevstateno = 935
trigger1= enemynear,stateno!=var(31)
trigger1= enemynear,stateno!=var(32)
trigger1= enemynear,stateno!=var(33)
trigger1= enemynear,stateno!=var(34)
var(30)= enemynear,stateno
IgnoreHitPause= 1

;///// var(31)~var(34) ブロ反撃裏目 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(34)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(30)
trigger1= !var(34)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)=1
var(34)= var(30)
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(33)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(30)
trigger1= !var(33)
trigger1= var(30)!=var(34)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)=1
var(33)= var(30)
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(32)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(30)
trigger1= !var(32)
trigger1= var(30)!=var(34)
trigger1= var(30)!=var(33)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)=1
var(32)= var(30)
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(31)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(30)
trigger1= !var(31)
trigger1= var(30)!=var(34)
trigger1= var(30)!=var(33)
trigger1= var(30)!=var(32)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)=1
var(31)= var(30)
IgnoreHitPause= 1

;///// var(35) ガード無視 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = p2movetype != A && !root,inguarddist && !enemy,numproj
trigger3 = enemynear,p2dist x < 0
var(35)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = numhelper(22222)
trigger1 = numhelper(55555)
trigger1 = helper(22222),var(0) <= 0
trigger1 = !(helper(55555),var(58)&2**10) || !(helper(55555),var(58)&2**21)
trigger1 = p2movetype = A || root,inguarddist || enemy,numproj || (helper(55555),var(58)&2**10)
trigger1 = root,ctrl || root,movetype = I
trigger1 = !enemy,numproj || !root,inguarddist || root,statetype = A || enemynear,p2dist x < 0
trigger1 = (p2stateno != [200,699]) || enemynear,p2dist x < 0
trigger1 = !(enemynear,hitdefattr = SCA,AA,AT,AP) || enemynear,p2dist x < 0
trigger1 = p2stateno < 3000 || p2movetype != A || !root,inguarddist
trigger1 = root,p2bodydist x >= 86
trigger1 = root,fvar(39) != 2 || root,life >= 700
trigger1 = root,life >= 100
trigger1 = var(36) < 1+(root,life>=500&&root,life-p2life>=333)+(root,life>=700&&root,life-p2life>=500)
trigger2 = root,time >= 300 || enemynear,time >= 300
trigger3 = (root,life*1.0/root,lifemax) < (enemynear,life*1.0/enemynear,lifemax)
trigger3 = fvar(38) >= 90-(p2life-root,life>=333)*10-(p2life-root,life>=500)*10
var(35)= 1
IgnoreHitPause= 1

;///// var(36) ガード無視裏目 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(36)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = var(35)
trigger1 = root,movetype = H
trigger1 = root,time = 1
trigger1 = root,stateno != [120,155]
trigger1 = root,prevstateno != [120,155]
trigger1 = root,prevstateno != [5000,5999]
var(36)= 1
IgnoreHitPause= 1

;///// var(37) 起き上がり認識(相手) /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(37)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = p2stateno != 5120
trigger1 = var(37) > 0
var(37)= -1
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = p2stateno = 5120
var(37)= 12
IgnoreHitPause= 1

;///// var(38) ボルケイノ空中（非コンボ）使用カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(38)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 2720
trigger1 = root,time = 1
trigger1 = root,p2movetype != H
var(38)= 1
IgnoreHitPause= 1

;///// var(39) 誘い歩きカウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(39)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 22
trigger1 = root,prevstateno != 22
trigger1 = root,p2statetype != L
trigger1 = root,time = 1
var(39)= 1
IgnoreHitPause= 1

;///// var(40) Juggle /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = !root,numtarget
trigger2 = root,movetype != A
trigger2 = root,p2statetype != L
trigger3 = root,p2movetype != H
trigger3 = root,movetype != A
trigger3 = root,p2statetype != L
trigger4 = root,moveguarded
var(40)= 50
IgnoreHitPause= 1

;ジャグル消費(1)
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
;ンウェー
trigger1 = root,stateno = 610
var(40)= -1
IgnoreHitPause= 1

;ジャグル消費(4)
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
;立ち強パンチ(ベオコンボ１)
trigger1 = root,stateno = 200
trigger1 = root,p2statetype = A
;立ち強パンチ(ボディー)
trigger2 = root,stateno = 201
trigger2 = root,p2statetype = A
;立ち強パンチ(蹴り上げ)
trigger3 = root,stateno = 202
;立ち強パンチ(百烈キック)
trigger4 = root,stateno = 203
trigger4 = root,p2statetype = A
;立ち強パンチ(踵落とし)
trigger5 = root,stateno = 204
;立ち強パンチ(下段回し蹴り)
trigger6 = root,stateno = 205
;立ち弱パンチ(リベリオンコンボ１)
trigger7 = root,stateno = 210
trigger7 = root,p2statetype = A
;立ち弱パンチ(リベリオンコンボ２)
trigger8 = root,stateno = 211
trigger8 = root,p2statetype = A
;立ち弱パンチ(リベリオンコンボ３)
trigger9 = root,stateno = 212
;立ち弱パンチ(リベリオンコンボ４)
trigger10 = root,stateno = 213
trigger10 = root,p2statetype = A
;立ち弱パンチ(リベリオンコンボ５)
trigger11 = root,stateno = 214
trigger11 = root,p2statetype = A
;スライディング
trigger12 = root,stateno = 250
;エリアルレイブ１段目
trigger13 = root,stateno = 600
trigger13 = root,p2statetype = A
;エリアルレイブ２段目
trigger14 = root,stateno = 601
trigger14 = root,p2statetype = A
;エリアルレイブ３段目
trigger15 = root,stateno = 602
trigger15 = root,p2statetype = A
;エリアルレイブ４段目
trigger16 = root,stateno = 603
;飛び込み強キック
trigger17 = root,stateno = 640
trigger17 = root,p2statetype = A
;ハイタイムジャンプ
trigger18 = root,stateno = 1000
;スティンガー
trigger19 = root,stateno = 1100
;スティンガー
trigger20 = root,stateno = 1110
;エボアボ斜め撃ち
trigger21 = 0;root,stateno = 1500
trigger21 = root,p2statetype = A
;レインストーム
trigger22 = 0;root,stateno = 1600
trigger22 = root,p2statetype = A
;ストレイト
trigger23 = root,stateno = 2501
;ミリオンスタブ１
trigger24 = root,stateno = 3000
trigger24 = root,p2statetype = A
;ミリオンスタブ２
trigger25 = root,stateno = 3001
trigger25 = root,p2statetype = A
;ミリオンスタブ３
trigger26 = root,stateno = 3002
;オラオラ
trigger27 = root,stateno = 3050
;ダンスマカブル
trigger28 = root,stateno = [3100,3103]
trigger28 = root,p2statetype = A
;ダンスマカブル
trigger29 = root,stateno = 3104
;クレイジーダンス
trigger30 = root,stateno = 3111
trigger30 = root,p2statetype = A
;クレイジーダンス
trigger31 = root,stateno = 3112
;リアルインパクト
trigger32 = root,stateno = 3500
trigger32 = root,p2statetype = A
;リアルインパクト
trigger33 = root,stateno = 3501
;トルネイド
trigger34 = root,stateno = 3550
var(40)= -4
IgnoreHitPause= 1

;ジャグル消費(5)
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
;ビーストアッパー
trigger1 = root,stateno = 410
trigger1 = root,p2statetype = A
;ライジングドラゴン
trigger2 = root,stateno = 2600
;ディバインドラゴン
trigger3 = root,stateno = 2610
;ボルケイノ
trigger4 = 0;root,stateno = 2710
var(40)= -5
IgnoreHitPause= 1

;ジャグル消費(6)
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
;ハイタイム
trigger1 = root,stateno = 400
var(40)= -6
IgnoreHitPause= 1

;ジャグル消費(8)
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
;空中小Ｋ
trigger1 = root,stateno = 630
trigger1 = root,p2statetype = A
;ヘルムブレイカー
trigger2 = root,stateno = 1200
var(40)= -8
IgnoreHitPause= 1

;///// var(41)~var(45) ブロ裏目 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = 1
var(45)= 0
IgnoreHitPause= 1

;ブロ許可
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = enemynear,stateno != var(41)
trigger1 = enemynear,stateno != var(42)
trigger1 = enemynear,stateno != var(43)
trigger1 = enemynear,stateno != var(44)
trigger2 = enemynear,stateno = 0
var(45)= 1
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(44)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,prevstateno = 900 || root,prevstateno = 930
trigger1= enemynear,movetype = A
trigger1= !var(44)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)!=2
var(44)= enemynear,stateno
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(43)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,prevstateno = 900 || root,prevstateno = 930
trigger1= enemynear,movetype = A
trigger1= !var(43)
trigger1= enemynear,stateno!=var(44)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)!=2
var(43)= enemynear,stateno
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(42)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,prevstateno = 900 || root,prevstateno = 930
trigger1= enemynear,movetype = A
trigger1= !var(42)
trigger1= enemynear,stateno!=var(44)
trigger1= enemynear,stateno!=var(43)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)!=2
var(42)= enemynear,stateno
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(41)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,prevstateno = 900 || root,prevstateno = 930
trigger1= enemynear,movetype = A
trigger1= !var(41)
trigger1= enemynear,stateno!=var(44)
trigger1= enemynear,stateno!=var(43)
trigger1= enemynear,stateno!=var(42)
trigger1= root,movetype=H
trigger1= root,time=1
trigger1= root,stateno!=[120,155]
trigger1= fvar(39)!=2
var(41)= enemynear,stateno
IgnoreHitPause= 1

;///// var(46) コンボセット使用フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = root,p2movetype != H
trigger3 = root,stateno = 3600 && root,time = 1
trigger4 = root,stateno = 3700 && root,time = 1
var(46)= 0
IgnoreHitPause= 1

;リベリオン１段目
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(46)&2**0)
trigger1 = root,stateno = 210
trigger1 = root,time = 1
var(46)= 2**0
IgnoreHitPause= 1

;ベオ１段目
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(46)&2**1)
trigger1 = root,stateno = 200
trigger1 = root,time = 1
var(46)= 2**1
IgnoreHitPause= 1

;小パン
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(46)&2**2)
trigger1 = root,stateno = 430
trigger1 = root,time = 1
var(46)= 2**2
IgnoreHitPause= 1

;ビーストアッパー
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(46)&2**3)
trigger1 = root,stateno = 410
trigger1 = root,time = 1
var(46)= 2**3
IgnoreHitPause= 1

;ケルベロス１段目
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(46)&2**4)
trigger1 = root,stateno = 300
trigger1 = root,time = 1
var(46)= 2**4
IgnoreHitPause= 1

;ジャンプ
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = !(var(46)&2**10)
trigger1 = root,stateno = 41
trigger1 = root,time = 1
var(46)= 2**10
IgnoreHitPause= 1

;///// var(47) タイムラグエリアルルート /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = !root,var(19)
trigger1 = root,p2movetype != H
trigger2 = root,stateno = 3600
trigger2 = root,time = 1
var(47)= 0
IgnoreHitPause= 1

[State 33333];基本ルート
Type = VarSet
triggerall = ishelper
trigger1 = root,stateno = 3600
trigger1 = root,time = 1
var(47)= 1
IgnoreHitPause= 1

[State 33333];ゲージ技挟みルート
Type = VarSet
triggerall = ishelper
triggerall = var(47) = [0,1]
trigger1 = root,stateno = 3600
trigger1 = root,time = 1
trigger1 = root,p2statetype = A
trigger1 = root,power >= 3900
trigger1 = random < 500
var(47)= 2
IgnoreHitPause= 1

[State 33333];リフティングルート
Type = VarSet
triggerall = ishelper
triggerall = var(47) = [0,1]
trigger1 = root,stateno = 3600
trigger1 = root,time = 1
trigger1 = life-p2life >= 333
trigger1 = random < 333
var(47)= 3
IgnoreHitPause= 1

;///// var(48) 大技カウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = var(48)%1000 >= 600
var(48)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = var(48) > 0
trigger1 = root,movetype != H
trigger1 = root,statetype != L
trigger1 = root,movetype != A || root,stateno < 1000
var(48)= 1
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = root,stateno = 3100 && root,time = 1
trigger2 = root,stateno = 3300 && root,time = 1
trigger3 = root,stateno = 3400 && root,time = 1
trigger4 = root,stateno = 3500 && root,time = 1
trigger5 = root,stateno = 2720 && root,time = 1
var(48)= root,stateno * 1000
IgnoreHitPause= 1

;///// var(49) ダッシュ警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(49)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 100
var(49)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 100
trigger1 = root,animelemtime(9) >= 1
var(49)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A || root,stateno = 100
triggerall = root,time = 1
trigger1 = root,prevstateno = 100
var(49)= -1
IgnoreHitPause= 1

;///// var(50) クリスタル警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(50)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 3300
var(50)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 3300
trigger1 = root,animtime = -1
var(50)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A
triggerall = root,time = 1
trigger1 = root,prevstateno = 3300
var(50)= -1
IgnoreHitPause= 1

;///// var(51) ボルケイノ警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(51)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 2700
var(51)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 2710
trigger1 = root,animtime = -1
var(51)= -1
IgnoreHitPause= 1

;///// var(52) ロイガ警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(52)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 900
var(52)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 900
trigger1 = root,animtime = -1
var(52)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = 905
trigger1 = root,time = 1
var(52)= -1
IgnoreHitPause= 1

;///// var(53) スティンガー警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(53)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 1100
var(53)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = [1110,1120]
trigger1 = root,animtime = -1
var(53)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A
triggerall = root,time = 1
trigger1 = root,prevstateno = [1100,1110]
trigger1 = root,stateno != 1110
var(53)= -1
IgnoreHitPause= 1

;///// var(54) エリアルレイブ警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(54)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= RoundState = 2
triggerall= fvar(39) != 2
triggerall= root,movetype = H
triggerall= root,stateno != [120,155]
triggerall= pos y >= -30
trigger1= root,prevstateno = 45
trigger2= root,prevstateno = 50
trigger3= root,prevstateno = 51
trigger4= root,prevstateno = 132
trigger5= root,prevstateno = 600
trigger6= root,prevstateno = 41
var(54)= 1
IgnoreHitPause= 1

;///// var(55) レインストーム警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(55)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= RoundState = 2
triggerall= fvar(39) != 2
triggerall= root,movetype = H
triggerall= root,stateno != [120,155]
triggerall= pos y < -70 || root,prevstateno = 1600
trigger1= root,prevstateno = 45
trigger2= root,prevstateno = 50
trigger3= root,prevstateno = 51
trigger4= root,prevstateno = 132
trigger5= root,prevstateno = 1200
trigger6= root,prevstateno = 1600
trigger7= root,prevstateno = 41
trigger8= root,prevstateno = 102
trigger9= root,prevstateno = 108
var(55)= 1
IgnoreHitPause= 1

;///// var(56) 空中受身警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(56)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 5210
var(56)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
triggerall = root,movetype = A || root,movetype = I
trigger1 = prevstateno = 5210
var(56)= -1
IgnoreHitPause= 1

;///// var(57) 地上受身警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(57)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 5200
var(57)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,animtime = -1
trigger1 = root,stateno = 5200
var(57)= -1
IgnoreHitPause= 1

;///// var(58) 飛び込み警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(58)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= RoundState = 2
triggerall= fvar(39) != 2
triggerall= root,movetype = H
triggerall= root,stateno != [120,155]
trigger1= root,prevstateno = 45
trigger2= root,prevstateno = 50
trigger3= root,prevstateno = 51
trigger4= root,prevstateno = 132
trigger5= root,prevstateno = [600,603]
trigger6= root,prevstateno = 610
trigger7= root,prevstateno = 630
trigger8= root,prevstateno = 640
trigger9= root,prevstateno = 1200
trigger10= root,prevstateno = 1600
trigger11= root,prevstateno = 41
trigger12= root,prevstateno = 102
trigger13= root,prevstateno = 108
var(58)= 1
IgnoreHitPause= 1

;///// fvar(5) 手出し厳禁(スカ) /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(5)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno = fvar(7) && fvar(7)>0
fvar(5)= 1
IgnoreHitPause= 1

;///// fvar(6) ブラックリスト格納用 /////
;発動
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(6)
triggerall = roundstate = 2
trigger1 = !enemynear,ctrl && enemynear,stateno >= 1000
trigger1 = root,movetype = A && root,statetype != A
trigger1 = root,hitdefattr = SCA,AA,AT,AP
trigger1 = fvar(7) := enemynear,stateno
fvar(6)= root,stateno
IgnoreHitPause= 1
;終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = fvar(6)
trigger1 = root,movecontact || enemynear,movetype = H
trigger2 = root,prevstateno = fvar(6)
trigger2 = root,movetype != I && root,time = 1
fvar(6)= 0
IgnoreHitPause= 1

;///// fvar(7) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(6)
fvar(7)= 0
IgnoreHitPause= 1

;///// fvar(8) 手出し厳禁(相手ガード) /////
;発動
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemynear,stateno = [120,155]
trigger1 = (root,movetype = A || root,stateno = 100) && root,time = 1
fvar(8)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(8)
triggerall = roundstate = 2
triggerall = !(root,movetype = A || root,stateno = 100)
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(8)
fvar(8)= 0
IgnoreHitPause= 1

;///// fvar(9) 手出し厳禁(相手ガード)フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = roundstate != 2
trigger1 = 1
fvar(9)= 0
IgnoreHitPause= 1
;セット
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(9)
triggerall = fvar(8)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(8)
trigger1 = root,movetype = H
fvar(9)= 1
IgnoreHitPause= 1

;///// fvar(10) 手出し厳禁(通常) /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(10)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno = fvar(13) && fvar(13)>0
trigger2= enemynear,stateno = fvar(14) && fvar(14)>0
trigger3= enemynear,stateno = fvar(15) && fvar(15)>0
trigger4= enemynear,stateno = fvar(16) && fvar(16)>0
trigger5= enemynear,stateno = fvar(17) && fvar(17)>0
trigger6= enemynear,stateno = fvar(18) && fvar(18)>0
trigger7= enemynear,stateno = fvar(19) && fvar(19)>0
fvar(10)= 1
IgnoreHitPause= 1

;///// fvar(11) ブラックリスト格納用 /////
;発動
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(11)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !enemynear,ctrl && enemynear,stateno>=200 && enemynear,anim>=200
trigger1 = root,movetype = A && root,time = 1
trigger1 = root,stateno < 1000
trigger1 = fvar(12) := enemynear,stateno
fvar(11)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
fvar(11)= 0
IgnoreHitPause= 1

;///// fvar(12) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(11)
fvar(12)= 0
IgnoreHitPause= 1

;///// fvar(13)~fvar(19) ブラックリスト /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(16)
triggerall = fvar(17)
triggerall = fvar(18)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = fvar(12) != fvar(16)
triggerall = fvar(12) != fvar(17)
triggerall = fvar(12) != fvar(18)
triggerall = !fvar(19)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(19)= fvar(12)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(16)
triggerall = fvar(17)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = fvar(12) != fvar(16)
triggerall = fvar(12) != fvar(17)
triggerall = !fvar(18)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(18)= fvar(12)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(16)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = fvar(12) != fvar(16)
triggerall = !fvar(17)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(17)= fvar(12)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = !fvar(16)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(16)= fvar(12)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = !fvar(15)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(15)= fvar(12)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(12) != fvar(13)
triggerall = !fvar(14)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(14)= fvar(12)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = !fvar(13)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(13)= fvar(12)
IgnoreHitPause= 1

;///// fvar(20) 手出し厳禁(必殺) /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(20)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno = fvar(23) && fvar(23)>0
trigger2= enemynear,stateno = fvar(24) && fvar(24)>0
trigger3= enemynear,stateno = fvar(25) && fvar(25)>0
trigger4= enemynear,stateno = fvar(26) && fvar(26)>0
trigger5= enemynear,stateno = fvar(27) && fvar(27)>0
trigger6= enemynear,stateno = fvar(28) && fvar(28)>0
trigger7= enemynear,stateno = fvar(29) && fvar(29)>0
fvar(20)= 1
IgnoreHitPause= 1

;///// fvar(21) ブラックリスト格納用 /////
;発動
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(21)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !enemynear,ctrl && enemynear,stateno>=200 && enemynear,anim>=200
trigger1 = root,movetype = A && root,time = 1
trigger1 = root,stateno >= 1000
trigger1 = fvar(22) := enemynear,stateno
fvar(21)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
fvar(21)= 0
IgnoreHitPause= 1

;///// fvar(22) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(21)
fvar(22)= 0
IgnoreHitPause= 1

;///// fvar(23)~fvar(29) ブラックリスト /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(26)
triggerall = fvar(27)
triggerall = fvar(28)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = fvar(22) != fvar(26)
triggerall = fvar(22) != fvar(27)
triggerall = fvar(22) != fvar(28)
triggerall = !fvar(29)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(29)= fvar(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(26)
triggerall = fvar(27)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = fvar(22) != fvar(26)
triggerall = fvar(22) != fvar(27)
triggerall = !fvar(28)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(28)= fvar(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(26)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = fvar(22) != fvar(26)
triggerall = !fvar(27)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(27)= fvar(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = !fvar(26)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(26)= fvar(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = !fvar(25)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(25)= fvar(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(22) != fvar(23)
triggerall = !fvar(24)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(24)= fvar(22)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = !fvar(23)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(23)= fvar(22)
IgnoreHitPause= 1

;///// fvar(34) 直前の攻撃/////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1 = roundstate != 2
fvar(34)= 0
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1 = fvar(36) >= 180
fvar(34)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate = 2
trigger1= root,movetype = A || root,stateno = 900 || root,stateno = 930 || (root,stateno = [191,199])
trigger1= root,time = 1
fvar(34)= root,stateno
IgnoreHitPause= 1

;///// fvar(35) 敵標準ヘルパー数 /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1 = roundstate != 2
fvar(35)= 0
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1 = enemy,movetype != A
fvar(35)= enemy,numhelper
IgnoreHitPause= 1

;///// fvar(36) attacktime /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= RoundState != 2
trigger2= root,movetype = A || root,stateno = 900 || root,stateno = 930 || (root,stateno = [191,199])
fvar(36)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
trigger1= RoundState = 2
trigger1= root,movetype = I || (root,stateno = [120,155])
trigger1= fvar(36) < 600
fvar(36)= 1
IgnoreHitPause= 1

;///// fvar(37) attackswitch /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(37)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= root,var(59) != 3
trigger2= fvar(36) >= 90
trigger3= enemynear,vel x || enemynear,vel y || (enemynear,stateno >= 200 && enemynear,anim >= 200)
trigger3= fvar(36) >= 70
trigger4= !enemynear,ctrl
trigger4= fvar(36) >= 50
trigger5= enemynear,inguarddist || (p2stateno = [120,155])
trigger5= fvar(36) >= 30
trigger6= p2statetype = A
trigger6= fvar(36) >= 10
trigger7= (root,life*1.0/root,lifemax) < (enemynear,life*1.0/enemynear,lifemax)
trigger7= fvar(38) >= 70-(p2life-root,life>=333)*10-(p2life-root,life>=500)*10
trigger8= root,life >= root,p2life
trigger8= random < 200*(1+(root,life>=700)+(root,life>=500)+(root,life>=333))
trigger9= root,life < root,p2life
trigger9= random < 100*(1+(root,life>=700)+(root,life>=500)+(root,life>=333))
fvar(37)= 1
IgnoreHitPause= 1

;///// fvar(38) roundtime /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= roundstate != 2
trigger2= root,stateno = 5900
fvar(38)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
trigger1= roundstate = 2
trigger1= root,stateno != 5900
fvar(38)= (1.0/60)
IgnoreHitPause= 1

;///// fvar(39) 直前のmovetype /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState = 2
trigger1= 1
fvar(39)= ifelse(root,movetype = I,0,ifelse(root,movetype = A,1,2))
IgnoreHitPause= 1

;///// var(7) ガード時間 /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= roundstate != 2
trigger2= root,movetype = A
trigger3= root,movetype = H
var(7)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
trigger1= root,stateno = [120,140]
var(7)= 1
IgnoreHitPause= 1

;///// var(8) ガード時間超過フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
var(8)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= var(7) >= 180-random%60+random%60-(root,p2bodydist x<160)*30-(root,p2bodydist x<140)*30-(root,p2bodydist x<120)*30-(random<10)*30
var(8)= 1
IgnoreHitPause= 1

;///// var(9) 攻撃許可フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= 1
var(9)= 0
IgnoreHitPause= 1

;相手打撃用（相手の打撃が妨げにならない
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(55555)
triggerall= numhelper(22222)
;基本
trigger1= enemynear,movetype!=A && (!root,inguarddist || !enemy,numproj)
;背後
trigger2= enemynear,p2dist x<0
;すかし
trigger3= helper(22222),fvar(0)
;防御不可攻撃
trigger4= enemynear,stateno=var(18)
;防御無視
trigger5= var(35)
;防御するものがない（ワープ、溜め中etc
trigger6= enemynear,movetype=A
trigger6= enemynear,time>=30 || enemynear,hitdefattr=SCA,AT
trigger6= !(enemynear,hitdefattr=SCA,AA,AP)
trigger6= !enemy,numproj
trigger6= !(helper(55555),var(58)&2**20)
;反応速度
trigger7= enemynear,time<(7+(root,var(59)=2)*23)+(root,life>=500||root,var(59)=3)*7+(root,life>=333||root,var(59)=3)*7+random%(7+(root,var(59)=2)*23)-random%(7+(root,var(59)=2)*23)
trigger7= enemynear,stateno<3000
trigger7= enemynear,prevstateno<1000
trigger7= enemynear,movetype=A
trigger7= root,stateno!=[120,139]
trigger7= random<400-(root,life<700||root,var(59)=3)*100-(root,life<500||root,var(59)=3)*100-(root,life<333||root,var(59)=3)*100 || root,var(59)=2
;ブロ中
trigger8= var(30)
;タイムラグ中
trigger9= root,var(19)
;ドッペル中
trigger10= root,var(22)
;遊び
trigger11= root,var(59)=2 && random<200
;ガード時間超過
trigger12= var(8)
;盾陣形
trigger13= helper(22222),var(59)&2**20
;削り拒否
trigger14= root,life<100+(enemynear,stateno>=3000||enemynear,hitdefattr=SCA,HA,HP)*100
trigger14= enemynear,stateno>=1000 || enemynear,hitdefattr=SCA,SA,HA,SP,HP
var(9)= 2**0
IgnoreHitPause= 1

;相手飛び道具用（相手の通常飛び道具を警戒し、時間差発動型の飛び道具を無視する
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(55555)
triggerall= numhelper(22222)
;相手が超必で飛び道具と思われるものを発射するステートでない（全画面攻撃など
trigger1= !(enemynear,movetype=A && enemynear,stateno>=3000 && root,inguarddist && !(enemynear,hitdefattr = SCA,AA,AT) && (enemy,numproj || helper(55555),var(58)&2**21 || enemynear,time < 30))
;相手が必殺で飛び道具と思われるものを発射するステートでない
trigger1= !(enemynear,movetype=A && enemynear,stateno>=1000 && root,inguarddist && !(enemynear,hitdefattr = SCA,AA,AT) && (enemy,numproj || helper(55555),var(58)&2**21)) || enemynear,p2dist x<0
;相手が飛び道具と思われるものを発射していない
trigger1= (!enemy,numproj && !(helper(55555),var(58)&2**21)) || enemynear,p2dist x<0
;ブロ中
trigger2= var(30)
;タイムラグ中
trigger3= root,var(19)
;ドッペル中
trigger4= root,var(22)
;遊び
trigger5= root,var(59)=2 && random<200
;ガード時間超過
trigger6= var(8)
;盾陣形
trigger7= helper(22222),var(59)&2**20
;削り拒否
trigger8= root,life<200
trigger8= enemynear,stateno>=3000 || enemynear,hitdefattr=SCA,HA,HP
var(9)= 2**1
IgnoreHitPause= 1

;相手回避or当身用（相手が回避or当身中でない
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(22222)
trigger1= enemynear,movetype!=I
trigger2= enemynear,ctrl
trigger3= enemynear,stateno>=3000
trigger4= enemynear,movetype=I && (enemynear,stateno<200 || enemynear,anim<200)
trigger5= enemynear,statetype=A
trigger6= enemynear,time>=60
trigger7= helper(22222),fvar(32)<0;HP回復
trigger8= helper(22222),fvar(36)>0;パワー回復
trigger9= root,var(59)=2 && random<200
var(9)= 2**2
IgnoreHitPause= 1

;空中攻撃用
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(55555)
triggerall= numhelper(22222)
;相手が攻撃中でない（飛び道具orヘルパー攻撃は無視）
trigger1= enemynear,movetype!=A
;相手が自分の背後
trigger2= root,p2dist x<0
;自分が相手の背後
trigger3= enemynear,p2dist x<0
;空ガ不可
trigger4= var(10)&2**2
;防御不可攻撃
trigger5= enemynear,stateno=var(18)
;防御無視
trigger6= var(35)
;飛び道具通りすぎ
trigger7= helper(55555),var(58)&2**9
;相手が投げ技中
trigger8= enemynear,hitdefattr=SCA,AT
;すかし
trigger9= helper(22222),fvar(0)
trigger9= enemynear,stateno<1000 || !(enemynear,hitdefattr=SCA,AA)
;相手が空中且つ、自分が防御中でない
trigger10= enemynear,statetype=A
trigger10= root,stateno!=132
;防御するものがない（ワープ、溜め中etc
trigger11= enemynear,movetype=A
trigger11= enemynear,time>=30
trigger11= !(enemynear,hitdefattr=SCA,AA,AP)
trigger11= !enemy,numproj
trigger11= !(helper(55555),var(58)&2**20)
;ブロ中
trigger12= var(30)
;タイムラグ中
trigger13= root,var(19)
;ドッペル中
trigger14= root,var(22)
;遊び
trigger15= root,var(59)=2 && random<200
;ガード時間超過
trigger16= var(8)
;盾陣形
trigger17= helper(22222),var(59)&2**20
;削り拒否
trigger18= root,life<100+(enemynear,stateno>=3000||enemynear,hitdefattr=SCA,HA,HP)*100
trigger18= enemynear,stateno>=1000 || enemynear,hitdefattr=SCA,SA,HA,SP,HP
var(9)= 2**3
IgnoreHitPause= 1

;カウンター用反応速度
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,time>=10+(root,life>=333)*10+(root,life>=666)*10+random%(10+(root,life>=333)*10+(root,life>=666)*10)-random%(10+(root,life>=333)*10+(root,life>=666)*10)
trigger2= enemynear,movetype=A
trigger2= root,var(59)=3 || enemynear,stateno>=3000 || var(29)%1000 >= 180 || var(29)/1000 >= 333
trigger3= enemynear,movetype=A
trigger3= root,power>=3000 || enemynear,stateno>=1000 || root,p2life-root,life>=333 || root,life<333 || var(29)%1000 >= 120 || var(29)/1000 >= 222
trigger3= random<90
trigger4= enemynear,movetype=A
trigger4= (root,statetype=A && root,p2statetype!=A) || root,p2statetype=A || root,life<root,p2life || root,life<666 || var(29)%1000 >= 60 || var(29)/1000 >= 111
trigger4= random<60
trigger5= enemynear,movetype=A
trigger5= random<30
trigger6= enemynear,movetype!=A
var(9)= 2**4
IgnoreHitPause= 1

;///// var(59) コンボテスト用 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = 1
var(59)= 0
IgnoreHitPause= 1

;///// その他 /////
;デバッグ用
[State -2 デバッグ用]
type=displayToClipboard
trigger1=1
ignorehitpause=1
text="var(11)=%d var(12)=%d var(13)=%d"
params=var(11),var(12),var(13)

[State -2 デバッグ用]
type=AppendToClipboard
trigger1=1
ignorehitpause=1
text=" \nvar(45)=%d var(46)=%d var(47)=%d var(48)=%d var(49)=%d"
params=var(45),var(46),var(47),var(48),var(49)
