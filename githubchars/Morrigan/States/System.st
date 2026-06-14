; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMON STATES >========================================
;==============================================================================================

;==========< PARRY >==========
;--- STANDING ---
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 700, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 700, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 700, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 700, Flash]
type = palfx
trigger1 = !time
add = 0, 50, 255
sinadd = 0, -50, -255, 60
time = 15

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 700, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 700, Spark]
type = explod
trigger1 = animelem = 2
anim = 7200
ID = 7200
sprpriority = 5
postype = p1
pos = 15, -71
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 700, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 701]
type = C
physics = C
movetype = I
anim = 701
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 700, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 701, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 701, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 701, Flash]
type = palfx
trigger1 = !time
add = 0, 50, 255
sinadd = 0, -50, -255, 60
time = 15

[State 701, Snd]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 701, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 701, Spark]
type = explod
trigger1 = animelem = 2
anim = 7200
ID = 7200
sprpriority = 5
postype = p1
pos = 49, -21
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 701, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
[State 701, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- AERIAL ---
[Statedef 702]
type = A
physics = A
movetype = I
anim = 702
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 702, HB]
type = hitby
trigger1 = time < 15
value = SCA, AT
time = 1

[State 702, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 702, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 702, Type]
type = statetypeset
trigger1 = time < 15
physics = N
[State 702, Stop]
type = posfreeze
trigger1 = time < 15
value = 1

[State 702, Vel]
type = velset
trigger1 = time = 15
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)
[State 702, Type]
type = statetypeset
trigger1 = time >= 15
physics = A
[State 702, Ctrl]
type = ctrlset
trigger1 = time >= 15
value = 1

[State 702, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 702, Snd]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 702, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 702, Spark]
type = explod
trigger1 = animelem = 2
anim = 7200
ID = 7200
sprpriority = 5
postype = p1
pos = 33, -48
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5


;==========< DODGE >==========
[Statedef 710]
type = S
physics = S
movetype = I
anim = 710
velset = 0, 0
ctrl = 0
sprpriority = -1
[State 710, Snd]
type = playsnd
trigger1 = !time
value = 4, 0
channel = 0
[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 710, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"), 210, 220)
[State 710, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && (p2dist x = [0, 60]) && p2movetype != A
value = ifelse(random < 500, 210, 220)
[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< SIDE STEP >==========
;--- FORWARD ---
[Statedef 720]
type = C
physics = C
movetype = I
anim = 720
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 4
[State 720, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
x = 5
[State 720, Push]
type = playerpush
trigger1 = 1
value = 0
[State 720, HB]
type = hitby
trigger1 = animelemtime(8) < 0
value = SCA, AT
time = 1
[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- BACKWARD ---
[Statedef 725]
type = C
physics = C
movetype = I
anim = 725
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 725, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, ifelse(random < 500, 1, 2)
channel = 0
[State 725, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 4
[State 725, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
x = -5
[State 725, Push]
type = playerpush
trigger1 = 1
value = 0
[State 725, HB]
type = hitby
trigger1 = animelemtime(9) < 0
value = SCA, AT
time = 1
[State 725, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< POWER CHARGE >==========
[Statedef 740]
type = S
physics = S
movetype = I
anim = 740
ctrl = 0
velset = 0, 0

[State 740, Power]
type = poweradd
triggerall = anim = 740 && power < powermax
trigger1 = command = "holdb" && command = "holdy"
trigger2 = AIlevel
value = 2 + ifelse(time < 60, 0, (time -60) / 10)

[State 740, Snd]
type = playsnd
trigger1 = anim = 740 && time = 8
value = 4, 3
channel = 0

[State 740, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 740, FX]
type = helper
trigger1 = anim = 740
trigger1 = !numhelper(7240)
helpertype = normal
stateno = 7240
ID = 7240
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = anim = 740
trigger1 = !numhelper(7243)
helpertype = normal
stateno = 7243
ID = 7243
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, bats]
type = helper
triggerall = anim = 740 && numhelper(6100) < 4
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
trigger3 = numhelper(6100) = 2
trigger3 = var(48) := 3
trigger4 = numhelper(6100) = 3
trigger4 = var(48) := 4
helpertype = normal
stateno = 6108
ID = 6100
name = "Bat"
postype = p1

[State 740, Anim]
type = changeanim
triggerall = anim != 741
trigger1 = !AIlevel && (command != "holdb" || command != "holdy")
trigger2 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger3 = AIlevel && (inguarddist || p2movetype = A || p2dist x < 160)
value = 741

[State 740, Ctrl]
type = ctrlset
trigger1 = anim = 741
value = 1

[State 740, Snd]
type = stopsnd
trigger1 = anim = 741
channel = 0
persistent = 0
[State 740, Snd]
type = playsnd
trigger1 = anim = 741 && power >= powermax
value = 4, 5
channel = 0
persistent = 0

[State 740, End]
type = changestate
trigger1 = anim = 741 && !animtime
value = 0
ctrl = 1


;==========< ZERO COUNTER >==========
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
ctrl = 0
velset = 0, 0
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 750, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "Counter_P"), 1, 2)
ignorehitpause = 1
[State 750, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2statetype = A), 1, ifelse((p2statetype = C), 2, ifelse(random < 500, 1, 2)))
ignorehitpause = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 3, 1
channel = 0
[State 750, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7250
ID = 7250
postype = p1
pos = 17, -60
ownpal = 1
persistent = 0
supermovetime = 999
[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 20
movetime = 20
anim = -1
sound = s7, 1
p2defmul = 1
darken = 0
[State 750, End]
type = changestate
trigger1 = time >= 20
value = ifelse(var(10) = 1, 1100, 240)


;===================< DARK FORCE >===================
[Statedef 770]
type = S
physics = S
movetype = I
anim = 770
ctrl = 0
velset = 0, 0
poweradd = -3000
[State 770, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 770, Snd]
type = playsnd
trigger1 = !time
value = 4, 5
channel = 0
[State 770, Snd]
type = playsnd
trigger1 = !time
value = 7, 8
[State 770, charge]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7270
ID = 7270
name = "Dark Force"
postype = p1
ownpal = 1

[State 770, Var]
type = varset
trigger1 = animelemtime(12) >= 4
var(40) = 300
[State 770, illusion]
type = helper
trigger1 = animelemtime(12) = 4
helpertype = normal
stateno = 774
ID = 775
name = "Astral Vision"
postype = p1
facing = -1

[State 770, End]
type = changestate
triggerall = !animtime
trigger1 = !numhelper(775)
trigger2 = numhelper(775)
trigger2 = helper(775), stateno = 775
value = 0
ctrl = 1


;--- RESET ---
[Statedef 771]
type = S
physics = S
movetype = I
anim = 771
ctrl = 0
velset = 0, 0
[State 771, Var]
type = varset
trigger1 = var(40)
var(40) = 0
[State 771, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================< STANDING >====================
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type = changeanim
trigger1 = anim != (var(40) > 0) && anim != 5
trigger2 = anim = 5 && !animtime
value = (var(40) > 0)

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, Skywalker]
type = changestate
triggerall = pos y < 0
trigger1 = !numenemy
trigger2 = numenemy = 1
trigger2 = (enemy, name = "M -NES Game 1" + enemy, name = "M -NES Game 2" + enemy, name = "M -GB Game 1" + enemy, authorname = "Bane84") < 2
trigger3 = numenemy >= 2
trigger3 = (enemy(0), name = "M -NES Game 1" + enemy(0), name = "M -NES Game 2" + enemy(0), name = "M -GB Game 1" + enemy(0), authorname = "Bane84") < 2
trigger3 = (enemy(1), name = "M -NES Game 1" + enemy(1), name = "M -NES Game 2" + enemy(1), name = "M -GB Game 1" + enemy(1), authorname = "Bane84") < 2
value = 50


;====================< CROUCHING >====================
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0

[State 10, Anim]
type = changeanim
trigger1 = !time && anim = 12
value = 10
elem = 5 -animelemno(0)
[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10

[State 10, End]
type = changestate
trigger1 = !animtime
value = 11


[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11

[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 12, Anim]
type = changeanim
trigger1 = !time && anim = 10
value = 12
elem = 5 -animelemno(0)
[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12

[State 12, End]
type = changestate
trigger1 = command = "holddown" && command != "holdup"
value = 10
[State 12, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< WALK >==========
[Statedef 20]
type = S
physics = S
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = 1
x = ifelse(command = "holdfwd", const(velocity.walk.fwd.x), ifelse(command = "holdback", const(velocity.walk.back.x), vel x))

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20
[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21

[State 20, bats]
type = helper
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
helpertype = normal
stateno = 6100
ID = 6100
name = "Bat"
postype = p1
[State 20, batexplods]
type = explod
trigger1 = (anim = 20 || anim = 21) && numexplod(6101) < 2
anim = 6101
ID = 6101
postype = p1
pos = ifelse((animelem = 1), 14, -24), ifelse((animelem = 1), -96, -92)
sprpriority = ifelse((animelem = 1), -1, 2)
bindtime = -1
removetime = -1
removeongethit = 1
[State 20, Dust]
type = helper
trigger1 = !numhelper(6010)
helpertype = normal
stateno = 6010
ID = 6010
name = "Dust"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1


;===================< JUMPING >================
[Statedef 40]
type = S
physics = S
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 40, Var]
type = varset
trigger1 = !time && AIlevel
var(9) = ifelse((p2dist x > 240 || p2dist y > 180 || random < 100), 3, 1)
[State 40, Var]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))
[State 40, Var]
type = varset
trigger1 = !time && !AIlevel
var(9) = ifelse(command = "highjump", 3, 1)
[State 40, Var]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))
[State 40, Var]
type = varset
trigger1 = !AIlevel && var(9) != 3 && command != "holdup"
trigger2 = AIlevel && var(9) != 3 && random < 100
var(9) = 2

[State 40, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 40, Vel]
type = velset
trigger1 = !animtime && var(9) != 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(var(9) = 2, 0.75, 1) * const(velocity.jump.y)
[State 40, Vel]
type = velset
trigger1 = !animtime && var(9) = 3
x = ifelse(sysvar(1) = 0, const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(!sysvar(1), 1.15, 1) * const(velocity.jump.y)
[State 40, Vel]
type = velset
trigger1 = !animtime && prevstateno = 100 && sysvar(1) = 1
trigger1 = var(9) := 3
x = const(velocity.runjump.fwd.x)
[State 40, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[Statedef 50]
type = A
physics = A

[State 50, Snd]
type = playsnd
trigger1 = !time
value = 0, ifelse(var(9) = 3, 41, 40)

[State 50, Anim]
type = changeanim
trigger1 = var(9) != 2
value = ifelse(!(vel x), 41, ifelse((vel x) > 0, 42, 43))
persistent = 0
[State 50, Anim]
type = changeanim
trigger1 = var(9) = 2
value = ifelse(!(vel x), 51, ifelse((vel x) > 0, 52, 53))
elem = animelemno(0)
persistent = 0

[State 50, No Guard]
type = assertspecial
trigger1 = var(9) = 2
flag = noairguard


[Statedef 51]
type = A
physics = A
[State 51, null]
type = null
trigger1 = 1


[Statedef 52]
type = S
physics = S
ctrl = 0
anim = ifelse(vel y > 11, 48, 47)
movehitpersist = 1

[State 52, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, anim48]
type = changeanim
trigger1 = !time && ((prevstateno = [100, 105]) || (prevstateno = [1200, 1250]))
value = 48
[State 52, anim49]
type = changeanim
trigger1 = !time && prevstateno = 226
value = 49
[State 52, anim3301]
type = changeanim
trigger1 = !time && prevstateno = 3300
value = 3301

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 52, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 52, Ctrl]
type = ctrlset
trigger1 = !time
trigger1 = prevstateno != [200, 4999]
value = 1
[State 52, Ctrl]
type = ctrlset
triggerall = time >= 1
trigger1 = prevstateno < 1000 && prevstateno != 226
trigger2 = prevstateno = 3400
value = 1
[State 52, guard]
type = changestate
trigger1 = command = "holdback"
trigger1 = inguarddist && (prevstateno != [200, 4999])
value = 120

[State 52, No walking]
type = assertspecial
trigger1 = time <= 2 || (prevstateno = [200, 4999])
flag = nowalk
[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< FLY FORWARD >===========================
[Statedef 100]
type = A
physics = N
anim = ifelse(statetype = A, 103, 102)
ctrl = 0
sprpriority = 1
velset = 0, 0

[State 100, change]
type = changeanim
trigger1 = (anim = [102, 103]) && !animtime
value = ifelse(command = "holdup", 110, 100)

[State 100, as]
type = assertspecial
trigger1 = 1
flag = noairguard
[State 100, Ctrl]
type = ctrlset
trigger1 = time >= 8 && (anim != [102, 103])
value = 1

[State 100, jet]
type = helper
trigger1 = !numhelper(6020)
trigger1 = anim = 100 || anim = 110 || anim = 115
helpertype = normal
stateno = 6020
ID = 6020
name = "Jets"
postype = p1
ownpal = 1

[State 100, change]
type = changeanim
triggerall = anim = 100
trigger1 = !AIlevel && command = "holdup"
trigger2 = AIlevel && p2dist y < -50
value = 110
persistent = 0
[State 100, change]
type = changeanim
triggerall = anim = 100 && (pos y <= -32 || time >= 12)
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && p2dist y > 50
value = 115
persistent = 0
[State 100, change]
type = changeanim
triggerall = anim = 110
trigger1 = !AIlevel && command != "holdup" && command = "holdfwd"
trigger2 = AIlevel && (p2dist y = [ -50, 50])
value = 100
persistent = 0
[State 100, change]
type = changeanim
triggerall = anim = 115
trigger1 = !AIlevel && command != "holddown" && command = "holdfwd"
trigger2 = AIlevel && (p2dist y = [ -50, 50])
value = 100
persistent = 0

[State 100, Vel]
type = velset
trigger1 = anim = 100
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)
[State 100, Vel]
type = velset
trigger1 = anim = 110
x = -.8 * const(velocity.run.fwd.y)
y = -.8 * const(velocity.run.fwd.x)
[State 100, Vel]
type = velset
trigger1 = anim = 115
x = const(velocity.run.fwd.x)
y = -const(velocity.run.fwd.y)

[State 100, change]
type = changeanim
triggerall = anim != 101 && time >= 12
trigger1 = time >= 30
trigger2 = !AIlevel && anim = 100 && command != "holdfwd"
trigger3 = !AIlevel && anim = 110 && command != "holdup"
trigger4 = !AIlevel && anim = 115 && command != "holddown"
trigger5 = AIlevel && p2dist x < 60
value = 101
persistent = 0
[State 100, statetype]
type = statetypeset
trigger1 = anim = 101
statetype = A
physics = A
[State 100, Vel]
type = velmul
trigger1 = anim = 101
x = 0.5
persistent = 0
[State 100, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -5
value = 52


;======================< FLY BACKWARD >===========================
[Statedef 105]
type = A
physics = N
anim = ifelse(statetype = A, 103, 102)
ctrl = 0
sprpriority = 1
velset = 0, 0

[State 105, change]
type = changeanim
trigger1 = (anim = [102, 103]) && !animtime
value = ifelse(command = "holdup", 110, 105)

[State 105, as]
type = assertspecial
trigger1 = 1
flag = noairguard
[State 105, Ctrl]
type = ctrlset
trigger1 = time >= 8 && (anim != [102, 103])
value = 1

[State 105, jet]
type = helper
trigger1 = !numhelper(6020)
trigger1 = anim = 105 || anim = 110 || anim = 115
helpertype = normal
stateno = 6020
ID = 6020
name = "Jets"
postype = p1
ownpal = 1

[State 105, change]
type = changeanim
triggerall = anim = 105
trigger1 = !AIlevel && command = "holdup"
trigger2 = AIlevel && p2dist y > 50
value = 110
persistent = 0
[State 105, change]
type = changeanim
triggerall = anim = 110
trigger1 = !AIlevel && command != "holdup" && command = "holdback"
trigger2 = AIlevel && p2dist y < -50
value = 105
persistent = 0

[State 105, Vel]
type = velset
trigger1 = anim = 105
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 105, Vel]
type = velset
trigger1 = anim = 110
x = 0.8 * const(velocity.run.back.y)
y = 0.8 * const(velocity.run.back.x)

[State 105, change]
type = changeanim
triggerall = anim != 101 && time >= 12
trigger1 = time >= 30
trigger2 = !AIlevel && anim = 105 && command != "holdback"
trigger3 = !AIlevel && anim = 110 && command != "holdup"
trigger4 = AIlevel && p2dist x < 60
value = 101
persistent = 0

[State 105, statetype]
type = statetypeset
trigger1 = anim = 101
statetype = A
physics = A
[State 105, Vel]
type = velmul
trigger1 = anim = 101
x = 0.5
persistent = 0

[State 105, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -5
value = 52


;==========< GUARD >==========
;--- START ---
[Statedef 120]
type = U
physics = U
[State 120, Vel]
type = velset
trigger1 = !time && statetype != A
x = 0
y = 0
[State 120, Anim]
type = changeanim
trigger1 = !time
value = 120 + (statetype = C) + (statetype = A) * 2
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 120, End]
type = changestate
trigger1 = !animtime || AIlevel
value = 130 + (statetype = C) + (statetype = A) * 2
[State 120, Stop]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- STAND GUARD (guarding) ---
[Statedef 130]
type = S
physics = S
[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype = C)
value = 131
[State 130, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140

[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52
[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

;--- CROUCH GUARD (guarding) ---
[Statedef 131]
type = C
physics = C
[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype != C)
value = 130
[State 131, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- AIR GUARD (guarding) ---
[Statedef 132]
type = A
physics = N
[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132
[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 132, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52
[State 132, stop guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- GUARD (end) ---
[Statedef 140]
type = U
physics = U
ctrl = 1
[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 140, 5]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51

;--- SGUARDHIT (shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0
[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150
[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 150, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 150, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- SGUARDHIT2 (knocked back) ---
[Statedef 151]
type = S
movetype = H
physics = S
anim = 150
[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 151, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 151, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1

;--- CGUARDHIT (shaking) ---
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0
[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151
[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 152, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 152, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- CGUARDHIT2 (knocked back) ---
[Statedef 153]
type = C
movetype = H
physics = C
anim = 151
[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 153, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 153, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1

;--- AGUARDHIT (shaking) ---
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0
[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152
[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155

;--- AGUARDHIT2 (knocked away) ---
[Statedef 155]
type = A
movetype = H
physics = N
anim = 152
[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 155, Vel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 155, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52


;==========< CHEAP K.O. >==========
[Statedef 5130]
type = S
movetype = H
physics = S
anim = 5130
[State 5130, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5130, Pos]
type = posset
trigger1 = 1
y = 0

[State 5130, KO snd]
type = assertspecial
trigger1 = 1
flag = nokosnd
[State 5130, KO snd]
type = stopsnd
trigger1 = !time && !alive
channel = 0
[State 5130, KO snd]
type = playsnd
trigger1 = animelem = 2 && !alive
value = 11, 1

[State 5130, End]
type = changestate
trigger1 = !animtime
value = 5131

[Statedef 5131]
type = L
movetype = H
physics = C
anim = 5131
[State 5131, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5131, Pos]
type = posset
trigger1 = 1
y = 0
[State 5131, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
statetype = L
physics = C
[State 5131, posfix]
type = posadd
trigger1 = animelem = 8 || animelem = 9
x = ifelse((animelem = 8), -4, -12)
[State 5131, Snd]
type = playsnd
trigger1 = !time
trigger2 = animelem = 8
value = 0, 52
[State 5131, Dust]
type = explod
trigger1 = !time
anim = 7104
ID = 7104
sprpriority = -4
postype = p1
pos = 4, 0
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 5131, Dust]
type = explod
trigger1 = animelem = 8
anim = 7102
ID = 7102
sprpriority = -5
postype = p1
pos = 0, 0
scale = 0.66, 0.66
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 5131, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)


;==========< TAUNT >==========
[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 195, Snd]
type = playsnd
trigger1 = anim = 195 && animelem = 3
value = 4, 8
channel = 0
[State 195, Snd]
type = playsnd
trigger1 = anim = 195 && animelem = 2
value = 6, 2

[State 195, Vel]
type = velset
trigger1 = anim = 195 && animelem = 3
y = -2
[State 195, Vel]
type = velmul
trigger1 = anim = 195 && animelemtime(3) >= 0 && animelemtime(5) < 0
y = 0.9
[State 195, Vel]
type = velset
trigger1 = anim = 195 && animelemtime(5) >= 0
y = -.25 * cos((time -18) / 20.0)

[State 195, batexplods]
type = explod
trigger1 = anim = 195 && animelem = 2
anim = 6100
ID = 195
postype = p1
pos = -35, -37
sprpriority = 0
[State 195, batexplods]
type = explod
trigger1 = anim = 195 && animelem = 2
anim = 6100
ID = 195
postype = p1
pos = 2, -40
sprpriority = 0
[State 195, batexplods]
type = explod
trigger1 = anim = 195 && animelem = 2
anim = 6100
ID = 195
postype = p1
pos = -21, -31
sprpriority = 0
[State 195, batexplods]
type = explod
trigger1 = anim = 195 && animelem = 2
anim = 6100
ID = 195
postype = p1
pos = -34, -30
sprpriority = 2
[State 195, batexplods]
type = explod
trigger1 = anim = 195 && animelem = 2
anim = 6100
ID = 195
postype = p1
pos = -10, -36
sprpriority = 2

[State 195, batexplods]
type = modifyexplod
trigger1 = numexplod(195)
ID = 195
bindtime = -1
removetime = -1
removeongethit = 1
[State 195, batexplods]
type = removeexplod
trigger1 = anim != 195 && numexplod(195)
ID = 195

[State 195, End]
type = changeanim
trigger1 = anim = 195 && animelemtime(13) >= 0
trigger1 = command != "holdstart" || roundstate != 2
value = 196
[State 195, statetype]
type = statetypeset
trigger1 = anim = 195 && animelemtime(3) >= 0
statetype = A
physics = N
[State 195, statetype]
type = statetypeset
trigger1 = anim = 196
statetype = A
physics = A


;==========< LOSE (Time over) >==========
[Statedef 170]
type = S
ctrl = 0
anim = ifelse(random < 500, 170, 175)
velset = 0, 0
[State 170, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 170, bats]
type = helper
triggerall = anim = 170
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
helpertype = normal
stateno = 6104
ID = 6100
name = "Bat"
postype = p1
pos = ifelse(var(48) = 1, 10, 26), ifelse(var(48) = 1, -74, -72)


;==========< DRAWGAME (Time over) >==========
[Statedef 175]
type = S
ctrl = 0
velset = 0, 0
[State 175, switch]
type = changestate
trigger1 = !time
value = 170
[State 175, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1


;==========< PREINTRO >==========
[Statedef 190]
type = S
ctrl = 0
velset = 0, 0
[State 190, intro vs Viuda Negra]
type = changestate
trigger1 = numenemy
trigger1 = !(teammode = simul) && !(enemy, teammode = simul)
trigger1 = enemy, authorname = "Andrés Borghi" && enemy, name = "Viuda Negra"
value = 360
[State 190, intro]
type = changestate
trigger1 = !time
value = ifelse((random < 500), 191, 192)


;==========< INTRO 1 >==========
[Statedef 191]
type = S
physics = N
anim = 191
[State 191, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 191, hole]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6005
ID = 6005
name = "Hole"
postype = p1
[State 191, bats]
type = helper
triggerall = animelemtime(2) < 0 && numhelper(6100) < 6
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
trigger3 = numhelper(6100) = 2
trigger3 = var(48) := 3
trigger4 = numhelper(6100) = 3
trigger4 = var(48) := 4
trigger5 = numhelper(6100) = 4
trigger5 = var(48) := 5
trigger6 = numhelper(6100) = 5
trigger6 = var(48) := 6
helpertype = normal
stateno = 6106
ID = 6100
name = "Bat"
postype = p1

[State 191, Snd]
type = playsnd
trigger1 = animelem = 9
value = 4, ifelse(random < 500, 2, 4)
[State 191, Snd]
type = playsnd
trigger1 = animelem = 13
value = 6, 2
[State 191, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< INTRO 2 >==========
[Statedef 192]
type = A
physics = N
anim = 192
[State 192, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 192, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 11

;[State 192, Scale]
;type = angledraw
;trigger1 = animelemtime(2) >= 0 && animelemtime(2) <= 10
;scale = (animelemtime(2) / 10.0), (10 -(0.9 * animelemtime(2)))

[State 192, Pos]
type = posset
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
y = -56
[State 192, bound]
type = screenbound
trigger1 = animelemtime(3) < 0
value = 1
movecamera = 1, 0
[State 192, Pos]
type = posset
trigger1 = (animelemtime(2) < 0 || animelemtime(3) >= 0) && pos y
y = 0

[State 192, Scale]
type = angledraw
trigger1 = animelemtime(2) >= 0 && animelemtime(2) < 5
scale = (5 -.4 * animelemtime(2)), (0.05 * animelemtime(2))
[State 192, Scale]
type = angledraw
trigger1 = animelemtime(2) >= 5 && animelemtime(2) < 10
scale = (5 -.4 * animelemtime(2)), (0.25 + .15 * (animelemtime(2) -5))

[State 192, pal]
type = palfx
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0 && !(time % 2)
time = 1
add = 255, 255, 255
[State 192, pal]
type = palfx
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0 && (time % 2)
time = 1
invertall = 1
color = 0
mul = 0, 256, 0
[State 192, pal]
type = palfx
trigger1 = animelem = 3
time = 10
add = 255, 255, 255
sinadd = -255, -255, -255, 40

[State 192, Dust]
type = explod
trigger1 = animelemtime(2) = -1
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
[State 192, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< INTRO vs VIUDA NEGRA >==========
[Statedef 360]
type = S
physics = N
anim = 360
[State 360, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 360, bats]
type = helper
triggerall = numhelper(6100) < 5
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
trigger3 = numhelper(6100) = 2
trigger3 = var(48) := 3
trigger4 = numhelper(6100) = 3
trigger4 = var(48) := 4
trigger5 = numhelper(6100) = 4
trigger5 = var(48) := 5
helpertype = normal
stateno = 6111
ID = 6100
name = "Bat"
postype = p2

[State 360, Anim]
type = changeanim
trigger1 = anim = 360 && time >= 120
value = 361
[State 360, Snd]
type = playsnd
trigger1 = anim = 361 && animelem = 4
value = 4, 20
channel = 0
[State 360, End]
type = changestate
trigger1 = anim = 361 && !animtime
value = 0


;==========< WIN POSE DECIDER >==========
[Statedef 180]
type = S
ctrl = 0

[State 180, Quote]
type = victoryquote
trigger1 = 1
value = 1 + (random % 10)

[State 180, win]
type = changestate
trigger1 = command = "holdx" || command = "holda"
value = ifelse((command = "holdx"), 182, 183)

[State 180, win]
type = changestate
trigger1 = command = "holdb" || command = "holdc" || command = "holdy" || command = "holdz"
value = ifelse((command = "holdc" || command = "holdz"), 189, 181)

[State 180, win]
type = changestate
trigger1 = 1
value = ifelse(random < (250 * (AIlevel ** 2 / 64.0)), 181, ifelse(random < 333, 182, ifelse(random < 500, 183, 189)))


;==========< WIN 1 >==========
[Statedef 181]
type = S
anim = 181
ctrl = 0
sprpriority = 1
[State 181, wait]
type = assertspecial
trigger1 = time < 300
flag = roundnotover
[State 181, Pos]
type = posset
trigger1 = pos y
y = 0
[State 181, Snd]
type = playsnd
trigger1 = !time
value = 6, 2
persistent = 0

[State 181, bats]
type = helper
triggerall = animelemtime(2) < 0 && numhelper(6100) < 8
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
trigger3 = numhelper(6100) = 2
trigger3 = var(48) := 3
trigger4 = numhelper(6100) = 3
trigger4 = var(48) := 4
trigger5 = numhelper(6100) = 4
trigger5 = var(48) := 5
trigger6 = numhelper(6100) = 5
trigger6 = var(48) := 6
trigger7 = numhelper(6100) = 6
trigger7 = var(48) := 7
trigger8 = numhelper(6100) = 7
trigger8 = var(48) := 8
helpertype = normal
stateno = 6107
ID = 6100
name = "Bat"
postype = p1
pos = -4, -60
facing = ifelse(!(numhelper(6100) % 2), -1, 1)

[State 181, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 3
channel = 0
persistent = 0


;==========< WIN 2 >==========
[Statedef 182]
type = S
anim = 182
ctrl = 0
[State 182, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(random < 500, 6, 20)
persistent = 0
[State 182, wait]
type = assertspecial
trigger1 = time < 180
flag = roundnotover
[State 182, Pos]
type = posset
trigger1 = pos y
y = 0


;==========< WIN FLOAT >==========
[Statedef 183]
type = S
movetype = I
physics = S
anim = 183
velset = 0, 0
sprpriority = 1
ctrl = 0
[State 183, wait]
type = assertspecial
trigger1 = time < 180
flag = roundnotover

[State 183, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, ifelse(random < 500, 0, 7)
channel = 0
[State 183, Snd]
type = playsnd
trigger1 = time = 5
value = 6, 2

[State 183, Vel]
type = velset
trigger1 = animelem = 3
y = -3
[State 183, Vel]
type = velmul
trigger1 = animelemtime(3) >= 0 && animelemtime(3) < 12
y = 0.9
[State 183, Vel]
type = velset
trigger1 = animelemtime(3) >= 12
y = -.25 * cos((animelemtime(3) -12) / 20.0)

[State 183, batexplods]
type = explod
trigger1 = time = 5
anim = 6100
ID = 183
postype = p1
pos = -35, -37
sprpriority = 0
[State 183, batexplods]
type = explod
trigger1 = time = 10
anim = 6100
ID = 183
postype = p1
pos = 2, -40
sprpriority = 0
[State 183, batexplods]
type = explod
trigger1 = time = 15
anim = 6100
ID = 183
postype = p1
pos = -21, -31
sprpriority = 0
[State 183, batexplods]
type = explod
trigger1 = time = 20
anim = 6100
ID = 183
postype = p1
pos = -34, -30
sprpriority = 2
[State 183, batexplods]
type = explod
trigger1 = time = 25
anim = 6100
ID = 183
postype = p1
pos = -10, -36
sprpriority = 2

[State 183, batexplods]
type = modifyexplod
trigger1 = numexplod(183)
ID = 183
bindtime = -1
removetime = -1
removeongethit = 1

[State 183, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N


;==========< WIN COSTUME >==========
[Statedef 189]
type = S
anim = 189
ctrl = 0
[State 189, wait]
type = assertspecial
trigger1 = time < 180
flag = roundnotover
[State 189, Pos]
type = posset
trigger1 = pos y
y = 0

[State 189, FX]
type = explod
trigger1 = anim = 189 && animelem = 11
anim = 6040
ID = 6040
sprpriority = 3
postype = p1
ownpal = 1
scale = const(size.xscale), const(size.yscale)

[State 189, Snd]
type = playsnd
trigger1 = anim = 189 && animelem = 11
value = 6, 2
persistent = 0
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6101
name = "Bat"
postype = p1
pos = -23, -49
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6102
name = "Bat"
postype = p1
pos = -31, -38
facing = 1
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6103
name = "Bat"
postype = p1
pos = -35, -24
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6104
name = "Bat"
postype = p1
pos = -38, -11

[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6101
name = "Bat"
postype = p1
pos = -4, -43
facing = -1
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6102
name = "Bat"
postype = p1
pos = 1, -36
facing = -1
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6103
name = "Bat"
postype = p1
pos = 4, -29
facing = -1
[State 189, bats]
type = helper
trigger1 = anim = 189 && animelem = 11
helpertype = normal
stateno = 6109
ID = 6104
name = "Bat"
postype = p1
pos = 7, -22
facing = -1

[State 189, Anim]
type = changeanim
trigger1 = anim = 189 && !animtime
value = 350 + (random % 6)
[State 189, Snd]
type = playsnd
trigger1 = anim != 189
value = 4, ifelse(random < 333, 1, ifelse(random < 333, 2, 9))
channel = 0
persistent = 0


;==========< CONTINUE? >==========
[Statedef 5500]
type = S
ctrl = 0
velset = 0, 0
[State 5500, Anim]
type = changeanim
trigger1 = !time
value = 5500


;==========< INITIALIZE >==========
[Statedef 5900]
type = S

[State 5900, Palette]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, palno

[State 5900, End]
type = changestate
trigger1 = !time
value = ifelse(roundno = 1, 190, 0)


;==========< FALL RECOVERY >==========
[Statedef 5200]
type = A
movetype = H
physics = N
[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050
[State 5200, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5201

[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0
[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0
[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 5201, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, 3
channel = 0
[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5201, Dust]
type = playsnd
trigger1 = !time
value = 0, 101
[State 5201, Dust]
type = explod
trigger1 = !(time % 6) && abs(vel x) >= 1
anim = 7103
sprpriority = 3
postype = p1
pos = 0, 0
vel = 1, 0
scale = 1, 1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 3, 3
channel = 0

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5210, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5210, Vel]
type = velset
trigger1 = !time
x = ifelse((command = "holdfwd" && command != "holdback"), 4, ifelse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;==========< TARGET SAFE FALL >==========
[Statedef 5205]
type = A
physics = N
movetype = H

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60
value = 5210


;===========================================================================
;===============================< -2 STATES >=================================
;===========================================================================
[Statedef -2]

[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Counter FX]
type = helper
trigger1 = !numhelper(7400) && var(29)
trigger1 = movehit = 1 && numtarget && !(hitdefattr = SCA, AT)
helpertype = normal
stateno = 7400
ID = 7400
name = "Counter"
postype = left
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(29) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, varDF]
type = varadd
trigger1 = var(40) > 0
var(40) = ifelse(var(40) = 1, -2, -1)
ignorehitpause = 1
[State -2, varDF]
type = varset
trigger1 = var(40) && roundstate != 2
var(40) = 0
ignorehitpause = 1
[State -2, darkforcetimer]
type = helper
trigger1 = var(40) > 0 && !numhelper(7275)
helpertype = normal
stateno = 7275
ID = 7275
name = "Dark Force Timer"
postype = p1
ownpal = 1
ignorehitpause = 1
[State -2, darkforce]
type = bgpalfx
trigger1 = stateno = 770 || var(40) > 0
time = 1
mul = 128 + ceil(cos(gametime / 20.0) * 128), 128 + ceil(sin(gametime / 20.0) * 128), 128 + ceil(-cos(gametime / 20.0) * 128)
ignorehitpause = 1

[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
var(38) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A && !var(40)
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(38) = 1
ignorehitpause = 1

[State -2, attackvarbyhits]
type = varset
trigger1 = numenemy
fvar(10) = ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause = 1
[State -2, attackvarbyhits]
type = varset
trigger1 = numenemy && var(40)
fvar(10) = 0.75 * ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause = 1
[State -2, attackvarbyhitsreset]
type = varset
trigger1 = numenemy
trigger1 = (enemynear, movetype != H)
trigger2 = !numenemy
fvar(10) = ifelse(var(40), 0.75, 1)
ignorehitpause = 1

[State -2, dampenervar]
type = varset
trigger1 = 1
fvar(12) = fvar(10) + (var(29) * 0.2)
ignorehitpause = 1
[State -2, dampener]
type = attackmulset
trigger1 = 1
value = fvar(12)
ignorehitpause = 1

[State -2, Free Juggling]
type = assertspecial
trigger1 = roundstate != 2
flag = nojugglecheck
ignorehitpause = 1

[State -2, removewalkbats]
type = removeexplod
trigger1 = (anim != 20 && anim != 21) && numexplod(6101)
ID = 6101

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "AI = %d Damage = %f"
params = AIlevel, fvar(12)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy PotS - http://www.mugenguild.com/pots/"
ignorehitpause = 1


;===========================================================================
;===============================< -3 STATES >=================================
;===========================================================================
[Statedef -3]

[State -3, Gametime Var]
type = varset
trigger1 = 1
var(58) = gametime
ignorehitpause = 1

[State -3, bloodsparks]
type = helper
trigger1 = movetype = A && hitdefattr = SCA, AA && var(11) > 0
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7050
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), var(12) -floor(p2dist y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
pausemovetime = 999
supermovetime = 999
ignorehitpause = 1

[State -3, Sparkles]
type = explod
trigger1 = (statetype != A || stateno = 183 || stateno = 195) && movetype != H
trigger1 = stateno != 5900 && stateno != 190 && stateno != 192
trigger1 = !(gametime % 10) && numexplod(6000) < 6
anim = 6000 + (random % 3)
ID = 6000
sprpriority = ifelse(random < (250 * (AIlevel ** 2 / 64.0)), -1, 3)
postype = p1
pos = ceil((random / 13) -40), -ceil(pos y) + (random % 5)
vel = 0, -1
removetime = -2
scale = 0.5, 0.5
ownpal = 1

[State -3, liedownbats]
type = helper
triggerall = (stateno = 5110 || stateno = 5150) && numhelper(6100) < 4
trigger1 = !numhelper(6100)
trigger1 = var(48) := 1
trigger2 = numhelper(6100) = 1
trigger2 = var(48) := 2
trigger3 = numhelper(6100) = 2
trigger3 = var(48) := 3
trigger4 = numhelper(6100) = 3
trigger4 = var(48) := 4
helpertype = normal
stateno = 6105
ID = 6100
name = "Bat"
postype = p1
facing = -1

[State -3, Shadows]
type = afterimage
triggerall = time = 1
trigger1 = stateno = 50 && var(9) = 3
trigger2 = stateno = [710, 725]
time = 2
timegap = 1
framegap = 3
length = 9
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 120, 120, 120
palpostbright = 0, 0, 0
trans = add1

[State -3, ExSnd]
type = playsnd
trigger1 = (stateno = [1000, 2999]) && time = 1 && movetype = A && var(10) = 4
trigger1 = (stateno != [1321, 1325])
value = 7, 6
ignorehitpause = 1
[State -3, ExShadow]
type = afterimage
trigger1 = (stateno = [1000, 2999]) && time = 1 && movetype = A && var(10) = 4
trigger1 = (stateno != [1321, 1325])
time = 2
timegap = 1
framegap = 1
length = 8
palbright = 32, 32, 0
palcontrast = 128, 128, 128
paladd = -10, -10, -10
palmul = 1.1, 1, 0.5
trans = add
ignorehitpause = 1
[State -3, ExFlash]
type = palfx
trigger1 = (stateno = [1000, 2999]) && movetype = A && var(10) = 4
trigger1 = (anim != [1101, 1103]) && anim != 1207
time = 1
add = 32 + ceil(sin(gametime / 1.5) * 32), 32 + ceil(sin(gametime / 1.5) * 32), 0
mul = 300, 300, 200
ignorehitpause = 1

[State -3, Lv1 Shadows]
type = afterimage
trigger1 = stateno = 3000 && animelem = 2
trigger2 = stateno = 3050 && animelem = 3
trigger3 = stateno = 3100 && anim = 3100 && animelemtime(1) = 2
trigger4 = stateno = 3400 && time = 1
time = 2
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State -3, Lv2 Shadows]
type = afterimage
trigger1 = stateno = 3300 && animelem = 2
time = 2
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add1

[State -3, Lv3 Shadows]
type = afterimage
trigger1 = stateno = 4000 && animelem = 3
trigger2 = stateno = 4100 && animelemtime(3) = 5
time = 2
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add1

[State -3, AfterImagePersist]
type = afterimagetime
trigger1 = stateno = 50 && var(9) = 3 && vel y < -1
trigger2 = (stateno = [710, 725])
trigger3 = (stateno = [1000, 2999]) && var(10) = 4 && anim != 1101
trigger4 = (stateno = [3000, 4999]) && anim != 1101
time = 2

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H && numenemy = 1
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)) , 0]
trigger1 = p2statetype = S
trigger1 = p2dist y >= (enemynear, const(size.height) - 31)
trigger2 = p2statetype = C
trigger2 = p2dist y >= (enemynear, const(size.height) - 63)
trigger3 = p2statetype = L
trigger3 = p2dist y >= 9
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < (250 * (AIlevel ** 2 / 64.0))
value = 5000, 1 + (random % 3)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, 1 + (random % 3)
channel = 0
ignorehitpause = 1

[State -3, NoWalk after Parry]
type = assertspecial
trigger1 = prevstateno = 700
trigger1 = stateno = 0 && time < 7
flag = nowalk

[State -3, Cheap KO]
type = changestate
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5130
ignorehitpause = 1
[State -3, Cheap KO]
type = assertspecial
trigger1 = (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
flag = nokosnd
ignorehitpause = 1

[State -3, Dark Force Finish]
type = helper
triggerall = winKO
triggerall = var(40) && !numhelper(7600)
trigger1 = movehit = [1, 4]
trigger2 = numhelper(1005)
trigger2 = helper(1005), var(3)
trigger3 = numhelper(1015)
trigger3 = helper(1015), var(3)
trigger4 = numhelper(1055)
trigger4 = helper(1055), var(3)
trigger5 = numhelper(1065)
trigger5 = helper(1065), var(3)
trigger6 = stateno = 810 && (animelemtime(6) = [0, 1])
trigger7 = stateno = 820 && animelemtime(8) >= 0 && animelemtime(29) < 0
trigger8 = (stateno = 1305 || stateno = 1325) && time <= 1
helpertype = normal
stateno = 7600
ID = 7600
name = "KO FX"
postype = left
pos = 160, -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3 && !numhelper(7600)
trigger1 = (movehit = [1, 4]) && numtarget && (stateno = [3000, 4999])
trigger2 = numhelper(3005)
trigger2 = helper(3005), var(3)
trigger3 = numhelper(3055)
trigger3 = helper(3055), var(3)
trigger4 = numhelper(3305)
trigger4 = helper(3305), var(3)
trigger5 = numhelper(4105) && stateno = 4102
trigger5 = helper(4105), var(3)
helpertype = normal
stateno = 7600
ID = 7600
name = "KO FX"
postype = left
pos = 160, -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999
