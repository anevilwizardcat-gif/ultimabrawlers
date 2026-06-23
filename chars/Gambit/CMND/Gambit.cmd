;===========================================================================
;========================_____________________________======================
;========================|                           |======================
;========================| MARVEL VS CAPCOM 2 |======================
;========================|                           |======================
;========================|        GAMBIT  |======================
;========================|___________________________|======================
;===========================================================================
;===========================================================================

[Defaults] 
command.time = 15
command.buffer.time = 3

;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|      A. I.     |------------------------------
;---------------------------|________________|------------------------------

;---------------------------------------------------------------------------

;-|-IA-|--------------------------------------------------------------------
[Command]
name = "CPU_1"
command = U, D, F
time = 1

[Command]
name = "CPU_2"
command = U, B, F
time = 1

[Command]
name = "CPU_3"
command = U, D, D
time = 1

[Command]
name = "CPU_4"
command = F, B, U
time = 1

[Command]
name = "CPU_5"
command = U, F, U, B
time = 1

[Command]
name = "CPU_6"
command = U, D, B
time = 1

[Command]
name = "CPU_7"
command = F, F, B
time = 1

[Command]
name = "CPU_8"
command = U, D, U
time = 1

[Command]
name = "CPU_9"
command = F, B, B
time = 1

[Command]
name = "CPU_10"
command = F, F, B, B
time = 1

[Command]
name = "CPU_11"
command = U, U, F
time = 1

[Command]
name = "CPU_12"
command = U, B, B
time = 1

[Command]
name = "CPU_13"
command = U, B, F, F
time = 1

[Command]
name = "CPU_14"
command = U, F, B, U
time = 1

[Command]
name = "CPU_15"
command = U, B, F, U
time = 1

[Command]
name = "CPU_16"
command = U, B, B, B
time = 1

[Command]
name = "CPU_17"
command = U, D, B, F
time = 1

[Command]
name = "CPU_18"
command = U, D, B, D
time = 1

[Command]
name = "CPU_19"
command = U, D, F, U
time = 1

[Command]
name = "CPU_20"
command = U, D, U, B
time = 1

[Command]
name = "CPU_21"
command = U, D, F, F
time = 1

[Command]
name = "CPU_22"
command = F, F, F, F
time = 1

[Command]
name = "CPU_23"
command = U, U, U, D
time = 1

[Command]
name = "CPU_24"
command = B, B, B
time = 1

[Command]
name = "CPU_25"
command = D, D, D, D
time = 1

[Command]
name = "CPU_26"
command = D, D, D
time = 1

[Command]
name = "CPU_27"
command = F, F, F
time = 1

[Command]
name = "CPU_28"
command = U, U, U
time = 1

[Command]
name = "CPU_29"
command = U, U, B, B
time = 1

[Command]
name = "CPU_30"
command = D, D, F, F
time = 1

[Command]
name = "CPU_31"
command = U, D, F, U, D
time = 1

[Command]
name = "CPU_32"
command = U, B, F, U, D
time = 1

[Command]
name = "CPU_33"
command = U, D, D, U, D
time = 1

[Command]
name = "CPU_34"
command = F, B, U, U, D
time = 1

[Command]
name = "CPU_35"
command = U, F, U, B, U, D
time = 1

[Command]
name = "CPU_36"
command = U, D, B, U, D
time = 1

[Command]
name = "CPU_37"
command = F, F, B, U, D
time = 1

[Command]
name = "CPU_38"
command = U, D, U, U, D
time = 1

[Command]
name = "CPU_39"
command = F, B, B, U, D
time = 1

[Command]
name = "CPU_40"
command = F, F, B, B, U, D
time = 1

[Command]
name = "CPU_41"
command = U, U, F, U, D
time = 1

[Command]
name = "CPU_42"
command = U, B, B, U, D
time = 1

[Command]
name = "CPU_43"
command = U, B, F, F, U, D
time = 1

[Command]
name = "CPU_44"
command = U, F, B, U, U, D
time = 1

[Command]
name = "CPU_45"
command = U, B, F, U, U, D
time = 1

[Command]
name = "CPU_46"
command = U, B, B, B, U, D
time = 1

[Command]
name = "CPU_47"
command = U, D, B, F, U, D
time = 1

[Command]
name = "CPU_48"
command = U, D, B, D, U, D
time = 1

[Command]
name = "CPU_49"
command = U, D, F, U, U, D
time = 1

[Command]
name = "CPU_50"
command = U, D, U, B, U, D
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z
time = 20
[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c
time = 20
[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c
time = 20
[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "qcf_x"
command = D, DF, F, x
time = 20
[Command]
name = "qcf_y"
command = D, DF, F, y
time = 20
[Command]
name = "qcf_z"
command = D, DF, F, z
time = 20

[Command]
name = "qcb_x"
command = D, DB, B, x
time = 20
[Command]
name = "qcb_y"
command = D, DB, B, y
time = 20
[Command]
name = "qcb_z"
command = D, DB, B, z
time = 20

[Command]
name = "dp_x"
command = F, D, DF, x
time = 20
[Command]
name = "dp_y"
command = F, D, DF, y
time = 20
[Command]
name = "dp_z"
command = F, D, DF, z
time = 20

[Command]
name = "du_a"
command = ~30$D, $U, a

[Command]
name = "du_b"
command = ~30$D, $U, b

[Command]
name = "du_c"
command = ~30$D, $U, c


[Command]
name = "du_x"
command = ~30$D, $U, x

[Command]
name = "du_y"
command = ~30$D, $U, y

[Command]
name = "du_z"
command = ~30$D, $U, z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "SJ"
command = $D, $U
time = 8

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

;-| 2/3 Button Combination |-----------------------------------------------
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

;-| Hold Button |-----------------------------------------------------------
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


;-| Hold Dir |--------------------------------------------------------------
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
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-| Single Button |---------------------------------------
[Command]
name = "up"
command = U
time = 1
buffer.time = 1

[Command]
name = "down"
command = D
time = 1
buffer.time = 1

[Command]
name = "back"
command = B
time = 1
buffer.time = 1

[Command]
name = "fwd"
command = F
time = 1
buffer.time = 1

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
name = "s"
command = s
time = 1
buffer.time = 1

;-| Hold Dir |--------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

;---------------------------------------------------------
[Statedef -1]

[State -1, Royal Flush]
type = ChangeState
value = 2000
triggerall = command = "qcf_2p"
triggerall = power >= 1000
triggerall = !statetype = A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]
trigger4 = StateNo = [1000, 1620]

[State -1, Cajun Explosion]
type = ChangeState
value = 2100
triggerall = command = "qcf_2k"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]
trigger4 = StateNo = [1000, 1620]

[State -1, Cajun Explosion]
type = ChangeState
value = 2101
triggerall = command = "qcb_2k"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]
trigger4 = StateNo = [1000, 1620]

;-| Special |---------------------------------------------


[State -1, Cajun Slash (Jab)]
type = ChangeState
value = 1300
triggerall = command = "dp_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Cajun Slash (Medium)]
type = ChangeState
value = 1400
triggerall = command = "dp_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Cajun Slash (Hard)]
type = ChangeState
value = 1500
triggerall = command = "dp_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Kinetic Card 1]
type = ChangeState
value = 1000
triggerall = command = "qcf_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Kinetic Card 2]
type = ChangeState
value = 1010
triggerall = command = "qcf_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Kinetic Card 3]
type = ChangeState
value = 1020
triggerall = command = "qcf_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Trick Card 1]
type = ChangeState
value = 1100
triggerall = command = "qcb_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Trick Card 2]
type = ChangeState
value = 1110
triggerall = command = "qcb_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Trick Card 3]
type = ChangeState
value = 1120
triggerall = command = "qcb_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]

[State -1, Kinetic Card (Jab) -Air]
type = ChangeState
value = 1200
triggerall = command = "qcf_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 650]

[State -1, Kinetic Card (Strong) -Air]
type = ChangeState
value = 1210
triggerall = command = "qcf_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 650]

[State -1, Kinetic Card (Fierce) -Air]
type = ChangeState
value = 1220
triggerall = command = "qcf_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 650]

[State -1, Cajun Strike (Punch)]
type = ChangeState
value = 1600
triggerall = command = "du_x" || command = "du_y" || command = "du_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]
trigger4 = stateno = 40

[State -1, Cajun Strike (Kick)]
type = ChangeState
value = 1620
triggerall = command = "du_a" || command = "du_b" || command = "du_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger3 = StateNo = [400, 455]
trigger4 = stateno = 40

;Super Jump
[State -1]
type = ChangeState
value = 41
triggerall = command = "holdup" 
trigger1 = stateno = 420 && movehit

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 41
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = Command = "SJ"


[State -1, Dash Forward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100 && stateno != 105


[State -1, Dash Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100 && stateno != 105


[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "s"
triggerall = Var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------
;Guard Push
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 6300
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5


;-| Attacks |---------------------------------------------


[State -1, Throw 1]
type = ChangeState
value = 700
trigger1 = command = "fwd_z" || command = "back_z"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = p2stateno != 5120
trigger1 = ctrl = 1

[State -1, Throw 2]
type = ChangeState
value = 710
trigger1 = command = "fwd_c" || command = "back_c"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = p2stateno != 5120
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 720
trigger1 = command = "fwd_c" || command = "back_c"
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 100 || stateno = 105) && prevstateno != 810


[State -1, Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200
trigger2 = MoveContact
trigger3 = Stateno = 400
trigger3 = MoveContact
trigger4 = Stateno = 230
trigger4 = MoveContact
trigger5 = Stateno = 430
trigger5 = MoveContact

[State -1, Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveCOntact
trigger9 = StateNo = 440
trigger9 = MoveContact


[State -1, Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact


[State -1, Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact


[State -1, Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveCOntact
trigger9 = StateNo = 440
trigger9 = MoveContact 

[State -1, Light Punch (Crouch)]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Medium Punch (Crouch)]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) 
trigger3 = (StateNo = 230) && (Movecontact) 
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact) 

[State -1, Hard Punch (Crouch)]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact) 
trigger5 = (StateNo = 240) && (Movecontact) 
trigger6 = (StateNo = 400) && (Movecontact) 
trigger7 = (StateNo = 410) && (Movecontact) 
trigger8 = (StateNo = 430) && (Movecontact) 
trigger9 = (StateNo = 440) && (Movecontact) 

; Launcher followup jump
[State -1, Launcher followup]
type = ChangeState
value = 255
triggerall = command = "holdup"
trigger1 = StateNo = 420
trigger1 = Movehit

[State -1, Light Kick (Crouch)]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

[State -1, Medium Kick (Crouch)]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact



[State -1, Hard Kick (Crouch)]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveCOntact
trigger9 = StateNo = 440
trigger9 = MoveContact 


[State -1, Light Punch (Air)]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl


[State -1, Medium Punch (Air)]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

[State -1, Hard Punch (Air)]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

[State -1, Light Kick (Air)]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

[State -1, Medium Kick (Air)]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 700 && movecontact

[State -1, Hard Kick (Air)]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 700 && movecontact
