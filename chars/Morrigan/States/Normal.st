; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< NORMAL STATES >========================================
;============================================================================================

;=========< Standing Light Punch >==========
[Statedef 200]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = ifelse(p2bodydist x <= (const(size.xscale) * 25), 201, 200)
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 200, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = S, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 200), -82, -74)
hitsound = s2, 1
guardsound = s2, 0
ground.type = High
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62 * !numhelper(775) * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775) * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Medium Punch >==========
[Statedef 205]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = ifelse(p2bodydist x <= (const(size.xscale) * 25), 206, 205)
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 205, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 205, Snd]
type = playsnd
trigger1 = anim = 205 && animelem = 3
trigger2 = anim = 206 && animelem = 4
value = 1, 1;ifelse(anim = 205, 1, 8)
channel = 1

[State 205, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = anim = 205 && animelem = 3
trigger1 = var(11) := -1
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -54
hitsound = s2, 2
guardsound = s2, 0
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71 * !numhelper(775) * !numhelper(775), 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 205, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = anim = 206 && animelem = 4
trigger1 = var(11) := 1 && var(12) := -62
attr = S, NA
damage = 44, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
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
ground.velocity = -8.71 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = anim = 205 && animelemtime(4) >= 0
trigger2 = anim = 206 && animelemtime(7) >= 0
movetype = I

[State 205, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Hard Punch >==========
[Statedef 210]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = ifelse((prevstateno = 710 || p2bodydist x <= (const(size.xscale) * 25)), 211, 210)
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 210, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 210, Snd]
type = playsnd
trigger1 = anim = 210 && animelem = 4
trigger2 = anim = 211 && animelem = 3
value = 1, ifelse((anim = 210), 3, 9)
channel = 1

[State 210, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = anim = 210 && animelem = 5
trigger1 = var(11) := 1 && var(12) := -48
attr = S, NA
damage = 65, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -48
hitsound = s2, 3
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 210, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = anim = 211 && animelem = 3
trigger1 = var(11) := 1 && var(12) := -62
attr = S, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -62
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = anim = 210 && animelemtime(6) >= 0
trigger2 = anim = 211 && animelemtime(5) >= 0
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Light Kick >==========
[Statedef 215]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 215
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 215, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 215, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 215, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = S, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -32
hitsound = s2, 4
guardsound = s2, 0
ground.type = High
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 215, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Medium Kick >==========
[Statedef 220]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 220
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 220, Snd]
type = playsnd
trigger1 = animelem = 4 && random < 350
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 220, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 4
trigger1 = var(11) := -1
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -53
hitsound = s2, 5
guardsound = s2, 0
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 220, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 4 && prevstateno = 710
trigger1 = var(11) := -1
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
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
ground.velocity = -8.71 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.velocity = -6, -3
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -12.97 * !numhelper(775)
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Hard Kick >==========
[Statedef 225]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 225
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 225, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 225, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 9
channel = 1

[State 225, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 4
trigger1 = var(11) := 1 && var(12) := -59
attr = S, NA
damage = 63, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -59
hitsound = s2, 9
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Hard Kick 2 >==========
[Statedef 226]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 226
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 226, width]
type = width
trigger1 = animelemtime(3) >= 0
player = 30, 0
[State 226, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 226, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State 226, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = A
[State 226, Vel]
type = velset
trigger1 = animelem = 3
x = 5
y = -4

[State 226, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 40
[State 226, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 226, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3 || animelem = 4 || animelem = 5
trigger1 = var(11) := -1
attr = A, NA
damage = 13, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = HAF
priority = 4, Hit
pausetime = 4, 4
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((animelem = 3), -96, ifelse((animelem = 4), -60, -90))
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -5.62 * !numhelper(775) * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 226, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 6
trigger1 = var(11) := -1
attr = A, NA
damage = 30, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -59
hitsound = s2, 6
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -6, 9
air.fall = 1
fall.recover = 1
fall.recovertime = 120
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I


;=========< Crouching Light Punch >==========
[Statedef 230]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 230
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 230, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 230, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 230, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2 || animelem = 3
trigger1 = var(11) := -1
attr = C, NA
damage = 12, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -36
hitsound = s2, 1
guardsound = s2, 0
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = 72 * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 230, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Medium Punch >==========
[Statedef 235]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 235
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 235, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 8
channel = 1

[State 235, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := 1 && var(12) := -29
attr = C, NA
damage = 43, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
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
ground.velocity = -8.71 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
down.velocity = -3, -3
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 235, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Hard Punch >==========
[Statedef 240]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = ifelse((command = "holdfwd" && prevstateno != 750), 241, 240)
velset = 0, 0
poweradd = 18 * (!var(40) && prevstateno != 750)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 240, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 240, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 9
channel = 1

[State NHB -ZC]
type = nothitby
trigger1 = prevstateno = 750 && animelemtime(4) < 0
value = SCA
time = 1

[State 240, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 4 && anim = 240
trigger1 = var(11) := 1 && var(12) := -32
attr = C, NA
damage = 65, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -20, -32
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
down.velocity = -4, -4
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 240, Hit]
type = hitdef
trigger1 = animelem = 4 && anim = 240 && prevstateno = 750
trigger1 = var(11) := 1 && var(12) := -32
attr = C, SA
damage = 65, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -20, -32
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0
guard.velocity = -12.97 * !numhelper(775)
guard.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -6.2
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
yaccel = 0.6
fall = 1
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 240, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 3 && anim = 241
trigger1 = var(11) := 1 && var(12) := -120
attr = C, NA
damage = 65, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -20, -120
hitsound = s2, 9
guardsound = s2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12.97 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * (!var(40) && prevstateno != 750), 36 * (!var(40) && prevstateno != 750)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = anim = 240 && animelemtime(5) >= 0
trigger2 = anim = 241 && animelemtime(6) >= 0
movetype = I

[State 240, End]
type = changestate
trigger1 = !animtime
value = ifelse((anim = 241), 0, 11)
ctrl = 1


;=========< Crouching Light Kick >==========
[Statedef 245]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = ifelse(command = "holdfwd", 246, 245)
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 245, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 245, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 245, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = C, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 245), -4, -17)
hitsound = s2, 4
guardsound = s2, 0
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = 72 * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 245, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Medium Kick >==========
[Statedef 250]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = ifelse(command = "holdfwd", 251, 250)
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 250, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 250, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
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
ground.velocity = -8.71 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
down.velocity = -3, -3
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Hard Kick >==========
[Statedef 255]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 255
velset = 0, 0
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 255, Snd]
type = playsnd
trigger1 = animelem = 4 && random < 500
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 255, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1

[State 255, Hit]
type = hitdef
trigger1 = p2stateno != [5020, 5050]
trigger1 = animelem = 4
trigger1 = var(11) := -1
attr = C, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -15, -30
hitsound = s2, 6
guardsound = s2, 0
ground.type = Trip
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -1, -8.24
air.type = Trip
air.velocity = -1, -8.24
down.velocity = -4, -4
ground.cornerpush.veloff = 0
guard.velocity = -12.97 * !numhelper(775)
guard.cornerpush.veloff = 0;-17.2
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.677
fall = 1
fall.recover = 1
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 255, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Air Light Punch >==========
[Statedef 260]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 260
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = (prevstateno = [100, 105]) && p2dist x < 0
velset = vel x * ifelse((prevstateno = [100, 105]), 0.5, 1), vel y

[State 260, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 260, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 260, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 2
trigger1 = var(11) := 1 && var(12) := -43
attr = A, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -43
hitsound = s2, 1
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -5.62 * !numhelper(775)
guard.cornerpush.veloff = 0;-9.83
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 260, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I


;=========< Air Medium Punch >==========
[Statedef 265]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 265
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = (prevstateno = [100, 105]) && p2dist x < 0
velset = vel x * ifelse((prevstateno = [100, 105]), 0.5, 1), vel y

[State 265, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 265, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 8
channel = 1
[State 265, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 5
channel = 1

[State 265, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := 1 && var(12) := -48
attr = A, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
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
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -8.71 * !numhelper(775)
guard.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 265, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I


;=========< Air Hard Punch >==========
[Statedef 270]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 270
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = (prevstateno = [100, 105]) && p2dist x < 0
velset = vel x * ifelse((prevstateno = [100, 105]), 0.5, 1), vel y

[State 270, Snd]
type = playsnd
trigger1 = animelem = 5 && random < 500
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 270, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
channel = 1

[State 270, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 6
trigger1 = var(11) := 1 && var(12) := -66
attr = A, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -66
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -12.97 * !numhelper(775)
guard.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 270, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I


;=========< Air Light Kick >==========
[Statedef 275]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = ifelse((vel x || var(9) = 2), 275, 276)
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = (prevstateno = [100, 105]) && p2dist x < 0
velset = vel x * ifelse((prevstateno = [100, 105]), 0.5, 1), vel y

[State 275, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 275, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 275, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 2
trigger1 = var(11) := -1
attr = A, NA
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, ifelse((anim = 275), -42, -62)
hitsound = s2, 4
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -5.62 * !numhelper(775)
guard.cornerpush.veloff = 0;-9.83
air.type = High
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 275, Type]
type = statetypeset
trigger1 = anim = 275 && animelemtime(7) >= 0
trigger2 = anim = 276 && animelemtime(3) >= 0
movetype = I


;=========< Air Medium Kick >==========
[Statedef 280]
type = A 
movetype = A 
physics = A 
juggle = ifelse(numtarget, 15, 8)
anim = 280
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = (prevstateno = [100, 105]) && p2dist x < 0
velset = vel x * ifelse((prevstateno = [100, 105]), 0.5, 1), vel y

[State 280, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 280, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 280, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = A, NA
damage = 40, 0
animtype = Medium 
air.animtype = Back
fall.animtype = Back
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
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -8.71 * !numhelper(775)
guard.cornerpush.veloff = 0;-13.38
air.type = High
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 280, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I


;=========< Air Hard Kick >==========
[Statedef 285]
type = A
movetype = A
physics = A
juggle = ifelse(numtarget, 15, 8)
anim = 285
poweradd = 18 * !var(40)
sprpriority = 1
ctrl = 0
facep2 = (prevstateno = [100, 105]) && p2dist x < 0
velset = vel x * ifelse((prevstateno = [100, 105]), 0.5, 1), vel y

[State 285, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 0, 2)
channel = 0
[State 285, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State 285, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 3
trigger1 = var(11) := -1
attr = A, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit 
pausetime = 10, 10
sparkno = s7010 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -54
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -5.62 * !numhelper(775), 0
ground.cornerpush.veloff = 0;-9.83
guard.velocity = -12.97 * !numhelper(775)
guard.cornerpush.veloff = 0;-17.2
air.type = Low
air.hittime = 18
air.velocity = -5 * !numhelper(775), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(40), 36 * !var(40)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8 * !numhelper(775), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(40)

[State 285, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I


;=========================================================================
;===============================< THROWS >==================================
;=========================================================================
;========< GROUND THROW CONTROLLER >==========
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 18 * !var(40)

[State 800, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "2k", 2, 1)
[State 800, Strength]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(random < 500, 2, 1)

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0
[State 800, Tech Hit]
type = varset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 7

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !var(38)
attr = S, NT
hitflag = M-
priority = 1, Miss 
sparkno = -1
hitsound = s0, 800
p1facing = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 1, -1)
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 801, 803) 
guard.dist = 0
animtype = Up
fall.xvelocity = -3
fall.yvelocity = -6
fall = 1 
fall.recover = 1
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !var(38)
attr = S, NT
hitflag = M-
priority = 1, Miss 
sparkno = -1
hitsound = s0, 800
p1facing = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 1, -1)
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 801, 803)
guard.dist = 0
animtype = Back
fall = 1 
fall.recover = 1
fall.recovertime = 120

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 1
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = -1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State 801, grab snd]
type = playsnd
trigger1 = !time
value = 4, 29
channel = 0

[State Width]
type = width
trigger1 = 1
edge = 30, 0

[State 801, Bind 1]
type = targetbind
trigger1 = 1
pos = 50, 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 1, 810, 820)
ctrl = 0


;--- PLAYER TURNS ---
[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = -1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 804

[State 803, grab snd]
type = playsnd
trigger1 = !time
value = 4, 29
channel = 0

[State Width]
type = width
trigger1 = 1
edge = 30, 30

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -50, 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -25, 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -0, 0
[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0
pos = 25, 0
[State 803, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 50, 0

[State 803, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 1, 810, 820)
ctrl = 0


;--- TARGET ---
[Statedef 802]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


[Statedef 804]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 804, Anim]
type = changeanim2
trigger1 = !time
value = 804
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;========< SEOI NAGE >==========
;--- PLAYER ---
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
sprpriority = 1
ctrl = 0

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State 810, throw]
type = targetstate
trigger1 = !time
value = 811
[State 810, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, width]
type = width
trigger1 = animelemtime(5) < 0
edge = 50, 0
[State 810, width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
edge = 60, 0
[State 810, width]
type = width
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
edge = 75, 0

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 5
value = 3, 2
channel = 0
[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1

[State 810, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 66, -76
[State 810, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 60, -77
[State 810, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -4, -72
[State 810, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 52, -70
[State 810, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 72, -38
[State 810, Bind 6]
type = targetbind
trigger1 = animelem = 6
pos = 82, 0

[State 810, hurt]
type = targetlifeadd
trigger1 = animelem = 6
value = -ceil(118 * fvar(12))
[State 810, hurt]
type = targetpoweradd
trigger1 = animelem = 6
value = 36
[State 810, hurt]
type = poweradd
trigger1 = animelem = 6 && !var(40)
value = 72

[State 810, throw]
type = targetstate
trigger1 = animelem = 6
value = 812

[State 810, Snd]
type = playsnd
trigger1 = numtarget
trigger1 = target, stateno = 812
value = 5, 2
persistent = 0
[State 810, Dust]
type = explod
trigger1 = numtarget
trigger1 = target, stateno = 812
anim = 7120
ID = 7120
sprpriority = -2
postype = p2
pos = 0, 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5
persistent = 0
[State 810, Shake]
type = envshake
trigger1 = numtarget
trigger1 = target, stateno = 812
time = 12
freq = 60
ampl = 6
persistent = 0

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 811]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 811, Anim]
type = changeanim2
trigger1 = !time
value = 811
[State 811, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[Statedef 812]
type = A
movetype = H
physics = N
[State 812, Anim]
type = changeanim2
trigger1 = !time
value = 812
[State 812, Pos]
type = posset
trigger1 = 1
y = 0
[State 812, hitground]
type = selfstate
trigger1 = time >= 12
value = 5101


;========< 0... >==========
;--- PLAYER ---
[Statedef 820]
type = S
movetype = A
physics = S
anim = 820
sprpriority = 1
ctrl = 0

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State 820, throw]
type = targetstate
trigger1 = !time
value = 821
[State 820, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 820, width]
type = width
trigger1 = animelemtime(8) < 0
edge = 50, 0
[State 820, width]
type = width
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
edge = 80, 0

[State 820, throwsnd]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0
[State 820, throwsnd]
type = playsnd
trigger1 = animelem = 6
value = 1, 3
channel = 1
[State 820, throwsnd]
type = playsnd
trigger1 = animelem = 9
value = 5, 3

[State 820, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 60, -71
[State 820, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 66, -75
[State 820, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(8) < 0
pos = 66, -70
[State 820, Bind 8]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 112, -66

[State 820, claw]
type = helper
trigger1 = animelem = 8
helpertype = normal
stateno = 825
ID = 825
name = "Claw"
postype = p1
pos = 105, -65
size.ground.front = (target, const(size.ground.back))

[State 820, HitSound]
type = playsnd
trigger1 = animelem = 8 && numtarget
value = 2, 9
[State 820, Sparks]
type = explod
trigger1 = animelem = 8 && numtarget
anim = 7010 + (random % 8)
ID = 7000
sprpriority = 5
postype = p1
pos = 105, -65
ownpal = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
[State 820, bloodsparks]
type = helper
trigger1 = animelem = 8 && numtarget
trigger1 = var(11) := 1
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p1
pos = 105, -65
facing = -1
ownpal = 1
pausemovetime = 100
supermovetime = 100

[State 820, hurt]
type = targetlifeadd
trigger1 = animelem = 8
value = -ceil(108 * fvar(12))
kill = 0
[State 820, hurt]
type = targetpoweradd
trigger1 = animelem = 8
value = 36
[State 820, hurt]
type = poweradd
trigger1 = animelem = 8 && !var(40)
value = 72

[State 820, throw]
type = targetstate
trigger1 = animelem = 9
value = 822

[State 825, Snd]
type = playsnd
trigger1 = (target, stateno = 822) && (target, backedgebodydist <= 0)
value = 5, 2
persistent = 0
[State 825, Dust]
type = explod
trigger1 = (target, stateno = 822) && (target, backedgebodydist <= 0)
anim = 7121
ID = 7121
sprpriority = -2
postype = back
pos = 320, ceil(screenpos y -65)
ownpal = 1
scale = 0.5, 0.5
persistent = 0

[State 825, syncvar]
type = varset
trigger1 = numtarget
var(0) = (target, stateno)

[State 820, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 821]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 821, Anim]
type = changeanim2
trigger1 = !time
value = 821
[State 821, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[Statedef 822]
type = A
movetype = H
physics = N
[State 822, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 822, Vel]
type = velset
trigger1 = 1
x = -12
y = 0
[State 822, hitwall]
type = changestate
trigger1 = backedgebodydist <= 0
value = 823

[Statedef 823]
type = A
movetype = H
physics = N
velset = 0, 0

[State 823, hurt]
type = lifeadd
trigger1 = !time
value = -10
kill = 1

[State 823, Anim]
type = changeanim2
trigger1 = !time
value = 823

[State 823, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 823, Turn]
type = turn
trigger1 = !time

[State 823, Shake]
type = envshake
trigger1 = !time
time = 16
fre = 120
ampl = 6

[State 823, Pos]
type = posadd
trigger1 = animelem = 2
x = ifelse((frontedgebodydist > backedgebodydist), backedgebodydist, frontedgebodydist)
y = -const(size.mid.pos.y)
persistent = 0

[State 823, Vel]
type = velset
trigger1 = animelem = 2
x = -3
y = -6

[State 823, Accel]
type = gravity
trigger1 = animelemtime(2) >= 0

[State 823, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 823, hitground]
type = selfstate
trigger1 = vel y > 0 && pos y >= 25
value = 5100


;===========< Target Escaped >==========
[Statedef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 890, Bind]
type = targetbind
trigger1 = !time && numtarget
pos = 0, 0
[State 890, p2state]
type = targetstate
trigger1 = !time && numtarget
value = 895
[State 890, Throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[State 890, Pos]
type = posadd
trigger1 = !time
x = 24

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0
[State 890, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 890, Snd]
type = playsnd
trigger1 = time = 2
value = 5000, 1
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 7, 3

[State 890, FX]
type = explod
trigger1 = !time
anim = 7000
ID = 7000
sprpriority = 5
postype = p1
pos = 0, -55
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 890, End]
type = changestate
trigger1 = time >= 27
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5945), 5945, 130)
[State 895, Anim]
type = changeanim
trigger1 = !time && !selfanimexist(5945) && selfanimexist(5910)
value = 5910
[State 895, Anim]
type = changeanim
trigger1 = time >= 20 && anim = 130
value = 140

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0
[State 895, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 27
value = 0
ctrl = 1
