;JUMPING KICK
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600

[State 600, Select]
type = VarRandom
trigger1 = Time = 1
v = 11
range = 11, 12


[State 600, 1.5]
type = Playsnd
trigger1 = animelem = 2
value = F5,15

[State 620, 145]
type = Playsnd
trigger1 = Animelem = 2
value = 4,15

[State 600, 2]
type = HitDef
trigger1 = time > 0
trigger1 = !MoveContact
attr = A, NA
damage    = 190, 60
air.animtype  = Back
air.hittime  = 55
air.velocity = -3, -6
yaccel = 0.58
;;Nothing = 10
guardflag = HL
priority = 7
sparkno = -1
guard.sparkno = -1
pausetime = 7,2
p2facing = 1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.hittime  = 50
ground.velocity = 0,0
fall.recover = 0
air.fall = 1
recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 600, 3.3]
type = Changestate
trigger1 = MoveHit
value = 601

;---------------------------------------------------------------------------
;JUMPING PUNCH
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610

[State 621, adjust]
type = Turn
trigger1 = Time = 0
trigger1 = (P2Dist X < 0) && (P2Dist X > -55)

[State 610, Select]
type = VarRandom
trigger1 = Time = 1
v = 11
range = 11, 12

[State 610, Play]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 620, 145]
type = Playsnd
trigger1 = Animelem = 2
value = 4,15


[State 610, 1.5]
type = turn
trigger1 = time = 0
trigger1 = P2Dist X < -55

[State 610, 2]
type = HitDef
;trigger1 = time > 0
trigger1 = !movecontact
attr = A, NA
damage    = 160, 50
air.animtype  = Back
air.hittime  = 55
air.velocity = -3, -5
yaccel = 0.58
;;Nothing = 10
guardflag = HL
priority = 7
pausetime = 7,2
hitsound   = 5,1
guardsound = 5,14
p2facing = 1
sparkno = -1
sparkxy = -25,-30
guard.sparkno = -1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.ctrltime = 20
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 610, 3.3]
type = Changestate
trigger1 = MoveHit
value = 611


[State 610, 4]
type = Changestate
trigger1 = Pos Y = 0
value = 50
;-----------------------------------------------------------------------------------------

;JUMPING SIDE KICK
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 620

[State 621, adjust]
type = Turn
trigger1 = Time = 0
trigger1 = (P2Dist X < 0) && (P2Dist X > -55)

[State 620, Select]
type = VarRandom
trigger1 = Time = 1
v = 11
range = 11, 12


[State 620, 1.5]
type = Playsnd
trigger1 = Animelem = 2
value = F5,15

[State 620, 145]
type = Playsnd
trigger1 = Animelem = 2
value = 4,15

[State 620, 2]
type = HitDef
;trigger1 = time > 0
trigger1 = !movecontact 
attr = A, NA
damage    = 260,70
animtype  = Back
hitflag = CMAFD
;;Nothing = 10
guardflag = HL
priority = 7
p1stateno = 621
p2facing = 1
pausetime = 7,2
sparkno = -1
sparkxy = -15,-50
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
guard.ctrltime = 20
ground.hittime  = 20
ground.velocity = -3, -10
air.velocity = -3, -6
;air.hittime  = 45
yaccel = 0.58
;fall = 1
;air.fall = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 620, 4]
type = Changestate
trigger1 = Pos Y = 0
value = 0
ctrl = 1
  
[Statedef 621]
type    = A
movetype= A
physics = A
juggle = 7
ctrl = 0

[State 2, blood111]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(30) < 1
ID = 30
stateno = 30
pos = 15, 70
postype = p1
persistent = 0
ignorehitpause = 1

[State 620, 4]
type = VelSet
trigger1 = time < 5
X = -.1


[State 620, 534]
type = VelSet
trigger1 = time = 0
Y = 2

[State 620, 4]
type = Changestate
trigger1 = Pos Y = 0
value = 0
ctrl = 1

; HP1
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                     
juggle  = 5                     
velset = 0,0                    
ctrl = 0                        
anim = 200                       
sprpriority = 2

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
trigger1 = p2statetype != S
Value = 1

[State 442, 3.3]
type = VarAdd
trigger1 = animelem = 2
v = 16
Value = 1

[State 442, 3.3]
type = VarSet
triggerall = 1
trigger1 = p2movetype != H
trigger2 = Var(16) = 8
v = 16
Value = 0

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 4,10

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) < 5
trigger1 = p2statetype = S
trigger2 = Var(16) < 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 110,30                
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -3, -5
yaccel = 0.5
ground.cornerpush.veloff = 0
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) = 5
trigger1 = p2statetype = S
trigger2 = Var(16) = 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 110,30                
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -3, -5
yaccel = 0.5
ground.cornerpush.veloff = -25
;p1stateno = 21237
p2stateno = 21238
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State -1, Stand SPunch2]
type = ChangeState
value = 221
triggerall = command = "a"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State -1, Stand SPunch2]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;HP - Part 2
; HP2
[Statedef 201]
type    = S                      
movetype= A                      
physics = S                     
juggle  = 7
velset = 0,0                    
ctrl = 0                        
anim = 201                     
sprpriority = 2 

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
trigger1 = p2statetype != S
Value = 1                

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 4,10

[State 442, 3.3]
type = VarAdd
trigger1 = animelem = 2
v = 16
Value = 1

[State 442, 3.3]
type = VarSet
triggerall = 1
trigger1 = p2movetype != H
trigger2 = Var(16) = 8
v = 16
Value = 0

[State 2, blood222]
type = Helper
trigger1 = movehit
trigger1 = numhelper(30) < 1
ID = 30
stateno = 30
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) < 5
trigger1 = p2statetype = S
trigger2 = Var(16) < 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 110,30                
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -3, -5
yaccel = 0.5
ground.cornerpush.veloff = 0
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) >= 5
trigger1 = p2statetype = S
trigger2 = Var(16) >= 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 110,30               
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -3, -5
yaccel = 0.5
ground.cornerpush.veloff = -25
;p1stateno = 21237
p2stateno = 21238
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State -1, Stand SPunch2]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State -1, Stand SPunch2]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;LP - Part 1
; LP1
[Statedef 220]
type    = S                      
movetype= A                      
physics = S                     
juggle  = 5                     
velset = 0,0                    
ctrl = 0                        
anim = 220                       
sprpriority = 2                  

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
trigger1 = p2statetype != S
Value = 1

[State 442, 3.3]
type = VarAdd
trigger1 = animelem = 2
v = 16
Value = 1

[State 442, 3.3]
type = VarSet
triggerall = 1
trigger1 = p2movetype != H
trigger2 = Var(16) = 8
v = 16
Value = 0

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 4,10

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) < 5
trigger1 = p2statetype = S
trigger2 = Var(16) < 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 80,20                
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -2, -5
yaccel = 0.5
airguard.velocity = -1.9
ground.cornerpush.veloff = 0
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) >= 5
trigger1 = p2statetype = S
trigger2 = Var(16) >= 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 80,20               
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -2, -5
yaccel = 0.5
airguard.velocity = -1.9
ground.cornerpush.veloff = -30
;p1stateno = 21237
p2stateno = 21238
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State -1, Stand SPunch2]
type = ChangeState
value = 221
triggerall = command = "a"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State -1, Stand SPunch2]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State 205, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;LP - Part 2
; LP2
[Statedef 221]
type    = S                      
movetype= A                      
physics = S                     
juggle  = 7                     
velset = 0,0                    
ctrl = 0                        
anim = 221                      
sprpriority = 2                  

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
trigger1 = p2statetype != S
Value = 1

[State 442, 3.3]
type = VarAdd
trigger1 = animelem = 2
v = 16
Value = 1

[State 442, 3.3]
type = VarSet
triggerall = 1
trigger1 = p2movetype != H
trigger2 = Var(16) = 8
v = 16
Value = 0

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 4,10


[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) < 5
trigger1 = p2statetype = S
trigger2 = Var(16) < 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 80,20
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -2, -5
yaccel = 0.5
airguard.velocity = -1.9
ground.cornerpush.veloff = 0
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 200, 1]
type = HitDef
triggerall = !MoveContact
trigger1 = Var(16) >= 5
trigger1 = p2statetype = S
trigger2 = Var(16) >= 1
trigger2 = p2statetype != S
attr = S, NA                    
damage    = 80,20
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAFD            
pausetime = 0,0
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
p2facing = 1
air.juggle = 6
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0
air.velocity = -2, -5
yaccel = 0.5
airguard.velocity = -1.9
ground.cornerpush.veloff = -30
;p1stateno = 21237
p2stateno = 21238
numhits = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State -1, Stand SPunch2]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State -1, Stand SPunch2]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = time >=8
trigger1 = movehit = 0
trigger2 = movecontact
trigger2 = time >=4

[State 206, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------
;HK
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 210

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 25, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 210, 1.4]
type = Playsnd
trigger1 = Animelem = 4
value = F5,15

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 4
value = 4,15

[State 210, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Light
damage    = 240, 50
guardflag = HL
hitflag = MAF
pausetime = 7,1
sparkno = -1
sparkxy = -20,-105
guard.sparkno = -1
hitsound   = 5,21
guardsound = 5,14             
ground.type = High
p2facing = 1
guard.ctrltime = 20 
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -2.7,-4.8;-3.7,-4.8
yaccel = 0.5;58
air.hittime = 20
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
ground.cornerpush.veloff = -30
priority = 1, Miss

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 225

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 4
value = 4,10

[State 225, 1.5]
type = Playsnd
trigger1 = animelem = 4
value = F5,15

[State 225, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Light
damage    = 210, 40
guardflag = HL
hitflag = CMAF
pausetime = 7, 1
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low
p2facing = 1
guard.ctrltime = 20 
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,0
air.velocity = -2.7,-4.8
yaccel = 0.5
air.hittime = 30   
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
ground.cornerpush.veloff = -30
priority = 1, Miss


[State 225, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 240


[State 2, Roundhouseblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 290, 40
guardflag = HL
hitflag = MAF
pausetime = 15,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6            
air.velocity = -5,-6
air.hittime = 17  
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 2444]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 210

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 8000, sad]
type = BGPalFX
trigger1 = animelem = 1
time = 9999
add = -100, -100, -100

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 13,0

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 166, 22
guardflag = HL
hitflag = MAF
pausetime = 0, 2
p2stateno = 441
sparkno = 1
sparkxy = 30,-95                   
guard.sparkno = -1                   
hitsound = 5,0
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
ground.hittime  = 30
ground.velocity = -5,-5            
air.velocity = -4.4,-5.2
air.hittime = 17  
;fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 240, 4]
type = ChangeState
trigger1 = Movehit = 1
value = 2401
ctrl = 1

[Statedef 2401]
type    = S
movetype= I
physics = S
ctrl = 0

[State 2401, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 245]
type    = S
movetype= A
physics = C
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 245

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15
[State 245, 2]
type = HitDef
trigger1 = !movecontact
trigger1 = p2name != "shao kahn,"
trigger1 = p2name != "kintaro"
trigger1 = p2name != "goro"
trigger1 = p2name != "motaro"
attr = S, NA
animtype  = Back
damage    = 200, 30
guardflag = L
hitflag = M
pausetime = 0,2
sparkno = -1
hitonce = 1
guard.sparkno = -1
guardsound = 5,14
hitsound = 5,14
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 0
p2facing = 1
air.velocity = -3.4,-4.2
air.hittime = 17  
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 1
fall.recover = 0
ground.cornerpush.veloff = -30
priority = 1, Miss

[State 245, 222]
type = HitDef
triggerall = AnimElem = 5
trigger1 = p2name = "shao kahn,"
trigger2 = p2name = "kintaro"
trigger3 = p2name = "goro"
trigger4 = p2name = "motaro"
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 200, 30
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = M
hitflag = M                    ;Flags of conditions that move can hit
priority = 1, Miss
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
guardsound = 5,14
hitsound = 5,14
numhits = -1
hitonce = 1
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20 
ground.velocity = -8,0              ;Time to regain control after guard (def: guard.slidetime)
air.velocity = -2.3, -2.6
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
ground.cornerpush.veloff = -30
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 245, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400


[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 200, Playf]
type = PlaySnd
trigger1 = animelem = 2
value = 4, 15


[State 400, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 60, 20
animtype  = Light
hitflag = M
guardflag = L
pausetime = 5,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = Low
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
air.velocity = -1.5,-2
ground.cornerpush.veloff = -20
down.velocity = -4,0
down.hittime = 20
fall.recover = 0
p2facing = 1
air.fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 400, 3]
type = CtrlSet
trigger1 = Animtime = 0
value = 1

[State 400, 4]
type = ChangeState
trigger1 = MoveHit
triggerall = Var(50) = 1
triggerall = p2bodydist X > 1 && p2bodydist X < 50
value = 410
ctrl = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1

ctrl = 0
anim = 410

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 200, Playf]
type = PlaySnd
trigger1 = animelem = 2
value = 4, 10


[State 410, 2]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 120, 30
animtype  = LIGHT
;;Nothing = 10
hitflag = MAF
guardflag = L
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
guard.ctrltime = 20
guard.slidetime = 20
ground.type = Low
ground.cornerpush.veloff = -20
ground.slidetime = 20
ground.hittime  = 20
p2facing = 1
ground.velocity = -7,0
air.velocity = -3,-6
yaccel = 0.58
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss


[State 410, 3]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 420, 4]
type = ChangeState
trigger1 = MoveHit
triggerall = Var(50) = 1
triggerall = p2bodydist X > 1 && p2bodydist X < 50
value = 430
ctrl = 1

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 420

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [25, 50]
trigger1 = 1
value = F5, 15

[State 200, Plaay]
type = PlaySnd
trigger1 = time = 1
triggerall = Var(1) = [0, 24]
trigger1 = 1
value = F5, 20

[State 200, Playf]
type = PlaySnd
trigger1 = animelem = 2
value = 4, 15


[State 420, 2]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 60, 20
animtype  = Light
air.animtype  = Back
air.velocity = -3,-6
yaccel = 0.58
sparkno = -1
guard.sparkno = -1
hitflag = MAFD
guardflag = L
pausetime = 0,2
p2facing = 1
hitsound = 5,1
guardsound = 5,14
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.ctrltime = 20
guard.velocity = -15
guard.slidetime = 20
ground.cornerpush.veloff = -20
air.velocity = -2,-2
down.velocity = -4,0
down.hittime = 20
fall.recover = 0
air.fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss


[State 420, 4]
type = ChangeState
trigger1 = MoveHit
triggerall = Var(50) = 1
triggerall = p2bodydist X > 1 && p2bodydist X < 50
value = 400
ctrl = 1

[State 420, 3]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 430]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
anim = 430
sprpriority = 2


[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15


[State 181, ED]
type = Explod
trigger1 = animelem = 1
anim = 888
id = 7088
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 181, ED]
type = Explod
trigger1 = time = 1
anim = 888
id = 89
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 550

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
triggerall = NumHelper(711) = 0
trigger2 = p2stateno = 12001
attr = C, NA
damage    = 360, 90
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
p1stateno = 431
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-11
air.velocity = -1.8,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss


[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
;triggerall = Numexplod(712) = 1
triggerall = Numhelper(711) = 1
triggerall = Var(24) = 0
triggerall = p2statetype != A
triggerall = p2stateno != 40
triggerall = p2stateno != 50
triggerall = p2stateno != 12001
attr = C, NA
damage    = 360, 90
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
p1stateno = 712
p2stateno = 713
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 0
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = 0,0
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
;triggerall = Numexplod(712) = 1
triggerall = Numhelper(711) = 1
triggerall = Var(24) = 0
trigger1 = p2statetype = A
trigger2 = p2stateno = 12001
attr = C, NA
damage    = 360, 90
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
p1stateno = 431
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-12
air.velocity = -1.8,-13
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 730]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 8000, sad]
type = BGPalFX
trigger1 = animelem = 1
time = 9999
add = -100, -100, -100

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 13,0

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
attr = C, NA
damage    = 360, 90
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
p1stateno = 431
sparkno = 1
sparkxy = -15,-95
guard.sparkno = -1
hitsound   = 5,0
p2stateno = 701
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -20
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2,-15
air.velocity = -2,-15
yaccel = 0.55
envshake.time = 30
envshake.freq = 30
envshake.ampl = 9
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 99430]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
attr = C, NA
damage    = 360, 90
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
p1stateno = 88500
sparkno = -1
guard.sparkno = -1
hitsound   = 5,3
guardsound = 5,14             
ground.type = High
ground.slidetime = 5
p2facing = 1
ground.hittime  = 5
ground.velocity = - 1, -10.5          
air.velocity = -1.0,-8
down.hittime = 20
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)



[State 202, NotFriendly]
type = VarSet
trigger1 = MoveGuarded
v = 5
value = 1

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 431]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 431

[State 2, Upperblood]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(28) < 1
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 0
v = 45
range = 1, 140

[State 1200, toasty]
type = Explod
trigger1 = time = 1
trigger1 = p2stateno != 9010
trigger1 = var(45)  = [120, 130]
anim = F28
pos = 300,245
postype = left
ontop = 1
sprpriority >= 5
Bindtime = -1

[State 10211, toasty]
type = Playsnd
trigger1 = time = 15
trigger1 = p2stateno != 9010
trigger1 = var(45)  = [120, 130]
value = F5,39
volume = 150

[State 202, NotFrly]
type = Changeanim
trigger1 = Time = 15
value = 431


[State 202, NotFriendly]
type = VarSet
trigger1 = Time = 0
triggerall = var(30) != 10016
v = 5
value = 1

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 10
v = 11
range = 1, 140

[State 431,324.2]
type = VarRandom
trigger1 = Time = 5
triggerall = var(30) = 10016
v = 15
range = 1, 60

[State 431, 3.51]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(15) = [1, 20]
trigger1 = time = 5
triggerall = var(30) = 10016
value = F5, 4
volume = 50

[State 431, 3.61]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(15) = [21, 40]
trigger1 = time = 5
triggerall = var(30) = 10016
value = F6, 0
volume = 50

[State 431, 3.71]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(15) = [41, 60]
trigger1 = time = 5
triggerall = var(30) = 10016
value = F5, 5
volume = 50


[State 431, 3.5]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [1, 20]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F5, 13
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [21, 40]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F5, 6
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [41, 60]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F5, 5
volume = 50

[State 431, 3.8]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [61, 80]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F0, 21
volume = 50

[State 430, 3.9]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [81, 100]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F5, 4
volume = 50

[State 430, 33.9]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [101, 120]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F5, 3
volume = 50

[State 430, 3]
type = Playsnd
trigger1 = p2movetype = H
trigger1 = Var(11) = [121, 139]
trigger1 = time = 15
trigger1 = var(45)  < 120  | var(45)  > 130
triggerall = var(30) != 10016
value = F6, 0
volume = 50


[State 431, 3.99999]
type = Varset
trigger1 = AnimTime = 0
v = 11
value = 0

[State 431, 3.99999]
type = Varset
trigger1 = AnimTime = 0
v = 45
value = 0

[State 431, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------

[Statedef 43111]
type    = S
movetype= I
physics = S


[State 431, 9]
type = PlaySnd
trigger1 = time = 1
value = F0,21
volume = 50

[State 431, 3.99999]
type = Varset
trigger1 = AnimTime = 0
v = 11
value = 0

[State 431, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1