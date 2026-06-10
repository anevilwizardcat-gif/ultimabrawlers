;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; Default Values
[Defaults]
command.time = 25
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;-| commands |-


[Command]
name = "HC"
command = D, DF, F, x+y
time = 25
[Command]
name = "HC"
command = D, DF, F, x+z
time = 25
[Command]
name = "HC"
command = D, DF, F, y+z
time = 25



[Command]
name = "HSS"
command = F, D, DF, y+x
time = 25

[Command]
name = "HSS"
command = F, D, DF, x+z
time = 25


[Command]
name = "HCS"
command = D, DF, F, a+b
time = 25

[Command]
name = "HCS"
command = D, DF, F, a+c
time = 25

[Command]
name = "HCS"
command = D, DF, F, b+c
time = 25

;-| Special Motions |------------------------------------------------------
;-| commands |-

[Command]
name = "csl"
command = D, DF, F, a
time = 25

[Command]
name = "csm"
command = D, DF, F, b
time = 25

[Command]
name = "csh"
command = D, DF, F, c
time = 25

[Command]
name = "csl"
command = ~D, DF, F, ~a
time = 10
buffer.time = 10

[Command]
name = "csm"
command = ~D, DF, F, ~b
time = 10
buffer.time = 10

[Command]
name = "csh"
command = ~D, DF, F, ~c
time = 10
buffer.time = 10

[Command]
name = "zt"
command = ~F, $D, B, x

[Command]
name = "zt"
command = ~F, $D, B, y

[Command]
name = "zt"
command = ~F, $D, B, z

[Command]
name = "zt"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10

[Command]
name = "zt"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10

[Command]
name = "zt"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10

[Command]
name = "syol"
command = F, D, DF, x
time = 25

[Command]
name = "syom"
command = F, D, DF, y
time = 25

[Command]
name = "syoh"
command = F, D, DF, z
time = 25

[Command]
name = "syol"
command = ~F, D, DF, ~x
time = 10
buffer.time = 10

[Command]
name = "syom"
command = ~F, D, DF, ~y
time = 10
buffer.time = 10

[Command]
name = "syoh"
command = ~F, D, DF, ~z
time = 10
buffer.time = 10

[Command]
name = "ssl"
command = D, DF, F, x
time = 25
[Command]
name = "ssm"
command = D, DF, F, y
time = 25
[Command]
name = "ssh"
command = D, DF, F, z
time = 25

[Command]
name = "ssl"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

[Command]
name = "ssm"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

[Command]
name = "ssh"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10


[Command]
name = "RecoveryRoll"
command = B, DB, D, x
time = 25
[Command]
name = "RecoveryRoll"
command = B, DB, D, y
time = 25
[Command]
name = "RecoveryRoll"
command = B, DB, D, z
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, a
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, b
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, c
time = 25

[Command]
name = "FFF"     ;Required (do not remove)
command = F, F, F
time = 30

[Command]
name = "BBB"     ;Required (do not remove)
command = B, B, B
time = 30

;-| Double Tap |-----------------------------------------------------------
;-| Eight commands |-

[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

[Command]
name = "up"
command = U
time = 1


;-| Dir + Button |---------------------------------------------------------
;-| Five commands |-

[Command]
name = "up_c"
command = /$U,c
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
;-| Four commands |-

[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "TwoPunch"
command = x+y
time = 1
[Command]
name = "TwoPunch"
command = x+z
time = 1
[Command]
name = "TwoPunch"
command = y+z
time = 1

[Command] 
name = "highjump"
command = $D, $U

;-| Single Button |---------------------------------------------------------
;-| Fourteen commands |-

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "fwd"
command = F
time = 1


;-| Hold Dir |--------------------------------------------------------------
;-| Twelve commands |-

[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1

[Command]
name = "holddownback"
command = /DB
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

[Command]
name = "holdfwd2"
command = /F
time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdup2"
command = /U
time = 1

[Command]
name = "holddown2"
command = /D
time = 1

[Command] 
name = "hold_a" 
command = /$a 
[Command] 
name = "hold_b" 
command = /$b 
[Command] 
name = "hold_x" 
command = /$x 
[Command] 
name = "hold_y" 
command = /$y 
[Command] 
name = "hold_c" 
command = /$c 
[Command] 
name = "hold_z" 
command = /$z

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

[command]
name="start"
command=s
time=1


[Statedef -1]
;コマンド------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 3200
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = power >= 1000
triggerall = command = "HSS"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger3 = stateno = [1000,1100]
trigger4 = stateno = [1300,1320]
trigger5 = stateno = 1400 || stateno = 1410 || stateno = 1420 

; FJ
[State -1]
type = ChangeState
value = 3000
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = power >= 1000
triggerall = command = "HC"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger3 = stateno = [1000,1100]
trigger4 = stateno = [1300,1320]
trigger5 = stateno = 1400 || stateno = 1410 || stateno = 1420 

[State -1]
type = ChangeState
value = 3100
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = power >= 1000
triggerall = command = "HCS"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger3 = stateno = [1000,1100]
trigger4 = stateno = [1300,1320]
trigger5 = stateno = 1400 || stateno = 1410 || stateno = 1420 


;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = (command = "holdback2" && command = "TwoPunch") || (StateType != A && command = "BB")
trigger1 = StateType != A
trigger1 = ctrl
trigger1 = StateNo != [105,107]
trigger1 = StateNo != [100,101]


;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(47) = 0
triggerall = (command = "TwoPunch") || (StateType != A && command = "FF")
trigger1 = StateType != A
trigger1 = StateNo != [100,101]
trigger1 = StateNo != [105,107]
trigger1 = ctrl
trigger2 = StateNo = 10

;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 昇竜
[State -1]
type = ChangeState
value = 1400
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "syol"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1410
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "syom"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1420
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "syoh"
trigger1 = ctrl
trigger2 = stateno = [200,450]

;---------------------------------------------------------------------------
; 波動
[State -1]
type = ChangeState
value = 1000
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(50) = 1
triggerall = statetype != A
triggerall = command = "ssl"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1010
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(50) = 1
triggerall = statetype != A
triggerall = command = "ssm"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1020
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(50) = 1
triggerall = statetype != A
triggerall = command = "ssh"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1200
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(50) = 1
triggerall = statetype = A
triggerall = command = "ssl"
trigger1 = ctrl
trigger2 = stateno = [600,651]

[State -1]
type = ChangeState
value = 1210
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(50) = 1
triggerall = statetype = A
triggerall = command = "ssm"
trigger1 = ctrl
trigger2 = stateno = [600,651]

[State -1]
type = ChangeState
value = 1220
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = var(50) = 1
triggerall = statetype = A
triggerall = command = "ssh"
trigger1 = ctrl
trigger2 = stateno = [600,651]

;---------------------------------------------------------------------------
;チャージ
[State -1]
type = ChangeState
value = 1300
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "csl"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1310
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "csm"
trigger1 = ctrl
trigger2 = stateno = [200,450]

[State -1]
type = ChangeState
value = 1320
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "csh"
trigger1 = ctrl
trigger2 = stateno = [200,450]

;---------------------------------------------------------------------------
; 側転
[State -1]
type = ChangeState
value = 1500
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype != A
triggerall = command = "zt"
trigger1 = ctrl
trigger2 = stateno = [200,450]


;---------------------------------------------------------------------------
;--------------------------------Basics-------------------------------------
;---------------------------------------------------------------------------

;投げ
;---------------------------------------------------------------------------
; P投げ
[State -1]
type = ChangeState
value = 800
triggerall = var(59)<=0
triggerall = StateType = S
triggerall = p2StateType != A
triggerall = p2bodydist X <= 33
triggerall = StateNo != [100,107]
Triggerall = NumEnemy>=1
triggerall = enemyNear, movetype !=H
trigger1 = enemyNear, StateNo != [120,159]
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command = "z" || command = "y"
trigger1 = ctrl
trigger2 = command = "x" && command = "a"
trigger2 = ctrl

; P投げ
[State -1]
type = ChangeState
value = 800
triggerall = var(59)<=0
triggerall = StateType = S
triggerall = p2StateType = A
triggerall = p2bodydist X <= 33
triggerall = p2dist Y > -30
triggerall = StateNo != [100,107]
Triggerall = NumEnemy>=1
triggerall = enemyNear, movetype !=H
trigger1 = enemyNear, StateNo != [120,159]
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command = "z" || command = "y"
trigger1 = ctrl
trigger2 = command = "x" && command = "a"
trigger2 = ctrl

;---------------------------------------------------------------------------
; K投げ
[State -1]
type = ChangeState
value = 840
triggerall = var(59)<=0
triggerall = StateType = S
triggerall = p2StateType != A
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "c"
triggerall = p2bodydist X <= 28
;triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
Triggerall = NumEnemy>=1
triggerall = enemyNear, StateNo != [120,159]
triggerall = enemyNear, movetype !=H
trigger1 = ctrl

; K投げ
[State -1]
type = ChangeState
value = 840
triggerall = var(59)<=0
triggerall = StateType = S
triggerall = p2StateType = A
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "c"
triggerall = p2bodydist X <= 28
;triggerall = p2dist X > 0
triggerall = p2dist Y > -30
triggerall = StateNo != 100
Triggerall = NumEnemy>=1
triggerall = enemyNear, StateNo != [120,159]
triggerall = enemyNear, movetype !=H
trigger1 = ctrl


;---------------------------------------------------------------------------
; j. Fierce Throw Forward
[State -1]
type = ChangeState
value = 860
triggerall = var(59)<=0
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "z" || command = "y"
triggerall = p2bodydist X <= 35
triggerall = p2bodydist Y <= 60
triggerall = p2bodydist Y > -60
Triggerall = NumEnemy>=1
triggerall = enemyNear, StateNo != [120,159]
triggerall = enemyNear, movetype !=H
trigger1 = ctrl


;---------------------------------------------------------------------------

;Super Jump
[State -1]
type = ChangeState
value = 10022
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype!=A
trigger1 = command = "highjump" 
trigger1 = ctrl

;Super Jump
[State -1]
type = ChangeState
value = 10023
triggerall = !var(15)
triggerall = var(59)<=0
triggerall = var(43) = 0
triggerall = statetype!=A
trigger1 = command = "holdup"
trigger1 = stateno = 420 || stateno = 421
trigger1 = movecontact


;--|[ Standing ]|--
;---------------------------------------------------------------------------
; LP
[State -1]
type = ChangeState
value = 200
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
; MP
[State -1]
type = ChangeState
value = 210
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; HP
[State -1]
type = ChangeState
value = 221
triggerall = var(59)<=0
triggerall = var(50)=0
triggerall = statetype != A
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210  
trigger2 = MoveContact
trigger3 = stateno = 230 || stateno = 240 || stateno = 241   
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430 || stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 410 && movecontact && time > 8

;---------------------------------------------------------------------------
; HP
[State -1]
type = ChangeState
value = 220
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210  
trigger2 = MoveContact
trigger3 = stateno = 230 || stateno = 240 || stateno = 241   
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430 || stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 410 && movecontact && time > 8


;---------------------------------------------------------------------------
; LK
[State -1]
type = ChangeState
value = 230
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl


;---------------------------------------------------------------------------
; MK
[State -1]
type = ChangeState
value = 240
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; MK
[State -1]
type = ChangeState
value = 241
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 240
trigger3 = time>18


;---------------------------------------------------------------------------
; HK
[State -1]
type = ChangeState
value = 250
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210  
trigger2 = MoveContact
trigger3 = stateno = 230 || stateno = 240 || stateno = 241  
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430 || stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 410 && movecontact && time > 8
;--|[ Crouching ]|--
;---------------------------------------------------------------------------
; CLP
[State -1]
type = ChangeState
value = 400
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
; CMP
[State -1]
type = ChangeState
value = 410
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; CHP
[State -1]
type = ChangeState
value = 421
triggerall = var(59)<=0
triggerall = var(50)=0
triggerall = statetype != A
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201 || stateno = 210  
trigger2 = MoveContact
trigger3 = stateno = 230 || stateno = 240 || stateno = 241  
trigger3 = MoveContact
trigger4 = stateno = 400 || stateno = 410 || stateno = 411  
trigger4 = MoveContact
trigger5 = stateno = 430 || stateno = 440
trigger5 = MoveContact


;---------------------------------------------------------------------------
; CHP
[State -1]
type = ChangeState
value = 420
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210  
trigger2 = MoveContact
trigger3 = stateno = 230 || stateno = 240 || stateno = 241  
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430 || stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 410 && movecontact && time > 8


;---------------------------------------------------------------------------

; CLK
[State -1]
triggerall = var(59)<=0
type = ChangeState
value = 430
triggerall = statetype != A
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl


;---------------------------------------------------------------------------
; CMK
[State -1]
type = ChangeState
value = 440
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact


;---------------------------------------------------------------------------
; CHK
[State -1]
type = ChangeState
value = 450
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210  
trigger2 = MoveContact
trigger3 = stateno = 230 || stateno = 240 || stateno = 241  
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430 || stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 410 && movecontact && time > 8

;--|[ Jumping ]|--
;---------------------------------------------------------------------------
; JLP
[State -1]
type = ChangeState
value = 600
triggerall = var(59)<=0
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; JMP
[State -1]
type = ChangeState
value = 610
triggerall = var(59)<=0
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; JHP
[State -1]
type = ChangeState
value = 621
triggerall = var(59)<=0
triggerall = var(50)=0
triggerall = statetype = A
triggerall = command = "z"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 
trigger3 = MoveContact
trigger4 = stateno = 630 
trigger4 = MoveContact
trigger5 = stateno = 640
trigger5 = MoveContact

;---------------------------------------------------------------------------
; JHP
[State -1]
type = ChangeState
value = 620
triggerall = var(59)<=0
triggerall = statetype = A
triggerall = command = "z"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 
trigger3 = MoveContact
trigger4 = stateno = 630 
trigger4 = MoveContact
trigger5 = stateno = 640
trigger5 = MoveContact

;---------------------------------------------------------------------------
; JLK
[State -1]
type = ChangeState
value = 630
triggerall = var(59)<=0
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact



;---------------------------------------------------------------------------
; JMK
[State -1]
type = ChangeState
value = 640
triggerall = var(59)<=0
triggerall = statetype = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 
trigger3 = MoveContact
trigger4 = stateno = 630 
trigger4 = MoveContact

;---------------------------------------------------------------------------
; JHK
[State -1]
triggerall = var(59)<=0
type = ChangeState
value = 650
triggerall = statetype = A
triggerall = command = "c" && command = "holdup"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 
trigger3 = MoveContact
trigger4 = stateno = 620 
trigger4 = MoveContact
trigger5 = stateno = 630 
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 621
trigger7 = MoveContact

;---------------------------------------------------------------------------
; JHK
[State -1]
triggerall = var(59)<=0
type = ChangeState
value = 651
triggerall = statetype = A
triggerall = command = "c" && command = "holddown"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 
trigger3 = MoveContact
trigger4 = stateno = 620 
trigger4 = MoveContact
trigger5 = stateno = 630 
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 621
trigger7 = MoveContact

;---------------------------------------------------------------------------
; JHK
[State -1]
triggerall = var(59)<=0
type = ChangeState
value = 652
triggerall = statetype = A
triggerall = command = "c"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 
trigger3 = MoveContact
trigger4 = stateno = 620 
trigger4 = MoveContact
trigger5 = stateno = 630 
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 621
trigger7 = MoveContact

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(59)<=0
triggerall = command = "s"
triggerall = StateType != A
trigger1 = ctrl

 
; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "TwoPunch"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(48) = 1
ignorehitpause = 1
