[statedef 2]
anim = 204
sprpriority = -3

[State 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state 2]
type = changeanim
trigger1 = parent, anim = 2
trigger1 = parent, animelem = 4
value = 205

[state 2]
type = changeanim
trigger1 = parent, anim = 0
trigger1 = parent, animelem = 2
value = 206

[state 2]
type = changeanim
triggerall = parent, anim != 0
triggerall = parent, anim != 2
trigger1 = 1
value = 204

[state 2]
type = angledraw
trigger1 = 1
scale = .6,.6

[state 2]
type = angleset
triggerall = parent,anim != 5035
triggerall = parent,anim != 5050
triggerall = parent,anim != 5040
triggerall = parent,anim != 5060
triggerall = parent,anim != 5110
trigger1 = 1
value = -170 ;10
[state 2]
type = sprpriority
trigger1 = parent, stateno = 181
trigger1 = parent, animelem = 9
trigger2 = parent, stateno = 320
trigger3 = parent, stateno = 520
trigger3 = parent, animelem >= 4
trigger4 = parent, stateno = 310
trigger4 = parent, animelem = 4
trigger5 = parent, anim = 330
trigger5 = parent, animelem = 1
trigger6 = parent, stateno = 800
trigger7 = parent, stateno = 820
value =3
;[state 2]
;type = BindToParent
;trigger1 = parent, stateno = 181
;trigger1 = parent, animelem >=9
;pos = 15,-108   ;6, -30
;[state 2]
;type = BindToParent
;trigger1 = parent, stateno = 181
;trigger1 = parent, animelem = 1
;pos = -6,-108   ;6, -30


[state 2]
type = angleset
trigger1 = parent,anim = 5035
trigger2 = parent,anim = 5040
trigger3 = parent,anim = 5060
trigger4 = parent,anim = 5110
trigger5 = parent,anim = 5050
trigger6 = parent,anim = 5170
value = -90 ;10

[State 2, BindToParent]
type = BindToParent
triggerall = parent,anim != 5035
triggerall = parent,anim != 5040
triggerall = parent,anim != 5060
triggerall = parent,anim != 5110
triggerall = parent,anim != 5050
triggerall = parent,anim != 5170
triggerall = parent,stateno != 181
triggerall = parent,statetype!= C
triggerall = parent,stateno != 320
trigger1 = 1
;facing = 0
pos = -6,-108   ;6, -30
[State 2, BindToParent]
type = BindToParent
triggerall = parent,statetype=C
trigger1 = 1
pos = -10, -70
[State 2, BindToParent]
type = BindToParent
triggerall = parent, stateno = 320
trigger1 = 1
pos = 10, -108
[State 2, BindToParent]
type = BindToParent
triggerall = parent, stateno = 520
trigger1 = 1
pos = -6, -108



[State 2, BindToParent]
type = BindToParent
trigger1 = parent,anim = 5035
trigger2 = parent,anim = 5040
trigger3 = parent,anim = 5060
trigger4 = parent,anim = 5110
trigger5 = parent,anim = 5050
trigger6 = parent,anim = 5170
pos = -70,-5

[state 2]
type = destroyself
trigger1 = parent, movetype = A;stateno != 0
trigger1 = parent, var(2) = 1
trigger2 = parent, time = 2


[statedef 202]
anim = 202
sprpriority = 10

[state 202]
type = angledraw
trigger1 = 1
scale = .6,.6

;[State 202, PosAdd]
;type = PosAdd
;trigger1 = time = 0
;x = 0
;y = 10


[state 202]
type = angleset
trigger1 = animelem = 1
value = 15

[state 202]
type = angleset
trigger1 = animelem = 2
value = 50

;[State 202, PosAdd]
;type = PosAdd
;trigger1 = time = 3
;x = 0
;y = -10

[State 202]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[state 202]
type = angleset
trigger1 = animelem = 3
value = 200

[state 202]
type = angleset
trigger1 = animelem = 4
value = -90

;[state 202]
;type = angleadd
;trigger1 = time = 6
;value = 45

;[State 202, SprPriority]
;type = SprPriority
;trigger1 = animelem = 3
;value = -1
;ignorehitpause =
;persistent =


[State 202, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 0, -20


[state 202]
type = destroyself
trigger1 = parent,stateno != 200




;-----------------------------------------------------
[statedef 222]
anim = 222
sprpriority = -1

[State 222]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[state 222]
type = angledraw
trigger1 = 1
scale = .6,.6

[state 222]
type = angleset
trigger1 = animelem = 1
value = -170;-170 ;10

[State 222, BindToParent]
type = BindToParent
trigger1 = 1
pos = 3, -30;105   ;6, -30

[State 222, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = 1

[state 222]
type = angleset
trigger1 = animelem = 2
value = -22 ;10

[state 222]
type = angleset
trigger1 = animelem = 3
value = -25 ;10

[state 222]
type = angleset
trigger1 = animelem = 5
value = -90 ;10



[state 222]
type = destroyself
trigger1 = parent,stateno != 220

;--------------------------------------------------

[statedef 232]
anim = 232
sprpriority = 1

[State 232]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[state 232]
type = angledraw
trigger1 = 1
scale = .6,.6

[state 232]
type = angleset
trigger1 = animelem = 1
value = 190;-170 ;10

[State 232, BindToParent]
type = BindToParent
trigger1 = 1
pos = 3, -30;105   ;6, -30


[state 232]
type = angleset
trigger1 = animelem = 2
value = -105 ;10

[state 232]
type = angleset
trigger1 = animelem = 3
value = 30 ;10

[state 232]
type = angleset
trigger1 = animelem = 4
value = 165 ;10

[State 232, SprPriority]
type = SprPriority
trigger1 = animelem = 4
value = -1

[state 232]
type = angleset
trigger1 = animelem = 5
value = 180 ;10


[state 232]
type = destroyself
trigger1 = parent,stateno != 230










