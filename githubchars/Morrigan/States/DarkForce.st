; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;======================================< DARK FORCE STATES >=====================================
;==============================================================================================

;===================< START >===================
[Statedef 774]
type = S
physics = N
movetype = I
anim = 773
ctrl = 0
sprpriority = 1
facep2 = 1

[State 774, End]
type = changestate
trigger1 = !ishelper(775)
value = 0
ctrl = 1

[State 774, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA, AA, AP, AT
ignorehitpause = 1
[State 774, Push]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 774, Vel]
type = velset
trigger1 = !time
x = 0.05 * facing * (root, pos x + 2 * (root, p2dist x * root, facing) -pos x)
[State 774, Anim]
type = changeanim
trigger1 = anim = 773 && time >= 20
value = 774
[State 774, Vel]
type = velset
trigger1 = anim = 774
x = 0
[State 774, Pos]
type = posset
trigger1 = anim = 774
x = root, pos x + 2 * (root, p2dist x * root, facing)
y = root, pos y
[State 774, turn]
type = turn
trigger1 = facing = (root, facing)
[State 774, End]
type = changestate
trigger1 = anim = 774 && !animtime
value = 775
[State 774, End]
type = changestate
trigger1 = root, var(40) <= 0
value = 779


;===================< MAIN >===================
[Statedef 775]
type = A
physics = N
movetype = I
anim = 0
ctrl = 0
velset = 0, 0
[State 775, End]
type = changestate
trigger1 = !ishelper(775)
value = 0
ctrl = 1

[State 775, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA, AA, AP, AT
ignorehitpause = 1
[State 775, Push]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 775, Anim]
type = changeanim
triggerall = root, selfanimexist(root, anim) && (root, stateno != [770, 771])
triggerall = ifelse((root, movetype = H), (root, stateno = [5000, 5300]), 1)
trigger1 = anim != (root, anim)
value = root, anim
elem = root, animelemno(0)

[State 775, customstatesanim]
type = changeanim
trigger1 = root, movetype = H && (root, stateno != [5000, 5300])
trigger2 = !root, selfanimexist(root, anim)
value = 5010

[State 775, Pos]
type = bindtoroot
trigger1 = 1
time = 1
facing = -1
pos = 2 * (root, p2dist x), 0

[State 775, spr]
type = sprpriority
trigger1 = 1
value = 0
ignorehitpause = 1

[State 775, sts]
type = statetypeset
trigger1 = (root, movetype = A)
movetype = A
ignorehitpause = 1
[State 775, sts]
type = statetypeset
trigger1 = (root, movetype = H)
movetype = H
ignorehitpause = 1
[State 775, sts]
type = statetypeset
trigger1 = (root, movetype = I)
movetype = I
ignorehitpause = 1

[State 775, Strength]
type = varset
trigger1 = var(10) != root, var(10)
var(10) = root, var(10)
[State 775, hitreset]
type = movehitreset
trigger1 = !(root, movecontact)
[State 775, dampener]
type = attackmulset
trigger1 = 1
value = root, fvar(12)
ignorehitpause = 1

[State 775, FX]
type = explod
trigger1 = root, stateno = 1000
trigger1 = anim = 1000 && animelem = 1
anim = 1004
ID = 1004
sprpriority = 3
postype = p1
ownpal = 1
[State 775, SoulFist]
type = helper
trigger1 = root, stateno = 1000
trigger1 = anim = 1000 && animelem = 6
helpertype = normal
stateno = 1005
ID = 1005
name = "Soul Fist"
postype = p1
pos = 6, -50
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 775, FX]
type = explod
trigger1 = root, stateno = 1050
trigger1 = anim = 1050 && animelem = 4
anim = 1054
ID = 1054
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1
[State 775, SoulFist]
type = helper
trigger1 = root, stateno = 1050
trigger1 = anim = 1050 && animelem = 6
helpertype = normal
stateno = 1055
ID = 1055
name = "Soul Fist"
postype = p1
pos = 60, -48
size.xscale = 0.66
size.yscale = 0.66
ownpal = 1

[State 775, FX]
type = explod
trigger1 = root, stateno = 3000
trigger1 = anim = 3000 && animelem = 3
anim = 3004
ID = 3004
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1
[State 775, SoulFist]
type = helper
trigger1 = root, stateno = 3000
trigger1 = anim = 3000 && animelem = 6
helpertype = normal
stateno = 3005
ID = 3005
name = "Soul Fist"
postype = p1
pos = 6, -50
size.xscale = 0.85
size.yscale = 0.85
ownpal = 1

[State 775, FX]
type = explod
trigger1 = root, stateno = 3050
trigger1 = anim = 3050 && animelem = 4
anim = 1054
ID = 1054
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
ownpal = 1
[State 775, SoulFist]
type = helper
trigger1 = root, stateno = 3050
trigger1 = anim = 3050 && animelem = 6
helpertype = normal
stateno = 3055
ID = 3055
name = "Soul Fist"
postype = p1
pos = 60, -48
size.xscale = 0.85
size.yscale = 0.85
ownpal = 1

[State 775, hit]
type = hitdef
trigger1 = (anim = [200, 201]) && animelem = 2
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 8, 8
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 200), -82, -74)
hitsound = s2, 1
guardsound = s2, 0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.type = Low
air.velocity = 0, -2
getpower = 0
givepower = 0
envshake.time = 9
envshake.freq = 60
envshake.ampl = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 205 && animelem = 3
attr = S, NA
damage = 40, 0
animtype = Medium 
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -54
hitsound = s2, 1
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = Low
air.velocity = 0, -3.5
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 206 && animelem = 4
attr = S, NA
damage = 44, 0
animtype = Medium 
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -62
hitsound = s2, 2
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = Low
air.velocity = 0, -3.5
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 210 && animelem = 5
attr = S, NA
damage = 65, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 4, 4
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -48
hitsound = s2, 3
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -4.5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 211 && animelem = 3
attr = S, NA
damage = 60, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -62
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -4.5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 215 && animelem = 2
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 8, 8
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -32
hitsound = s2, 4
guardsound = s2, 0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.type = Low
air.velocity = 0, -2
getpower = 0
givepower = 0
envshake.time = 9
envshake.freq = 60
envshake.ampl = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 220 && animelem = 4
attr = S, NA
damage = 40, 0
animtype = Medium 
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -53
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = Low
air.velocity = 0, -3.5
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 225 && animelem = 4
attr = S, NA
damage = 63, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -59
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -4.5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 226 && (animelem = 3 || animelem = 4 || animelem = 5)
attr = A, NA
damage = 13, 0
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 6, 6
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((animelem = 3), -96, ifelse((animelem = 4), -60, -90))
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -3
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 226 && animelem = 6
attr = A, NA
damage = 30, 0
animtype = Hard
fall.animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -59
hitsound = s2, 6
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, 9
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 230 && (animelem = 2 || animelem = 3)
attr = C, NA
damage = 12, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 8, 8
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -36
hitsound = s2, 1
guardsound = s2, 0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.type = Low
air.velocity = 0, -2
down.velocity = 0, -2
getpower = 0
givepower = 0
envshake.time = 9
envshake.freq = 60
envshake.ampl = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 235 && animelem = 2
attr = C, NA
damage = 43, 0
animtype = Medium 
guardflag = M 
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -29
hitsound = s2, 8
guardsound = s2, 0
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = Low
air.velocity = 0, -3.5
down.velocity = 0, -3
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
persistent = 0
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = animelem = 4 && anim = 240
attr = C, NA
damage = 65, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -20, -32
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -4.5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = animelem = 3 && anim = 241
attr = C, NA
damage = 65, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -20, -120
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -4.5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = (anim = 245 || anim = 246) && animelem = 2
attr = C, NA
damage = 20, 0
animtype = Light
guardflag = L
hitflag = MAF
priority = 4, Hit 
pausetime = 8, 8
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 245), -4, -17)
hitsound = s2, 4
guardsound = s2, 0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.type = Low
air.velocity = 0, -2
down.velocity = 0, -2
getpower = 0
givepower = 0
envshake.time = 9
envshake.freq = 60
envshake.ampl = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = (anim = 250 || anim = 251) && animelem = 2
attr = S, NA
damage = 40, 0
animtype = Medium 
guardflag = L
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 250), -14, -31)
hitsound = s2, 5
guardsound = s2, 0
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = Low
air.velocity = 0, -3.5
down.velocity = 0, -3
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 255 && animelem = 4
attr = C, NA
damage = 60, 0
animtype = Hard
guardflag = L
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -30
hitsound = s2, 6
guardsound = s2, 0
ground.type = Trip
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0, -3
air.type = Trip
air.velocity = 0, -3
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0
fall = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 260 && animelem = 2
attr = A, NA
damage = 20, 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 8, 8
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -43
hitsound = s2, 1
guardsound = s2, 0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.type = Low
air.velocity = 0, -5
getpower = 0
givepower = 0
envshake.time = 9
envshake.freq = 60
envshake.ampl = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 265 && animelem = 3
attr = A, NA
damage = 40, 0
animtype = Medium 
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -48
hitsound = s2, 8
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = Low
air.velocity = 0, -5
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 270 && animelem = 6
attr = A, NA
damage = 60, 0
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -66
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = (anim = [275, 276]) && animelem = 2
attr = A, NA
damage = 20, 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 8, 8
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 275), -42, -62)
hitsound = s2, 4
guardsound = s2, 0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.type = High
air.velocity = 0, -5
getpower = 0
givepower = 0
envshake.time = 9
envshake.freq = 60
envshake.ampl = 1
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 280 && animelem = 3
attr = A, NA
damage = 40, 0
animtype = Medium 
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -47
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 0
air.type = High
air.velocity = 0, -5
getpower = 0
givepower = 0
envshake.time = 12
envshake.freq = 60
envshake.ampl = 2
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = anim = 285 && animelem = 3
attr = A, NA
damage = 60, 0
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 12, 12
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -54
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0
air.type = Low
air.velocity = 0, -5
getpower = 0
givepower = 0
envshake.time = 14
envshake.freq = 60
envshake.ampl = 3
yaccel = 0.5

[State 775, hit]
type = hitdef
trigger1 = (animelem = 2 || animelem = 3) && anim = 1100
trigger1 = !movecontact && !movereversed
attr = S, SA
damage = 104 + (7 * var(10)), 0
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12 / ((var(40) > 0) + 1), 12 / ((var(40) > 0) + 1)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 2), -35, -60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0, -6 -var(10)
air.type = Low
air.velocity = 0, -6 -var(10)
getpower = 0
givepower = 0
envshake.time = 16
envshake.freq = 60
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.animtype = Medium
yaccel = 0.5
forcestand = 1

[State 775, hit2]
type = hitdef
trigger1 = animelem = 4 && anim = 1100
trigger1 = !movecontact && !movereversed
attr = A, SA
damage = 83, 0
animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12 / ((var(40) > 0) + 1), 12 / ((var(40) > 0) + 1)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -100
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0, -6 -var(10)
air.type = Low
air.velocity = 0, -6 -var(10)
getpower = 0
givepower = 0
envshake.time = 16
envshake.freq = 60
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 775, hit]
type = hitdef
trigger1 = (animelem = 2 || animelem = 3) && anim = 3100
attr = S, HA
damage = 25, 0
animtype = Back
guardflag = M
hitflag = MAFD
priority = 4, Hit
pausetime = 3, 4
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 2), -35, -60)
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0, -10
air.type = Low
air.velocity = 0, -10
down.hittime = 20
down.velocity = 0, 0
getpower = 0
givepower = 0
envshake.time = 16
envshake.freq = 60
envshake.ampl = 5
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.animtype = Medium
yaccel = 0.5
forcestand = 1

[State 775, hit2]
type = hitdef
trigger1 = (animelem = 4 || animelem = 6 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11) && anim = 3100
attr = A, HA
damage = 25, 0
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse((animelem = 11), 15, 3), ifelse((animelem = 11), 15, 3)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -100
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0, -10
air.type = Low
air.velocity = 0, -10
down.velocity = 0, 0
getpower = 0
givepower = 0
envshake.time = 16
envshake.freq = 60
envshake.ampl = 5
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 775, hit]
type = hitdef
trigger1 = anim = 3402 && !(time % 3) && hitcount <= 13
trigger1 = var(11) := 1 && var(12) := -43
attr = A, HA
damage = 18, 0
animtype = Hard
air.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -43
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = 0, 0
air.type = Low
air.velocity = 0, -2
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 0
envshake.time = 16
envshake.freq = 60
envshake.ampl = 5
yaccel = 0.5
forcestand = 1

[State 775, End]
type = changestate
trigger1 = root, var(40) <= 0
value = 779


;========================< DISAPPEAR >=============================
[Statedef 779]
physics = N
velset = 0, 0
[State 779, Anim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)
[State 779, noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 779, shrink]
type = angledraw
trigger1 = 1
scale = 1 -(0.1 * time), 1
[State 779, trans]
type = trans
trigger1 = 1
trans = add
[State 779, bats]
type = helper
trigger1 = time && !(time % 2)
helpertype = normal
stateno = 6110
ID = 6110
name = "Bat"
postype = p1
pos = 0, -55
[State 779, End]
type = destroyself
trigger1 = time >= 10


;========================< TIMER >=============================
[Statedef 7275]
physics = N
velset = 0, 0
anim = 9741
[State 7275, turn]
type = turn
trigger1 = facing = -1
[State 7275, back]
type = explod
trigger1 = !time
anim = 7276
postype = p1
bindtime = -1
ontop = 1
[State 7275, front]
type = explod
trigger1 = !time
anim = 7277
ID = 7277
postype = p1
bindtime = -1
ontop = 1
[State 7275, frame]
type = explod
trigger1 = !time
anim = 7275
postype = p1
bindtime = -1
ontop = 1
[State 7275, decrease]
type = modifyexplod
trigger1 = root, var(40) > 0
ID = 7277
scale = (root, var(40) * 0.99) / (300 * 0.99), 1
[State 7275, noshadow]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1
[State 7275, bind]
type = bindtoroot
trigger1 = 1
pos = -20 * (root, facing), 4
time = -1
[State 7275, safety]
type = removeexplod
trigger1 = !(root, var(40))
[State 7275, End]
type = destroyself
trigger1 = !(root, var(40))
