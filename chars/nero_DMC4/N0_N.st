;===========================================================================
; 通常攻撃技
;===========================================================================
;---------------------------------------------------------------------------
;BR単発
[Statedef 200]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = 22
sprpriority = 0
facep2 = 1

[State 200, 幅]
type    = width
trigger1 = AnimElemTime(1) >= 0
player = 25,20

[State 200, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 200, アニメ]
type = ChangeAnim
trigger1 = time = 0
value = 200
elem = ifelse((anim = 200 || anim = 1200), 2, 1)

[State 200, 音]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200, 0

[State 200, エフェクト]
type = Explod
trigger1 = animelem = 2
anim = 201
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 200, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = ceil(fvar(0)*30)
animtype = Light
guardflag = MA
priority = 3, Hit
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = 0
sparkxy = -10, -76
hitsound = S0, 5
guardsound = 6, 0
ground.type = High
air.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.slidetime = 12
guard.hittime = 12
air.hittime = 13
ground.velocity = -3
guard.velocity = -6
airguard.velocity = -1.9,-.8
air.velocity = -1,-2

[State 200, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

;[State 200, 技補正]
;type = varset
;trigger1 = movehit
;fvar(2) = fvar(2)*0.95
;ignorehitpause=1
;persistent = 0

[State 200, コントロール]
type = CtrlSet
trigger1 = animelemtime(5) = 0
value = 1

[State 200, ステート変更]
type = ChangeState
trigger1 = AnimElem = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;レッドクイーンコンボＡ１
[Statedef 210]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 0
poweradd= 60

[State 210, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 210, 移動]
type = posadd
trigger1 = animelemtime(4) = 0
x = 5

[State 210, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
x = 3

[State 210, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 2
anim = 211
id = 211
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 210, エフェクト]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 212
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 210, 音]
type = PlaySnd
trigger1 = animelem = 1
value = 210, ifelse(random < 500, 0, 1+random%3)
channel = 0

[State 210, 音]
type = PlaySnd
trigger1 = animelem = 13
value = 210, 4

[State 210, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*80)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6016
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 19
guard.hittime = 19
ground.velocity = -3
guard.velocity = -4
air.velocity = -2.5,-4

[State 210, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 210, コントロール]
type = CtrlSet
trigger1 = animelemtime(12) = 0
value = 1

[State 210, ステート変更]
type = ChangeState
value = 215
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(8) >= 0 ;&& animelemtime(16) < 0

[State 210, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;レッドクイーンコンボＡ２
[Statedef 215]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 215
sprpriority = 0
poweradd= 45

[State 215, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 215, 移動]
type = posadd
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
x = 2

[State 215, 移動]
type = posadd
trigger1 = animelemtime(11) >= 0
trigger1 = time%2
x = 1

[State 215, エフェクト]
type = Explod
trigger1 = animelemtime(3) = 1
anim = 216
id = 216
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 215, エフェクト]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 217
id = 217
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 215, エフェクト]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 218
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 215, 音]
type = PlaySnd
trigger1 = animelem = 1
value = 210, ifelse(random < 500, 0, 1+random%3)

[State 215, 音]
type = PlaySnd
trigger1 = animelem = 11
value = 212, 0

[State 215, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*60)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6017
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -3
guard.velocity = -4
air.velocity = -2.5,-4

[State 215, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 215, ステート変更]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holdfwd"
trigger1 = movecontact
trigger2 = animelemtime(8) >= 2 ;&& animelemtime(14) < 0

[State 215, ステート変更]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = movecontact
trigger2 = animelemtime(8) >= 2 ;&& animelemtime(14) < 0

[State 215, コントロール]
type = CtrlSet
trigger1 = animelemtime(10) = 0
value = 1

[State 215, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;レッドクイーンコンボＡ３
[Statedef 220]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 0
poweradd= 30

[State 220, 移動]
type = posadd
trigger1 = animelemtime(1) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(9) >= 0 && animelemtime(10) < 0
x = 1

[State 220, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 && animelemtime(9) < 0
x = 2

[State 220, エフェクト]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 221
id = 221
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 220, エフェクト]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 222
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 220, 音]
type = PlaySnd
trigger1 = animelem = 2
value = 220, random%4 ;ifelse(random < 500, 0, 1+random%3)

[State 220, 音]
type = PlaySnd
trigger1 = animelem = 9
value = 210, 4

[State 220, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)+3), ifelse(var(59),var(5),var(6)+3)
sparkno = S6000
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 19
guard.hittime = 19
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 220, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 220, コントロール]
type = CtrlSet
trigger1 = animelemtime(10) = 0
value = 1

[State 220, ステート変更]
type = ChangeState
value = 225
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(7) >= 2 ;&& animelemtime(14) < 0

[State 220, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;レッドクイーンコンボＡ４
[Statedef 225]
type    = S
movetype= A
physics = S
poweradd= 75
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 0

[State 225, 移動]
type = posadd
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
x = 1

[State 225, 移動]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
x = 2

[State 225, エフェクト]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 226
id = 226
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 225, 音]
type = PlaySnd
trigger1 = animelem = 4
value = 225, 1+random%2

[State 225, 音]
type = PlaySnd
trigger1 = animelem = 17
value = 210, 4

[State 225, 揺れ]
type = envshake
trigger1 = animelemtime(6) = 0
time = 10

[State 225, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = ceil(fvar(0)*100),20
guardflag = MA
pausetime = 3,3
sparkno = S6016
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 24
guard.hittime = 24
ground.velocity = -4,-6
guard.velocity = -4
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 25
guard.kill = 0

[State 225, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 225, コントロール]
type = CtrlSet
trigger1 = animelemtime(15) = 0
value = 1

[State 225, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
;スナッチ
[Statedef 230]
type    = S
movetype= A
physics = S
poweradd= 75
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 0

[State 230, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 230, エフェクト]
type = RemoveExplod
trigger1 = time = 0
ID = 800

[State 230, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 2
value = 230, random%4

[State 230, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*50)
guardflag = MA
pausetime = 1,1
sparkno = 0
sparkxy = -10,-37
hitsound = S800,4
guardsound = 6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
guard.slidetime = 15
guard.hittime = 15
air.hittime  = 30
ground.velocity = 5.5,-5
guard.velocity = -5
air.velocity = 4.5,-4
airguard.velocity = -2.5
yaccel = 0.4
guard.dist = 210
fall = 1
fall.recovertime = 30
kill = 0
id = 230

[State 230, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 230, スナッチDB]
type = Explod
trigger1 = time = 0
anim = 231
id = 231
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 2
removeongethit = 1

[State 230, エフェクト手前]
type = Explod
trigger1 = time = 0
anim = 232
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 230, エフェクト奥]
type = Explod
trigger1 = AnimElem = 8
anim = 233
pos = 0,0
postype = p1
bindtime = 100
scale = 0.5,0.5
sprpriority = -1
removeongethit = 1

[State 230, コントロール]
type = CtrlSet
trigger1 = animelemtime(15) = 0
value = 1

[State 230, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
poweradd= 75
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 0

[State 240, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 240, 移動]
type = posadd
trigger1 = animelemtime(4) = 0
x = 5

[State 240, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
x = 3

[State 240, エフェクト]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 226
id = 226
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 240, 音]
type = PlaySnd
trigger1 = animelem = 4
value = 225, 1+random%2

[State 240, 音]
type = PlaySnd
trigger1 = animelem = 14
value = 210,4
channel = 1

[State 240, 揺れ]
type = envshake
trigger1 = animelemtime(6) = 0
time = 10

[State 240, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*100),20
guardflag = MA
pausetime = 3,3
sparkno = S6016
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 24
guard.hittime = 24
ground.velocity = -4,-6
guard.velocity = -4
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 25
guard.kill = 1

[State 240, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=0
persistent = 0

[State 240, ステート変更]
type = ChangeState
value = 245
triggerall = command = "z"
trigger1 = movecontact
trigger2 = animelemtime(14) >= 0 ;&& animelemtime(14) < 0

[State 240, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 245]
type    = S
movetype= A
physics = S
poweradd= 75
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 0

[State 245, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 245, 移動]
type = posadd
trigger1 = animelemtime(4) = 0
x = 5

[State 245, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
x = 3

[State 245, エフェクト]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 226
id = 226
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 245, 音]
type = PlaySnd
trigger1 = animelem = 4
value = 225, 1+random%2

[State 245, 音]
type = PlaySnd
trigger1 = animelem = 14
value = 210,4
channel = 1

[State 245, 揺れ]
type = envshake
trigger1 = animelemtime(6) = 0
time = 10

[State 245, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*100),20
guardflag = MA
pausetime = 3,3
sparkno = S6016
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 24
guard.hittime = 24
ground.velocity = -4,-6
guard.velocity = -4
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 25
guard.kill = 1

[State 245, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=0
persistent = 0

[State 245, ステート変更]
type = ChangeState
value = 250
triggerall = command = "z"
trigger1 = movecontact
trigger2 = animelemtime(14) >= 0 ;&& animelemtime(14) < 0

[State 245, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 0
poweradd= 45

[State 250, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 250, 移動]
type = posadd
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
x = 2

[State 250, 移動]
type = posadd
trigger1 = animelemtime(11) >= 0
trigger1 = time%2
x = 1

[State 250, エフェクト]
type = Explod
trigger1 = animelemtime(11) = 1
anim = 216
id = 216
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 250, エフェクト]
type = Explod
trigger1 = animelemtime(11) = 0
anim = 217
id = 217
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 250, エフェクト]
type = Explod
trigger1 = animelemtime(11) = 0
anim = 218
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 250, 音]
type = PlaySnd
trigger1 = animelem = 1
value = 210, ifelse(random < 500, 0, 1+random%3)

[State 250, 音]
type = PlaySnd
trigger1 = animelem = 18
value = 212, 0

[State 250, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*60)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6017
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -3
guard.velocity = -4
air.velocity = -2.5,-4

[State 250, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 250, ステート変更]
type = ChangeState
value = 255
triggerall = command = "z"
trigger1 = movecontact
trigger2 = animelemtime(8) >= 2 ;&& animelemtime(14) < 0

[State 250, コントロール]
type = CtrlSet
trigger1 = animelemtime(10) = 0
value = 1

[State 250, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ハイローラー
[Statedef 255]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 255
velset = 0,0
sprpriority = 0
poweradd= 67

[State 255, 幅]
type    = width
trigger1 = AnimElemTime(1) >= 0
player = 25,20

[State 255, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 255, キャンセル版]
type = changeanim
trigger1 = prevstateno = [200,230]
trigger1 = time = 0
value = 255
elem = 3

[State 255, 移動]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(9) >= 0 && animelemtime(12) < 0
x = 1

[State 255, 移動]
type = posadd
trigger1 = animelemtime(5) >= 0 && animelemtime(9) < 0
x = 2

[State 255, エフェクト]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 411
id = 411
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 255, エフェクト]
type = Explodbindtime
trigger1 = movecontact
id = 411
time = 2

[State 255, エフェクト]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 412
id = 412
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 255, エフェクト]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 413
id = 413
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 255, 音]
type = PlaySnd
trigger1 = animelem = 2
value = 220, random%4 ;ifelse(random < 500, 0, 1+random%3)

[State 255, むてき]
type = nothitby
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
value = A,NA,SA,NT,ST,NP,SP

[State 255, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = C, SA
animtype  = hard
damage    = ceil(fvar(0)*90),20
guardflag = MA
priority = 4,hit
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6003
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 24
guard.hittime = 24
air.hittime = 25
ground.velocity = -1.5,-8
guard.velocity = -8
air.velocity = -2,-8
guard.kill = 0

[State 255, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 255, コンボ]
Type     = varset
TriggerAll=var(59)&&RoundState = 2
trigger1 = movehit
var(9) = 255
ignorehitpause = 1
persistent = 0

[State 255, ステート変更]
type = ChangeState
trigger1 = command = "holdup" && movehit
value = 40
ctrl = 1

[State 255, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;レッドクイーンコンボＣ１
[Statedef 260]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 260
sprpriority = 0
poweradd= 30

[State 260, 移動]
type = posadd
trigger1 = animelemtime(2) >= 4 & animelemtime(5) < 0
x = 2

[State 260, 移動]
type = posadd
trigger1 = animelemtime(5) >= 0 & animelemtime(6) < 0
x = 7

[State 260, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 & animelemtime(7) < 0
x = 10

[State 260, 移動]
type = posadd
trigger1 = animelemtime(7) >= 0 & animelemtime(8) < 0
x = 4

[State 260, 移動]
type = posadd
trigger1 = animelemtime(8) >= 0 & animelemtime(9) < 3
trigger1 = time%2
x = 1

[State 260, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 261
id = 261
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 260, E2]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 262
id = 262
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 260, E3]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 263
id = 263
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 260, 音]
type = PlaySnd
trigger1 = animelem = 2
value = 210, 2 ;ifelse(random < 500, 0, 1+random%3)

[State 260, 音]
type = PlaySnd
trigger1 = animelem = 14
value = 210,4
channel = 1

[State 260, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = 5,5
sparkno = S6002
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 260, ヒット定義]
type = HitDef
trigger1 = animelemtime(8) = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6003
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 260, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 260, コントロール]
type = CtrlSet
trigger1 = animelemtime(12) = 0
value = 1

[State 260, ステート変更]
type = ChangeState
value = 265
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(14) >= 0 ;&& animelemtime(14) < 0

[State 260, ステート変更]
type = ChangeState
trigger1 = AnimTime = 3
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 265]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 265
sprpriority = 0
poweradd= 30

[State 265, 移動]
type = posadd
trigger1 = animelemtime(2) >= 4 & animelemtime(5) < 0
x = 2

[State 265, 移動]
type = posadd
trigger1 = animelemtime(5) >= 0 & animelemtime(6) < 0
x = 7

[State 265, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 & animelemtime(7) < 0
x = 10

[State 265, 移動]
type = posadd
trigger1 = animelemtime(7) >= 0 & animelemtime(8) < 0
x = 4

[State 265, 移動]
type = posadd
trigger1 = animelemtime(8) >= 0 & animelemtime(9) < 3
trigger1 = time%2
x = 1

[State 265, エフェクト]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 301
id = 301
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 265, 音]
type = PlaySnd
trigger1 = animelem = 5
value = 220, 1 ;ifelse(random < 500, 0, 1+random%3)

[State 265, 音]
type = PlaySnd
trigger1 = animelem = 17
value = 210,4
channel = 1

[State 265, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = 5,5
sparkno = S6002
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 265, ヒット定義]
type = HitDef
trigger1 = animelemtime(8) = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6003
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 265, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 265, コントロール]
type = CtrlSet
trigger1 = animelemtime(12) = 0
value = 1

[State 265, ステート変更]
type = ChangeState
value = 270
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(7) >= 0 ;&& animelemtime(14) < 0

[State 265, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 270]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 270
sprpriority = 0
poweradd= 30

[State 270, 移動]
type = posadd
trigger1 = animelemtime(2) >= 4 & animelemtime(5) < 0
x = 2

[State 270, 移動]
type = posadd
trigger1 = animelemtime(5) >= 0 & animelemtime(6) < 0
x = 7

[State 270, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 & animelemtime(7) < 0
x = 10

[State 270, 移動]
type = posadd
trigger1 = animelemtime(7) >= 0 & animelemtime(8) < 0
x = 4

[State 270, 移動]
type = posadd
trigger1 = animelemtime(8) >= 0 & animelemtime(9) < 3
trigger1 = time%2
x = 1

[State 270, エフェクト]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 271
id = 271
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 270, 音]
type = PlaySnd
trigger1 = animelem = 5
value = 210, 2 ;ifelse(random < 500, 0, 1+random%3)

[State 270, 音]
type = PlaySnd
trigger1 = animelem = 17
value = 210,4
channel = 1

[State 270, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = 5,5
sparkno = S6002
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 270, ヒット定義]
type = HitDef
trigger1 = animelemtime(8) = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6003
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 270, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 270, コントロール]
type = CtrlSet
trigger1 = animelemtime(12) = 0
value = 1

[State 270, ステート変更]
type = ChangeState
value = 275
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(7) >= 0 ;&& animelemtime(14) < 0

[State 270, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 275]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 275
sprpriority = 0
poweradd= 30

[State 275, 移動]
type = posadd
trigger1 = animelemtime(2) >= 4 & animelemtime(5) < 0
x = 2

[State 275, 移動]
type = posadd
trigger1 = animelemtime(5) >= 0 & animelemtime(6) < 0
x = 7

[State 275, 移動]
type = posadd
trigger1 = animelemtime(6) >= 0 & animelemtime(7) < 0
x = 10

[State 275, 移動]
type = posadd
trigger1 = animelemtime(7) >= 0 & animelemtime(8) < 0
x = 4

[State 275, 移動]
type = posadd
trigger1 = animelemtime(8) >= 0 & animelemtime(9) < 3
trigger1 = time%2
x = 1

[State 275, エフェクト]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 642
id = 642
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 275, 音]
type = PlaySnd
trigger1 = animelem = 7
value = 620, 0 ;ifelse(random < 500, 0, 1+random%3)

[State 275, 音]
type = PlaySnd
trigger1 = animelem = 19
value = 210,4
channel = 1

[State 275, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = 5,5
sparkno = S6002
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 275, ヒット定義]
type = HitDef
trigger1 = animelemtime(8) = 0
attr = S, NA
animtype  = Medium
damage    = ceil(fvar(0)*40)
guardflag = MA
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6003
sparkxy = -10,-70
hitsound   = S0,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -4
air.velocity = -2.5,-4

[State 275, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 275, コントロール]
type = CtrlSet
trigger1 = animelemtime(12) = 0
value = 1

[State 275, ステート変更]
type = null ;ChangeState
value = 275
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(7) >= 0 ;&& animelemtime(14) < 0

[State 275, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ストリーク
[Statedef 300]
type    = S
movetype= A
physics = S
anim = 300
poweradd= 90
ctrl = 0
velset = 0,0
sprpriority = 0

[State 300, 速度]
type = velset
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
x = 12

[State 300, エフェクト]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 301
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1

[State 300, 音]
type = PlaySnd
trigger1 = anim = 300
trigger1 = animelemtime(1) = 0
value = 300, 0

[State 300, 音]
type = PlaySnd
trigger1 = animelemtime(6) = 0
value = 300, 1+random%4
channel = 0

[State 300, 音]
type = PlaySnd
trigger1 = animelemtime(20) = 0
value = 300, 5

[State 300, 揺れ]
type = envshake
trigger1 = animelemtime(8) = 0
time = 10

[State 300, むてき]
type = nothitby
trigger1 = animelemtime(3) >= 0 && animelemtime(8) < 0
value = ,NT,ST,NP,SP

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage    = ceil(fvar(0)*120),20
guardflag = MA
pausetime = 2,2
sparkno = S6001
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -4,-6
guard.velocity = -10
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 25
id = 300
guard.kill = 0

[State 300, 衝撃波]
type = projectile
trigger1 = animelemtime(9) = 0
projanim = 302
projremovetime = 10
postype = p1
attr = S, SP
animtype  = Medium
damage    = ceil(fvar(0)*120)
guardflag = MA
pausetime = 2,2
sparkno = S(6002+random%2)
sparkxy = -10,-70
;hitsound   = 5,2
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 24
guard.hittime = 24
ground.velocity = -4,-6
guard.velocity = -10
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 25
guard.dist = 260
nochainid = 300

[State 300, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 300, コントロール]
type = CtrlSet
trigger1 = animelemtime(17) = 0
value = 1

[State 300, ステート変更]
type = ChangeState
trigger1 = anim = 300
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;シャッフル
[Statedef 310]
type    = S
movetype= A
physics = S
anim = 310
poweradd= 112
ctrl = 0
velset = 0,0
sprpriority = 0

[State 310, 速度]
type = velset
trigger1 = anim = 310
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
x = -17

[State 310, 速度]
type = velset
trigger1 = animelemtime(7) = 0
x = 0

[State 310, 速度]
type = velset
trigger1 = animelemtime(7) > 0 && animelemtime(9) < 0
x = 7

[State 310, 移動]
type = posadd
trigger1 = animelemtime(9) >= 0 && animelemtime(20) < 0
x = 2

[State 310, 移動]
type = posadd
trigger1 = animelemtime(20) >= 0
trigger1 = time%3
x = 2

[State 310, エフェクト光]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 311
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 310, エフェクト残像]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 312
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 310, 音]
type = PlaySnd
trigger1 = anim = 310
trigger1 = animelemtime(1) = 0
value = 310, 0

[State 310, 音]
type = PlaySnd
trigger1 = animelemtime(7) = 0
value = 310, 1
channel = 0

[State 310, 音]
type = PlaySnd
trigger1 = animelemtime(26) = 0
value = 310, 5

[State 310, 揺れ]
type = envshake
trigger1 = animelemtime(9) = 0
time = 10

[State 310, むてき]
type = nothitby
trigger1 = anim = 310
trigger1 = animelemtime(1) >= 0 && animelemtime(7) < 0
value = ,NA,SA,NP,SP

[State 310, むてき]
type = nothitby
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
value = ,NT,ST,NP,SP

[State 310, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = hard
damage    = ceil(fvar(0)*150),20
guardflag = MA
pausetime = 2,2
sparkno = S6002
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -5,-7
guard.velocity = -12
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 40
guard.kill = 0

[State 310, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 310, コントロール]
type = CtrlSet
trigger1 = animelemtime(25) = 0
value = 1

[State 310, ステート変更]
type = ChangeState
trigger1 = anim = 310
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;BR単発
[Statedef 400]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 400
velset = 0,0
poweradd = 22
sprpriority = 0
facep2 = 1

[State 400, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 400, 音]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200, 0

[State 400, エフェクト]
type = Explod
trigger1 = animelem = 2
anim = 201
pos = -20,37
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 400, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = ceil(fvar(0)*30)
priority  = 3
animtype  = Light
guardflag = M
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = 0
sparkxy = -10,-42
hitsound   = S0,5
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2
guard.velocity = -6
air.velocity = -1,-2

[State 400, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ハイローラー
[Statedef 410]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 410
velset = 0,0
sprpriority = 0
poweradd= 67

[State 410, 幅]
type    = width
trigger1 = AnimElemTime(1) >= 0
player = 25,20

[State 410, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 410, キャンセル版]
type = changeanim
trigger1 = prevstateno = [200,230]
trigger1 = time = 0
value = 410
elem = 3

[State 410, 移動]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(9) >= 0 && animelemtime(12) < 0
x = 1

[State 410, 移動]
type = posadd
trigger1 = animelemtime(5) >= 0 && animelemtime(9) < 0
x = 2

[State 410, エフェクト]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 411
id = 411
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 410, エフェクト]
type = Explodbindtime
trigger1 = movecontact
id = 411
time = 2

[State 410, エフェクト]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 412
id = 412
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 410, エフェクト]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 413
id = 413
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 410, 音]
type = PlaySnd
trigger1 = Time = 0
value = 410, random%4
channel = 0

[State 410, むてき]
type = nothitby
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
value = A,NA,SA,NT,ST,NP,SP

[State 410, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = C, SA
animtype  = hard
damage    = ceil(fvar(0)*90),20
guardflag = MA
priority = 4,hit
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6003
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 24
guard.hittime = 24
air.hittime = 25
ground.velocity = -1.5,-8
guard.velocity = -8
air.velocity = -2,-8
guard.kill = 0

[State 410, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 410, コンボ]
Type     = varset
TriggerAll=var(59)&&RoundState = 2
trigger1 = movehit
var(9) = 410
ignorehitpause = 1
persistent = 0

[State 410, ステート変更]
type = ChangeState
trigger1 = command = "holdup" && movehit
value = 40
ctrl = 1

[State 410, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱キック
[Statedef 420]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 420
sprpriority = 1
poweradd = 22

[State 420, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 420, 音]
type = PlaySnd
trigger1 = Time = 0
value = 0, 15

[State 420, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = ceil(fvar(0)*30)
animtype  = Light
guardflag = L
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = 0
sparkxy = -10,-8
hitsound   = S0,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -4
guard.velocity = -6
air.velocity = -5,-4
down.velocity = -5,0
down.hittime = 20

[State 420, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 420, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ強キック（足払い攻撃）
[Statedef 440]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 440, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = ceil(fvar(0)*72)
hitflag = MAFD
guardflag = L
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = 1
sparkxy = -5,-10
hitsound   = 5,2
guardsound = 6,0
ground.type = Trip ;この攻撃を食らうと相手は吹っ飛べば「転ぶアニメ」になる
ground.slidetime = 10
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 440, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;===========================================================================
;---------------------------------------------------------------------------
;空シングルショット
[Statedef 600]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 600
sprpriority = 0
facep2   = 1
poweradd = 22

[State 600, 音]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200, 0

[State 600, エフェクト]
type = Explod
trigger1 = animelem = 3
anim = 601
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 600, 速度]
type = Velset
trigger1 = time = 1
y = -4

[State 600, 速度]
type = VelMul
trigger1 = time = 1
x = 0.8

[State 600, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = ceil(fvar(0)*30)
guardflag = HA
priority = 3
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = 0
sparkxy = -10,-58
hitsound   = S0,5
guardsound = 6,0
animtype = light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
guard.slidetime = 9
guard.hittime = 9
air.hittime = 20
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, コンボ補正]
type = null;varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 600, コントロール]
type = CtrlSet
trigger1 = animelemtime(6) = 2
value = 1

;---------------------------------------------------------------------------
;RQエアコンボ１
[Statedef 610]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 610
sprpriority = 0
facep2   = 1
poweradd= 75

[State 610, 速度]
type = Velset
trigger1 = animelemtime(1) = 0
trigger1 = vel Y >= 0
y = -4.5

[State 610, 速度]
type = Velmul
trigger1 = animelemtime(2) >= 0 && animelemtime(5) < 0
x = .98
y = .8

[State 610, エフェクト]
type = Explod
trigger1 = animelemtime(2) = 1
anim = 611
id = 611
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 610, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 612
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1

[State 610, 音]
type = PlaySnd
trigger1 = animelem = 2
value = 210, ifelse(random < 500, 0, 1+random%3)
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = ceil(fvar(0)*80)
guardflag = HA
priority = 4
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6001
sparkxy = -10,-55
hitsound   = S0,0
;guardsound = 6,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
air.hittime = 20
ground.velocity = -5
air.velocity = -2,-4

[State 610, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 610, ステート変更]
type = ChangeState
value = 615
triggerall = !var(59)
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(6) >= 0 ;&& animelemtime(16) < 0

[State 610, ステート変更]
type = ChangeState
triggerall = command = "holdup" && var(4)
trigger1 = movehit
;trigger2 = animelemtime(8) <= 0
value = 45
ctrl = 1

;---------------------------------------------------------------------------
;RQエアコンボ２
[Statedef 615]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 615
sprpriority = 0
facep2   = 1
poweradd= 60

[State 615, 速度]
type = Velset
trigger1 = animelemtime(1) = 0
y = -4.5

[State 615, 速度]
type = Velmul
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
y = .5

[State 615, エフェクト]
type = Explod
trigger1 = animelemtime(2) = 1
anim = 616
id = 616
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 615, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 617
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1

[State 615, 音]
type = PlaySnd
trigger1 = animelem = 2
value = 210, ifelse(random < 500, 0, 1+random%3)
;channel = 0

[State 615, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = ceil(fvar(0)*60)
guardflag = HA
priority = 4
pausetime = ifelse(var(59),var(5),var(6)), ifelse(var(59),var(5),var(6))
sparkno = S6002
sparkxy = -10,-55
hitsound   = S0,0
;guardsound = 6,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.slidetime = 14
guard.hittime = 14
air.hittime = 20
ground.velocity = -5
air.velocity = -2,-4

[State 615, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 615, ルーレットスピン]
type = ChangeState
value = 625
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = movecontact
trigger2 = animelemtime(6) >= 0 ;&& animelemtime(16) < 0

[State 615, ３]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "y"
trigger1 = movecontact
trigger2 = animelemtime(6) >= 0 ;&& animelemtime(16) < 0

[State 615, ステート変更]
type = ChangeState
triggerall = command = "holdup" && var(4)
trigger1 = movehit
;trigger2 = animelemtime(9) <= 0
value = 45
ctrl = 1

;---------------------------------------------------------------------------
;RQエアコンボ３
[Statedef 620]
type    = A
movetype= A
physics = A
poweradd= 90
ctrl = 0
anim = 620
sprpriority = 0
facep2   = 1

[State 620, 速度]
type = Velset
trigger1 = animelemtime(1) >= 0 && animelemtime(3) < 0
y = 0

[State 620, 速度]
type = Velset
trigger1 = animelemtime(3) = 0
y = -5

[State 620, 速度]
type = Velmul
trigger1 = animelemtime(3) >= 1 && animelemtime(5) < 0
y = .5

[State 620, エフェクト]
type = Explod
trigger1 = animelemtime(2) = 1
anim = 621
id = 621
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 620, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 622
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1

[State 620, 音]
type = PlaySnd
trigger1 = animelem = 2
value = 620, 0;ifelse(random < 500, 0, 1+random%3)
channel = 0

[State 620, 揺れ]
type = envshake
trigger1 = animelemtime(4) = 0
time = 3

[State 620, 幅]
type = width
trigger1 = animelemtime(1) >= 0 && animelemtime(4) < 0
player = 24,20

[State 620, 幅]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
player = 28,20

[State 620, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = ceil(fvar(0)*100),20
guardflag = HA
priority = 4
pausetime = 2,2
sparkno = S6015
sparkxy = -10,-55
hitsound   = S0,1
;guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 19
guard.hittime = 19
air.hittime = 20
ground.velocity = -5
air.velocity = -5,7
fall = 1
fall.recovertime = 40
guard.kill = 0

[State 620, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 620, ステート変更]
type = ChangeState
triggerall = command = "holdup" && var(4)
trigger1 = movehit
;trigger2 = animelemtime(8) <= 0
value = 45
ctrl = 1

;---------------------------------------------------------------------------
;ルーレットスピン
[Statedef 625]
type    = A
movetype= A
physics = N
poweradd= 202
ctrl = 0
anim = 625
sprpriority = 0

[State 625, 速度]
type = Velmul
trigger1 = animelemtime(1) >= 0 && animelemtime(3) < 2
x = 0.7
y = 0.7

[State 625, 速度]
type = Velset
trigger1 = animelemtime(3) = 2
x = 0
y = -6

[State 625, 速度]
type = Veladd
trigger1 = animelemtime(1) >= 0 && animelemtime(9) < 0
y = 0.15

[State 625, 速度]
type = statetypeset
trigger1 = animelemtime(9) = 0
physics = A

[State 625, エフェクト]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 626
id = 626
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 625, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 627
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 2

[State 625, 音]
type = PlaySnd
trigger1 = animelemtime(3) = 0
value = 625, 1+random%3
channel = 0

[State 625, 音]
type = PlaySnd
trigger1 = animelemtime(12) = 0
value = 625, 4

[State 625, 揺れ]
type = null;envshake
trigger1 = animelemtime(4) = 0
time = 3

[State 625, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = ceil(fvar(0)*90)
guardflag = HA
priority = 4
pausetime = 2,2
sparkno = S6002
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 19
guard.hittime = 19
air.hittime = 20
ground.velocity = -2,-8
air.velocity = -2,-8
fall = 1
fall.recovertime = 30
guard.kill = 0
id = 625

[State 625, 衝撃波]
type = projectile
trigger1 = animelemtime(6) = 0
projanim = 628
projremovetime = 12
postype = p1
projhits = 2
projmisstime = 6
attr = A, SP
animtype  = Medium
damage    = ceil(fvar(0)*60)
guardflag = HA
priority = 4
pausetime = 2,2
sparkno = S(6001+2*random%2)
sparkxy = -10,-55
;hitsound   = 5,3
;guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 19
guard.hittime = 19
air.hittime = 20
ground.velocity = -2,-8
air.velocity = -2,-8
fall = 1
fall.recovertime = 30
guard.kill = 0
id = 625

[State 625, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 625, コンボ]
Type     = varset
TriggerAll=var(59)&&RoundState = 2
trigger1 = movehit
var(9) = 625
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
;スプリット
[Statedef 630]
type    = A
movetype= A
physics = N
poweradd= 60
ctrl = 0
anim = 630
sprpriority = 0
velset = 0,0
facep2 = 1

[State 630, 速度]
type = Velset
trigger1 = animelemtime(3) = 2
y = 4

[State 630, 速度]
type = Veladd
trigger1 = Vel Y >= 4
y = 0.9

[State 630, エフェクト]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 631
id = 631
pos = 0,0
postype = p1
bindtime = -1
scale = 0.5,0.5
sprpriority = 1
removeongethit = 1

[State 630, 音]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = 630, 1
channel = 0

[State 630, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = ceil(fvar(0)*40)
guardflag = MA
hitflag = MAFD
priority = 4
pausetime = 2,2
sparkno = S6014
sparkxy = -10,-55
hitsound   = S0,0
;guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 19
guard.hittime = 19
air.hittime = 20
ground.velocity = -1,8
guard.velocity = -3
air.velocity = -1,8
fall = 1
fall.recovertime = 30
guard.kill = 0

[State 630, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 630, ステート変更]
type = ChangeState
trigger1 = Pos Y > 10
value = 632
ctrl = 1

;---------------------------------------------------------------------------
;スプリット着地
[Statedef 632]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 632
sprpriority = 0
velset = 0,0
poweradd= 90

[State 632, 位置]
type = posset
trigger1 = time = 0
y = 0

[State 632, エフェクト]
type = Explod
trigger1 = time = 0
anim = 633
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 632, 音]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = 632, 0

[State 632, 揺れ]
type = envshake
trigger1 = time = 0
time = 12

[State 632, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = ceil(fvar(0)*60)
guardflag = MA
hitflag = MAFD
priority = 4
pausetime = 2,2
sparkno = S6015
sparkxy = -10,-55
hitsound   = S0,12
;guardsound = 6,0
animtype = Med
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
guard.slidetime = 20
guard.hittime = 20
air.hittime = 25
ground.velocity = -5,-5
guard.velocity = -10
air.velocity = -5,-5
fall = 1
fall.recovertime = 30
id = 632
nochainid = 632
guard.kill = 0

[State 632, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 632, コントロール]
type = CtrlSet
trigger1 = animelemtime(11) = 0
value = 1

[State 632, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;キャリバー
[Statedef 640]
type    = A
movetype= A
physics = A
anim = 640
poweradd= 90
velset = 8,0
ctrl = 0
sprpriority = 0

[State 640, 速度]
type = veladd
trigger1 = animelemtime(1) >= 0 && animelemtime(3) < 0
y = -0.6

[State 640, 速度]
type = velAdd
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
y = -1

[State 640, 速度]
type = velAdd
trigger1 = animelemtime(5) = 0
y = -6

[State 640, 速度]
type = velAdd
trigger1 = animelemtime(5) > 0 && animelemtime(13) < 0
y = -0.5

[State 640, 速度]
type = veladd
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
x = -0.3

[State 640, 速度]
type = veladd
trigger1 = animelemtime(6) >= 0 && animelemtime(10) < 0
x = -0.5

[State 640, エフェクト]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 641
pos = 0,0
postype = p1
bindtime = 1
scale = 0.5,0.5
sprpriority = 1

[State 640, エフェクト]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 642
pos = 0,0
postype = p1
bindtime = 10
scale = 0.5,0.5
sprpriority = 1

[State 640, 音]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = 640, 0

[State 640, 音]
type = PlaySnd
trigger1 = animelemtime(5) = 0
value = 640, 1
channel = 0

[State 640, 揺れ]
type = envshake
trigger1 = animelemtime(6) = 0
time = 10

[State 640, むてき]
type = nothitby
trigger1 = animelemtime(1) >= 0 && animelemtime(6) < 0
value = ,NT,ST,NP,SP

[State 640, 残像]
type = afterimage
trigger1 = animelemtime(1) = 0
time = 20
length = 7
palccontrast = 150,150,150

[State 640, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype  = Medium
damage    = ceil(fvar(0)*120),20
guardflag = HA
pausetime = 2,2
sparkno = S6001
sparkxy = -10,-70
hitsound   = S0,1
;guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -4,-6
guard.velocity = -10
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 20
guard.kill = 0
id = 640

[State 640, 衝撃波]
type = projectile
trigger1 = animelemtime(7) = 0
projanim = 643
projremovetime = 10
postype = p1
attr = A, SP
animtype  = Medium
damage    = ceil(fvar(0)*120)
guardflag = MA
pausetime = 2,2
;sparkno = S(6002+random%2)
sparkxy = -10,-70
;hitsound   = 5,2
;guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -4,-6
guard.velocity = -10
air.velocity = -2.5,-4
fall = 1
fall.recovertime = 20
guard.dist = 260
nochainid = 640

[State 640, コンボ補正]
type = varset
trigger1 = movehit
fvar(0) = fvar(0)*var(3)*0.01
ignorehitpause=1
persistent = 0

[State 640, コントロール]
type = null;ctrlset
trigger1 = animelem = 10
value = 1

[State 640, ステート変更]
type = null;ChangeState
trigger1 = !var(59)
trigger1 = command = "holdup" && movecontact
trigger1 = var(4)
value = 45
ctrl = 1
