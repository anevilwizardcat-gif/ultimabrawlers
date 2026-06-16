[Remap] 
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
[Defaults] 
command.time = 15
command.buffer.time = 3

;Hypers
[Command]
name = "Maximum Spider"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "Maximum Spider"
command = ~D,DF,F,y+z
time = 20

[Command]
name = "Maximum Spider"
command = ~D,DF,F,x+z
time = 20

[Command]
name = "Crawler Assault"
command = ~D,DF,F,a+b
time = 20

[Command]
name = "Crawler Assault"
command = ~D,DF,F,b+c
time = 20

[Command]
name = "Crawler Assault"
command = ~D,DF,F,a+c
time = 20

[Command]
name = "Ultimate Web Throw"
command = ~D,DB,B,x+y
time = 20

[Command]
name = "Ultimate Web Throw"
command = ~D,DB,B,y+z
time = 20

[Command]
name = "Ultimate Web Throw"
command = ~D,DB,B,x+z
time = 20

;Specials
[Command]
name = "Web Ball L"
command = ~D,DF,F,x

[Command]
name = "Web Ball L"
command = ~D,DF,F,y

[Command]
name = "Web Ball H"
command = ~D,DF,F,z

[Command]
name = "Web Swing L"
command = ~D,DB,B,a

[Command]
name = "Web Swing L"
command = ~D,DB,B,b

[Command]
name = "Web Swing H"
command = ~D,DB,B,c

[Command]
name = "Web Throw L"
command = ~F, $D, B, x

[Command]
name = "Web Throw L"
command = ~F, $D, B, y

[Command]
name = "Web Throw H"
command = ~F, $D, B, z

[Command]
name = "Spider Sting L"
command = ~F, D, DF, x

[Command]
name = "Spider Sting L"
command = ~F, D, DF, y

[Command]
name = "Spider Sting H"
command = ~F, D, DF, z

[Command]
name = "Web Ball L"
command = ~D,DF,F,~x
time = 10
buffer.time = 10

[Command]
name = "Web Ball L"
command = ~D,DF,F,~y
time = 10
buffer.time = 10

[Command]
name = "Web Ball H"
command = ~D,DF,F,~z
time = 10
buffer.time = 10

[Command]
name = "Web Swing L"
command = ~D,DB,B,~a
time = 10
buffer.time = 10

[Command]
name = "Web Swing L"
command = ~D,DB,B,~b
time = 10
buffer.time = 10

[Command]
name = "Web Swing H"
command = ~D,DB,B,~c
time = 10
buffer.time = 10

[Command]
name = "Web Throw L"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10

[Command]
name = "Web Throw L"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10

[Command]
name = "Web Throw H"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10

[Command]
name = "Spider Sting L"
command = ~F, D, DF, ~x
time = 10
buffer.time = 10

[Command]
name = "Spider Sting L"
command = ~F, D, DF, ~y
time = 10
buffer.time = 10

[Command]
name = "Spider Sting H"
command = ~F, D, DF, ~z
time = 10
buffer.time = 10

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z



;Required (do not remove) 
	 
[Command] 
name = "highjump"
command = $D, $U

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1
  

[Statedef -1] 

;Crawler Assault
[State -1]
type = ChangeState
value = 3200
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "Crawler Assault"
triggerall = Power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 
trigger4 = stateno = 1100
trigger5 = stateno = 1110
trigger6 = stateno = 1200
trigger7 = stateno = 1210
trigger8 = stateno = 1210

;Ultimate Web Throw
[State -1]
type = ChangeState
value = 3100
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "Ultimate Web Throw"
triggerall = Power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 
trigger4 = stateno = 1100
trigger5 = stateno = 1110
trigger6 = stateno = 1200
trigger7 = stateno = 1210
trigger8 = stateno = 1210

;Maximum Spider
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "Maximum Spider"
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,699] 
trigger4 = stateno = 1100
trigger5 = stateno = 1110
trigger6 = stateno = 1200
trigger7 = stateno = 1210
trigger8 = stateno = 1210
trigger9 = stateno = 1000
trigger10 = stateno = 1010
trigger11 = stateno = 1011
trigger12 = stateno = 1300
trigger13 = stateno = 1310
trigger14 = stateno = 1400
trigger15 = stateno = 1410
trigger16 = stateno = 1414


;Web Swing (Heavy)
[State -1]
type = ChangeState
value = 1310
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Swing H"
trigger1 = ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,699] 

;Web Swing (Light)
[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Swing L"
trigger1 = ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,699] 

;Web Throw (Diagonal)
[State -1]
type = ChangeState
value = 1210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Throw H"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 

;Web Throw (Straight)
[State -1]
type = ChangeState
value = 1200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Throw L"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 


;Spider Sting (Heavy)
[State -1]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Spider Sting H"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 


;Spider Sting (Light)
[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Spider Sting L"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 

;Air Web Ball (Heavy)
[State -1]
type = ChangeState
value = 1410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Ball H"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] 

;Air Web Ball (Light)
[State -1]
type = ChangeState
value = 1400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Ball L"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] 


;Web Ball (Heavy)
[State -1]
type = ChangeState
value = 1110
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Ball H"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 

;Web Ball (Light)
[State -1]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Web Ball L"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499] 



; ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 112
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl


; ƒ_ƒbƒVƒ… 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 112
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

; ƒ_ƒbƒVƒ… 
[State -1]
type = ChangeState
value = 112
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != [200,699] 
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 112
triggerall = stateno != 1221
trigger1 = (command = "recovery") || (StateType != S && command = "FF")
trigger1 = statetype = A && ctrl


;Punch Throw 
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;Kick Throw
[State -1]
type = ChangeState
value = 910
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;Punch Throw 
[State -1]
type = ChangeState
value = 920
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl


;Wall Cling
[State -1, Wall]
type = ChangeState
trigger1 = statetype = A && ctrl
trigger1 = command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger1 = vel x < 0 && pos y <= -92
trigger2 = statetype = A && ctrl
trigger2 = command = "holdback"
trigger2 = FrontEdgeBodyDist <= 10
trigger2 = vel x > 0 && pos y <= -92
value = 60
ctrl = 0

; —§‚¿ŽãP 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810


; —§‚¿’†P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

[State -1]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "z"
trigger1 = ctrl

; —§‚¿‹­P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; —§‚¿ŽãK
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 230 && animelem = 4,> 0

; —§‚¿’†K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; —§‚¿‹­K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
 
; ‚µ‚á‚ª‚ÝŽãP 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl


; ‚µ‚á‚ª‚Ý’†P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; ‚µ‚á‚ª‚Ý‹­P
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; ‚µ‚á‚ª‚ÝŽãK
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl


; ‚µ‚á‚ª‚Ý’†K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

[State -1]
type = ChangeState
value = 441
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "c"
trigger1 = ctrl

; ‚µ‚á‚ª‚Ý‹­K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
 
; ƒWƒƒƒ“ƒvŽãP 
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ƒWƒƒƒ“ƒv’†P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

; ƒWƒƒƒ“ƒv‹­P
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

; ƒWƒƒƒ“ƒvŽãK
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; ƒWƒƒƒ“ƒv’†K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

; ƒWƒƒƒ“ƒv‹­K
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact


; ‹ó’†ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)

; ƒLƒƒƒ“ƒZƒ‹ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 210 && movehit
trigger4 = stateno = 250 && movehit && P2StateType = A
trigger5 = stateno = 441 && movehit



; ‚µ‚á‚ª‚Ý
[State 106, ChangeState]
type = ChangeState
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1
 
; ƒAƒhƒoƒ“ƒVƒ“ƒOƒK[ƒh 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "dash"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1
 
; ’§”­ 
[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && time > 3
trigger3 = stateno = 106 && time > 3
 