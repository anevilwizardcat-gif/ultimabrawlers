;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0
velset = 0,0 ;Stop moving PERIOD

[State 10, 0]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, 1]
type = ChangeAnim
trigger1 = P2Dist X < -Const(Size.Ground.Back)
value = 5
[State 0, 2]
type = Turn
trigger1 = P2Dist X < -Const(Size.Ground.Back)

[State 0, 3]
type = CtrlSet
trigger1 = Time = 1 && PrevStateNo = 855
value = 1

[State 0, 4]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 5] ;Wipe yo'self off... YOU DEAD!
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type	= C
physics = N
velset = 0,0

[State 10, 0]
type = AssertSpecial
trigger1 = Time = 0
flag = NoAutoTurn

[State 10, 3]
type = ChangeState
trigger1 = Time = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type	= C
physics = N
sprpriority = 0
velset = 0,0

[State 0, BlockEnd?]
type = ChangeState
triggerall = numHelper(10372) && !AILevel
trigger1 = PrevStateNo = [140,141]
trigger1 = (helper(10372), var(4)&32) = 0
trigger1 = Time = 0
value = 0

[State 12, 1]
type = ChangeAnim
trigger1 = Anim = 12
value = 12
elem = 3 - AnimElemNo(0)

[State 10, 0]
type = ChangeAnim
trigger1 = PrevStateNo = 10
trigger1 = Time = 0
value = 10

[State 10, 0]
type = AssertSpecial
trigger1 = Time = 0
flag = NoAutoTurn

[State 10, 0]
type = AssertSpecial
trigger1 = Time = 0
flag = NoWalk

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
trigger2 = Anim != 6 && Anim != 10 && Anim != 11
trigger3 = Anim = 10 && AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type	= S
physics = N
velset = 0,0

[State 12, 0]
type = AssertSpecial
trigger1 = Time = 0
flag = NoWalk

[State 12, 1]
type = ChangeAnim
trigger1 = Anim = 10
value = 10
elem = 3 - AnimElemNo(0)

[State 12, 1]
type = ChangeAnim
trigger1 = Anim !=12
value = 12

[State 12, 1]
type = ChangeState
trigger1 = Anim = 12
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type	= S
physics = S
sprpriority = 0

[State 20, 1]
type = ChangeAnim
triggerall = NumHelper(10372)
triggerall = (helper(10372), Var(4)&136) != 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1)=1
value = 20

[State 20, 2]
type = ChangeAnim
triggerall = NumHelper(10372)
triggerall = (helper(10372), Var(4)&68) != 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1)=1
value = 21

[State 20, 3]
type = VelSet
trigger1 = anim = 5
x = 0

[State 20, 4]
type = VelSet
trigger1 = anim = 20
x = const(velocity.walk.fwd.x)*Const(Size.XScale)*(5.0/4.0)

[State 20, 5]
type = VelSet
trigger1 = anim = 21
x = const(velocity.walk.back.x)*Const(Size.XScale)*(5.0/4.0)

;---------------------------------------------------------------------------
; Walk (CPU)
[Statedef 21]
type	= S
physics = S
sprpriority = 0
ctrl = 0

[State 20, 1]
type = Turn
trigger1 = P2dist X < 0
[State 20, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5 && P2Dist X < 0
value = 5

[State 20, 1]
type = ChangeAnim
trigger1 = Anim != 20 && Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1)=1
value = ifelse(Var(30),20,ifelse(Random%6 <= 2 || P2BodyDist X < 50|| helper(10372), Var(21) < 48 || helper(10372), Var(22) < 48,21,20))

[State 20, 3]
type = VelSet
trigger1 = anim = 5
x = 0

[State 20, 4]
type = VelSet
trigger1 = anim = 20
x = const(velocity.walk.fwd.x)*Const(Size.XScale)*(5.0/4.0)

[State 20, 5]
type = VelSet
trigger1 = anim = 21
x = const(velocity.walk.back.x)*Const(Size.XScale)*(5.0/4.0)

[State 20, 3]
type = VelSet
trigger1 = anim = 5
x = 0

[State 20, 4]
type = CtrlSet
trigger1 = Time > 20
trigger1 = P2BodyDist X <= 50 && Anim = 20
trigger2 = Time > 20
trigger2 = (P2BodyDist X >= 100 || BackEdgeBodyDist <= 8 || P2BodyDist X < 17) && Anim = 21
trigger3 = InGuardDist
trigger4 = RoundState != 2
trigger5 = Var(30)
trigger5 = P2BodyDist X < 20
value = 1

[State 20, 4]
type = ChangeState
trigger1 = Time > 20
trigger1 = P2BodyDist X <= 50 && anim = 20
trigger2 = Time > 20
trigger2 = (P2BodyDist X >= 100 || BackEdgeBodyDist <= 8) && Anim = 21
trigger3 = InGuardDist
trigger4 = RoundState != 2
trigger5 = Var(30)
trigger5 = P2BodyDist X < 20
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type	= A
physics = N
movetype = I

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 50, AfterImage]
type = AfterImage
triggerall = !Var(30)
trigger1 = Time = 0
trigger1 = Var(4)
time = -1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = .5,.5,.5
length = 9
trans = add1
TimeGap  = 1
FrameGap = 4

[State 50, VelAdd]
type = VelAdd
trigger1 = SysVar(1) = 1
x = -ifElse(Vel X <= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)
[State 50, VelAdd]
type = VelAdd
trigger1 = SysVar(1) = -1
x = ifElse(Vel X >= 0,0,ifElse(Var(4),0.029296875,0.01953125))*(25.0/16.0)

[State 920, 0]
type = Gravity
trigger1 = Time

[State 50, ChangeState]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = 52

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type	= S
physics = S
ctrl = 0

[State 52, Explod]
type = Explod
trigger1 = Time = 0
anim = 8030
pos = 0, 0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
scale = .5,.5

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,2
channel = 13

[State 52, AfterImageTime]
type = AfterImageTime
triggerall = !Var(30)
trigger1 = Time = 0
time = 0

[State 52, Turn]
type = ChangeState;Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0
value = 0 + 11*(command = "holddown")
ctrl = 1

[State 52, X]
type = ChangeAnim
trigger1 = Time = 0
value = 47

[State 52, 6]
type = AssertSpecial
trigger1 = Time < 3
flag = NoWalk

[State 52, 3]
type = CtrlSet
trigger1 = Time = 1 && PrevStateNo < 110
value = 1

[State 52, 4]
type = ChangeState
trigger1 = Time > 2
value = 0 + 11*(command = "holddown")
ctrl = 1

;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U	;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0 || Anim = 1
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Stand guard (guarding)
[Statedef 130]
type	= S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Crouch guard (guarding)
[Statedef 131]
type	= C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Air guard (guarding)
[Statedef 132]
type	= A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Guard (end)
[Statedef 140]
type = U	;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0 || Anim = 1
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; Stand guard hit (shaking)
[Statedef 150]
type	= S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; Stand guard hit (knocked back)
[Statedef 151]
type	= S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; Crouch guard hit (shaking)
[Statedef 152]
type	= C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Crouch guard hit (knocked back)
[Statedef 153]
type	= C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; Air guard hit (shaking)
[Statedef 154]
type	= A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Air guard hit (knocked away)
[Statedef 155]
type	= A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;----------------------------------------------------------------------------------
; Aerial Just Defense/Parry Fall
[Statedef 530]
type = A
physics = N
ctrl = 1
anim = 142

[State 530, Velocity]
type = VelSet
triggerall = prevStateNo != 720
trigger1 = time = 0
x = -1
y = -7.25

[State 530, Gravity]
type = Gravity
trigger1 = 1

[State 530, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 52

;----------------------------------------------------------------------------------
; Parrot
; Thanks goes to Phantom.of.the.Server
[StateDef 725]
type = A
physics = N
moveType = I
anim = 725+(root,StateType=C)+(2*(root,StateType=A))
velSet = 0,0
ctrl = 0

[State 725, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
[State 725, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 725, Crouch]
type = ChangeAnim
triggerall = !Time
trigger1 = root,command="down"
trigger2 = root,AILevel
value=726
[State 725, Stand/Air]
type = ChangeAnim
triggerall = !Time
trigger1 = root,command="fwd"
trigger2 = root,AILevel
value = 725+(2*(root,StateType=A))
[State 725, Stand/Air]
type = ChangeAnim
trigger1 = Anim=725||Anim=727
value = 725+(2*(root,StateType=A))

[State 725, Kill]
type = VarSet
trigger1 = Time >= 7;ifelse((root,statetype=A),7,8)
trigger2 = facing != (root,facing)
trigger3 = !root,Ctrl
trigger3 = (root,StateNo!=[700,720]) && (root,StateNo!=5120)
var(0)=1
[State 725, Kill]
type = VarSet
;triggerall= !root,FVar(39) ;AI
trigger1 = (root,command="holdback")
trigger2 = Time < 4 && (root,command="holdfwd" + root,command="holddown")>1
trigger3 = Time >=4 && (root,command="holdfwd" || root,command="holddown")
trigger4 = Time >=1 && (((Anim=725||Anim=726) && root,command="fwd") || (Anim=727 && root,command="down"))
trigger5 = root,AILevel
var(0)=1
[State 725, Kill]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 725, Stand/Air]
type = ReversalDef
trigger1 = !Var(0) && (Anim = 725 || Anim = 727)
trigger1 = (root, StateNo != 5120) || !(root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 726
pausetime = 0,0
sparkno = -1
numhits = 0
[State 725, Crouch]
type = ReversalDef
trigger1 = !Var(0) && Anim = 726
reversal.attr = SC,AA
p1StateNo = 726
pausetime = 0,0
sparkno = -1
numhits = 0
[State 725, Kill]
type = ReversalDef
trigger1 = Var(0) = 1
reversal.attr =
pausetime = 0,0
sparkno = -1
numhits = 0

[State 725, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (root,MoveType != I)
trigger3 = !(root,ctrl) && (root,StateNo != [700,721]) && (root,StateNo != 5120)
trigger4 = (root,StateNo = [700,721]) && (root, Time <= 1)

;Success
[StateDef 726]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = root, StateNo = [760,762]
trigger2 = Time >= 2

;----------------------------------------------------------------------------------
; Standing Parry
[Statedef 700]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 700
sprpriority = 2
poweradd = 78

[State 700, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Pause]
type = Pause
trigger1 = Time = 0
time = 15
movetime = 15
endcmdbuftime=15
pausebg = 0
[State 700, toki yo tomare]
type = PosFreeze
trigger1 = 1
value = 1
[State 700, NoWalk]
type = VarSet
trigger1 = 1
var(14) = 7

[State 710, PalFX]
type = PalFX
trigger1 = Time = 0
add=0,64,255
sinadd=0,-64,-255,60
time=15

[State 700, PlaySnd];Parry Sound
type = PlaySnd
trigger1 = Time = 0
value = S7000,0
channel = 10
[State 700, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 700, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Crouching Parry
[Statedef 710]
type = C
movetype = I
physics = C
ctrl = 0
velset = 0,0
anim = 710
sprpriority = 2

[State 700, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Pause]
type = Pause
trigger1 = Time = 0
time = 15
movetime = 15
endcmdbuftime=15
pausebg = 0
[State 700, toki yo tomare]
type = PosFreeze
trigger1 = 1
value = 1
[State 700, NoWalk]
type = VarSet
trigger1 = 1
var(14) = 7

[State 710, PalFX]
type = PalFX
trigger1 = Time = 0
add=0,64,255
sinadd=0,-64,-255,60
time=15

[State 700, PlaySnd];Parry Sound
type = PlaySnd
trigger1 = Time = 0
value = S7000,0
channel = 10
[State 700, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 700, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 710, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------------------
; Aerial Parry
[Statedef 720]
type = A
movetype = I
physics = N
ctrl = 0
anim = 720
sprpriority = 2

[State 700, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Pause]
type = Pause
trigger1 = Time = 0
time = 15
movetime = 15
endcmdbuftime=15
pausebg = 0
[State 700, toki yo tomare]
type = PosFreeze
trigger1 = 1
value = 1
[State 700, NoWalk]
type = VarSet
trigger1 = 1
var(14) = 7

[State 710, PalFX]
type = PalFX
trigger1 = Time = 0
add=0,64,255
sinadd=0,-64,-255,60
time=15

[State 700, PlaySnd];Parry Sound
type = PlaySnd
trigger1 = Time = 0
value = S7000,0
channel = 10
[State 700, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 720, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 530

;---------------------------------------------------------------------------
; Throw Escape (Ground) (P.o.t.S)
[Statedef 890]
type=S
physics=N
movetype=I
ctrl=0
velset=0,0
sprpriority=1

[State 1040,ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5945),5945, ifElse(SelfAnimExist(5940),5940, ifElse(SelfAnimExist(5910), 5910, 5007)))

[State 890, Bind]
type=targetbind
trigger1= !time && numtarget
pos=0,0
[State 890, p2state]
type=targetstate
trigger1= !time && numtarget
value=895
[State 890, Throw]
type=targetfacing
trigger1= !time && numtarget
value=-1

[State 895, Pos]
type=posadd
trigger1= !time
x=20

[State 890, NHB]
type=nothitby
trigger1= 1
value=SCA
time=1
[State 890, push]
type=playerpush
trigger1= 1
value=0

[State 890, Pos]
type=posset
trigger1= !time
y=0
[State 890, Vel]
type=velmul
trigger1= 1
x=.95
[State 890, Vel]
type=velset
trigger1= time=2
x=-4
y=0

[State 890, Snd]
type = PlaySnd
trigger1 = Time = 0
value = S8,23
channel = 0

[State 890, End]
type=changestate
trigger1= time>=25
value=0
ctrl=1

;---------------------------------------------------------------------------
; Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5945),5945, ifElse(SelfAnimExist(5940),5940, ifElse(SelfAnimExist(5910), 5910, 130)))

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand get-hit (shaking)
[Statedef 5000]
type	= S
movetype= H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;Stand get-hit (knocked back)

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

;---------------------------------------------------------------------------
; Stand get-hit (knocked back)
[Statedef 5001]
type	= S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0 || Anim = 1
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

;[State 5001, 6]
;type = CtrlSet
;trigger1 = GetHitVar(hittime) <= 0
;value = 1

;[State 5001, 7]
;type = StateTypeSet
;trigger1 = GetHitVar(hittime) <= 0
;movetype = I

[State 5001, 8]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch get-hit (shaking)
[Statedef 5010]
type	= C
movetype= H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;Crouch get-hit (knocked back)

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Crouch get-hit (knocked back)
[Statedef 5011]
type	= C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0 || Anim = 1
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Air get-hit (shaking)
[Statedef 5020]
type	= A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 5030]
type	= A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5030, 2]
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0	;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5030, 5]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0	;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0 || Anim = 1
value = 5035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 5035]
type	= A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver	;Hit is over
trigger2 = AnimTime = 0 || Anim = 1 ;Animation over
trigger3 = Vel Y > 0	;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 	;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver	;Hit is over
trigger2 = AnimTime = 0 || Anim = 1 ;Anim is over
trigger3 = Vel Y > 0	;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 	;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (recovering in air, not falling)
[Statedef 5040]
type	= A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0 || Anim = 1
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type	= A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0 || Anim = 1
trigger1 = Anim = 5035
trigger2 = Time = 0 	;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type	= A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y + Pos Y >= 0
type = ChangeState
value = 5100

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type	= L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = .85

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 52, Explod]
type = Explod
trigger1 = Time = 0
anim = 8030
pos = 0, 0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
scale = 1,1;.8,.8;5

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0 || Anim = 1
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type	= L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = Null;PosSet
trigger1 = Time = 0
y = 20

[State 5101, 4]
type = VelSet
trigger1 = Time = 0
y = -2;-1.6875

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .5;.4625;.3125

[State 5101, 6] ;Hit ground
;trigger1 = Vel Y > 0
;trigger1 = Pos Y >= 12
trigger1 = Pos Y + Vel Y >= 0
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
;MUGEN default lie down state override
[StateDef 5110]
type = L
moveType = H
physics = N

[State 5110, ChangeState]
type = ChangeState
trigger1 = 1
value = 5111
ignoreHitPause = 1

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5111]
type	= L
movetype= H
physics = N
velset = 0,0

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
triggerall = prevStateNo != 5101
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = null;PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 52, Explod]
type = NULL;Explod
trigger1 = Time = 0
anim = 8030
pos = 0, 0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
scale = 1,1;.8,.8;5

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11] ;If just died
type = ChangeState
trigger1 = Time >= Const(Data.Liedown.Time)
value = 5120

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type	= L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = PrevStateNo != 5950
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Downed get-hit (getting up)
[Statedef 5120]
type	= L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0 || Anim = 1
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0 || Anim = 1
value = , NT,ST,HT
time = 12

[State 5120, CtrlSet] ; Guard fix
type = CtrlSet
trigger1 = AnimTime = -1
value = 1
[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0 || Anim = 1
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Cheap KO
[Statedef 5950]
physics = S
movetype = H
ctrl = 0
velset = 0,0

[State 5950, 1]
type = HitVelSet
trigger1 = Time = 0
x = 2

[State 5950, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5950, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, 4]
type = ChangeAnim
trigger1 = !HitOver
value = ifElse(FVar(1)=0,5010,5020)

[State 190, 4]
type = ChangeAnim
trigger1 = HitOver
value = 5950
persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimElem = 6
value = 5150

;===============================================================================
;								 HIT STATE RIPOFFS
;===============================================================================
;---------------------------------------------------------------------------
; HITG_SHAKE_High
[Statedef 3800]
type	= S
movetype= H
physics = N
velset = 0,0

[State 1000, 0]
type = HitFallSet
trigger1 = time = 0
value = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
value = 5000+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 3801 ;HITG_SLIDE

;---------------------------------------------------------------------------
; HITG_SHAKE_Low
[Statedef 3805]
type	= S
movetype= H
physics = N
velset = 0,0

[State 1000, 0]
type = HitFallSet
trigger1 = time = 0
value = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
value = 5010+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 3806 ;HITG_SLIDE

;---------------------------------------------------------------------------
; HITG_SLIDE_High
[Statedef 3801]
type	= S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITG_SLIDE_Low
[Statedef 3806]
type	= S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5015+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 3820]
type	= A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype) + 100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && ((SelfAnimExist(5047 + GetHitVar(animtype))) || (SelfAnimExist(105047 + GetHitVar(animtype)) && Name = "Gill" && AuthorName = "GM" && Facing = -1))
value = 5047 + GetHitVar(animtype) + 100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 3830

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 3830]
type	= A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= 10	;.
value = 3850 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3835 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 3835]
type	= A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 1]
type = ChangeAnim
trigger1 = Name = "Gill" && AuthorName = "GM" && Facing = -1
trigger1 = Time = 0
trigger1 = SelfAnimExist(105035)
trigger1 = Anim != [105051, 105059] ;Not if in hit up anim
trigger1 = Anim != 105090 ;Not if hit off ground anim
trigger1 = Anim != [10501, 105059)
value = 105035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 4]
type = ChangeState
trigger1 = HitOver	;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= 10	;.
trigger4 = Time = 0  ;No transition anim
trigger4 = Anim != 5035 ;.
value = 3850 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 3850]
type	= A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0  ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
trigger1 = AnimTime = 0
trigger1 = Anim = 105035
trigger2 = Time = 0  ;If no transition anim
trigger2 = Anim != 105035
trigger2 = (Anim != [105051, 105059]) && (Anim != [105061, 105069])
trigger2 = Anim != 105090 ;Not if hit off ground anim
value = 105050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = (anim = [5050,5059]) || (Name = "Gill" && AuthorName = "GM" && Facing = -1 && anim = [105050, 105059])
trigger1 = Vel Y >= ifelse(anim = 5050+(Name = "Gill" && AuthorName = "GM" && Facing = -1)*100000, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3900 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 3880]
type	= L
movetype= H
physics = N
velset = 0,0

[State 52, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse(GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 2]
type = VarAdd
trigger1 = Name = "Gill" && AuthorName = "GM" && Facing = -1
trigger1 = time = 0
trigger1 = (anim = [105081,105089]) || (anim = [105111,105119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1)
trigger1 = !SelfAnimExist(5090+100000*(Name = "Gill" && AuthorName = "GM" && Facing = -1))
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 52, LieDownTime]
type = Projectile
triggerall = hitShakeOver
trigger1 = !numProjID(1911315981)
projID = 1911315981
projanim = 0
projscale = 0,0
offset = -9001,0
velocity = 0,0
projedgebound = 9999
projstagebound = 9999
postype = P1
projremovetime = Const(Data.LieDown.Time)
pausemovetime = 0
supermovetime = 0
ownpal = 1

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 3881 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 3830 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 3881]
type	= L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 3910 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 3900]
type	= L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = ((anim != [5051,5059]) && (anim != [5061,5069]))
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = time = 0
trigger1 = ((anim != [105051,105059]) && (anim != [105061,105069]))
trigger2 = !SelfAnimExist(105100 + (anim % 10))
value = 105100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = ((anim != [5051,5059]) && (anim != [5061,5069]))
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
trigger1 = time = 0
trigger1 = ((anim != [105051,105059]) && (anim != [105061,105069]))
trigger1 = SelfAnimExist(105100 + (anim % 10))
value = 105100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 3910 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 3901

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3901]
type	= L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = time = 0
trigger1 = anim != [105101,105109]
trigger2 = !SelfAnimExist(105160 + (anim % 10))
value = 105160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = time = 0
trigger1 = anim = [105101,105109]
trigger1 = SelfAnimExist(105160 + (anim % 10))
value = 105160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3910

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 3910]
type	= L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
persistent = 0
trigger1 = SelfAnimExist(105110 + (anim % 10))
trigger1 = anim = [105081,105089]
value = 105110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = time = 0
triggerall = anim != [105110,105119] ;Not already changed anim
trigger1 = anim != [105161,105169]
trigger2 = !SelfAnimExist(105170 + (anim % 10))
value = 105170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = time = 0
triggerall = anim != [105110,105119] ;Not already changed anim
trigger1 = anim = [105161,105169]
trigger1 = SelfAnimExist(105170 + (anim % 10))
value = 105170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9]
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110 + (anim % 10)

[State 5110, 10]
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110

[State 5110, 9]
type = ChangeAnim
persistent = 0
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = anim = [105171,105179]
triggerall = SelfAnimExist(105110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 105110 + (anim % 10)

[State 5110, 10]
type = ChangeAnim
persistent = 0
triggerall = Name = "Gill" && AuthorName = "GM" && Facing = -1
triggerall = Anim != [105111,105119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 105110

[State 5110, 11]
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = (Anim = [5110,5119]) || (Name = "Gill" && AuthorName = "GM" && Facing = -1 && Anim = [105111,105119])
value = 5150

[State 5110, 11]
type = SelfState
trigger1 = time = 70
trigger2 = (prevStateNo = [3880,3881]) && !NumProjID(1911315981)
value = 5120

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

;==================================================================================
;==================================================================================

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0 && Time = 0
first = 1
last = 59
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0 && Time = 0
fvalue = 0

[State 5900, 3] ;Change palette
type = RemapPal
triggerall = NumHelper(10001)
trigger1 = helper(10001),var(20+palNo) > 0
source = 1,1
dest = 1,(helper(10001),var(20+palNo))

[State 5900, 4] ;Intro for round 1
type = ChangeState
triggerall = Time
trigger1 = roundno = 1
value = 190

[State 5900, 5] ;All other rounds
type = ChangeState
triggerall = Time
trigger1 = NumHelper(10001)
value = 0