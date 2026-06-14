;This file will lead you to salvation should you believe in such things.
;Anti-Rape system Version 1.1 by aokmaniac13 & Jesuszilla
;var(10) - DO WE FIRE THE WEAPONS?

[Statedef 321]
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1

[State -2, PosSet]
type = PosSet
trigger1 = 1
x = cond(numEnemy >= 1, cond(var(3) > 4 && enemy(0), Alive, enemy(0), Pos X, cond(numEnemy > 1 && var(5) > 4, enemy(1), Pos X, root, Pos X)), root, Pos X)
y = cond(numEnemy >= 1, cond(var(3) > 4 && enemy(0), Alive, enemy(0), Pos Y, cond(numEnemy > 1 && var(5) > 4, enemy(1), Pos Y, root, Pos Y)), root, Pos Y)

[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15951)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15952)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15953)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15905) ; GIVE
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4521)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4520)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(51221)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(51241) ;  IT
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4720)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4721)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4821)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(3821)  ;  UP
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15907)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15908)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(19230)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(51219) ;  ア
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(18700)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(51240)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4632)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(82151) ;  キ
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15800)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(15802)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(54321)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(54322) ;  ラ
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(54350)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4621)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4622)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4623)  ;  メ
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4624)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4625)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4626)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4627)  ;  ロ
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4631)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(51242)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(51220)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(54323)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4629)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy(0), SelfAnimExist(4628)
var(3) = 1

[State -2, ChangeState]
type = ChangeState
trigger1 = !SelfAnimExist(9004) || !SelfAnimExist(9005)
value = 69

[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15951)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15952)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15953)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15905) ; GIVE
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4521)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4520)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(51221)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(51241) ;  IT
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4720)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4721)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4821)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(3821)  ;  UP
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15907)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15908)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(19230)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(51219) ;  ア
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(18700)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(51240)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4632)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(82151) ;  キ
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15800)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(15802)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(54321)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(54322) ;  ラ
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(54350)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4621)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4622)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4623)  ;  メ
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4624)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4625)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4626)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4627)  ;  ロ
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4631)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(51242)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(51220)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(54323)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4629)
var(5) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time  && numEnemy > 1
trigger1 = Enemy(1), SelfAnimExist(4628)
var(5) = 1

[State -2, Fuck 'em, be RUDE AS HELL!]
type = Null
trigger1 = numEnemy
trigger1 = var(3) > 4
trigger1 = e||(enemy(0), cond(1, var(Random%60) := ((Random * 4) / Random) + Random, 0))
trigger1 = e||(enemy(0), cond(1, fvar(Random%40) := ((e ** (Random * 0.000001 * Random * 0.000155)) * 0.625) * (Random * 0.347128), 0))
trigger1 = numEnemy > 1
trigger1 = var(5) > 4
trigger1 = e||(enemy(1), cond(1, var(Random%60) := ((Random * 4) / Random) + Random, 0))
trigger1 = e||(enemy(1), cond(1, fvar(Random%40) := ((e ** (Random * 0.000001 * Random * 0.000155)) * 0.625) * (Random * 0.347128), 0))

[State -2, 1]
type = ChangeAnim
triggerall = Anim != 9004
trigger1 = var(3) > 4 || var(5) > 4
value = 9004
[State -2, 1]
type = StateTypeSet
trigger1 = Anim = 9004
movetype = A
[State -2, 1]
type = StateTypeSet
trigger1 = Anim != 9004
movetype = I

[State -2, 1]
type = ReversalDef
trigger1 = Anim = 9004
reversal.attr = C, HT
p1stateno = -1
persistent = 1
sparkno = S-1
[State -2, 1]
type = TargetDrop
trigger1 = numTarget > 1
keepone = 1
[State -2, 1]
type = TargetVelSet
triggerall = numtarget = 1
trigger1 = var(3) > 4 && target,ID = enemy(0), ID
trigger2 = var(5) > 4 && target,ID = enemy(1), ID
x = -(target,Vel X) + (Random ** 2 * Random * 0.78436 + Random * 0.48124)
y = -(target,Vel Y) + (Random ** 2 * Random * 0.32132 + Random * 1.06245)
persistent = 1

[State 201, Nevermind.]
type = varset
triggerall = numhelper(202) = 1
triggerall = var(10) = 1
trigger1 = root, anim != [15000,16000]
trigger1 = root, anim != [9005,9020]
trigger1 = root, anim != [18200,19230]
trigger1 = root, anim != 7696
trigger1 = root, anim != [4000,4999]
trigger1 = enemy, StateNo != [50000,59999]
trigger1 = root, anim != [1000,1999]
trigger1 = enemy, anim != [20000,29999]
trigger2 = ! (root, gethitvar(isbound))
trigger2 = root, alive
trigger3 = root, ctrl
v = 10
value = 0
ignorehitpause = 1

[State 201, Nevermind.]
type = varset
triggerall = numhelper(202) = 1
triggerall = var(3) > 4
triggerall = var(10) = 2
;trigger1 = root, anim != [3520,3831]
trigger1 = selfanimexist(root, anim)
trigger1 = ! (root, gethitvar(isbound))
trigger1 = root, alive
v = 10
value = 0
ignorehitpause = 1

[State 201, Nevermind.]
type = varset
triggerall = numhelper(202) = 1
triggerall = enemy, name = "Haruhi Suzumiya"
triggerall = var(10) = 3
trigger1 = ! (root, gethitvar(isbound))
trigger1 = root, alive
v = 10
value = 0
ignorehitpause = 1

;The ever watchful eye...
[State 201, FIRE ALL WEAPONS]
type = varset
triggerall = numhelper(202) = 0
triggerall = !var(10)
triggerall = var(3) > 4
triggerall = root, gethitvar(isbound)
trigger1 = root, anim = [15100,15953]
trigger2 = root, anim = [9005,9020]
trigger3 = root, anim = [18200,19230]
trigger4 = root, anim = 7696
trigger5 = root, anim = [4000,4999]
trigger6 = root, anim = [1000,1999]
trigger7 = enemy, StateNo = [50000,59999]
trigger8 = enemy, anim = [20000,29999]
v = 10
value = 1
ignorehitpause = 1

;The ever watchful eye...
[State 201, KEEP FIRING!]
type = varset
triggerall = numhelper(202) = 0
triggerall = !var(10)
triggerall = root, gethitvar(isbound)
triggerall = var(3) > 4
trigger1 = !selfanimexist(root, anim)
trigger2 = root, anim = 6621
trigger3 = root, anim = [1010,1059]
trigger4 = root, anim = [1500,1699]
v = 10
value = 2
ignorehitpause = 1

;The ever watchful eye...
[State 201, AAAAH MOTHERLAND!]
type = varset
triggerall = numhelper(202) = 0
triggerall = !var(10)
triggerall = root, gethitvar(isbound)
triggerall = enemy, name = "Haruhi Suzumiya"
trigger1 = !SelfAnimExist(root, anim)
v = 10
value = 3
ignorehitpause = 1

[State 201, WHO TOUCHED MY GUN?]
type = helper
triggerall = numhelper(202) = 0
trigger1 = var(10)
ID = 202
postype = left
pos = 0,0
stateno = 322
pausemovetime = 999
ignorehitpause = 1


;Naturally, it works silently.
[State 201, Invisible]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

;And unnoticeably.
[State 201, playerpush]
type = playerpush
trigger1 = 1
value = 0

;THIS MEANS WAR FUCKER
[Statedef 322]
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State Quote BG]
type = Explod
trigger1 = !numexplod(9001)
trigger1 = parent, var(10)
ID = 9001
anim = 9001
pos = 0,0
postype = left
facing = 1
removetime = 20000
supermovetime = 65535
pausemovetime = 65535
sprpriority = 997
bindtime = -1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

;Naturally, it works silently.
[State 202, Invisible]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = nomusic
flag3 = nobardisplay
ignorehitpause = 1

;And unnoticeably.
[State 202, playerpush]
type = playerpush
trigger1 = 1
value = 0

[State 202, playsnd]
type = playsnd
trigger1 = time = 0
value = S666,666
channel = 4
ignorehitpause=1

[State 201, StopSound]
type = stopsnd
trigger1 = parent, var(10) = 0
channel = 4
ignorehitpause = 1

[State 201, RemoveGankbank]
type = removeexplod
trigger1 = parent, var(10) = 0
trigger1 = numexplod(9001)
ID = 9001
ignorehitpause = 1

[State 202, destroyself]
type = destroyself
trigger1 = !numexplod(9001)
trigger1 = parent, var(10) = 0
ignorehitpause = 1
