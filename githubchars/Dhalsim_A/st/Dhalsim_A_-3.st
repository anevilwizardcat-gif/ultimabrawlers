[Statedef -3]


[State -3, AI起動用ヘルパー]
type=helper
trigger1=!NumHelper(10000)
trigger1=roundstate=2
trigger1=alive
trigger1=var(59)=0
trigger1= (PrevStateNo= [190,191]) || PrevStateNo=5900
trigger1=ctrl&&stateno=0
helpertype=normal
name="AI"
stateno=10000
ID=10000
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

[State -3, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(10000)
trigger1= stateno!=10000
value=10000

;==============================================================================
; 移動関連
;==============================================================================
;-------------------------------------------------
[State -3, 歩き]
type = ChangeState
value = 20
triggerall = var(59) > 0 && RoundState = 2 && Alive 
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype != A
triggerall = !InGuardDist
triggerall = stateno != [120,155]
triggerall = stateno != [20,21]
triggerall = stateno != [10,12]
triggerall = prevstateno != [120,155]
triggerall = prevstateno != [20,21]
triggerall = prevstateno != [10,12]
trigger1 = ctrl

[State -1, ガード]
type = changestate
value = 120
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = StateNo != [120,155]
triggerall = ctrl|| stateno = 20
triggerall = statetype != A
triggerall = inguarddist
trigger1 = Random <= 500
trigger2 = P2BodyDist X > 90
trigger2 = Random <= 500
trigger3 = EnemyNear(var(58)),Time>50
trigger3 = Random <= 500
ctrl = 0

[State -3,ジャンプ]
type = ChangeState
value = 40
triggerall = var(59) > 0 && RoundState = 2 && Alive 
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = !inguarddist
triggerall = Ctrl || stateno = 20
trigger1 = P2BodyDist X = [ceil(50*const(size.xscale)),ceil(100*const(size.xscale))]
trigger1 = Random < 10

[State -3,ジャンプ]
type = ChangeState
value = 40
triggerall = var(59) > 0 && RoundState = 2 && Alive 
triggerall = statetype != A
triggerall = Numprojid(7025) > 0
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = !inguarddist
triggerall = Ctrl || stateno = 20
trigger1 = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(120*const(size.xscale))]

;==============================================================================
; スーパーコンボ
;==============================================================================
[State -1, タイガーディストラクション]
type = ChangeState
value = 1540
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = 0
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Stateno = 5120
trigger1 = ctrl || stateno = 20

[State -1, タイガーディストラクション]
type = ChangeState
value = 1540
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = 0
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 500
trigger1 = stateno = 231 && movecontact
trigger2 = stateno = 236 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = stateno = 406 && movecontact
trigger5 = (stateno = [430,431]) && movecontact
trigger6 = stateno = 436 && movecontact
trigger7 = (stateno = [1000,1003]) && animelemtime(5) >= 0
trigger8 = (stateno = [1010,1013]) && animelemtime(5) >= 0 
trigger9 = (stateno = [1050,1053]) && movecontact

[State -1, タイガーレイド]
type = ChangeState
value = 1530
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(80*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-10*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 10
trigger1 = ctrl

[State -1, タイガーレイド]
type = ChangeState
value = 1531
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(50*const(size.xscale)),ceil(80*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-10*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 100
trigger1 = ctrl

[State -1, タイガーレイド]
type = ChangeState
value = 1532
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-10*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 200
trigger1 = ctrl

[State -1, タイガーレイド]
type = ChangeState
value = 1515
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-90*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype = A
triggerall = random < 100
trigger1 = ctrl || stateno = 20

[State -1, ヨガストリーム]
type = ChangeState
value = 1510
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-90*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 100
trigger1 = stateno = 401 && movecontact
trigger2 = stateno = 406 && movecontact
trigger3 = (stateno = [430,431]) && movecontact
trigger4 = stateno = 436 && movecontact

[State -1, タイガージェノサイド]
type = ChangeState
value = 1500
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-50*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType = A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 100
trigger1 = ctrl || stateno = 20

[State -1, タイガーキャノン]
type = ChangeState
value = 1500
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-50*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 100
trigger1 = stateno = 231 && movecontact
trigger2 = stateno = 236 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = stateno = 406 && movecontact
trigger5 = (stateno = [430,431]) && movecontact
trigger6 = stateno = 436 && movecontact
trigger7 = (stateno = [1000,1003]) && animelemtime(5) >= 0
trigger8 = (stateno = [1010,1013]) && animelemtime(5) >= 0 
trigger9 = (stateno = [1050,1053]) && movecontact

[State -1, ヨガボルケイノ]
type = ChangeState
value = 1505
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = power >= 1000 && power < 3000
triggerall = Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(90*const(size.xscale))]
triggerall = P2BodyDist Y < ceil(-50*const(size.xscale))
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),Statetype = A
triggerall = random < 200
trigger1 = (stateno = [1050,1053]) && movecontact 
;==============================================================================
; 必殺技
;==============================================================================

[State -1, ヨガファイアEX]
type = ChangeState
value = 1003
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = power >= 500 && power < 3000
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(190*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType = A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 50
trigger1 = ctrl || stateno = 20

[State -1, ヨガファイア]
type = ChangeState
value = 1000
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(120*const(size.xscale)),ceil(190*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 200
trigger1 = ctrl || stateno = 20

[State -1, ヨガファイア]
type = ChangeState
value = 1001
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(80*const(size.xscale)),ceil(110*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 200
trigger1 = ctrl || stateno = 20

[State -1, ヨガファイア]
type = ChangeState
value = 1002
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(50*const(size.xscale)),ceil(90*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 200
trigger1 = ctrl || stateno = 20

[State -1, ヨガフレイム]
type = ChangeState
value = 1010+random%2
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(90*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = random < 100
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 206 && movecontact
trigger3 = stateno = 211 && movecontact && numtarget(212)
trigger4 = stateno = 231 && movecontact
trigger5 = stateno = 236 && movecontact
trigger6 = stateno = 401 && movecontact
trigger7 = stateno = 406 && movecontact
trigger8 = (stateno = [430,431]) && movecontact
trigger9 = stateno = 436 && movecontact

;------------------------------------------------------------------------------

[State -1, ヨガブラスト]
type = ChangeState
value = 1050
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(30*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-120*const(size.xscale)),ceil(-50*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype = A
triggerall = random < 100
trigger1 = ctrl || stateno =20

[State -1, ヨガブラスト]
type = ChangeState
value = 1051
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(50*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-120*const(size.xscale)),ceil(-50*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype = A
triggerall = random < 50
trigger1 = ctrl || stateno =20

[State -1, ヨガブラスト]
type = ChangeState
value = 1052
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(80*const(size.xscale)),ceil(120*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-120*const(size.xscale)),ceil(-50*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype = A
triggerall = random < 50
trigger1 = ctrl || stateno =20

[State -1, ヨガブラスト]
type = ChangeState
value = 1053
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
triggerall = power >= 500
triggerall = P2BodyDist X = [ceil(20*const(size.xscale)),ceil(70*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-100*const(size.xscale)),ceil(-50*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype = A
triggerall = EnemyNear(var(58)),movetype = A
triggerall = random < 50
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート]
type = ChangeState
value = 1103
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype != A
triggerall = P2BodyDist X < ceil(100*const(size.xscale))
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = Backedgebodydist < 40
triggerall = random < 60
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート]
type = ChangeState
value = 1101
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(150*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = EnemyNear(var(58)),Numproj > 0
triggerall = random < 100
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート]
type = ChangeState
value = 1101
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype != A
triggerall = P2BodyDist X > ceil(120*const(size.xscale))
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = EnemyNear(var(58)),Numproj > 0
triggerall = Backedgebodydist < 50
triggerall = random < 100
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート]
type = ChangeState
value = 1103
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype != A
triggerall = P2BodyDist X > ceil(120*const(size.xscale))
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = EnemyNear(var(58)),Numproj > 0
triggerall = Backedgebodydist < 50
triggerall = random < 100
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート]
type = ChangeState
value = 1102
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype != A
triggerall = P2BodyDist X < ceil(100*const(size.xscale))
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = Backedgebodydist < 40
triggerall = random < 10
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート]
type = ChangeState
value = 1100
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype != A
triggerall = P2BodyDist X < ceil(100*const(size.xscale))
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype != A
triggerall = random < 50
trigger1 = ctrl || stateno =20

[State -1, ヨガテレポート小]
type = ChangeState
value = 1115
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X < ceil(100*const(size.xscale))
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype != A
triggerall = stateno != [1120,1123]
triggerall = random < 50
trigger1 = ctrl 

[State -1, ヨガテレポート小]
type = ChangeState
value = 1115
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = Numprojid(7025) > 0
triggerall = P2BodyDist X < ceil(150*const(size.xscale))
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype != A
triggerall = stateno != [1120,1123]
trigger1 = ctrl 

[State -1, ヨガテレポート小]
type = ChangeState
value = 1116
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(150*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = EnemyNear(var(58)),Numproj > 0
triggerall = stateno != [1120,1123]
triggerall = random < 100
trigger1 = ctrl 

[State -1, ヨガテレポート小]
type = ChangeState
value = 1117
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X < ceil(100*const(size.xscale))
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = Backedgebodydist < 40
triggerall = stateno != [1120,1123]
triggerall = random < 10
trigger1 = ctrl 

[State -1, ヨガテレポート]
type = ChangeState
value = 1118
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X < ceil(100*const(size.xscale))
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = Backedgebodydist < 40
triggerall = stateno != [1120,1123]
triggerall = random < 60
trigger1 = ctrl 

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = stateno != [100,106]
triggerall = ctrl||stateno=20
trigger1 = EnemyNear(var(58)),movetype != A
trigger1 = P2bodydist X >= 200
trigger1 = statetype != A
trigger1 = enemy, numproj = 0
trigger1 = Random < 10
ignorehitpause = 0

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = stateno != [100,106]
triggerall = statetype != A
triggerall = enemy, numproj = 0
triggerall = ctrl||stateno=20
trigger1 = EnemyNear(var(58)),movetype = A
trigger1 = P2bodydist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
trigger1 = BackEdgeBodyDist > 30
trigger1 = random < 20
ignorehitpause = 0
persistent = 0

;==============================================================================
; セービングアタック
;==============================================================================

[State -1, 移動起き上がり(前方)]
type = ChangeState
value = 910
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = (StateNo = 5110) && (MoveType = H) && (Time > 1)
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),StateType != L
trigger1 = random < 50

[State -1, 移動起き上がり(後方)]
type = ChangeState
value = 911
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = (StateNo = 5110) && (MoveType = H) && (Time > 1)
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = EnemyNear(var(58)),StateType != L
trigger1 = random < 10

[State -1, セービングアタック]
type = ChangeState
value = 900
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),movetype = A
triggerall = statetype != A
triggerall = random < 200
triggerall = life > 100
trigger1 = ctrl || stateno =20

[State -1, セービングアタック]
type = ChangeState
value = 900
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-40*const(size.xscale)),ceil(0*const(size.xscale))]
triggerall = EnemyNear(var(58)),Stateno = 5120
triggerall = EnemyNear(var(58)),movetype != A
triggerall = statetype != A
triggerall = random < 200
triggerall = life > 100
trigger1 = ctrl || stateno =20

;==============================================================================
; 掴み
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ヨガスマッシュ,ヨガスルー]
type = ChangeState
value = 800
triggerall = var(59) > 0 && RoundState = 2 && Alive 
triggerall = StateType != A
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(20*const(size.xscale))]
triggerall = P2BodyDist Y = 0 
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != H
triggerall = random < 100
trigger1 = ctrl || stateno = 20

[State -1, ヨガスルー]
type = ChangeState
value = 820
triggerall = var(59) > 0 && RoundState = 2 && Alive 
triggerall = StateType = A
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(20*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.xscale)),ceil(30*const(size.xscale))]
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),MoveType != H
triggerall = random < 100
trigger1 = ctrl

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱]
type = ChangeState
value = 200+random%2
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 200
trigger1 = ctrl||stateno=20

[State -1, 立ち弱]
type = ChangeState
value = 201
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType = C
triggerall = random < 200
trigger1 = ctrl||stateno=20

[State -1, 立ち中]
type = ChangeState
value = 205
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(80*const(size.xscale)),ceil(160*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち中]
type = ChangeState
value = 206
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち強]
type = ChangeState
value = 210
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(60*const(size.xscale)),ceil(190*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち強]
type = ChangeState
value = 211
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType = C
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち弱]
type = ChangeState
value = 230
triggerall =var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(90*const(size.xscale)),ceil(130*const(size.xscale))]
triggerall = P2BodyDist Y = 0
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち弱]
type = ChangeState
value = 231
triggerall =var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(40*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20


[State -1, 立ち中]
type = ChangeState
value = 235
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(100*const(size.xscale)),ceil(160*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち中]
type = ChangeState
value = 236
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 100
trigger1 = ctrl||stateno=20


[State -1, 立ち強]
type = ChangeState
value = 240
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(70*const(size.xscale)),ceil(160*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-90*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, 立ち強]
type = ChangeState
value = 241
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(40*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-20*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 100
trigger1 = ctrl||stateno=20

;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(100*const(size.xscale)),ceil(160*const(size.xscale))]
triggerall = P2BodyDist Y = 0
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ弱]
type = ChangeState
value = 401
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(30*const(size.xscale))]
triggerall = P2BodyDist Y = 0
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ中]
type = ChangeState
value = 405
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(70*const(size.xscale)),ceil(160*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-50*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ中]
type = ChangeState
value = 406
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-50*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ強]
type = ChangeState
value = 410
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(140*const(size.xscale)),ceil(190*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ強]
type = ChangeState
value = 411
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(40*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-60*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ弱]
type = ChangeState
value = 430
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(50*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = 0
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ弱]
type = ChangeState
value = 431+5*(random%3)
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(40*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

[State -1, しゃがみ中]
type = ChangeState
value = 435
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(60*const(size.xscale)),ceil(70*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-20*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20


[State -1, しゃがみ強]
type = ChangeState
value = 440
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X = [ceil(90*const(size.xscale)),ceil(100*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-30*const(size.yscale)),0]
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 100
trigger1 = ctrl||stateno=20

;------------------------------------------------------------------------------

[State -1, 頭突き]
type = ChangeState
value = 615
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(30*const(size.xscale)),ceil(120*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-80*const(size.yscale)),ceil(-20*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = vel x > 0
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(30*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(0*const(size.yscale)),ceil(80*const(size.yscale))]
triggerall = EnemyNear(var(58)),StateType != L
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ弱]
type = ChangeState
value = 601
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(0*const(size.yscale)),ceil(40*const(size.yscale))]
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel x > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 605
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(-10*const(size.xscale)),ceil(90*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-50*const(size.yscale)),ceil(0*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 606
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(-10*const(size.xscale)),ceil(40*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-50*const(size.yscale)),ceil(0*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel x > 0
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 610
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-10*const(size.yscale)),ceil(90*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel x > 0
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl


[State -1, ジャンプ弱]
type = ChangeState
value = 630
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(70*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-20*const(size.yscale)),ceil(50*const(size.yscale))]
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel y <= 0
triggerall = vel x = 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ弱]
type = ChangeState
value = 631
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(70*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-20*const(size.yscale)),ceil(30*const(size.yscale))]
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 635
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(-10*const(size.xscale)),ceil(80*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-20*const(size.yscale)),ceil(50*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel x > 0
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 636
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(-10*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(0*const(size.yscale)),ceil(50*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 636
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(-10*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(0*const(size.yscale)),ceil(50*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = stateno = [1120,1123]
trigger1 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 640
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(30*const(size.xscale)),ceil(120*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-80*const(size.yscale)),ceil(-20*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel x > 0
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 641
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(0*const(size.xscale)),ceil(50*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(-90*const(size.yscale)),ceil(-40*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType != L
triggerall = vel x > 0
triggerall = vel y > 0
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 646
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(60*const(size.xscale)),ceil(90*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(0*const(size.yscale)),ceil(80*const(size.yscale))]
triggerall = EnemyNear(var(58)),StateType = S || EnemyNear(var(58)),StateType = C
triggerall = random < 200 
trigger1 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 647
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = statetype = A
triggerall = P2BodyDist X = [ceil(30*const(size.xscale)),ceil(60*const(size.xscale))]
triggerall = P2BodyDist Y = [ceil(0*const(size.yscale)),ceil(80*const(size.yscale))]
triggerall = EnemyNear(var(58)),MoveType = I
triggerall = EnemyNear(var(58)),StateType = S || EnemyNear(var(58)),StateType = C
triggerall = random < 200 
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, ヨガタワー]
type = ChangeState
value = 215
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X < ceil(50*const(size.xscale))
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType = C
triggerall = EnemyNear(var(58)),MoveType = A
triggerall = random < 500
trigger1 = ctrl||stateno=20

[State -1, 挑発]
type = ChangeState
value = 195+random%2
triggerall = var(59) > 0 && RoundState = 2 && Alive
triggerall = P2BodyDist X > ceil(200*const(size.xscale))
triggerall = statetype != A
triggerall = EnemyNear(var(58)),StateType = L
triggerall = EnemyNear(var(58)),MoveType != A
triggerall = random < 50
trigger1 = ctrl||stateno=20
;--------------------------------
[Statedef 10000]
ctrl=0

[State 10000,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 10000,プレイヤー判定]
type=varset
trigger1=command="up"&&root,command="up"
trigger2=command="down"&&root,command="down"
trigger3=command="back"&&root,command="back"
trigger4=command="fwd"&&root,command="fwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
trigger11=command="start"&&root,command="start"
var(59)=-1

[State 10000,立ったら消失]
Type = DestroySelf
triggerAll = isHelper
Trigger1 = root,var(59)||var(59)=-1
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
trigger12=command="start"&&root,command="start"

[State 10000,ﾌﾗｸﾞON]
type=varset
triggerall=var(59)!=-1
trigger1=root,command="up"
trigger2=root,command="down"
trigger3=root,command="back"
trigger4=root,command="fwd"
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
trigger11=root,command="start"
var(59)=1