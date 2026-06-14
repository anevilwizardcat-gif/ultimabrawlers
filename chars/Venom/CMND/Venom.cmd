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
;Venomous Raging Demon-----------------------
[Command]
name = "qcf_KK"
command = ~D,DF,F,a+b
time = 20

[Command]
name = "qcf_KK"
command = ~D,DF,F,b+c
time = 20

[Command]
name = "qcf_KK"
command = ~D,DF,F,a+c
time = 20
;---------------------------------
;Venom Web-----------------------
[Command]
name = "qcf_PP"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "qcf_PP"
command = ~D,DF,F,y+z
time = 20

[Command]
name = "qcf_PP"
command = ~D,DF,F,x+z
time = 20
;---------------------------------
;Specials
;Venom Fang-----------------------
[Command]
name = "qcf_x"
command = ~D,DF,F,x
time = 10

[Command]
name = "qcf_y"
command = ~D,DF,F,y
time = 10

[Command]
name = "qcf_z"
command = ~D,DF,F,z
time = 10

[Command]
name = "qcf_x"
command = ~D,DF,F,~x
time = 10
buffer.time = 10

[Command]
name = "qcf_y"
command = ~D,DF,F,~y
time = 10
buffer.time = 10

[Command]
name = "qcf_z"
command = ~D,DF,F,~z
time = 10
buffer.time = 10
;---------------------------------
;Venom Rush--------------------
[Command]
name = "qcf_a"
command = ~D,DF,F,a
time = 10

[Command]
name = "qcf_b"
command = ~D,DF,F,b
time = 10

[Command]
name = "qcf_c"
command = ~D,DF,F,c
time = 10

[Command]
name = "qcf_a"
command = ~D,DF,F,~a
time = 10
buffer.time = 10

[Command]
name = "qcf_b"
command = ~D,DF,F,~b
time = 10
buffer.time = 10

[Command]
name = "qcf_c"
command = ~D,DF,F,~c
time = 10
buffer.time = 10
;----------------------------------

;Web Throw--------------------
[Command]
name = "hcb_x"
command = ~F, $D, B, x

[Command]
name = "hcb_y"
command = ~F, $D, B, y

[Command]
name = "hcb_z"
command = ~F, $D, B, z

[Command]
name = "hcb_x"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10

[Command]
name = "hcb_y"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10

[Command]
name = "hcb_z"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10
;-----------------------------------


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
name = "start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "holddownfwd"
command = /DF
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


;Venomous Raging Demon
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_KK"
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450
trigger14 = stateno = 1020
trigger15 = stateno = 1021
trigger16 = stateno = 1022

;Venom Web
[State -1]
type = ChangeState
value = 3010
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_PP"
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450
trigger14 = stateno = 1020
trigger15 = stateno = 1021
trigger16 = stateno = 1022
;

[State -1, H Web Throw]
type = ChangeState
value = 1032
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "hcb_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, M Web Throw]
type = ChangeState
value = 1031
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "hcb_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, L Web Throw]
type = ChangeState
value = 1030
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "hcb_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, H Venom Rush]
type = ChangeState
value = 1022
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, M Venom Rush]
type = ChangeState
value = 1021
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, L Venom Rush]
type = ChangeState
value = 1020
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450


[State -1, H Venom Fang]
type = ChangeState
value = 1014
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610 
trigger4 = stateno = 620
trigger5 = stateno = 630 
trigger6 = stateno = 640 
trigger7 = stateno = 650

[State -1, M Venom Fang]
type = ChangeState
value = 1012
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610 
trigger4 = stateno = 620
trigger5 = stateno = 630 
trigger6 = stateno = 640 
trigger7 = stateno = 650

[State -1, L Venom Fang]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610 
trigger4 = stateno = 620
trigger5 = stateno = 630 
trigger6 = stateno = 640 
trigger7 = stateno = 650


[State -1, H Venom Fang]
type = ChangeState
value = 1004
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, M Venom Fang]
type = ChangeState
value = 1002
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450

[State -1, L Venom Fang]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "qcf_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230 
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410 
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440 
trigger13 = stateno = 450


[State -1]
type = ChangeState
value = 103
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 103
triggerall = !var(48)
triggerall = statetype = A && Pos Y < -(const(movement.airjump.height))
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "recovery"


; ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

; ƒ_ƒbƒVƒ… 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

;Stand Punch Throw 
[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;Stand Kick Throw 
[State -1]
type = ChangeState
value = 820
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;Air Kick Throw
[State -1]
type = ChangeState
value = 850
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl


; —§‚¿ŽãP 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelem = 5,> 0
trigger3 = stateno = 400 && animelem = 4,> 0

; —§‚¿’†P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

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
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; —§‚¿ŽãK
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl

; —§‚¿’†K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact


; —§‚¿‹­K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

 
; ‚µ‚á‚ª‚ÝŽãP 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && animelem = 5,> 0
trigger3 = stateno = 400 && animelem = 4,> 0

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
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact


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


; ‚µ‚á‚ª‚Ý‹­K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

 
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
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
 

; ‹ó’†ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = var(2) && !var(3)

; ƒLƒƒƒ“ƒZƒ‹ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59) && var(23)!=1
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 210  && movehit && p2statetype = A && time<17


; ‚µ‚á‚ª‚Ý
[State -1]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = 100
value = 10
ctrl = 1
 
; ƒAƒhƒoƒ“ƒVƒ“ƒOƒK[ƒh 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = (command = "x" && command = "y") || (command = "x" && command = "b") || (command = "y" && command = "b") || command = "c"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1

;Taunt­ 
[State -1]
type = ChangeState
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3
value = 195

 
