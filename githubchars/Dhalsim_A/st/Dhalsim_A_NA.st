;立ち弱パンチ
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 0
sprpriority = 1
velset = 0,0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
trigger1 = var(30) = 1
trigger1 = AnimElem = 3
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 30, 0
animtype = Light
getpower = 20,0
givepower = 20,0
hitflag = MAF
guardflag = M
priority = 3, Hit
pausetime = 10, 12
guard.pausetime = 15, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10, ceil(-60*const(size.yscale))
hitsound = s1,0
guardsound = s120, 0
ground.type = High               
ground.slidetime = 9
ground.hittime  = 9+2*var(14)
guard.hittime = 13
guard.slidetime = 13
guard.ctrltime = 13
ground.velocity = -5.0*const(size.xscale)
guard.velocity = -5.0*const(size.xscale)
ground.cornerpush.veloff = -4.5*const(size.xscale)
guard.cornerpush.veloff = -4.5*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)
id = 200  

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, スタン]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 200, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------

;立ち弱パンチ
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 201
poweradd = 0
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[state -2 ,持続用]
type = Varset
trigger1 = movecontact && Numtarget(201)
v = 7
value = 1
Persistent = 0
IgnoreHitPause = 1

[State 200, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 2
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 50, 0
animtype = Light
getpower = 20,0
givepower = 20,0
hitflag = HAF
guardflag = H
priority = 3, Hit
pausetime = 10, 15
guard.pausetime = 11, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10, ceil(-60*const(size.yscale))
hitsound = s1,0
guardsound = s120, 0
ground.type = High               
ground.slidetime = 9
ground.hittime  = 9+2*var(14)
guard.hittime = 9
guard.slidetime = 9
guard.ctrltime = 9
ground.velocity = -6.0*const(size.xscale)
guard.velocity = -6.0*const(size.xscale)
ground.cornerpush.veloff = -4.5*const(size.xscale)
guard.cornerpush.veloff = -4.5*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)
Persistent = 0
id = 201  

[State 200, ヒット定義]
type = HitDef
triggerall = var(7) = 0
triggerall = var(30) = 1
trigger1 = AnimElem = 4
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 50, 0
animtype = Light
getpower = 20,0
givepower = 20,0
hitflag = MAF
guardflag = H
priority = 3, Hit
pausetime = 10, 12
guard.pausetime = 11, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10, ceil(-60*const(size.yscale))
hitsound = s1,0
guardsound = s120, 0
ground.type = High               
ground.slidetime = 9
ground.hittime  = 9+2*var(14)
guard.hittime = 9
guard.slidetime = 9
guard.ctrltime = 9
ground.velocity = -6.0*const(size.xscale)
guard.velocity = -6.0*const(size.xscale)
ground.cornerpush.veloff = -4.5*const(size.xscale)
guard.cornerpush.veloff = -4.5*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)
Persistent = 0
id = 202  

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, スタン]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 200, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
;近距離立ち中パンチ
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 205
poweradd = 0
sprpriority = 1
velset = 0,0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 5
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 3+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 5
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 85, 0
getpower = 40,20
givepower = 40,20
air.animtype = back
guardflag = M
hitflag = MAF
priority = 4,Hit               
animtype = Medium
pausetime = 10, 12
guard.pausetime = 11, 10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10, ceil(-40*const(size.yscale))
hitsound = s1,1
guardsound = s120, 0
ground.type = High               
ground.slidetime = 12
ground.hittime  = 12+2*var(14)
guard.hittime = 12
guard.slidetime = 12
guard.ctrltime = 12
ground.velocity = -8.5*const(size.xscale)   
guard.velocity = -8.5*const(size.xscale)
ground.cornerpush.veloff = -8.5*const(size.xscale)
guard.cornerpush.veloff = -8.5*const(size.xscale)            
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)   
id = 205   
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 205, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
;遠距離立ち中パンチ
[Statedef 206]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 206
poweradd = 0
sprpriority = 1
velset = 0,0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 90, 0
getpower = 40,20
givepower = 40,20
air.animtype = back
guardflag = M
hitflag = MAF
priority = 4,Hit               
animtype = Medium
pausetime = 12, 10
guard.pausetime = 12, 10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10, ceil(-70*const(size.yscale))
hitsound = s1,1
guardsound = s120, 0
ground.type = High               
ground.slidetime = 12
ground.hittime  = 16
guard.hittime = 12
guard.slidetime = 12
guard.ctrltime = 12
ground.velocity = -8.5*const(size.xscale)   
guard.velocity = -8.5*const(size.xscale)
ground.cornerpush.veloff = -8.5*const(size.xscale)
guard.cornerpush.veloff = -8.5*const(size.xscale)            
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)   
id = 205   
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 205, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
anim = 210
velset = 0,0
sprpriority = 1

[State 210, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 5
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 6+random%3
channel = 0

[State 210, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 5
attr = S, NA
animtype = hard
air.animtype = back
damage    = 110,0
getpower = 60,30
givepower = 60,30
hitflag = MAF
priority = 5,Hit                            
guardflag = M
pausetime = 10, 12 
guard.pausetime = 10, 10
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High               
ground.slidetime = 15             
ground.hittime  = 17+2*var(14)            
guard.hittime = 15
guard.slidetime = 15
guard.ctrltime = 15
ground.velocity = -5.5*const(size.xscale)  
guard.velocity = -5.5*const(size.xscale)
air.type = Low 
air.velocity = -4.0*const(size.xscale),-4.0*const(size.yscale)
fall = 0
fall.xvelocity = -2.0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 210    
Persistent = 0
forcestand = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 200
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 210, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 0
ctrl = 0
anim = 211
velset = 0,0
sprpriority = 1

[State 210, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 210, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 3
attr = S, NA
animtype = hard
air.animtype = back
damage    = 70,0
getpower = 60,30
givepower = 60,30
hitflag = MAF
priority = 5,Hit                            
guardflag = H
pausetime = 12, 10 
guard.pausetime = 11, 10
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-80*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High               
ground.slidetime = 15             
ground.hittime  = 17+2*var(14)            
guard.hittime = 15
guard.slidetime = 15
guard.ctrltime = 15
ground.velocity = -5.5*const(size.xscale)  
guard.velocity = -4*const(size.xscale)
air.type = Low 
air.velocity = -4.0*const(size.xscale),-4.0*const(size.yscale)
fall = 0
fall.xvelocity = -2.0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 211   
Persistent = 0
forcestand = 1

[State 210, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 4
attr = S, NA
animtype = hard
air.animtype = back
damage    = 50,0
getpower = 20,10
givepower = 20,10
hitflag = MAF
priority = 5,Hit                            
guardflag = H
pausetime = 12, 10 
guard.pausetime = 14, 10
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-80*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High               
ground.slidetime = 15             
ground.hittime  = 17+2*var(14)            
guard.hittime = 15
guard.slidetime = 15
guard.ctrltime = 15
ground.velocity = -5.5*const(size.xscale)  
guard.velocity = -5.5*const(size.xscale)
air.type = Low 
air.velocity = -4.0*const(size.xscale),-4.0*const(size.yscale)
fall = 0
fall.xvelocity = -2.0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 212   
Persistent = 0
forcestand = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit && numtarget(211)
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit && numtarget(212)
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 210, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;緊急回避
[StateDef 215]
Type = S
MoveType= I
Physics = N
Ctrl = 0
Anim = 215
poweradd = 0
SprPriority = 1

[state -2]
type = ctrlset
trigger1 = time >= 30
value = 1

[State 900]
type = PlayerPush
trigger1 = 1
value = 0 

[State 900]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 1

[State 8050, PalFX]
Type = PalFX
trigger1 = time = 0
time = 59
Add = 0, 0, 0
Mul = 128,128,128

[State 750]
type = AfterImage
trigger1 = time = 0
time = 59
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 30 , 30 , 0
PalContrast = 0 , 0 , 255
PalAdd = 0 , 0 , 0
PalMul = 0, 0 , 1
IgnoreHitPause = 1
Persistent = 1

[State 750]
type = AfterImageTime
trigger1 = animelemtime(4) = 0
time = 0

[State 750]
type = Changestate
Trigger1 = animtime = 0
Value = 0
Ctrl = 1

;------------------------------
;立ち弱キック
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 0
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 0+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 3
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 30, 0
animtype = Light
getpower = 20,10
givepower = 20,10
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
guard.pausetime = 11,10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10, ceil(-30*const(size.yscale))
hitsound = s1,0
guardsound = s120, 0
ground.type = High               
ground.slidetime = 9
ground.hittime  = 9+2*var(14)
guard.hittime = 9
guard.slidetime = 9
guard.ctrltime = 9
ground.velocity = -4.0*const(size.xscale)
guard.velocity = -4.0*const(size.xscale)
ground.cornerpush.veloff = -4.5*const(size.xscale)
guard.cornerpush.veloff = -4.5*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
Persistent = 0
yaccel = .50*const(size.yscale)
id = 230  

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 200, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
;立ち弱キック
[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 231
poweradd = 0
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 0+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 3
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 40, 0
animtype = Light
getpower = 20,10
givepower = 20,10
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
guard.pausetime = 11,10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10, ceil(-35*const(size.yscale))
hitsound = s1,0
guardsound = s120, 0
ground.type = High               
ground.slidetime = 9
ground.hittime  = 9+2*var(14)
guard.hittime = 9
guard.slidetime = 9
guard.ctrltime = 9
ground.velocity = -4.0*const(size.xscale)
guard.velocity = -4.0*const(size.xscale)
ground.cornerpush.veloff = -4.5*const(size.xscale)
guard.cornerpush.veloff = -4.5*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
Persistent = 0
yaccel = .50*const(size.yscale)
id = 230  

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 200, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------
;立ち中キック
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 235
poweradd = 0
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 3+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 4
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 70, 0
getpower = 40,20
givepower = 40,20
air.animtype = back
guardflag = M
hitflag = MAF
priority = 4,Hit               
animtype = Medium
pausetime = 10,12          
guard.pausetime = 11,10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10, ceil(-80*const(size.yscale))
hitsound = s1,1
guardsound = s120, 0
ground.type = High               
ground.slidetime = 12
ground.hittime  = 12
guard.hittime = 12
guard.slidetime = 12
guard.ctrltime = 12
ground.velocity = -8.5*const(size.xscale)   
guard.velocity = -8.5*const(size.xscale)
ground.cornerpush.veloff = -8.5*const(size.xscale)
guard.cornerpush.veloff = -8.5*const(size.xscale)            
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale) 
Persistent = 0  
id = 235     

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 205, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
;立ち中キック
[Statedef 236]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 236
poweradd = 0
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 3+random%3
channel = 0

[State 200, ヒット定義]
type = HitDef
trigger1 = var(30) = 1
trigger1 = AnimElem = 4
attr = S, NA ;立ち通常打撃（Standing, Normal Attack）
damage = 70, 0
getpower = 40,20
givepower = 40,20
air.animtype = back
guardflag = M
hitflag = MAF
priority = 4,Hit               
animtype = Medium
pausetime = 11,10           
guard.pausetime = 14,10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10, ceil(-80*const(size.yscale))
hitsound = s1,1
guardsound = s120, 0
ground.type = High               
ground.slidetime = 12
ground.hittime  = 12+2*var(14)
guard.hittime = 12
guard.slidetime = 12
guard.ctrltime = 12
ground.velocity = -8.5*const(size.xscale)   
guard.velocity = -8.5*const(size.xscale)
ground.cornerpush.veloff = -8.5*const(size.xscale)
guard.cornerpush.veloff = -8.5*const(size.xscale)            
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)   
id = 237     

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 205, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;立ち強キック
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
anim = 240
velset = 0,0
sprpriority = 1

[State 210, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 6
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 5
value = s3, 6+random%3
channel = 0

[State 210, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 6
attr = S, NA
animtype = hard
air.animtype = back
damage    = 90,0
getpower = 60,30
givepower = 60,30
hitflag = MAF
priority = 5,Hit                            
guardflag = M
pausetime = 10, 12
guard.pausetime = 10, 10
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-90*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High               
ground.slidetime = 15             
ground.hittime  = 17+2*var(14)            
guard.hittime = 15
guard.slidetime = 15
guard.ctrltime = 15
ground.velocity = -5.5*const(size.xscale)  
guard.velocity = -5.5*const(size.xscale)
ground.cornerpush.veloff = -15.5*const(size.xscale)
guard.cornerpush.veloff = -15.5*const(size.xscale)
air.type = Low 
air.velocity = -4.0*const(size.xscale),-4.0*const(size.yscale)
fall = 0
fall.xvelocity = -2.0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 1
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 240    
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 160
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 210, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;立ち強キック
[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
anim = 241
velset = 0,0
sprpriority = 1

[State 210, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 6
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 5
value = s3, 6+random%3
channel = 0

[State 210, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
attr = S, NA
animtype = hard
air.animtype = back
damage    = 110,0
getpower = 60,30
givepower = 60,30
hitflag = MAF
priority = 5,Hit                            
guardflag = M
pausetime = 10, 12
guard.pausetime = 10, 10
sparkno = s6002
guard.sparkno = s6005
sparkxy = -20,ceil(-70*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High               
ground.slidetime = 15             
ground.hittime  = 17+2*var(14)            
guard.hittime = 15
guard.slidetime = 15
guard.ctrltime = 15
ground.velocity = -5.5*const(size.xscale)  
guard.velocity = -5.5*const(size.xscale)
ground.cornerpush.veloff = -15.5*const(size.xscale)
guard.cornerpush.veloff = -15.5*const(size.xscale)
air.type = Low 
air.velocity = -4.0*const(size.xscale),-4.0*const(size.yscale)
fall = 0
fall.xvelocity = -2.0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 1
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 240    
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 200
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 210, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 15
poweradd= 0
ctrl = 0
anim = 400
sprpriority = 1
velset = 0,0
facep2 = 1

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 4
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 0+random%3
channel = 0

[State 400, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 25,0
getpower = 20,10
givepower = 20,10
priority  = 3
animtype = Light
air.animtype = back
hitflag = MAF
guardflag = L
priority = 3, Hit
pausetime = 11, 10
guard.pausetime = 12, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-35*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
guard.hittime = 10
guard.slidetime = 10
guard.ctrltime = 10
ground.velocity = -5.0*const(size.xscale)
guard.velocity = -5.0*const(size.xscale)
ground.cornerpush.veloff = -6.0*const(size.xscale)
guard.cornerpush.veloff = -6.0*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)   
Persistent = 0
id = 400

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 25
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[Statedef 401]
type    = C
movetype= A
physics = C
juggle  = 15
poweradd= 0
ctrl = 0
anim = 401
sprpriority = 1
velset = 0,0
facep2 = 1

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 1
value = s3, 0+random%3
channel = 0

[State 400, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 2
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 30,0
getpower = 20,10
givepower = 20,10
priority  = 3
animtype = Light
air.animtype = back
hitflag = MAF
guardflag = M
priority = 3, Hit
pausetime = 11, 10
guard.pausetime = 12, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-35*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
guard.hittime = 10
guard.slidetime = 10
guard.ctrltime = 10
ground.velocity = -5.0*const(size.xscale)
guard.velocity = -5.0*const(size.xscale)
ground.cornerpush.veloff = -6.0*const(size.xscale)
guard.cornerpush.veloff = -6.0*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)   
Persistent = 0
id = 400

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 405
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 4
value = s0, 1

[State 400, ヒット定義]
type = HitDef
trigger1 = var(30) = 1
trigger1 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 60,0
getpower = 40,20
givepower = 40,20
priority  = 3
animtype = Medium
air.animtype = back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10,10
guard.pausetime = 10,12
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-35*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 18
guard.hittime = 13+2*var(14)
guard.slidetime = 13
guard.ctrltime = 13
ground.velocity = -4.0*const(size.xscale)
guard.velocity = -4.0*const(size.xscale)   
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 405

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 60
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[Statedef 406]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 406
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 4
value = s0, 1

[State 400, ヒット定義]
type = HitDef
trigger1 = var(30) = 1
trigger1 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 70,0
getpower = 40,20
givepower = 40,20
priority  = 3
animtype = Medium
air.animtype = back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 14,10
guard.pausetime = 12,10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-35*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 18
guard.hittime = 13+2*var(14)
guard.slidetime = 13
guard.ctrltime = 13
ground.velocity = -4.0*const(size.xscale)
guard.velocity = -4.0*const(size.xscale)   
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 405

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 410
velset = 0,0
sprpriority = 1

[State 410, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 6+random%3
channel = 0

[State 410, 一発目のヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 4
attr = C, NA
damage    = 80,0
getpower = 60,30
givepower = 60,30
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 10,15
guard.pausetime = 10, 11
air.animtype = back
priority = 5, Hit
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-50*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
guard.hittime = 14+2*var(14)
guard.slidetime = 14
guard.ctrltime = 14
ground.velocity = -4.0*const(size.xscale),0*const(size.yscale)
air.velocity = -4.0*const(size.xscale),-7.0*const(size.yscale)
guard.velocity = -4.0*const(size.xscale)
ground.cornerpush.veloff = -5.0*const(size.xscale)
guard.cornerpush.veloff = -4.0*const(size.xscale)
fall = 0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
air.fall = 1
down.bounce = 0
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .6*const(size.yscale)
id = 410
Persistent = 0
forcestand = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 410, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 411
velset = 0,0
sprpriority = 1

[State 410, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 6+random%3
channel = 0

[State 410, 一発目のヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = AnimElem = 4
attr = C, NA
damage    = 100,0
getpower = 60,30
givepower = 60,30
animtype  = hard
hitflag = MAF
guardflag = M
pausetime = 10,15
guard.pausetime = 10, 11
air.animtype = back
priority = 5, Hit
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-50*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
guard.hittime = 14+2*var(14)
guard.slidetime = 14
guard.ctrltime = 14
ground.velocity = -4.0*const(size.xscale),0*const(size.yscale)
air.velocity = -4.0*const(size.xscale),-7.0*const(size.yscale)
guard.velocity = -4.0*const(size.xscale)
ground.cornerpush.veloff = -5.0*const(size.xscale)
guard.cornerpush.veloff = -4.0*const(size.xscale)
fall = 0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
air.fall = 1
down.bounce = 0
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .6*const(size.yscale)
id = 410
Persistent = 0
forcestand = 1

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 150
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 410, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱キック
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
poweradd= 0
ctrl = 0
anim = 430
sprpriority = 1
velset = 0,0
facep2 = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 2
x = 4.0*const(size.xscale)

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 5

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 0+random%3
channel = 0

[State 400, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 3
trigger2 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 30,0
getpower = 20,10
givepower = 20,10
priority  = 3
animtype = Light
air.animtype = back
hitflag = MAF
guardflag = L
priority = 3, Hit
pausetime = 12, 11
guard.pausetime = 12, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-20*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12+2*var(14)
guard.hittime = 10
guard.slidetime = 10
guard.ctrltime = 10
ground.velocity = -5.0*const(size.xscale)
guard.velocity = -5.0*const(size.xscale)
ground.cornerpush.veloff = -10.0*const(size.xscale)
guard.cornerpush.veloff = -10.0*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)
Persistent = 0   
id = 400

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱キック
[Statedef 431]
type    = C
movetype= A
physics = C
juggle  = 1
poweradd= 0
ctrl = 0
anim = 431
sprpriority = 1
velset = 0,0
facep2 = 1

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[State 400, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 3
trigger2 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 30,0
getpower = 20,10
givepower = 20,10
priority  = 3
animtype = Light
air.animtype = back
hitflag = MAF
guardflag = M
priority = 3, Hit
pausetime = 12, 11
guard.pausetime = 12, 10
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-20*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12+2*var(14)
guard.hittime = 10
guard.slidetime = 10
guard.ctrltime = 10
ground.velocity = -5.0*const(size.xscale)
guard.velocity = -5.0*const(size.xscale)
ground.cornerpush.veloff = -10.0*const(size.xscale)
guard.cornerpush.veloff = -10.0*const(size.xscale)
air.type = Low 
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)   
id = 431
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ中キック
[Statedef 435]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 435
sprpriority = 1
velset = 0,0
facep2 = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 2
x = 5.0*const(size.xscale)

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 5

[State 400, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 3
trigger2 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 70,0
getpower = 40,20
givepower = 40,20
priority  = 3
animtype = Medium
air.animtype = back
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 10,10
guard.pausetime = 12,10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-20*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
guard.hittime = 13+2*var(14)
guard.slidetime = 13
guard.ctrltime = 13
ground.velocity = -7.0*const(size.xscale)
guard.velocity = -7.0*const(size.xscale)   
ground.cornerpush.veloff = -15.0*const(size.xscale)
guard.cornerpush.veloff = -15.0*const(size.xscale)
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 435
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ中キック
[Statedef 436]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 436
sprpriority = 1
velset = 0,0
facep2 = 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 400, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 1

[State 400, ヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 3
trigger2 = animelem = 4
attr = C, NA ;しゃがみ通常打撃（Crouching, Normal Attack）
damage    = 60,0
getpower = 40,20
givepower = 40,20
priority  = 3
animtype = Medium
air.animtype = back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10,10
guard.pausetime = 12,10
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-20*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
guard.hittime = 13+2*var(14)
guard.slidetime = 13
guard.ctrltime = 13
ground.velocity = -7.0*const(size.xscale)
guard.velocity = -7.0*const(size.xscale)   
ground.cornerpush.veloff = -15.0*const(size.xscale)
guard.cornerpush.veloff = -15.0*const(size.xscale)
air.type = Low 
air.velocity = -4.5*const(size.xscale),-6.5*const(size.yscale)  
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
yaccel = .50*const(size.yscale)    
id = 435
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 400, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;しゃがみ強キック
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 440
velset = 0,0
sprpriority = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 2
x = 9.0*const(size.xscale)

[State 410, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0, 5

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 6+random%3
channel = 0

[State 410, 一発目のヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 3
trigger2 = animelem = 4
attr = C, NA
damage    = 100,0
getpower = 60,30
givepower = 60,30
animtype  = back
hitflag = MAF
guardflag = L
pausetime = 11,10
guard.pausetime = 10, 11
air.animtype = back
priority = 5, Hit
pausetime = 12,13
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-20*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = trip
ground.slidetime = 14
ground.hittime  = 14
guard.hittime = 14
guard.slidetime = 14
guard.ctrltime = 14
ground.velocity = -3.0*const(size.xscale),-4.0*const(size.yscale)
air.velocity = -3.0*const(size.xscale),-4.0*const(size.yscale)
guard.velocity = -4.0*const(size.xscale)
ground.cornerpush.veloff = -5.0*const(size.xscale)
guard.cornerpush.veloff = -5.0*const(size.xscale)
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
air.fall = 1
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
id = 440
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 200
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 410, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ強キック
[Statedef 441]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 441
velset = 0,0
sprpriority = 1

[State 410, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 6+random%3
channel = 0

[State 410, 一発目のヒット定義]
type = HitDef
triggerall = var(30) = 1
trigger1 = animelem = 3
trigger2 = animelem = 4
attr = C, NA
damage    = 100,0
getpower = 60,30
givepower = 60,30
animtype  = back
hitflag = MAF
guardflag = M
pausetime = 11,10
guard.pausetime = 10, 11
air.animtype = back
priority = 5, Hit
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-20*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
ground.type = trip
ground.slidetime = 14
ground.hittime  = 14
guard.hittime = 14
guard.slidetime = 14
guard.ctrltime = 14
ground.velocity = -3.0*const(size.xscale),-4.0*const(size.yscale)
air.velocity = -3.0*const(size.xscale),-4.0*const(size.yscale)
guard.velocity = -4.0*const(size.xscale)
ground.cornerpush.veloff = -5.0*const(size.xscale)
guard.cornerpush.veloff = -5.0*const(size.xscale)
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
air.fall = 1
P2facing = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = 1
id = 440
persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 200
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 410, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ弱P
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 600
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 40,0
getpower = 20,10
givepower = 20,10
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,16
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-50*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5+2*var(14)
ground.velocity = -4
air.velocity = -1.3,-3
id = 600

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 25
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ弱P
[Statedef 601]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 601
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 20,0
getpower = 20,10
givepower = 20,10
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,16
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-50*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5+2*var(14)
ground.velocity = -4
air.velocity = -1.3,-3
id = 600

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 25
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ中
[Statedef 605]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 605
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 70,0
getpower = 40,20
givepower = 40,20
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,12
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15+2*var(14)
ground.velocity = -6.5*const(size.xscale)
air.velocity = -6.0*const(size.xscale),-6.5*const(size.yscale)
Persistent = 0
id = 605

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 140
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ中
[Statedef 606]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 606
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3, 3+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 80,0
getpower = 40,20
givepower = 40,20
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,12
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15+2*var(14)
ground.velocity = -6.5*const(size.xscale)
air.velocity = -6.0*const(size.xscale),-6.5*const(size.yscale)
Persistent = 0
id = 605

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 610
sprpriority = 1

[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 85,0
getpower = 60,30
givepower = 60,30
guardflag = H
priority = 4
pausetime = 10,15
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 610
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 140
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 611]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 611
sprpriority = 1

[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 100,0
getpower = 60,30
givepower = 60,30
guardflag = H
priority = 4
pausetime = 10,15
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 610
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 615]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 0
velset = 0,0
ctrl = 0
anim = 615
sprpriority = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 6*const(size.xscale)
y = 3


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) >= 0
attr = A, NA
damage = 90,0
getpower = 60,30
givepower = 60,30
guardflag = H
priority = 4
pausetime = 10,12
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 615
air.fall = 1
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 100
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 616

;---------------------------------------------------------------------------
;ジャンプ下大
[Statedef 616]
type    = S
movetype= I
physics = N
juggle  = 1
poweradd= 0
velset = 0,0
ctrl = 0
anim = 616
sprpriority = 1

[State 1200]
Type = VelSet
Trigger1 = time = 0
X = 0*const(size.xscale)
y = 0

[State 1200]
Type = PosSet
Trigger1 = time = 0
y = 0

[State 1000, ステート変更]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ弱K
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 630
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 40,0
getpower = 20,10
givepower = 20,10
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,12
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5+2*var(14)
ground.velocity = -4
air.velocity = -1.3,-3
id = 600
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 25
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ弱K
[Statedef 631]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 631
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 0

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 0+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 40,0
getpower = 20,10
givepower = 20,10
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,12
sparkno = s6000
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,0
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5+2*var(14)
ground.velocity = -4
air.velocity = -1.3,-3
id = 600
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 25
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ中K
[Statedef 635]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 635
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 3+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 70,0
getpower = 40,20
givepower = 40,20
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,15
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15+2*var(14)
ground.velocity = -6.5*const(size.xscale)
air.velocity = -6.0*const(size.xscale),-6.5*const(size.yscale)
id = 635
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 120
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ中K
[Statedef 636]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 636
sprpriority = 1

[State 600, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 2
value = s0, 1

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 3+random%3
channel = 0

[State 600, ヒット定義]
type = HitDef
trigger1 = animelem = 3
attr = A, NA ;空中通常打撃（Air, Normal Attack）
damage    = 80,0
getpower = 40,20
givepower = 40,20
guardflag = H ;相手はしゃがみガードが出来ない
priority = 3
pausetime = 10,15
sparkno = s6001
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,1
guardsound = s120, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15+2*var(14)
ground.velocity = -6.5*const(size.xscale)
air.velocity = -6.0*const(size.xscale),-6.5*const(size.yscale)
id = 635
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 640
sprpriority = 1

[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 5
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelem = 5
attr = A, NA
damage = 90,0
getpower = 60,30
givepower = 60,30
guardflag = H
priority = 4
pausetime = 12,12
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -6.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 640
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 160
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 641]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 641
sprpriority = 1

[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 5
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 6
attr = A, NA
damage = 100,0
getpower = 60,30
givepower = 60,30
guardflag = H
priority = 4
pausetime = 12,12
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-40*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -6.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 640
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 150
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 645]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 0
velset = 0,0
ctrl = 0
anim = 645
sprpriority = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 6*const(size.xscale)
y = 2


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) >= 0
attr = A, NA
damage = 70,0
getpower = 40,20
givepower = 40,20
guardflag = H
priority = 4
pausetime = 10,12
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 610
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 616

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 646]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 0
velset = 0,0
ctrl = 0
anim = 646
sprpriority = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 6*const(size.xscale)
y = 6


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) >= 0
attr = A, NA
damage = 70,0
getpower = 40,20
givepower = 40,20
guardflag = H
priority = 4
pausetime = 10,12
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 610
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 616

;---------------------------------------------------------------------------
;ジャンプ強
[Statedef 647]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 0
velset = 0,0
ctrl = 0
anim = 647
sprpriority = 1

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 3
X = 2*const(size.xscale)
y = 6


[State 610, 音を鳴らす]
type = PlaySnd
trigger1 = animelem = 3
value = s0, 2

[State 200, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3, 6+random%3
channel = 0

[State 610, ヒット定義]
type = HitDef
trigger1 = animelemtime(3) >= 0
attr = A, NA
damage = 70,0
getpower = 40,20
givepower = 40,20
guardflag = H
priority = 4
pausetime = 10,12
guard.PauseTime = 10, 11
sparkno = s6002
guard.sparkno = s6005
sparkxy = -10,ceil(-60*const(size.yscale))
hitsound   = s1,2
guardsound = s120, 0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17+2*var(14)
guard.hittime = 17
guard.slidetime = 8
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale)
air.velocity = -3.0*const(size.xscale),-6.5*const(size.yscale)
id = 610
Persistent = 0

[state -2 ,スタン値加算]
type = Varadd
trigger1 = movehit
v = 42
value = 50
Persistent = 0
IgnoreHitPause = 1

[State 801, Throw 11]
type = TargetState
trigger1 = movehit
trigger1 = var(42)>=1000
value = 15300
Persistent = 0
IgnoreHitPause = 1

[State 1000, ステート変更]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y >= 10 && vel y > 0
value = 616