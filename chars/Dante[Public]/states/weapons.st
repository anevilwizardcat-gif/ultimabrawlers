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
trigger1 = parent, stateno = 181  ;winpose
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
trigger8 = parent, stateno = 100  ;run fwd
trigger9 = parent, stateno = 234  ;air dash fwd
trigger10 = parent, stateno = 3000 ;stinger

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


[state 2] ;straight sword
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


;--------------------------------------------
[statedef 632]
anim = 632
sprpriority = 3

[State 632]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[state 632]
type = angledraw
trigger1 = 1
scale = .6,.6

[state 632]
type = angleset
trigger1 = animelem = 1
value = -130;190;-170 ;10

[state 632]
type = angleset
trigger1 = animelem = 3
value = -160;190;-170 ;10

[state 632]
type = angleset
trigger1 = animelem = 4
value = 147;190;-170 ;10


[State 632, BindToParent]
type = BindToParent
trigger1 = 1
pos = 10, -60;105   ;6, -30

[state 632]
type = destroyself
trigger1 = parent,stateno != 630

;---------------------------------------------
[statedef 66614]
anim = 66614
ctrl = 0


[state 66614]
type = angledraw
trigger1 = 1
scale = .03,.03;.065,.065

[state 66614]
type = bindtoparent
trigger1 = 1
pos = 53, -75

[state 66614]
type = destroyself
trigger1 = parent,stateno != 66601

;--------------------------------------------
[statedef 4001] ;---- STATE FOR GUN 1 IN BLAZING GUNS
anim = 66614
ctrl = 0
sprpriority = 3

[state 66614]
type = angledraw
trigger1 = 1
scale = .065,.065

[state 66614]
type = destroyself
trigger1 = parent,stateno != 4000

;--------------------------------------------
[statedef 4002] ; ----- STATE FOR GUN 2 - UPSIDE DOWN
anim = 66614
ctrl = 0
sprpriority = 3

[state 66614]
type = angledraw
trigger1 = 1
scale = .065,.065

[State 4002, AngleSet]
type = AngleSet
trigger1 = 1
value = 180



[state 66614]
type = destroyself
trigger1 = parent,stateno != 4000














;---------------------------------------------
[statedef 100311]
anim = 100311
ctrl = 0


[state 100311]
type = angledraw
trigger1 = 1
scale = .03,.03;.065,.065
value = -90

[state 100311]
type = bindtoparent
trigger1 = 1
pos = -20,-10

[state 100311]
type = destroyself
trigger1 = parent,stateno != 1003

;======================================================
[statedef 100312]
anim = 100312
ctrl = 0


[state 100312]
type = angledraw
trigger1 = 1
scale = .03,.03;.065,.065
value = 90

[state 100312]
type = bindtoparent
trigger1 = 1
pos = 5, -10

[state 100312]
type = destroyself
trigger1 = parent,stateno != 1003


[statedef 3102]
anim = 3102
ctrl = 0
sprpriority = 10

[state 3102]
type = angledraw
trigger1 = 1
scale = .065,.065

[state 3102]
type = bindtoparent
trigger1 = 1
pos = 5, -75

[state 3102]
type = destroyself
trigger1 = parent, stateno !=4000

;------------------------==========----------===============----------
;--------------------------========-----------==================
;------------------------========--------------===================----
;ALEX LOOK AT THIS CODE FOR THE STINGER ALL YOU NEED TO DO IS REPLACE THE ANGLE WITH THE CORRECT NUMBER
;EVERYTHING ELSE IS DONE FOR YOU
;NVM I GOT BORED
;FIDDLE WITH THE SECOND BIND PARENT TO GET THE POSISTION RIGHT
[statedef 702]
anim = 702
sprpriority = 3


[State 702, BindToParent]
type = BindToParent
trigger1 = 1
trigger1 = parent,animelem >=7
facing = 1
pos = 10, -68

[State 702, BindToParent]
type = BindToParent
trigger1 = parent,animelem =2
trigger2 = parent,animelem =3
trigger3 = parent,animelem =4
trigger4 = parent,animelem =5
trigger5 = parent,animelem =6

facing = 1
pos = -31, -48

[state 222]
type = angledraw
trigger1 = 1
scale = .6,.6

[state 222]
type = angleset
trigger1 = parent,animelem = 2
value = 15;-170 ;10


[state 222]
type = angleset
trigger1 = parent,animelem = 7
value = -90;-170 ;10

[State 406, 3]
type = playerpush
trigger1 = time > 17
value = 0

[state 12,12]
type = velset
trigger1 = time > 17 && time < 37
x = 13

[state 12,12]
type = velset
trigger1 = time >= 37
x = 0

[state 702]
type = destroyself
trigger1 = parent,stateno != 701

----------------------------------------------------------------------



;Million stab attempt

[statedef 3001]
anim = 3001
sprpriority = 3


[State 3001, BindToParent]
type = BindToParent
trigger1 = parent,animelem =7
trigger2 = parent,animelem =11
trigger3 = parent,animelem =15
trigger4 = parent,animelem =19
facing = 1
pos = 51, -73

[State 3001, BindToParent]
type = BindToParent
trigger1 = parent,animelem =9
trigger2 = parent,animelem =13
trigger3 = parent,animelem =17
facing = 1
pos = 51, -50

[state 3001]
type = angledraw
trigger1 = 1
scale = .6,.6



[state 3001]
type = angleset
trigger1 = 1
value = -90;-170 ;10


[state 3001]
type = destroyself
trigger1 = parent,stateno != 3000
















;we dont tolerate warehousing and if we find this warehoused we will either pull dante till the end or we might just go and raid it...then pull dante)
;This version is the beta 2
;Uploaded on the 18th of august 2007
;this will go in every file XD
