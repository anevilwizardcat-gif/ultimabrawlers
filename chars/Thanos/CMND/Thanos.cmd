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

;Required (do not remove) 
	 
[Command] 
name = "highjump"
command = $D, $U
time = 8

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

[command]
name = "qcf_ab"
command = ~D, DF, F, a+b

[command]
name = "qcf_ab"
command = ~D, DF, F, b+c

[command]
name = "qcf_ab"
command = ~D, DF, F, c+a

[command]
name = "qcb_ab"
command = ~D, DB, B, a+b

[command]
name = "qcb_ab"
command = ~D, DB, B, c+b


[command]
name = "qcb_ab"
command = ~D, DB, B, a+c


[command]
name = "qcb_ab"
command = ~D, DB, B, a+b


[command]
name = "qcb_ab"
command = ~D, DB, B, c+b


[command]
name = "qcb_ab"
command = ~D, DB, B, a+c


[command]
name = "qcf_x"
command = ~D, DF, F, x


[command]
name = "qcf_y"
command = ~D, DF, F, y


[command]
name = "qcf_z"
command = ~D, DF, F, z

[command]
name = "qcf_a"
command = ~D, DF, F, a

[command]
name = "qcf_b"
command = ~D, DF, F, b

[command]
name = "qcf_c"
command = ~D, DF, F, c

[command]
name = "qcf_xy"
command = ~D, DF, F, x+y

[command]
name = "qcf_xy"
command = ~D, DF, F, z+y

[command]
name = "qcf_xy"
command = ~D, DF, F, x+z

[command]
name = "qcb_xy"
command = ~D, DB, B, x+y

[command]
name = "qcb_xy"
command = ~D, DB, B, z+y

[command]
name = "qcb_xy"
command = ~D, DB, B, x+z

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

;Gauntlet Power
[State -1, Gauntlet Power]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_xy"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = Numhelper(23000) = 0
triggerall = Stateno != 3000 || Stateno != 3050 || Stateno != 3100 || Stateno != 3150
trigger1 = ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1499] 

;Gauntlet Soul
[State -1, Gauntlet Soul]
type = ChangeState
value = 3300
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_ab"
triggerall = power >= 1000
triggerall = Stateno != 3000 || Stateno != 3050 || Stateno != 3100 || Stateno != 3300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1499] 

[State -1, Gauntlet Reality]
type = ChangeState
value = 3050
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_xy"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = Stateno != 3000 || Stateno != 3050 || Stateno != 3100 || Stateno != 3300
trigger1 = ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1499] 

;---------------------------------------------------------------------------
;Gauntlet Space
[State -1, Gauntlet Space]
type = ChangeState
value = 3100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = Stateno != 3000 || Stateno != 3050 || Stateno != 3100 || Stateno != 3300
trigger1 = ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1499] 


; バックダッシュ
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

; ダッシュ 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl


[State -1, Titan Crush Light]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_x"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Titan Crush Medium
[State -1, Titan Crush Medium]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_y"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Titam Crush Hard
[State -1, Titan Crush Hard]
type = ChangeState
value = 1020
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_z"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Air Titan Crush Light
[State -1, Air Titan Crush Light]
type = ChangeState
value = 1050
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_x"
trigger1 = ctrl
trigger1 = statetype = A ;Use combo condition (above)
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Air Titan Crush Medium
[State -1, Air Titan Crush Medium]
type = ChangeState
value = 1060
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_y"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Air Titan Crush Hard
[State -1, Air Titan Crush Hard]
type = ChangeState
value = 1070
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_z"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = StateNo = [200,699] 


;Death Sphere Light
[State -1, Death Sphere Light]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_a"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Death Sphere Medium
[State -1, Death Sphere Medium]
type = ChangeState
value = 1110
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_b" 
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
;---------------------------------------------------------------------------
;Death Sphere Hard
[State -1, Death Sphere Hard]
type = ChangeState
value = 1120
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_c"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 


[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

[State -1]
type = ChangeState
value = 830
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; 立ち強K
[State -1]
type = ChangeState
value = 252
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;Shoulder Dive
[State -1, Shoulder Dive]
type = ChangeState
value = 651
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact


[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810

; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; 立ち強P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; 立ち弱K
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact

; 立ち中K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

; 立ち強K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; しゃがみ弱P 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl

; しゃがみ中P
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


[State -1]
type = ChangeState
value = 411
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "z"
trigger1 = ctrl

; しゃがみ強P
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

; しゃがみ弱K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && animelem = 3,> 0
trigger5 = stateno = 400 && animelem = 3,> 0
trigger6 = stateno = 430 && animelem = 3,> 0

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

; しゃがみ強K
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

; ジャンプ弱P 
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ジャンプ中P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

; ジャンプ強P
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

; ジャンプ弱K
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; ジャンプ中K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

; ジャンプ強K
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

;---------------------------------------------------------------------------

; 空中ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)

; キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 411 && movehit
trigger4 = stateno = 420 && movehit

; しゃがみ
[State 106, ChangeState]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1
 
; アドバンシングガード 
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
 
; 挑発 
[State -1]
type = ChangeState
value = 195
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3
