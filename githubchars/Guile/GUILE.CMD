;-| Super Motions |--------------------------------------------------------
[Command]
name = "supersomer_a"
command = ~30DB, DF, DB, $U, a
time = 25

[Command]
name = "supersomer_b"
command = ~30DB, DF, DB, $U, b
time = 25

[Command]
name = "supersomer_c"
command = ~30DB, DF, DB, $U, c
time = 25

[Command]
name = "sonicmission"
command = ~30$B, F, a+b
time = 15
[Command]
name = "sonicmission2"
command = ~30$B, F, b+c
time = 15

[Command]
name = "sonicmission"
command = ~30$B, F, a+c
time = 15

[Command]
name = "hurricane_x"
command = ~20$B, F, B, F, x
time = 25

[Command]
name = "hurricane_y"
command = ~20$B, F, B, F, y
time = 25

[Command]
name = "hurricane_z"
command = ~20$B, F, B, F, z
time = 30

[Command]
name = "sonicfist"
command = ~30$B, F, x+y
time = 10
[Command]
name = "sonicfist"
command = ~30$B, F, y+z
time = 10
[Command]
name = "sonicfist"
command = ~30$B, F, x+z
time = 10

[Command]
name = "SonicJet"
command = ~D, DF, F,D, DF, F, x
time = 25

[Command]
name = "SonicJet_y"
command = ~D, DF, F,D, DF, F, y
time = 25

[Command]
name = "SonicJet_z"
command = ~D, DF, F,D, DF, F, z
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "Zero_counterx"
command = ~D, DF, F, x
time = 10

[Command]
name = "Zero_countery"
command = ~D, DF, F, y
time = 10

[Command]
name = "Zero_counterz"
command = ~D, DF, F, z
time = 10

[Command]
name = "Zero_countera"
command = ~D, DF, F, a
time = 10

[Command]
name = "Zero_counterb"
command = ~D, DF, F, b
time = 10

[Command]
name = "Zero_counterc"
command = ~D, DF, F, c
time = 10

[Command]
name = "somer_a"
command = ~45$D, U, a
time = 10

[Command]
name = "somer_b"
command = ~45$D, U, b
time = 10

[Command]
name = "somer_c"
command = ~45$D, U, c
time = 10
;[Command] ;-=-=-=-=
;name = "somer_c"
;command = U, c
;time = 10

[Command]
name = "downersault_a"
command = ~15$U, D, a
time = 10
[Command]
name = "downersault_b"
command = ~15$U, D, b
time = 10
[Command]
name = "downersault_c"
command = ~15$U, D, c
time = 10

[Command]
name = "tatsumaki_a"
command = ~D, DB, B, a
[Command]
name = "tatsumaki_b"
command = ~D, DB, B, b
[Command]
name = "tatsumaki_c"
command = ~D, DB, B, c
[Command]
name = "tatsumaki_x"
command = ~D, DB, B, x
[Command]
name = "tatsumaki_y"
command = ~D, DB, B, y
[Command]
name = "tatsumaki_z"
command = ~D, DB, B, z

[Command]
name = "sonicboom_x"
command = ~30$B, F, x
time = 10
[Command]
name = "sonicboom_y"
command = ~30$B, F, y
time = 10
[Command]
name = "sonicboom_z"
command = ~30$B, F, z
time = 10

[Command]
name = "sonicboom_a"
command = ~30$B, F, a
time = 10
[Command]
name = "sonicboom_b"
command = ~30$B, F, b
time = 10
[Command]
name = "sonicboom_c"
command = ~30$B, F, c
time = 10

;[Command]
;name = "heavendrop"
;command = ~F, D, B, F, x
;time = 15

[Command]
name = "dunk"
command = ~D,B,y ;~F, D, B, F, y
time = 15

[Command]
name = "heavendrop"
command = ~D,B,z ;~F, D, B, F, z
time = 15

[Command]
name = "FBF"
command = F, B, F
time = 10

[Command]
name = "BFB"
command = B, F, B
time = 10
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = y+z
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = x+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1


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
command = /D,a
time = 1
[Command]
name = "down_b"
command = /D,b
time = 1
[Command]
name = "down_c"
command = /D,c
time = 1
[Command]
name = "down_x"
command = /D,x
time = 1
[Command]
name = "down_y"
command = /D,y
time = 1
[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1
[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1
[Command]
name = "fwd_yz"
command = /F, y+z
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1
[Command]
name = "back_yz"
command = /B, y+z
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1
[Command]
name = "back_bc"
command = /B, b+c
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Button |-----------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


;---------------------------------------------------------------------------
; Commands
[Statedef -1]
;===========================================================================
;SonicHurricane
[State -1]
type = ChangeState
value = 4720
triggerall = command = "SonicJet_z"
triggerall = power = 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;SonicHurricane
[State -1]
type = ChangeState
value = 4710
triggerall = command = "SonicJet_y"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;SonicHurricane
[State -1]
type = ChangeState
value = 4700
triggerall = command = "SonicJet"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;SonicHurricane
[State -1]
type = ChangeState
value = 4050
triggerall = command = "hurricane_x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;SonicHurricane
[State -1]
type = ChangeState
value = 4051
triggerall = command = "hurricane_y"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;SonicHurricane
[State -1]
type = ChangeState
value = 4052
triggerall = command = "hurricane_z"
triggerall = power = 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;AirDemon
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sonicfist"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;SuperSomerKick_A
[State -1]
type = ChangeState
value = 1510
triggerall = command = "supersomer_a"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40 ;Jumpstart
trigger3 = statetype = S
trigger3 = hitdefattr = S, NA, SA
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;SuperSomerKick_B
[State -1]
type = ChangeState
value = 1510
triggerall = command = "supersomer_b"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40 ;Jumpstart
trigger3 = statetype = S
trigger3 = hitdefattr = S, NA, SA
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;SuperSomerKick_C
[State -1]
type = ChangeState
value = 1510;1515
triggerall = command = "supersomer_c"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40 ;Jumpstart
trigger3 = statetype = S
trigger3 = hitdefattr = S, NA, SA
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;SonicMission
[State -1]
type = ChangeState
value = 1530
triggerall = command = "sonicmission"
triggerall = power >= 1000 ;Level 3
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;SonicMission
[State -1]
type = ChangeState
value = 4600
triggerall = command = "sonicmission2"
triggerall = power >= 2000 ;Level 3
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;SonicFist
[State -1]
type = ChangeState
value = 1520
triggerall = command = "sonicfist"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = hitdefattr = S, NA, SA
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Zero Counter X
[State -1]
type = ChangeState
value = 1250
triggerall = command = "Zero_counterx"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;---------------------------------------------------------------------------
;Zero Counter Y
[State -1]
type = ChangeState
value = 1250
triggerall = command = "Zero_countery"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;---------------------------------------------------------------------------
;Zero Counter Z
[State -1]
type = ChangeState
value = 1250
triggerall = command = "Zero_counterz"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;---------------------------------------------------------------------------
;Zero Counter A
[State -1]
type = ChangeState
value = 1260
triggerall = command = "Zero_countera"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;---------------------------------------------------------------------------
;Zero Counter B
[State -1]
type = ChangeState
value = 1260
triggerall = command = "Zero_counterb"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;---------------------------------------------------------------------------
;Zero Counter C
[State -1]
type = ChangeState
value = 1260
triggerall = command = "Zero_counterc"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;===========================================================================
;---------------------------------------------------------------------------
;Downersault_A
[State -1]
type = ChangeState
value = 1070
triggerall = command = "downersault_a"
triggerall = pos Y < -30
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1031  ;-=-= Somersault_A
trigger2 = movehit = 1
trigger3 = stateno = 1041  ;-=-= Somersault_B
trigger3 = movehit = 1
trigger4 = stateno = 1051  ;-=-= Somersault_C
trigger4 = movehit = 1
;---------------------------------------------------------------------------
;Downersault_B
[State -1]
type = ChangeState
value = 1080
triggerall = command = "downersault_b"
triggerall = pos Y < -30
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1031  ;-=-= Somersault_A
trigger2 = movehit = 1
trigger3 = stateno = 1041  ;-=-= Somersault_B
trigger3 = movehit = 1
trigger4 = stateno = 1051  ;-=-= Somersault_C
trigger4 = movehit = 1
;---------------------------------------------------------------------------
;Downersault_C
[State -1]
type = ChangeState
value = 1090
triggerall = command = "downersault_c"
triggerall = pos Y < -30
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1031  ;-=-= Somersault_A
trigger2 = movehit = 1
trigger3 = stateno = 1041  ;-=-= Somersault_B
trigger3 = movehit = 1
trigger4 = stateno = 1051  ;-=-= Somersault_C
trigger4 = movehit = 1
;---------------------------------------------------------------------------
;Somersault_A
[State -1]
type = ChangeState
value = 1030
triggerall = command = "somer_a";-------
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40      ;Jumpstart
trigger3 = stateno = 400     ;crouch_a
trigger4 = stateno = 430     ;crouch_x
trigger4 = movecontact = 1
trigger5 = stateno = 440     ;crouch_y
trigger5 = movecontact = 1
trigger6 = stateno = 450     ;crouch_z
trigger6 = movecontact = 1
trigger7 = stateno = 200     ;stand_a
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
;Somersault_B
[State -1]
type = ChangeState
value = 1040
triggerall = command = "somer_b";-------
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40      ;Jumpstart
trigger3 = stateno = 400     ;crouch_a
trigger4 = stateno = 430     ;crouch_x
trigger4 = movecontact = 1
trigger5 = stateno = 440     ;crouch_y
trigger5 = movecontact = 1
trigger6 = stateno = 450     ;crouch_z
trigger6 = movecontact = 1
trigger7 = stateno = 200     ;stand_a
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
;Somersault_C
[State -1]
type = ChangeState
value = 1050
triggerall = command = "somer_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40      ;Jumpstart
trigger3 = stateno = 400     ;crouch_a
trigger4 = stateno = 430     ;crouch_x
trigger4 = movecontact = 1
trigger5 = stateno = 440     ;crouch_y
trigger5 = movecontact = 1
trigger6 = stateno = 450     ;crouch_z
trigger6 = movecontact = 1
trigger7 = stateno = 200     ;stand_a
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
;AirSonicboom_X
[State -1]
type = ChangeState
value = 1005
triggerall = numproj = 0
triggerall = command = "sonicboom_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 600       ;jump_a
trigger2 = stateno <= 605
trigger3 = stateno >= 610       ;jump_b
trigger3 = stateno <= 615
trigger3 = movecontact = 1
trigger4 = stateno >= 630       ;jump_x
trigger4 = stateno <= 635
trigger5 = stateno >= 640       ;jump_y
trigger5 = stateno <= 645
trigger5 = movecontact = 1
trigger6 = stateno >= 650       ;jump_z
trigger6 = stateno <= 655
trigger6 = movecontact = 1
trigger7 = stateno = 227        ;knee
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
;AirSonicboom_Y
[State -1]
type = ChangeState
value = 1015
triggerall = numproj = 0
triggerall = command = "sonicboom_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 600       ;jump_a
trigger2 = stateno <= 605
trigger3 = stateno >= 610       ;jump_b
trigger3 = stateno <= 615
trigger3 = movecontact = 1
trigger4 = stateno >= 630       ;jump_x
trigger4 = stateno <= 635
trigger5 = stateno >= 640       ;jump_y
trigger5 = stateno <= 645
trigger5 = movecontact = 1
trigger6 = stateno >= 650       ;jump_z
trigger6 = stateno <= 655
trigger6 = movecontact = 1
trigger7 = stateno = 227        ;knee
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
;AirSonicboom_Z
[State -1]
type = ChangeState
value = 1025
triggerall = numproj = 0
triggerall = command = "sonicboom_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 600       ;jump_a
trigger2 = stateno <= 605
trigger3 = stateno >= 610       ;jump_b
trigger3 = stateno <= 615
trigger3 = movecontact = 1
trigger4 = stateno >= 630       ;jump_x
trigger4 = stateno <= 635
trigger5 = stateno >= 640       ;jump_y
trigger5 = stateno <= 645
trigger5 = movecontact = 1
trigger6 = stateno >= 650       ;jump_z
trigger6 = stateno <= 655
trigger6 = movecontact = 1
trigger7 = stateno = 227        ;knee
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
;SonicBoom_X
[State -1]
type = ChangeState
value = 1000
triggerall = command = "sonicboom_x"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = movecontact = 1
trigger4 = stateno = 240        ;stand_y
trigger4 = movecontact = 1
trigger5 = stateno = 250        ;stand_z
trigger5 = movecontact = 1
trigger6 = stateno = 400        ;crouch_a
trigger6 = movecontact = 1
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = movecontact = 1
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = movecontact = 1
trigger9 = stateno = 355        ;stand_back_z
trigger9 = movecontact = 1
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;SonicBoom_Y
[State -1]
type = ChangeState
value = 1010
triggerall = command = "sonicboom_y"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = movecontact = 1
trigger4 = stateno = 240        ;stand_y
trigger4 = movecontact = 1
trigger5 = stateno = 250        ;stand_z
trigger5 = movecontact = 1
trigger6 = stateno = 400        ;crouch_a
trigger6 = movecontact = 1
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = movecontact = 1
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = movecontact = 1
trigger9 = stateno = 355        ;stand_back_z
trigger9 = movecontact = 1
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;MajikThrow_a
[State -1]
type = null;ChangeState
value = 1150
triggerall = command = "sonicboom_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;MajikThrow_b
[State -1]
type = null;ChangeState
value = 1160
triggerall = command = "sonicboom_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;MajikThrow_c
[State -1]
type = null;ChangeState
value = 1170
triggerall = command = "sonicboom_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;SonicBoom_Z
[State -1]
type = ChangeState
value = 1020
triggerall = numproj = 0
triggerall = command = "sonicboom_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = movecontact = 1
trigger4 = stateno = 240        ;stand_y
trigger4 = movecontact = 1
trigger5 = stateno = 250        ;stand_z
trigger5 = movecontact = 1
trigger6 = stateno = 400        ;crouch_a
trigger6 = movecontact = 1
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = movecontact = 1
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = movecontact = 1
trigger9 = stateno = 355        ;stand_back_z
trigger9 = movecontact = 1
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;HeavenDrop
[State -1]
type = ChangeState
value = 1120
triggerall = command = "heavendrop"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Dunk1
[State -1]
type = ChangeState
value = 1100
triggerall = command = "dunk";tatsumaki_x
trigger1 = statetype = S
trigger1 = ctrl = 1
;trigger2 = stateno != 1100
;trigger2 = stateno != 1105
;trigger2 = stateno != 1600
;---------------------------------------------------------------------------
;Reversal1 (High)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "tatsumaki_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = stateno >= 200
trigger2 = stateno <= 590
trigger2 = movecontact = 1
trigger2 = animtime >= -8
;---------------------------------------------------------------------------
;Reversal2
[State -1]
type = ChangeState
value = 1220
triggerall = command = "tatsumaki_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = stateno >= 200
trigger2 = stateno <= 590
trigger2 = movecontact = 1
trigger2 = animtime >= -8
;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "FBF"
triggerall = command != "BFB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_Throw1
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_xy";Command
trigger2 = command = "back_xy";Command
trigger3 = command = "fwd_y";Near
trigger3 = command != "fwd_yz"
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_y";Near
trigger4 = command != "fwd_yz"
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "back_y";Near
trigger5 = command != "back_yz"
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "back_y";Near
trigger6 = command != "back_yz"
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = C
trigger6 = p2movetype != H
;---------------------------------------------------------------------------
;Stand_Throw2
[State -1]
type = ChangeState
value = 920
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_yz";Command
trigger2 = command = "back_yz";Command
trigger3 = command = "fwd_z";Near
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_z";Near
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "back_z";Near
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "back_z";Near
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = C
trigger6 = p2movetype != H
;---------------------------------------------------------------------------
;Air_Throw1
[State -1]
type = ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "fwd_ab"
trigger2 = command = "back_ab"
trigger3 = command = "fwd_bc"
trigger4 = command = "back_bc"
;---------------------------
;Air_Throw1 (second set of commands)
[State -1]
type = ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
triggerall = p2bodydist Y > -25
triggerall = p2bodydist Y < 25
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
trigger3 = command = "fwd_c"
trigger4 = command = "back_c"
;---------------------------------------------------------------------------
;Air_Throw2
[State -1]
type = ChangeState
value = 970
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = pos Y < -25
trigger1 = command = "fwd_xy"
trigger2 = command = "back_xy"
trigger3 = command = "fwd_yz"
trigger4 = command = "back_yz"
;---------------------------
;Air_Throw2 (second set of commands)
[State -1]
type = ChangeState
value = 970
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
triggerall = p2bodydist Y > -25
triggerall = p2bodydist Y < 25
triggerall = p2statetype = A
triggerall = pos Y < -25
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"
trigger3 = command = "fwd_z"
trigger4 = command = "back_z"
;===========================================================================
;---------------------------------------------------------------------------
;RunF_A
[State -1]
type = ChangeState
value = 217
trigger1 = command = "fwd_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command ="back_a"
trigger2 = statetype = S
trigger2 = ctrl = 1
;---------------------------------------------------------------------------
;RunF_B
[State -1]
type = ChangeState
value = 227
trigger1 = command = "b"
trigger1 = stateno = 100 ;RunF
trigger1 = animelem = 2, < 0
;---------------------------------------------------------------------------
;RunF_C
[State -1]
type = ChangeState
value = 325
trigger1 = command = "c"
trigger1 = stateno = 100 ;RunF
trigger1 = animelem = 2, < 0
;---------------------------------------------------------------------------
;RunF_Z
[State -1]
type = ChangeState
value = 350
trigger1 = command = "z"
trigger1 = stateno = 100 ;RunF
trigger1 = animelem = 2, < 0
;---------------------------------------------------------------------------
;Stand_YZ
[State -1]
type = ChangeState
value = 260
trigger1 = command = "yz"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 230 ;Stand_X
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = P2bodydist X > 15
trigger2 = command = "holdfwd"
trigger3 = command = "holdback"
;-------------
;Stand_B (combo into)
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 200 ;Stand_A
trigger2 = stateno = 230 ;Stand_X
trigger3 = stateno = 240 ;Stand_Y
trigger3 = animelem = 3, >= 0
trigger4 = stateno = 245 ;Stand_y (close)
;---------------------------------------------------------------------------
;Stand_B (close)
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_fwd_C
[State -1]
type = ChangeState
value = 325
triggerall = command = "fwd_c"
triggerall = command != "holddown"
triggerall = P2bodydist X > 89
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_fwd_C (close)
[State -1]
type = ChangeState
value = 226
triggerall = command = "fwd_c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 89
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 ;Stand_B
trigger2 = animelem = 9, >= 0
trigger2 = movecontact = 1
trigger3 = stateno = 240 ;Stand_Y
trigger3 = animelem = 3, >= 0
trigger3 = movecontact = 1
trigger4 = stateno = 245 ;Stand_y (close)
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_C (close)
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 ;Stand_B
trigger2 = animelem = 9, >= 0
trigger2 = movecontact = 1
trigger3 = stateno = 240 ;Stand_Y
trigger3 = animelem = 3, >= 0
trigger3 = movecontact = 1
trigger4 = stateno = 245 ;Stand_y (close)
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 ;Stand_X
trigger2 = time >= 7
trigger3 = stateno = 430 ;Crouch_X
trigger3 = time >= 7
;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 ;Stand_X
trigger2 = movecontact = 1
trigger3 = stateno = 200 ;Stand_A
;trigger3 = animelem = 4, >= 1
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_Y (close)
[State -1]
type = ChangeState
value = 245
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 ;Stand_X
trigger2 = movecontact = 1
trigger3 = stateno = 200 ;Stand_A
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_fwd_Z
[State -1]
type = ChangeState
value = 255
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 ;Stand_B
trigger2 = animelem = 9, >= 0
trigger2 = movecontact = 1
trigger3 = stateno = 240 ;Stand_Y
trigger3 = animelem = 3, >= 0
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_Z
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 ;Stand_B
trigger2 = animelem = 9, >= 0
trigger2 = movecontact = 1
trigger3 = stateno = 240 ;Stand_Y
trigger3 = animelem = 3, >= 0
trigger3 = movecontact = 1
;trigger4 = stateno = 245 ;Stand_y (close)
;trigger4 = movecontact = 1
;trigger4 = animelem = 3, >= 0
;-------------------
;Stand_Z (chain)
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = stateno = 245 ;Stand_y (close)
trigger1 = movecontact = 1
;trigger1 = animelem = 3, >= 0
;---------------------------------------------------------------------------
;Stand_Z (close)
[State -1]
type = ChangeState
value = 355
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 ;Stand_B
trigger2 = animelem = 9, >= 0
trigger2 = movecontact = 1
trigger3 = stateno = 240 ;Stand_Y
trigger3 = animelem = 3, >= 0
trigger3 = movecontact = 1
;trigger4 = stateno = 245 ;Stand_y (close)
;trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;trigger2 = stateno = 400
;trigger2 = time > 7
;trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;trigger2 = stateno = 410
;trigger2 = animelem = 4, >= 0
;trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 230 ;Stand_X
trigger2 = time >= 7
trigger3 = stateno = 430 ;Crouch_X
trigger3 = time >= 7
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430 ;Crouch_X
trigger2 = time >= 7
;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400 ;crouch_a
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_fwd_A
[State -1]
type = null;ChangeState
value = 800
trigger1 = command = "fwd_a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "fwd_a";-------
trigger2 = stateno = 600   ;jump_a
trigger2 = time >= 3
;---------------------------------------------------------------------------
;Jump_fwd_B
[State -1]
type = null;ChangeState
value = 810
trigger1 = command = "fwd_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "fwd_b";-------
trigger2 = stateno = 600   ;jump_a
trigger2 = time >= 3
trigger3 = command = "fwd_b";-------
trigger3 = stateno = 610   ;jump_b
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger6 = command = "abc";-=-=-=
;trigger6 = stateno != 1100 ;-=-=-=
;trigger6 = stateno != 1105 ;-=-=-=
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_A (moving)
[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;Jump_B (moving)
[State -1]
type = ChangeState
value = 615
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X != 0
;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_X (moving)
[State -1]
type = ChangeState
value = 635
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y (moving)
[State -1]
type = ChangeState
value = 645
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 650
triggerall = command = "z"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Z (moving)
[State -1]
type = ChangeState
value = 655
triggerall = command = "z"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = ctrl = 1