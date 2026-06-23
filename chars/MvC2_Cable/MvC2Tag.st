;www.infinitymugenteam.com
;===========================================================================
;========================_____________________________======================
;========================|                           |======================
;========================|    MARVEL VS CAPCOM 2     |======================
;========================|                           |======================
;========================|          CABLE            |======================
;========================|___________________________|======================
;===========================================================================
;===========================================================================
;
;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------| Tag System     |------------------------------
;---------------------------|________________|------------------------------

;---------------------------------------------------------------------------
; ----------------------------------------------------------------------;
; CREDITS:
; Main tag code implementation and depelovement:
; - R.o.q.u.e.
; Slightly modified by:
; - AeroGP
; PLEASE GIVE CREDIT IF MODIFYING THIS!!!
; ----------------------------------------------------------------------;

;------------------------------------------------------------------------
;TagIn Implementation
;------------------------------------------------------------------------
; - Number of vars used: 1
; - Assigned var: var(33)
; - Values:
;   *var(33) = 0 --- Tag Disabled
;   *var(33) = 1 --- Tag Enabled
;   *var(33) = 2 --- Dual Hyper Combo performed
;   *var(33) = 3 --- Assist attack performed (alpha assist)- Projectile Assist
;   *var(33) = 4 --- Assist attack performed (beta assist)- Dash Assist
;   *var(33) = 5 --- Assist attack performed (gamma assist)- Not used

;***********************************************************************;
;***********************************************************************;

;                   ********************************
;                   *********  TAG states  *********
;                   ********************************

;***********************************************************************;
;***********************************************************************;

; Entering the screen
;--------------------

[Statedef 100500]
type = A
movetype = I
physics = N
anim = 4500	; <- You can use the standard running animation or put another one
sprpriority = 2
ctrl = 0

; Starting position
[State 4500, 1]
type = PosSet
trigger1 = time = 0
x = -243*(facing)
y = -150

; Attack velocity
[State 4500, 2]
type = VelSet
trigger1 = Time = 0
x = 16
y = 8

[State 4500, 3a] ; the character cannot be hit until he has fully entered on the stage
type = NotHitBy
trigger1 = BackEdgeBodyDist <= 0
value = SCA
time = 2

[State 4500, 3b] ; if partner was KOed, appear being invincible
type = NotHitBy
trigger1 = Partner, Life <= 0
value = SCA
time = 6

[State 4500, 4] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

[State 4500, 5a] ; the character attacks his opponent when :
type = ChangeState
triggerall = BackEdgeBodyDist >= 0	; he is on the stage
trigger1 = partner, life > 0		; and his partner is alive
;trigger1 = P2BodyDist X = [0, 50]      ; and his enemy is close
trigger1 = !Win && !Lose
value = 100501

[State 4500, 6]
type = VelSet
triggerall = BackEdgeBodyDist >= 0
trigger1 = FrontEdgeBodyDist <= 0	; he has reached the other side of the screen
trigger2 = partner, life <= 0		; his partner has just died
trigger2 = (Time >= 50) || (P2BodyDist X = [-100, 100])
trigger3 = P2Dist X < 0                 ; his enemy is behind him
trigger4 = P2BodyDist X = [-100, 100]
trigger4 = Win
trigger5 = Win
trigger5 = Time >= 20
trigger6 = Pos Y >= 0                   ; he has landed
trigger6 = Vel Y >= 0
x = 0
y = 0

[State 4500, 7] ; the character does not attack his opponent if:
type = ChangeState
triggerall = BackEdgeBodyDist >= 0
trigger1 = FrontEdgeBodyDist <= 0	; he has reached the other side of the screen
trigger2 = Partner, Life <= 0           ; his partner has just died
trigger2 = (Time >= 50) || (P2BodyDist X = [-100, 100])
trigger3 = P2Dist X < 0                 ; his enemy is behind him
trigger4 = P2BodyDist X = [-100, 100]
trigger4 = Win
trigger5 = Win
trigger5 = Time >= 20
trigger6 = Pos Y >= 0                   ; he has landed
trigger6 = Vel Y >= 0
value = 52
ctrl = 1

; Tag attack (when partner is tagged in)
;----------------------------
[Statedef 100501]
type = A
movetype = A
physics = N
sprpriority = 2
ctrl = 0

; Tag in attack (basicaly a flying kick)
[State 4501, 1a]
type = ChangeAnim
triggerall = SelfAnimExist(4500)  ; <--- check if this anim exists
trigger1 = time = 0
value = 4500                      ; <--- then change into it!

; Alternate tag in attack
[State 4501, 1b]
type = ChangeAnim
triggerall = !SelfAnimExist(4500) ; <--- if this anim DOESN'T exist
trigger1 = SelfAnimExist(650)     ; <--- check if this anim exists
trigger1 = time = 0
value = 650                   ; <--- then change into it!

[state 240, 2]
type = hitdef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
damage = 65,0
getpower = 50,0
givepower = 20,0
pausetime = 8,7
guard.pausetime = 8,7
sparkno = S8002
guard.sparkno = S8050
sparkxy = -10,-45
hitsound = S5,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
air.hittime = 12
yaccel = .53
ground.velocity = -1.5,-21
ground.cornerpush.veloff = -8
air.velocity = -1.5,-21
airguard.velocity = -6,-2
fall.xvelocity = 0
fall.yvelocity = -2
air.fall = 1
fall = 1
fall.recover = 0
id = 4
P2stateno = 100503
;
;[State 4501, TargetState]
;type = TargetState
;trigger1 = MoveHit = 1
;value = 100503
;ignorehitpause = 1
;persistent = 0

; This MUSN'T be changed unless you change it into a ground attack
[State 4501, 3]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

; Finally, make a taunt when succesfull (or not XD)
[State 4501, 4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = 100502
ctrl = 1

;---------------------
; Custom Tag in Taunt
[Statedef 100502]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

; Tag in taunt
[State 4502, 1]
type = ChangeAnim
triggerall = SelfAnimExist(4502)  ; <--- Tag in taunt anim
trigger1 = time = 0
value = 4502                   ; <--- ...

; This can be customized depending on the char
; --------------------------------------------
[State 4502, 2]
type = PlaySnd
trigger1 = time = 0
value = 10,10
channel = 0

[State 4502, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Launched State (spinning around, VS Style)
[Statedef 100503]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

; This only uses the Hip Up anim, if it doesn't exist it will change into
; normal falling anim
[State 4503, 1a]
type = ChangeAnim
triggerall = Alive
trigger1 = time = 0
value = ifelse(SelfAnimExist(4503), 4503, ifelse(SelfAnimExist(5051), 5051, 5050))

[State 4503, 1b]
type = ChangeAnim
triggerall = !Alive
trigger1 = time = 0
value = ifelse(SelfAnimExist(5030), 5030, ifelse(SelfAnimExist(5035), 5035, 5050))

[State 4503, 2]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1

[State 4503, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 0, ChangeState]
type = ChangeState
trigger1 = !alive
value = 5090
ctrl = 0

[State 4503, 4]
type = ChangeState
trigger1 = Vel Y > 0
value = 100504

;---------------------------------------------------------------------------
; Launched Part 2
[Statedef 100504]
type    = A
movetype= H
physics = N

[State 4503, 1a]
type = ChangeAnim
triggerall = Alive
trigger1 = time = 0
value = ifelse(SelfAnimExist(4504), 4504, ifelse(SelfAnimExist(5061), 5061, 5050))

[State 4503, 1b]
type = ChangeAnim
triggerall = !Alive
trigger1 = time = 0
value = 5050

[State 4504, 2] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 9022, SelfState]
type = SelfState
trigger1 = pos y >= 0 && vel y > 0
value = 5110

; Leaving Taunt
;--------------
[Statedef 100510] ; Define your own taunt here
type = S
movetype = I
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 4510, 1a]
type = ChangeAnim
triggerall = SelfAnimExist(4510)  ; <--- check if this anim exists
trigger1 = time = 0
value = 4510                      ; <--- then change into it!

; leaving taunt (alt)
[State 4510, 1b]
type = ChangeAnim
triggerall = !SelfAnimExist(4510)  ; <--- this anim doesn't exist...
triggerall = SelfAnimExist(180)    ; <--- so check if this one exists
trigger1 = time = 0
value = 180                       ; <--- and change into it!

[State 4510, 2] ; the character cannot be hit since he is leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4510, 3] ; Prevents the camera from following the char
type = PlayerPush
trigger1 = 1
value = 0

[State 181, PlaySnd]
type = PlaySnd
triggerall = anim = 4510
trigger1 = animelem = 3
value = 10,1
channel = 0

[State 4510, 4]
type = ChangeState
trigger1 = time = 30
value = 100511

; Leave the stage
;----------------

[Statedef 100511]
type = S
movetype = I
physics = N
anim = 43	; <- Jump Start
sprpriority = 2
ctrl = 0

; NEW !! Tag active definer
[State 4511, 1]
type = VarSet
trigger1 = time = [0,1]
var(33) = 1

[State 4511, 2] ; Jump Backwards
type = ChangeAnim
trigger1 = AnimTime = 0
value = 43

[State 4511, 3] ; StateTypeSet changes to aerial while jumping
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A

[State 4511, 4]
type = VelSet
trigger1 = Anim = 43
x = -12
y = -6

[State 4511, 5] ; Cannot be hurt if leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4511, 6] ; Ghost
type = PlayerPush
trigger1 = 1
value = 0

[State 4511, 7] ; Camera shouldn't follow him
type = ScreenBound
trigger1 = 1
value = 0

[State 4511, 9]
type = ChangeState
trigger1 = BackEdgeDist < -40
trigger2 = Time >= 40
value = 100512

; Standby (offscreen)
;-----------------------
[Statedef 100512]
type = A
movetype = I
physics = N
anim = 0
velset = 0,0
ctrl = 0

[State 4512, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1 
flag = invisible
flag2 = noshadow


[State 4512, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 4512, 3] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

[State 4512, 4] ; Gains life (optional)
type = LifeAdd
trigger1 = (gametime%10) = 0
value = 1

[State 4512, 5] ; always face the same direction as partner
type = turn
trigger1 = facing != partner,facing

[State 4512, 6] ; always stay behind and at the same distance of the char on the stage
type = posset
trigger1 = 1
x = (partner, pos x) - 1000*facing
y = -150

[State 4512, 7] ; prevent bugs when you win or lose by time over
type = ChangeState
triggerall = Alive
trigger1 = RoundState = 3
trigger1 = time >= 20
value = 100520

[State 4512, 7] ; prevent bugs if your partner's in this state already
type = ChangeState
triggerall = Alive
trigger1 = Partner,stateno = stateno
value = 52


; Leaving screen after Delayed Hyper Combo (if I'm on air)
; ======================================================================
[StateDef 100513]
type = A
movetype = I
physics = N
ctrl = 0
anim = 44

[State 4513, Landing]
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)

[State 4513, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4513, Land]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = ifelse(roundstate > 2, 52, 100511)
ctrl = ifelse(roundstate > 2, 1, 0)

;---------------------------------------------------------------------------
; Jumping in
[Statedef 100520]
type = S
movetype = I
physics = N
anim = 41
sprpriority = 2
ctrl = 0

[State 4520, 0]
type = PosSet
trigger1 = time = 0;AnimElem = 2, < 0
x = -243*(facing)
y = -80;0

[State 4520, 1]
type = VelSet
trigger1 = time = 4;AnimElem = 2, = 0
x = 12;4
y = 5; -8.75

[State 4520, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 6

[State 4520, 3]
type = ScreenBound
trigger1 = 1
value = 0

;[State 4520, 8]
;type = Gravity
;trigger1 = time >= 4

[State 4520, 9]
type = VelSet
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
;trigger1 = AnimElem = 2, >= 0
x = 0
y = 0

[State 4520, 10]
type = ChangeState
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
;trigger1 = AnimElem = 2, >= 0
value = 100521

;---------------------------------------------------------------------------
; Landing
[Statedef 100521]
type = S
movetype = I
physics = N
anim = 47
sprpriority = 2
ctrl = 0

[State 4520, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Helper]
type = Helper
trigger1 = time = 0
stateno = 8200

[State 4520, 5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 6

[State 4520, 10]
type = ChangeState
trigger1 = AnimTime >= 0
value = 0
ctrl = 1


; Leaving Taunt (for assist attacks)
;--------------
[Statedef 100530]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 195


[State 800, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s10,0
channel = 0


[State 4510, 1] ; Prevents the camera from following the char
type = PlayerPush
trigger1 = 1
value = 0

[State 4510, 2]
type = ChangeState
trigger1 = animtime = 0
value = 100511 ; Return to your place man!!!!


;=======================================================================
; Assist Attacks section
; As in MvC and MvC2, you can summon your partner to make an assist
; move, then he will taunt and leave, the basic difference between
; MvC2 version and this one is that your can use the alpha, beta or
; gamma assits if you hold a certain direction in the pad, so, the
; order of the attacks are:
; - Alpha Assist: y+b
; - Beta Assist: y+b + holding back
; - Gamma Assist: y+b + holding down.
; The only thing missing is the ability of calling out your partner
; when you are jumping (just normal jump, in super jump this is not
; posible).
; =======================================================================

; Standby onscreen for assist
;----------------------------
[Statedef 100700]
type = S
movetype = I
physics = S
sprpriority = -2
ctrl = 0
velset = 0, 0

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here

[State 4700, 1a] ; TAUNT A :
type = ChangeAnim
triggerall = time = 0
trigger1 = selfanimexist(4900)	  ; <--- find custom taunt anim...
value = 4900			  ; <--- do animation!

[State 4700, 1b] ; TAUNT B :
type = ChangeAnim
triggerall = time = 0
triggerall = !selfanimexist(4900) ; <--- if custom anim not found
trigger1 = selfanimexist(4502)	  ; <--- find normal taunt...
value = 4502			  ; <--- do animation!

[State 3000, s1]
type = PlaySnd
triggerall = anim = 4502
trigger1 = time = 0
value = 10,4
channel = 0

[State 4700, 2]
type = CtrlSet
trigger1 = time = 4
value = 1

[State 4700, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 4520, 0]
type = PosSet
trigger1 = 1
y = 0

[State 4520, 5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 6

[State 4520, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Jumping into the screen first (partner)
;----------------------------------------
[Statedef 100701]
type = A
movetype = I
physics = N
anim = 42  ; <- Jumping In (Ready or not, I'm jumping in!!!)
sprpriority = 2
ctrl = 0



; NEW !! Tag active definers --------------------------------
[State 4701, 1a]
type = VarSet
triggerall = Palno = [1,4] 
trigger1 = time = [0,1]         ;alpha-Assist (Projectile Type)
var(33) = 3

[State 4701, 1a]
type = VarSet
triggerall = Palno = [5,8]
trigger1 = time = [0,1]       ;beta-Assist (Anti-Air Type)
var(33) = 4

[State 4701, 1a]
type = VarSet
triggerall = Palno = [9,12]
trigger1 = time = [0,1]         ;gamma-Assist (Variety Type)
var(33) = 5


; -----------------------------------------------------------

[State 4701, 2] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

; Starting position
[State 4701, 3]
type = PosSet
trigger1 = time = 0
x = (partner, pos x) - (200*(facing)) ; variable pos
y = -100

; Attack velocity
[State 4701, 4]
type = VelSet
trigger1 = Time = 0
x = 15
y = 7

[State 4701, 5]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here

; Do assist attack depending on what dir is holding the partner
[State 4701, 6]
type = ChangeState
triggerall = Var(33) = 3
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = ifelse(Partner,MoveType = H,100530,100702)
ctrl = 0

[State 4701, 6]
type = ChangeState
triggerall = Var(33) = 4
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = ifelse(Partner,MoveType = H,100530,100704)
ctrl = 0

[State 4701, 6]
type = ChangeState
triggerall = Var(33) = 5
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = ifelse(Partner,MoveType = H,100530,100706)
ctrl = 0



; Assist attacks (All attacks can be customized depending on the char)
;------------------------------------------------------------------------

; Projectile Assist
; -------------
[Statedef 100702]
type    = S                     
movetype= I                    
physics = S                  
juggle  = 0                    
velset = 0,0                   
ctrl = 0                      
anim = 1010                     
poweradd = 56                    
sprpriority = 2

[State 3000, Explod]
type = Explod
trigger1 = Time = 0
anim = 8300
id = 8300
supermove = 1
sprpriority = 4
ownpal = 1


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 10,15
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 20,0
volume = 255

[State 1000, Explod]
type = Explod
trigger1 = time = 0
removetime = -2
id = 1001
anim = 1011
scale = const(size.xscale) ,1
pos = 0, 0
postype = p1
sprpriority = 2
ownpal = 1
bindtime = -1
supermovetime = 0
ignorehitpause = 1

[State 1000, Explod]
type = Explod
trigger1 = animelem = 5
removetime = -1
id = 1001
anim = 1002
pos = 0, 0
postype = p1
sprpriority = 3
scale = const(size.xscale),1
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5
stateno = 1005
name = "Beam Source"
ownpal = 1
postype = p1
pos = 150*const(size.xscale), 0
size.xscale = const(size.xscale)

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5
stateno = 1006
ownpal = 1
pos = 200*const(size.xscale), -60
postype = p1
name = "Beam Itself"
size.xscale= const(size.xscale)

[State 1000]
type = varadd
triggerall = var(26) =[-3,3]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 26
value = -1*(command = "holddown")+1*(command = "holdup")

[State 1000]
type = varadd
triggerall = var(26) =[-3,3]
triggerall = (command != "holdup")&&(command != "holddown")
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 26
value = 1*var(27)

[State 0]
type = varadd
trigger1 = timemod = 50,20
trigger2 = timemod = 50,30
v = 26
value = -1

[State 0]
type = varadd
trigger1 = timemod = 50,10
trigger2 = timemod = 50,40
v = 26
value = 1

[State 0]
type = varadd
trigger1 = var(26) != 0
trigger1 = var(26) > 0
trigger1 = timemod = 30,0
v = 26
value = -1

[State 0]
type = varadd
trigger1 = var(26) != 0
trigger1 = var(26) < 0
trigger1 = timemod = 30,0
v = 26
value = 1

[State 0]
type = varadd
trigger1 = command !="holdup"
trigger1 = command !="holddown"
v = 26
value = Ifelse(var(26)>0,-1,1)

[State 0]
type = varset
trigger1 = timemod = 80,0
trigger1 = command !="holdup"
trigger1 = command !="holddown"
var(27) = -1

[State 0]
type = varset
trigger1 = timemod = 80,40
trigger1 = command !="holdup"
trigger1 = command !="holddown"
var(27) = 1

[State 0]
type = varset
trigger1 = 1
var(28) = stateno
ignorehitpause = 1

[State 1000]
type = changestate
trigger1 = animtime = 0
value = 100703

[Statedef 100703]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 1004
sprpriority = 2

[State 1004, Explod]
type = Explod
trigger1 = time = 0
removetime = -2
id = 1005
anim = 1005
pos = 0, 0
postype = p1
sprpriority = 3
scale = const(size.xscale) ,1
ownpal = 1
bindtime = -1
supermovetime = 0
ignorehitpause = 1


[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Roundstate = 3,0,100530)
ctrl = ifelse(RoundState = 3,1,0)


;Anti-Air Assist
[Statedef 100704]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 56
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 3000, Explod]
type = Explod
triggerall = anim = 1100
trigger1 = Time = 0
anim = 8300
id = 8300
supermove = 1
sprpriority = 4
ownpal = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = anim = 1100
trigger1 = animelem = 3
value = S10,11
volume = 255
channel = 0

[State 2000, 1] 
type = VelSet 
trigger1 = animelem = 4
trigger1 = anim = 1100
x = 7
y = -9

[State 1100, StateType]
type = Nothitby
trigger1 = anim = 1100
value = SCA,NA,SA,HA,HP,NP,SP

[State 1100, StateType]
type = hitby
trigger1 = anim = 1100
value = SCA,NT,ST,HT

[State 2000, 5] 
type = HitDef 
trigger1 = animelem = 3 || animelem = 4
attr = A, SA 
damage    = 36,12
Getpower = 28,14
givepower  = 28,14
animtype  = Hard 
ground.type = Low
air.type = low
hitflag = MAF 
guardflag = MA 
priority = 4, hit
sparkxy = -8,-60 
pausetime = 10,10
sparkno = s8002
hitsound = s5,2              
guardsound = s6,0
guard.sparkno = s8050
ground.slidetime = 10 
ground.hittime  = 15 
ground.velocity = -5, -15 
guard.velocity = -7 
air.velocity = -5,-15 
palfx.time = 30
palfx.add = -14,-14,256
forcenofall = 1
yaccel = .53
id = 1+4+8

[State 0, Helper]
type = Helper
trigger1 = time = 11
name = "Psimitar"
stateno = 1105
pos = 0,0
postype = p1
size.xscale = const(size.xscale)

[State 2000, 11]
type = ChangeAnim
trigger1 = time > 12
value = 1112 
persistent = 0 

[State 2000, 9] 
type = VelSet 
trigger1 = Anim = 1112 
trigger1 = animelem = 2
x = 0 

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1112
movetype = I
ignorehitpause = 1

[State 2000, 9] 
type = Gravity
trigger1 = Anim = 1112 

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 100705


[Statedef 100705]
type    = S
physics = S
anim = 47
velset = 0,0
ctrl = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 52, VelSet]
type = VelSet
trigger1 = time = 0
y = 0

[State 52, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 52, Helper]
type = Helper
trigger1 = time = 0
stateno = 8200

[State 901, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = ifelse(Roundstate = 3,0,100530)
ctrl = ifelse(RoundState = 3,1,0)


; Variety assist
; -------------
[Statedef 100706]
type    = S                     
movetype= I                    
physics = S                 
juggle  = 0                    
velset = 0,0                   
ctrl = 0                      
anim = 1200                     
poweradd = 56                    
sprpriority = 2

[State 3000, Explod]
type = Explod
trigger1 = Time = 0
anim = 8300
id = 8300
supermove = 1
sprpriority = 4
ownpal = 1

[State 1200, PlaySnd]
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 10,14
volume = 255
channel = 0

[State 0, VarAdd]
type = Varset
trigger1 = time = 0
v = 26
value = 2

[State 1200, Helper]
type = Helper 
trigger1 = AnimElem = 8 
id = 1200 
stateno = 1205
pos = 47*const(size.xscale), -100
postype = p1  
ownpal = 1 
name = "Grenade" 
size.xscale= const(size.xscale)

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Roundstate = 3,0,100530)
ctrl = ifelse(RoundState = 3,1,0)


