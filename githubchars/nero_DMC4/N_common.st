; 立ち
[Statedef 0]
type = S
movetype = I
physics = S
sprpriority = 0

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper

[State 0, 特定ステートから]
type = ChangeAnim
triggerall = Anim != 200 && Anim != 1200
triggerall = prevstateno != 20 && prevstateno != 21
trigger1 = Anim != 0 && Anim != 1 && Anim != 5 && Anim != 5200
trigger2 = Anim = 5200 && AnimTime = 0
value = 1
elem = ifelse(prevstateno = 12 || prevstateno = 52 ,2,1)

[State 0, 特定ステートから]
type = ChangeAnim
trigger1 = prevstateno = 20 || prevstateno = 21
trigger1 = time = 0
trigger1 = Anim != 0 && Anim != 1 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0
elem = 3

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
movetype = I
physics = C
anim = 10

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
movetype = I
physics = C
anim = 11
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type    = S
movetype = I
physics = S
anim = 12

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
movetype = I
physics = S
sprpriority = 0

[State 20, 前]
type = VelSet
Trigger1 = !var(59)
trigger1 = command = "holdfwd"
Trigger2 = var(59) && anim != 21
trigger2 = P2statetype != L
Trigger3 = var(59); && anim != 21
trigger3 = var(0) > 0
Trigger4 = var(59) && anim = 20
Trigger5 = var(59) && var(9) = 625
Trigger5 = P2bodydist X >120
x = const(velocity.walk.fwd.x)

[State 20, 後]
type = VelSet
Trigger1 = !var(59)
trigger1 = command = "holdback"
Trigger2 = var(59) && anim != 20
trigger2 = P2statetype = L || P2movetype = I
trigger2 = var(0) = 0
trigger2 = var(9) = 0
trigger2 = backedgedist >= 20
trigger3 = var(0) = 0
trigger3 = var(9) = 0
trigger3 = backedgedist >= 20
Trigger3 = var(59) && anim = 21
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, AI]
type = ChangeState
trigger1 = vel X = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
movetype = I
physics = S
ctrl = 0
sprpriority = 1

[State 40, 1]
type = changestate
trigger1 = pos Y < 0
trigger1 = Time = 0
value = 45

[State 45, 1]
type = changestate
trigger1 = Time = 0
trigger1 = var(4) = 0
value = 51

[State 40, 1]
type = changeanim
trigger1 = Time = 0
value = 40

[State 40, むてき]
type = nothitby
trigger1 = 1
value = ,AT

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 前]
type = VarSet
Trigger1 = !var(59)
Trigger1 = command = "holdfwd"
Trigger2 = var(59)&&RoundState = 2
Trigger2 = P2StateType != L || P2BodyDist X >= 30
Trigger2 = P2MoveType = H || Random <= 333 || P2StateType = L
Trigger3 = (var(59)&&Random<=var(59)*120)||var(39)
Trigger3 = (P2MoveType = H) || (var(0) > 0)
Trigger3 = P2Stateno != [120,159]
trigger4 = var(59) && RoundState = 2
Trigger4 = backedgebodydist < 40
trigger4 = P2BodyDist X <= 20
Trigger5 = var(59)&&RoundState = 2
trigger5 = vel X > 0
sysvar(1) = 1

[State 40, 後]
type = VarSet
Trigger1 = !var(59)
trigger1 = command = "holdback"
Trigger2 = var(59) && RoundState = 2 && vel X <= 0
Trigger2 = P2StateType != L
Trigger2 = P2MoveType != H
Trigger2 = BackEdgeBodyDist>60
Trigger2 = Random <= 500
Trigger3 = var(59) && RoundState = 2 && Random<=var(59)*120 && vel X <= 0
Trigger3 = P2Stateno = [120,159]
trigger3 = var(0) = 0
trigger3 = BackEdgeBodyDist > 20
trigger4 = var(59) && RoundState = 2 && vel X <= 0
trigger4 = p2statetype = L && BackEdgeBodyDist > 20 && enemynear,NumProj = 0
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, エアハイク回数]
type = varset
trigger1 = time = 1
var(4) = ifelse ( Pos Y >= 0 , 1 , 0 )

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
movetype = I
physics = S
ctrl = 0
sprpriority = 1

[State 45, 1]
type = changestate
trigger1 = pos Y = 0
trigger1 = Time = 0
value = 40

[State 45, 1]
type = changestate
trigger1 = Time = 0
trigger1 = var(4) = 0
value = 51

[State 45, 1]
type = changeanim
trigger1 = Time = 0
value = 40

[State 45, むてき]
type = nothitby
trigger1 = 1
value = ,AT

[State 45, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 2]
type = VarSet
Trigger1 = !var(59)
Trigger1 = command = "holdfwd"
Trigger2 = var(59)&&RoundState = 2
Trigger2 = P2StateType != L || P2BodyDist X >= 30
Trigger2 = P2MoveType = H || Random <= 333 || P2StateType = L
Trigger3 = (var(59)&&Random<=var(59)*120)||var(39)
Trigger3 = (P2MoveType = H) || (var(0) > 0)
Trigger3 = P2Stateno != [120,159]
trigger4 = var(59) && RoundState = 2
trigger4 = BackEdgeBodyDist <= 40
trigger4 = P2BodyDist X <= 30
sysvar(1) = 1

[State 45, 3]
type = VarSet
Trigger1 = !var(59)
trigger1 = command = "holdback"
trigger2 = var(59) && RoundState = 2 
Trigger2 = P2StateType != L
Trigger2 = P2MoveType != H
Trigger2 = BackEdgeBodyDist>60
trigger2 = P2BodyDist X >= 50
Trigger2 = Random <= 300
trigger3 = var(59) && RoundState = 2 
Trigger3 = P2StateType != L
Trigger3 = P2MoveType != H
Trigger3 = BackEdgeBodyDist>60
trigger3 = P2BodyDist X < 50
Trigger3 = Random <= 500
trigger4 = var(59) && RoundState = 2 
trigger4 = p2statetype = L && BackEdgeBodyDist > 20 && enemynear,NumProj = 0
Trigger5 = var(59) && RoundState = 2 && Random<=var(59)*120
Trigger5 = P2Stateno = [120,159]
trigger5 = var(0) = 0
trigger5 = BackEdgeBodyDist > 20
sysvar(1) = -1

[State 45, 3]
type = VarSet
trigger1 = var(59) && RoundState = 2 
trigger1 = p2statetype = L
trigger1 = P2movetype = H
Trigger1 = P2BodyDist X <= 30
sysvar(1) = 0

[State 45, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 45, エアハイク回数]
type = varset
trigger1 = time = 1
var(4) = ifelse ( Pos Y >= 0 , 1 , 0 )
IgnoreHitPause = 1

[State 45, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
movetype = I
physics = A

[State 50, むてき]
type = nothitby
trigger1 = time <= 10
value = ,AT

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

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

;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type    = U
movetype = U
physics = A

[State 51, 1]
type = ctrlset
trigger1 = 1
value = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
movetype = I
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
Trigger1 = !var(59)
trigger1 = command != "holdfwd"
value = 101
ctrl = 1

[State 100, AI]
type = ChangeState
TriggerAll = var(59)
triggerall = var(8)>20
Trigger1 = inguarddist
Trigger2 = P2BodyDist X<=50
trigger3 = RoundState != 2
value = 101
ctrl = 1

;---------------------------------------------------------------------------
; RUN_END
[Statedef 101]
type    = S
movetype = I
physics = S
anim = 101
sprpriority = 1

[State 101, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = animelemTime(2) >= 0 && animelemtime(7) < 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, むてき]
type = nothitby
trigger1 = animelemtime(1) >= 0 && animelemtime(7) < 0
value = ,AA

[State 105, 2]
type = null;CtrlSet
trigger1 = animelemtime(2) = 0
value = 0

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
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
triggerall = statetype = S
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random <= var(59)*20
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = Random <= var(59)*20
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
TriggerAll = Time > 0
Trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
Trigger3 = var(59)
Trigger3 = P2BodyDist X < 0
Trigger3 = Random <= (10-var(59))*40
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = posset
trigger1 = time = 0
y = 0

[State 130, 1]
type = velset
trigger1 = time = 0
y = 0

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random<=var(59)*20||var(59)>9
value = 131

[State 130, Stop Guarding]
type = ChangeState
TriggerAll = Time > 0
Trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
Trigger3 = var(59)
Trigger3 = P2BodyDist X < 0
Trigger3 = Random <= (10-var(59))*40
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 130, 1]
type = posset
trigger1 = time = 0
y = 0

[State 130, 1]
type = velset
trigger1 = time = 0
y = 0

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
TriggerAll = Time > 0
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = time >= 20
trigger2 = Random<=var(59)*20||var(59)>9
value = 130

[State 130, Stop Guarding]
type = ChangeState
TriggerAll = Time > 0
Trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
Trigger3 = var(59)
Trigger3 = P2BodyDist X < 0
Trigger3 = Random <= (10-var(59))*40
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
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
TriggerAll = Time > 0
trigger1 = sysvar(0)
trigger1 = command = "holdback"||var(59)
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
TriggerAll = Time > 0
Trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !inguarddist
Trigger3 = var(59)
Trigger3 = P2BodyDist X < 0
Trigger3 = Random <= (10-var(59))*40
value = 140

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
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
triggerall = statetype = S
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = S
physics = S

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
TriggerAll = Time > 0
trigger1 = HitShakeOver
value = 151 + 2*ifelse(!var(59),(command = "holddown"),(var(39)=1))

[State 150, Hi to Lo]
type = StateTypeSet
triggerAll = statetype != A
triggerall = statetype = S
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
triggerAll = statetype != A
triggerall = statetype = C
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = S
physics = S

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
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
triggerall = statetype = S
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
TriggerAll = Time > 0
trigger1 = HitShakeOver
value = 151 + 2*ifelse(!var(59),(command = "holddown"),(var(39)=1))

[State 152, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = S
physics = S

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
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
triggerall = statetype = S
trigger1 = !var(59)
Trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType != A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = !var(59)
Trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = EnemyNear,StateType = A
trigger2 = Random<=var(59)*20||var(59)>9
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
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

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
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
trigger1 = command = "holdback"||var(59)
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
;タイムオーバー（負けた時）
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;勝利分岐
[Statedef 180]
type = S

[State 180, ステート変更]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
;勝利
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 音]
type = PlaySnd
trigger1 = animelemTime(6) = 0
value = 181,0
channel = 0
;volume = 150

;---------------------------------------------------------------------------
;イントロ分岐
[Statedef 190]
type = S
ctrl = 0

;「Name」はdefファイルで設定した『キャラの名前（Name）』を、
;「AuthorName」は同じくdefファイルで設定した『キャラの作成者（Author）』を判断。

[State 190, ステート変更]
type = ChangeState
triggerall = time = 0
trigger1 = 1
;trigger1 = !(EnemyNear,AuthorName = "Elecbyte") && (EnemyNear,Name != "Kung Fu Man")
;trigger2 = !(EnemyNear,AuthorName = "Elecbyte") && (EnemyNear,Name = "Kung Fu Man")
value = 191

;[State 190, ステート変更];固有の相手を特定する手段
;type = ChangeState
;trigger1 = (EnemyNear,AuthorName = "Elecbyte") && (EnemyNear,Name = "Kung Fu Man")
;value = 193

;---------------------------------------------------------------------------
;イントロ
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, アニメ変更];バトル画面に切り替わった瞬間のフェードインの時、アニメを固定している
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 音]
type = PlaySnd
trigger1 = animelemTime(2) = 0
value = 1003,0
channel = 0

[State 191, 特殊効果];試合が開始するまではこのコントローラを使おう（※２）
type = AssertSpecial
trigger1 = animelemtime(30) < 0
flag = Intro ;イントロの状態

[State 191, ステート変更];アニメーションが終われば「通常立ち」のステートに変更する
type = ChangeState
trigger1 = roundstate = 2
value = 0

;---------------------------------------------------------------------------
; ※２：AssertSpecial
;
; 　他のコントローラでは設定出来ない『特殊な効果』を指定する命令。
; 　設定したトリガーが有効になってる間だけ一時的に適用される。
;
; 　適用出来るパラメータはこのコントローラを一つ設置する場合、最大３つまで。
; 　書式としては「flag」「flag2」「flag3」を順に加えていく形。
; 　flag2とflag3はオプション。ではその特殊効果を全て紹介。
;
; 　Intro          = イントロ（試合開始前の登場演出アクション）の状態になる。イントロステート専用。
; 　Invisible      = 自分の姿を消す。しかし残像（AfterImage）は消せない。
; 　RoundNotOver   = 現在のラウンドを過ぎない。勝利ポーズ専用。
; 　NoBarDisplay   = ライフバーを非表示にする。
; 　NoBG           = ステージの奥の画像を非表示にし、「真っ黒の背景」にする。
; 　NoFG           = ステージの手前の画像を非表示にする。
; 　NoStandGuard   = 立ちガードが出来なくなる。
; 　NoCrouchGuard  = しゃがみガードが出来なくなる。
; 　NoAirGuard     = 空中ガードが出来なくなる。
; 　NoAutoTurn     = 自動で振り向かない。
; 　NoJuggleCheck  = ジャグルをチェックしない。（ジャグルポイントが減らなくなる）
; 　NoKOSnd        = ＫＯ時の音声（11,0）を鳴らさないようにする。画面中に存在する全員に有効なので注意。
; 　NoKOSlow       = ＫＯ時のスローモーションを無効にする。（ＫＯ直前に有効にしないといけない）
; 　NoShadow       = 自分の影を消す。
; 　GlobalNoShadow = 画面中に存在する全てのプレイヤー（ヘルパーとProjectileも含む）の影を消す。
; 　NoMusic        = 演奏しているＢＧＭを止める。（プラグインによってはＢＧＭがバグるので要注意）
; 　NoWalk         = 歩かない。（前か後ろのキーを入力中コントロールが可能の時に勝手に[Statedef 20]にならない）
; 　TimerFreeze    = タイムカウント（制限時間）を停止する。
; 　UnGuardable    = 自分の全ての攻撃が『ガード不可』になる。
;
;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5001, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = anim = 5000 || anim = 5001 || anim = 5002
trigger1 = gethitvar(hittime) < 11
trigger2 = anim = 5010
trigger2 = gethitvar(hittime) < 13
trigger3 = anim = 5011 || anim = 5012
trigger3 = gethitvar(hittime) < 25
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

[State 5001, 6]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5001, 7]
type = ChangeState
trigger1 = hitover
trigger1 = animtime >= 4
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State 5010, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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
value = 5011 ;HITC_SLIDE

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5011, 接地]
type = posset
trigger1 = time = 0
y = 0

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = anim = 5020
trigger1 = gethitvar(hittime) < 9
trigger2 = anim = 5021 || anim = 5022
trigger2 = gethitvar(hittime) < 17
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

[State 5001, 6]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5011, 7]
type = ChangeState
trigger1 = hitover
trigger1 = animtime >= 4
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime >= 4
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
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
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = changeState
TriggerAll = CanRecover
TriggerAll = Pos y>=-15
TriggerAll = Alive
Trigger1 = command = "recovery"
trigger2 = var(59)&&RoundState = 2
Trigger2 = Random <= var(59)*15
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = changeState
TriggerAll = CanRecover
TriggerAll = Pos y<-15
TriggerAll = Alive
Trigger1 = command = "recovery"
trigger2 = var(59)&&RoundState = 2
Trigger2 = Random <= var(59)*15
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

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
value = 5101

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

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
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
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
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 0, ヘルパー消す]
type = DestroySelf
trigger1 = ishelper
IgnoreHitPause = 1
IgnoreHitPause = 1

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
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
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
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190

