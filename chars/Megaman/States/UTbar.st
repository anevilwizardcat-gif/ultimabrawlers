;------------------------------------
;UT Meter P1
;------------------------------------
[Statedef 90000]
type = s
movetype = i
physics = n
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1


;---------Guard fill p1-------------
[State 0, ParentVarSet];Sets meter on full
type = ParentVarSet
trigger1 = root,roundstate <= 0
trigger2 = root,var(37) > 8; keeps meter from over flowing
v = 37
value = 8
ignorehitpause = 1

[State 0, ParentVarAdd];regenerates meter by 1 point every 200 game ticks
type = ParentVarAdd
triggerall = root,var(37) != 8
triggerall = root,var(37) < 8 && root,stateno != [990,991]
trigger1 = (gametime%240)=1
v = 37
value = 1
ignorehitpause = 1

[State 0, Guard Fill]
type = Explod
trigger1 = 1 && !numexplod(330)
anim = f330
ID = 330
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 7
anim = f331
ID = 331
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 6
anim = f332
ID = 332
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 5
anim = f333
ID = 333
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 4
anim = f334
ID = 334
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 3
anim = f335
ID = 335
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 2
anim = f336
ID = 336
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 1
anim = f337
ID = 337
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 0
anim = f338
ID = 338
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = 1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 7
id = 331
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 6
id = 332
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 5
id = 333
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 4
id = 334
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 3
id = 335
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 2
id = 336
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 1
id = 337
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 0
id = 338
;ignorehitpause =
;persistent =



;------------------------------------
;Power Guard Meter P2
;------------------------------------
[Statedef 90001]
type = s
movetype = i
physics = n
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

;---------Guard fill p2-------------
[State 0, ParentVarSet];Sets meter on full
type = ParentVarSet
trigger1 = root,roundstate <= 0
trigger2 = root,var(37) > 8; keeps meter from over flowing
v = 37
value = 8
ignorehitpause = 1

[State 0, ParentVarAdd];regenerates meter by 1 point every 200 game ticks
type = ParentVarAdd
triggerall = root,var(37) != 8
triggerall = root,var(37) < 8 && root,stateno != [990,991]
trigger1 = (gametime%240)=1
v = 37
value = 1
ignorehitpause = 1

[State 0, Guard Fill]
type = Explod
trigger1 = 1 && !numexplod(330)
anim = f330
ID = 330
pos = 159,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .502,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 7
anim = f331
ID = 331
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 6
anim = f332
ID = 332
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 5
anim = f333
ID = 333
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 4
anim = f334
ID = 334
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 3
anim = f335
ID = 335
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 2
anim = f336
ID = 336
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 1
anim = f337
ID = 337
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, Explod]
type = Explod
trigger1 = 1 && root,var(37) = 0
anim = f338
ID = 338
pos = 160,120;17
postype = left  ;p2,front,back,left,right
random = 0,0
removetime = -1
supermovetime = 9999999
pausemove = 9999999
scale = .5,.5
facing = -1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
bindtime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 7
id = 331
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 6
id = 332
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 5
id = 333
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 4
id = 334
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 3
id = 335
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 2
id = 336
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 1
id = 337
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1 && root,var(37) != 0
id = 338
;ignorehitpause =
;persistent =



