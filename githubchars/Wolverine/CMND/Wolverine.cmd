
;================================
;WOLVERINE X CMD FILE 
;================================
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

[Command]
name = "start"
command = s
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

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holds2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;=====================[SHORTCUTS]======================
;NOTE: DELETE THIS GROUP OF CMDS TO REMOVE SHORTCUT DMS
;      OR MODIFY THEM TO USE ROLL/DODGE.


;=================[Hyper Moves]========================
[Command]
name = "speed"
command =  ~D, DF, F, a+c
time = 15

[Command]
name = "speed"
command =  ~D, DF, F, b+c
time = 15

[Command]
name = "speed"
command =  ~D, DF, F, a+b
time = 15

[Command]
name = "speed"
command =  ~D, DF, F, ~a+c
time = 10
buffer.time = 10

[Command]
name = "speed"
command =  ~D, DF, F, ~b+c
time = 10
buffer.time = 10

[Command]
name = "speed"
command =  ~D, DF, F, ~a+b
time = 10
buffer.time = 10

[Command]
name = "berkx"
command =  ~D, DF, F, x+y
time = 15

[Command]
name = "berkx"
command =  ~D, DF, F, y+z
time = 15

[Command]
name = "berkx"
command =  ~D, DF, F, x+z
time = 15

[Command]
name = "berkx"
command =  ~D, DF, F, ~x+y
time = 10
buffer.time = 10

[Command]
name = "berkx"
command =  ~D, DF, F, ~y+z
time = 10
buffer.time = 10

[Command]
name = "berkx"
command =  ~D, DF, F, ~x+z
time = 10
buffer.time = 10

[Command]
name = "weaponx"
command =  ~F, D, DF, x+y
time = 15

[Command]
name = "weaponx"
command =  ~F, D, DF, y+z
time = 15

[Command]
name = "weaponx"
command =  ~F, D, DF, x+z
time = 15

[Command]
name = "weaponx"
command =  ~F, D, DF, ~x+y
time = 10
buffer.time = 10

[Command]
name = "weaponx"
command =  ~F, D, DF, ~y+z
time = 10
buffer.time = 10

[Command]
name = "weaponx"
command =  ~F, D, DF, ~x+z
time = 10
buffer.time = 10

[Command]
name = "fatal"
command =  ~F, D, DF, a+b
time = 15

[Command]
name = "fatal"
command =  ~F, D, DF, b+c
time = 15

[Command]
name = "fatal"
command =  ~F, D, DF, a+c
time = 15

[Command]
name = "fatal"
command =  ~F, D, DF, ~a+b
time = 10
buffer.time = 10

[Command]
name = "fatal"
command =  ~F, D, DF, ~b+c
time = 10
buffer.time = 10

[Command]
name = "fatal"
command =  ~F, D, DF, ~a+c
time = 10
buffer.time = 10

;================[Special Moves]======================

[Command]
name = "tornado1"
command =  ~F, D, DF, x
time = 15

[Command]
name = "tornado2"
command =  ~F, D, DF, y
time = 15

[Command]
name = "tornado3"
command =  ~F, D, DF, z
time = 15

[Command]
name = "tornado1"
command =  ~F, D, DF, ~x
time = 10
buffer.time = 10

[Command]
name = "tornado2"
command =  ~F, D, DF, ~y
time = 10
buffer.time = 10

[Command]
name = "tornado3"
command =  ~F, D, DF, ~z
time = 10
buffer.time = 10

[Command]
name = "drill"
command =  y+a
time = 1

[Command]
name = "berks1"
command =  ~D,DF,F, x
time = 15

[Command]
name = "berks2"
command =  ~D,DF,F, y
time = 15

[Command]
name = "berks3"
command =  ~D,DF,F, z
time = 15

[Command]
name = "berks1"
command =  ~D,DF,F, ~x
time = 10
buffer.time = 10

[Command]
name = "berks2"
command =  ~D,DF,F, ~y
time = 10
buffer.time = 10

[Command]
name = "berks3"
command =  ~D,DF,F, ~z
time = 10
buffer.time = 10
;--------------------------
[Command]
name = "slash1"
command =  ~D,DB,B, x
time = 15

[Command]
name = "slash2"
command =  ~D,DB,B, y
time = 15

[Command]
name = "slash3"
command =  ~D,DB,B, z
time = 15

[Command]
name = "slash1"
command =  ~D,DB,B, ~x
time = 10
buffer.time = 10

[Command]
name = "slash2"
command =  ~D,DB,B, ~y
time = 10
buffer.time = 10

[Command]
name = "slash3"
command =  ~D,DB,B, ~z
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

;=================[Groove]====================
[Command]
name = "taunt"
command =  s
time = 1

[Command]
name = "wait"
command = /x
time = 1

[Command]
name = "wait"
command = /y
time = 1

[Command]
name = "wait"
command = /z
time = 1

[Command]
name = "wait"
command = /a
time = 1

[Command]
name = "wait"
command = /b
time = 1

[Command]
name = "wait"
command = /c
time = 1

;=================[Special Moves]==================

[Command]
name = "roll99"
command = a+b
time = 1

;--------------------------------------------
;RUN 
[Command]
name = "FF"
command = F, F
time = 15

;Back
[Command]
name = "BB"
command = B, B
time = 10

;-|Button Combination|-----------------------------------------------

[Command]
name = "max"
command = x+y+a
time = 1

[Command]
name = "dash"
command = x+y
time = 1

[Command]
name = "dash"
command = y+z
time = 1

[Command]
name = "SuperJump"
command = $D, $U

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "roll"
command = x+y
time = 1

[Command]
name = "schange"
command = x+b
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;POWER UP
[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "armor"
command = a+b+y
time = 1

[Command]
name = "counter"
command = x+y+b
time = 1

;------------------------------------------------------------------------------
;HOLD BUTTONS

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_s"
command = /$s
time = 1

;==================================================================================
;DIR

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

;==================================================================================
;HOLD DIR

[Command]
name = "/DB"
command = /DB
time = 1

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;HOLD DIR + BUTTON

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "fwd_z"
command = /F,z

[Command]
name = "back_z"
command = /B,z

[Command]
name = "back_a"
command = /B,a

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "down_y"
command = /D, y

[Command]
name = "down_b"
command = /D, b

[Command]
name = "down_z"
command = /D, z

;=========================================================
; -----------------<> COMMAND CODES <>------------------
;=========================================================

[Statedef -1]


; 挑発神話フィニッシュ 
[State -1]
type = ChangeState
value = 3105
triggerall = roundstate = 2 && !var(59)
triggerall = var(14) = 1
trigger1 = statetype != A && ctrl
 

;==========================================================================
;------|HYPER MOVES|--------
;===========================


[State -1, Fatal Claw X (Aerial)]
type = ChangeState
value = 6400
;triggerall = var(9) != 1
triggerall = command = "fatal" && power >= 1000
trigger1 = statetype = A && ctrl && var(15) <= 0
trigger2 = var(14) = 1 && var(15) <= 0
trigger3 = stateno = [600,670]
trigger4 = stateno = [2500,2630]
trigger5 = stateno = [2100,2342]

[State -1, Fatal Claw X]
type = ChangeState
value = 6300
triggerall = var(9) != 1
triggerall = command = "fatal" && power >= 1000
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]
trigger6 = stateno = 2020
trigger7 = stateno = 2040
trigger8 = stateno = 2060
trigger9 = stateno = 2000
trigger10 = stateno = 2002
trigger11 = stateno = 2004

[State -1, Berseker Charge]
type = ChangeState
value = 6500
;triggerall = var(9) != 1
triggerall = command = "speed" && power >= 1000 && var(19) <= 0
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]
trigger6 = stateno = 2020
trigger7 = stateno = 2040
trigger8 = stateno = 2060
trigger9 = stateno = 2000
trigger10 = stateno = 2002
trigger11 = stateno = 2004


[State -1, Weapon X]
type = ChangeState
value = 6100
triggerall = var(9) != 1
triggerall = command = "weaponx" && power >= 1000
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]
trigger6 = stateno = 2020
trigger7 = stateno = 2040
trigger8 = stateno = 2060
trigger9 = stateno = 2000
trigger10 = stateno = 2002
trigger11 = stateno = 2004


[State -1, Berserker Barrage X]
type = ChangeState
value = 6000
triggerall = var(9) != 1
triggerall = command = "berkx" && power >= 1000
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]
trigger6 = stateno = 2020
trigger7 = stateno = 2040
trigger8 = stateno = 2060
trigger9 = stateno = 2000
trigger10 = stateno = 2002
trigger11 = stateno = 2004


;==========================================================================
;------|SPECIALS|--------
;========================

;-------------------------------------
[State -1, Tornado Claw 1]
type = ChangeState
value = 2500
triggerall = var(9) != 1
triggerall = command = "tornado1" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Tornado Claw 2]
type = ChangeState
value = 2550
triggerall = var(9) != 1
triggerall = command = "tornado2" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Tornado Claw 3]
type = ChangeState
value = 2600
triggerall = var(9) != 1
triggerall = command = "tornado3" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]


;---------------------------------------------------------------------------------------
;---------------
;AIR DRILL CLAWS
;---------------
[State -1, Drill Claw Down-Back]
type = ChangeState
value = 2270
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holddown" && command = "holdback"
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw Down-Fwd]
type = ChangeState
value = 2260
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holddown" && command = "holdfwd"
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw Down]
type = ChangeState
value = 2250
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holddown"
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw Up-Back]
type = ChangeState
value = 2240
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holdup" && command = "holdback"
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw Up-Fwd]
type = ChangeState
value = 2230
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holdup" && command = "holdfwd"
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw Up]
type = ChangeState
value = 2220
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holdup" 
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw back]
type = ChangeState
value = 2210
triggerall = var(9) != 1
triggerall = command = "drill" && command = "holdback"
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1, Drill Claw Fwd]
type = ChangeState
value = 2200
triggerall = var(9) != 1
triggerall = command = "drill" 
trigger1 = statetype = A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

;------------------
;GROUND DRILL CLAWS
;------------------
[State -1, Drill Claw Up-Back]
type = ChangeState
value = 2180
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holdup" && command = "holdback"
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Drill Claw Up-Fwd]
type = ChangeState
value = 2140
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holdup" && command = "holdfwd"
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Drill Claw Up]
type = ChangeState
value = 2120
triggerall = var(9) != 1
triggerall = command = "hold_y" && command = "hold_a" && command = "holdup" 
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Drill Claw back]
type = ChangeState
value = 2160
triggerall = var(9) != 1
triggerall = command = "drill" && command = "holdback"
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Drill Claw Fwd]
type = ChangeState
value = 2100
triggerall = var(9) != 1
triggerall = command = "drill" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

;---------------------------------------------------------------------------------------
[State -1, Berserker Barrage 1]
type = ChangeState
value = 2020
triggerall = var(9) != 1
triggerall = command = "berks1" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Berserker Barrage 2]
type = ChangeState
value = 2040
triggerall = var(9) != 1
triggerall = command = "berks2" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Berserker Barrage 3]
type = ChangeState
value = 2060
triggerall = var(9) != 1
triggerall = command = "berks3" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

;-----------------------------------------------------------------------------------
[State -1, Berserker Slash 1]
type = ChangeState
value = 2000
triggerall = var(9) != 1
triggerall = command = "slash1" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Berserker Slash 2]
type = ChangeState
value = 2002
triggerall = var(9) != 1
triggerall = command = "slash2" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

[State -1, Berserker Slash 3]
type = ChangeState
value = 2004
triggerall = var(9) != 1
triggerall = command = "slash3" 
trigger1 = statetype != A && ctrl 
trigger2 = var(39) = 1
trigger3 = stateno = [200,240]
trigger4 = stateno = 250
trigger5 = stateno = [400,460]

;==========================================================================
;---------------------------------------------------------------------------
; Push Block (Stand)
[State -1]
type = ChangeState
value = 1230
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 1240
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 1250
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;==========================================================================

[State -1, Super Jump]
type = ChangeState
value = 99
triggerall = var(9) != 1
triggerall = statetype != A
trigger1 = command = "SuperJump" 
trigger1 = ctrl
trigger2 = command = "SuperJump" || command = "holdup"  && prevstateno != 710
trigger2 = MoveHit
trigger2 = Stateno = 250

[State -1,HOPBACK]
type = ChangeState
value = 105
;triggerall = var(9) != 1
triggerall = command = "BB" || (command = "dash" && command = "holdback")
triggerall =  stateno != [100,107]
trigger1 = statetype = S && ctrl

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) != 1
triggerall = (command = "FF" || command = "dash") && stateno != [100,107]
trigger1 = statetype = S && ctrl

;=============================================================================
;-------------[Throws]------------------------
;=============================================================================
;AIR THROW
[State -1, AIR THROW]
type = ChangeState
value = 690
triggerall = (command = "holdfwd" || command = "holdback") && (command = "z") 
trigger1 = statetype = A && ctrl && p2bodydist Y > -25 
trigger1 = p2bodydist Y < 25 && p2statetype = A && pos Y < -25 && p2movetype != H
trigger1 = ifelse(p2name = "Juggernaut" , p2bodydist x < 25, p2bodydist X < 10) 

;GrabY
[State -1, GrabY ]
type = ChangeState
value = 300
triggerall = command = "z"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype != A)
trigger2 = command = "holdback" && p2bodydist X < 10 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype != A)

;GrabZ
[State -1, GrabZ ]
type = ChangeState
value = 360
triggerall = command = "c"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype != A)
trigger2 = command = "holdback" && p2bodydist X < 10 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype != A)
;---------------------------------------------------------------------------

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
value = 255
ctrl = 0

;--------------------------------------------------------------------
[State -1,CFHP]
type = ChangeState
value = 460
triggerall = var(9) != 1
triggerall = command = "holddown" && command = "holdfwd"
triggerall = command = "z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(3) > 0 && movecontact 
trigger10 = stateno = 230 && animelemtime(3) > 0 && movecontact 
trigger11 = stateno = 235 && animelemtime(2) > 0 && movecontact
trigger12 = stateno = 430 && animelemtime(3) > 0 && movecontact

[State -1,CLP]
type = ChangeState
value = 400
triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype != A && ctrl

[State -1,CLK]
type = ChangeState
value = 410
triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 

[State -1,CMP]
type = ChangeState
value = 420
triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 

[State -1,CMK]
type = ChangeState
value = 430
triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(4) > 0 && movecontact 

[State -1,CHP]
type = ChangeState
value = 440
triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(4) > 0 && movecontact 
trigger10 = stateno = 230 && animelemtime(3) > 0 && movecontact 
trigger11 = stateno = 235 && animelemtime(2) > 0 && movecontact
trigger12 = stateno = 430 && animelemtime(3) > 0 && movecontact

[State -1,CHK]
type = ChangeState
value = 450
triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(4) > 0 && movecontact 
trigger10 = stateno = 230 && animelemtime(3) > 0 && movecontact 
trigger11 = stateno = 235 && animelemtime(2) > 0 && movecontact
trigger12 = stateno = 430 && animelemtime(3) > 0 && movecontact
trigger13 = stateno = 240 && animelemtime(4) > 0 && movecontact 
trigger14 = stateno = 242 && animelemtime(1) > 3
trigger15 = stateno = 440 && animelemtime(7) > 0 && movecontact
trigger16 = stateno = 460 && animelemtime(2) > 0 && movecontact

;----------------------------------------
;========================[STANDING BASIC ATTACKS]==================================

;LP
[State -1,Low Punch]
type = ChangeState
value = 200
triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = S && ctrl

;LK
[State -1,Low Kick]
type = ChangeState
value = 210
triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 

;MP
[State -1,Middle Punch]
type = ChangeState
value = 220
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 

;MK
[State -1,Middle Kick]
type = ChangeState
value = 230
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(4) > 0 && movecontact 

;Hp 
[State -1,HP]
type = ChangeState
value = 240
triggerall = var(9) != 1
triggerall = command = "z"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(4) > 0 && movecontact 
trigger10 = stateno = 230 && animelemtime(3) > 0 && movecontact 
trigger11 = stateno = 235 && animelemtime(2) > 0 && movecontact
trigger12 = stateno = 430 && animelemtime(3) > 0 && movecontact

;Hk 
[State -1,HK]
type = ChangeState
value = 250
triggerall = var(9) != 1
triggerall = command = "c"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 210 && animelemtime(3) > 0 && movecontact 
trigger6 = stateno = 410 && animelemtime(3) > 0 && movecontact 
trigger7 = stateno = 220 && animelemtime(3) > 0 && movecontact 
trigger8 = stateno = 225 && animelemtime(3) > 0 && movecontact
trigger9 = stateno = 420 && animelemtime(4) > 0 && movecontact 
trigger10 = stateno = 230 && animelemtime(3) > 0 && movecontact 
trigger11 = stateno = 235 && animelemtime(2) > 0 && movecontact
trigger12 = stateno = 430 && animelemtime(3) > 0 && movecontact
trigger13 = stateno = 240 && animelemtime(4) > 0 && movecontact 
trigger14 = stateno = 242 && animelemtime(1) > 3
trigger15 = stateno = 440 && animelemtime(10) > 0 && movecontact
trigger16 = stateno = 460 && animelemtime(2) > 0 && movecontact

;-----------------------------------------------------------------

[State -1,JDHKMVC]
type = ChangeState
value = 670
triggerall = var(9) != 1
triggerall = command = "c" && command = "holddown" && pos y <= -92
trigger1 = statetype = A && ctrl && stateno != 672 
trigger2 = stateno = 600 && animelemtime(2) > 0 && movecontact 
trigger3 = stateno = 610 && animelemtime(2) > 0 && movecontact 
trigger4 = stateno = 620 && animelemtime(3) > 0 && movecontact 
trigger5 = stateno = 630 && animelemtime(3) > 0 && movecontact
trigger6 = stateno = 640 && animelemtime(3) > 0 && movecontact

[State -1,JLP]
type = ChangeState
value = 600
triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1,JLK]
type = ChangeState
value = 610
triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

[State -1,JMP]
type = ChangeState
value = 620
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

[State -1,JMK]
type = ChangeState
value = 640
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact

[State -1,JHP]
type = ChangeState
value = 650
triggerall = var(9) != 1
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

[State -1,JHK]
type = ChangeState
value = 660
triggerall = var(9) != 1
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact
trigger8 = stateno = 670 && movecontact && command != "holddown"
trigger9 = stateno = 671 && movecontact && command != "holddown"

[State -1,TAUNT1_CANCELABLE]
type = ChangeState
value = 195
triggerall = var(9) != 1
trigger1 = command = "taunt"
trigger1 = numexplod(900) = 0 && numexplod(901) = 0 && numexplod(902) = 0 && numexplod(903) = 0
trigger1 = numexplod(904) = 0 && var(10) <= 0 && var(37) <= 0 && var(40) <= 0
trigger1 = statetype != A && ctrl

;=====================================================================================
;-----[ AI MODIFICATION ]-----
;=====================================================================================
;Guard triggers for AI (from BB Hood)
[State -1, Stand guard]
type = ChangeState
triggerall = var(9) = 1 
triggerall = StateType != A && random <= 900
triggerall = EnemyNear, StateType != C
triggerall = EnemyNear, MoveType = A
trigger1 = ctrl = 1
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = var(9) = 1
triggerall = StateType != A
triggerall = EnemyNear, statetype = C
triggerall = EnemyNear, Movetype = A
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = ChangeState
triggerall = var(9) > 0
triggerall = StateType != A && random <= 900
triggerall = EnemyNear, statetype = C
triggerall = EnemyNear, Movetype = A
trigger1 = ctrl = 1
value = 131

[State -1, C-to-S guard]
type = ChangeState
triggerall = var(9) > 0
triggerall = StateType != A
triggerall = EnemyNear, statetype != C
triggerall = EnemyNear, Movetype = A
trigger1 = stateno = 152
value = 150

[State -1, Air guard]
type = ChangeState
triggerall = var(9) > 0
triggerall = StateType = A && random <= 900
triggerall = EnemyNear, Movetype = A
trigger1 = ctrl = 1
value = 132

;---------------------------------------------------------------------------

;AIR THROW
[State -1, AIR THROW]
type = ChangeState
value = 690
triggerall = var(9) = 1 && random <= 500
trigger1 = statetype = A && ctrl && p2bodydist Y > -25 
trigger1 = p2bodydist Y < 25 && p2statetype = A && pos Y < -25 && p2movetype != H
trigger1 = ifelse(p2name = "Juggernaut" , p2bodydist x < 25, p2bodydist X < 10) 

[State -1,Grab]
type = ChangeState
value = ifelse(random <= 500,300,360)
triggerall = var(9) = 1
trigger1 = var(4) <= 0 && random <= 400 && stateno != [100,107]
trigger1 = p2stateno != 131 && p2stateno != 130 && P2bodydist X <= 20 && p2stateno != 1302 && statetype != A && p2statetype != A && p2statetype != L && p2stateno != 5120
trigger1 = p2movetype != H && p2movetype != A && ctrl

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) = 1
trigger1 = (stateno != [100,107]) && statetype = S && ctrl
trigger1 = p2bodydist x > 40 &&  p2movetype != A && random < 300

[State -1,BACKDASH]
type = ChangeState
value = 105
triggerall = var(9) = 1
trigger1 = (stateno != [100,107]) && statetype = S && ctrl
trigger1 = p2bodydist x > 100 &&  p2movetype != A && random < 100

;LP
[State -1,Low Punch]
type = ChangeState
value = 200
triggerall = var(9) = 1
trigger1 = random <= 500
trigger1 = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 50 && p2movetype != A
trigger1 = statetype = S && ctrl && var(24) <= 15

[State -1,CLK]
type = ChangeState
value = 410
triggerall = var(9) = 1
triggerall = p2statetype != A
triggerall = p2bodydist x <= 50
trigger1 = p2statetype = S && statetype != A && ctrl && var(24) <= 15
trigger2 = stateno = 200 && animelemtime(3) > 0 && movecontact 
trigger3 = stateno = 202 && animelemtime(3) > 0 && movecontact
trigger4 = stateno = 400 && animelemtime(3) > 0 && movecontact 

[State -1,CLK]
type = ChangeState
value = 410
triggerall = var(9) = 1
triggerall = p2statetype != A
triggerall = p2bodydist x <= 50
trigger1 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120

[State -1,CMP]
type = ChangeState
value = 420
triggerall = var(9) = 1
trigger1 = ifelse(power >= 1000, random <= 300,random <=500)
trigger1 = p2bodydist x <= 50
trigger1 = stateno = 410 && animelemtime(3) > 0 && movehit 
trigger2 = stateno = 410 && animelemtime(3) > 0 && movehit && var(10) > 0 

[State -1,CMK]
type = ChangeState
value = 430
triggerall = var(9) = 1
trigger1 = random <= 700
trigger1 = stateno = 410 && animelemtime(3) > 0 && movecontact

;MP
[State -1,MP]
type = ChangeState
value = 220
triggerall = var(9) = 1
triggerall = random <= 600
trigger1 = statetype != A && ctrl && p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = p2bodydist x = [75,101]

;Hp 
[State -1,HP]
type = ChangeState
value = 240
triggerall = var(9) = 1
triggerall = random <= 100
trigger1 = stateno = 220 && animelemtime(3) > 0 && movehit && p2bodydist x <= 110
trigger2 = statetype != A && ctrl && p2movetype != A && p2statetype != A
trigger2 = (p2bodydist x = [80,112]) && p2stateno != 5120
trigger3 = power >= 1000 && stateno = 430 && animelemtime(3) > 0 && movehit && p2bodydist x <= 110

[State -1,CFHP]
type = ChangeState
value = 460
triggerall = var(9) = 1
triggerall = p2statetype = S && random <= 250
trigger1 = stateno = 430 && animelemtime(3) > 0 && moveguarded
trigger2 = stateno = 220 && animelemtime(3) > 0 && movecontact
trigger3 = stateno = 220 && animelemtime(3) > 0 && moveguarded

[State -1,CHP]
type = ChangeState
value = 440
triggerall = var(9) = 1
trigger1 = stateno = 430 && animelemtime(3) > 0 && movecontact

[State -1,CHK]
type = ChangeState
value = 450
triggerall = var(9) = 1
trigger1 = stateno = 440 && animelemtime(7) > 2 && movehit && random <= 700

;MK
[State -1,Middle Kick]
type = ChangeState
value = 230
triggerall = var(9) = 1
triggerall = random <= 200 && p2bodydist x <= 40
trigger1 = stateno = 420 && animelemtime(4) > 0 && movecontact 

;Hk 
[State -1,HKai]
type = ChangeState
value = 250
triggerall = var(9) = 1
triggerall = random <= 500
trigger1 = stateno = 420 && animelemtime(4) > 0 && movecontact 
trigger2 = stateno = 230 && animelemtime(3) > 0 && movecontact 

[State -1, Berserker Barrage X]
type = ChangeState
value = 6000
triggerall = var(9) = 1
trigger1 = power >= 1000 && random <= 500
trigger1 = stateno = 440 && animelemtime(7) > 1 && movehit

[State -1, Speedy GonzaleX]
type = ChangeState
value = 6500
triggerall = var(9) = 1
triggerall = power >= 1000 && var(19) <= 0
trigger1 = random <= 500 && stateno = 242 && animelemtime(1) > 3  && enemy, gethitvar(fall) = 0
trigger2 = random <= 500 && stateno = 460 && animelemtime(2) > 0 && movehit

[State -1, Weapon X]
type = ChangeState
value = 6100
triggerall = var(9) = 1
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger1 = p2statetype != A && p2movetype = A && enemynear, vel x < 0 
trigger1 = p2bodydist x > 120 && p2movetype != H

[State -1, Fatal Claw X]
type = ChangeState
value = 6300
triggerall = var(9) = 1
triggerall = power >= 1000 && random <= 600
trigger1 = stateno = 460 && animelemtime(2) > 0 && movehit
trigger2 = stateno = 440 && animelemtime(7) > 2 && movehit
trigger3 = stateno = 450 && animelemtime(5) > 0 && movehit


;Launcher Jump
[State -1,Jump]
type = ChangeState
value = 203
triggerall = var(9) = 1
trigger1 = stateno = 250 && animelemtime(3) > 0 && movecontact && var(10) <= 0
trigger2 = stateno = 460 && animelemtime(2) > 0 && moveguarded
trigger3 = statetype != A && ctrl && p2bodydist x > 120 && random <= 500 && enemynear, movetype != A && var(23) <=2
trigger4 = statetype != A && ctrl && p2bodydist x > 120 && random <= 50 && enemynear, movetype != A && var(23) >2
trigger5 = random <= 500 && stateno = 440 && animelemtime(7) > 0 && moveguarded

[State -1, Tornado Claw 3]
type = ChangeState
value = 2600
triggerall = var(9) = 1
trigger1 = random <= 300 && stateno = 440 && animelemtime(7) > 1 && movehit
trigger1 = frontedgebodydist > 150

[State -1, Berserker Slash 1]
type = ChangeState
value = 2000
triggerall = var(9) = 1
trigger1 = stateno = 460 && animelemtime(2) > 0 && movehit && random <= 300
trigger2 = stateno = 450 && animelemtime(5) > 0 && movehit && random <= 300

[State -1, Drill Claw Fwd]
type = ChangeState
value = 2100
triggerall = var(9) = 1
trigger1 = random <= 500
trigger1 = stateno = 450 && animelemtime(5) > 0 && movehit && p2bodydist x <= 40
trigger1 = frontedgebodydist <= 150

[State -1, Berserker Barrage 1]
type = ChangeState
value = 2020
triggerall = var(9) = 1
trigger1 = p2bodydist x <= 40
trigger1 = random <= 500 && stateno = 440 && animelemtime(7) > 2 && moveguarded
trigger2 = random <= 500 && stateno = 460 && animelemtime(2) > 0 && movehit

[State -1, Berserker Barrage 3]
type = ChangeState
value = 2060
triggerall = var(9) = 1
trigger1 = p2bodydist x <= 40
trigger1 = random <= 300 && stateno = 440 && animelemtime(7) > 2 && movehit
trigger2 = random <= 500 && stateno = 460 && animelemtime(2) > 0 && movehit

[State -1,JLP]
type = ChangeState
value = 600
triggerall = var(9) = 1
triggerall = statetype = A && ctrl
triggerall = p2bodydist x <= 50 && var(10) <= 0
trigger1 = p2bodydist Y < 25 && p2statetype = A && pos Y < -25 
trigger2 = p2bodydist Y <= 70 && p2statetype != A 

[State -1,JLK]
type = ChangeState
value = 610
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
trigger1 = stateno = 600 && animelemtime(2) > 0 && movecontact

[State -1,JMP]
type = ChangeState
value = 620
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
trigger1 = stateno = 610 && animelemtime(2) > 0 && movecontact

[State -1,JDHKMVC]
type = ChangeState
value = 670
triggerall = var(9) = 1
triggerall = var(23) <= 2
triggerall = pos y <= -92 && random <= 500 && var(15) <= 0
trigger1 = statetype = A && ctrl && stateno != 672 && (p2bodydist x = [-20,5]) 

[State -1,JMK]
type = ChangeState
value = 640
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
trigger1 = stateno = 630 && animelemtime(3) > 0 && movecontact

[State -1,JHP]
type = ChangeState
value = 650
triggerall = var(9) = 1
trigger1 = statetype = A && ctrl && p2bodydist Y <= 70 && p2statetype != A && p2bodydist x <= 40 && vel y > 0 && p2movetype != A
trigger2 = stateno = 640 && animelemtime(3) > 0 && movecontact 

[State -1,JHK]
type = ChangeState
value = 660
triggerall = var(9) = 1
trigger1 = stateno = 650 && animelemtime(2) > 0 && movecontact
trigger2 = stateno = 670 && animelemtime(2) > 0 && movecontact
trigger3 = stateno = 671 && animelemtime(2) > 0 && movecontact

[State -1, Fatal Claw X (Aerial)]
type = ChangeState
value = 6400
triggerall = var(9) = 1
triggerall = power >= 1000
trigger1 = stateno = 680 && animelemtime(2) > 0 && movecontact && random <= 500
trigger2 = stateno = 681 && animelemtime(2) > 0 && movecontact && random <= 500

[State -1, Air Drill Claw Down-Fwd,Down]
type = ChangeState
value = ifelse(random <= 500, 2260, ifelse(random <= 500, 2250, ifelse(random <= 500, 2270, 2230)))
triggerall = var(9) = 1
triggerall = (stateno != [2300,2400])
trigger1 = random <= 50 && stateno = 660 && animelemtime(2) > 0 && movehit
trigger1 = p2bodydist x <= 40 && p2statetype = A && var(15) <= 0
trigger2 = stateno = 670 && animelemtime(2) > 0 && p2stateno > 1000 && p2name = "cvsgeese"
trigger3 = stateno = 671 && animelemtime(2) > 0 && p2stateno > 1000 && p2name = "cvsgeese"

[State -1, Air Drill Claw back/downback]
type = ChangeState
value = ifelse(random <= 500, 2210,2270)
triggerall = var(9) = 1
triggerall = (stateno != [2300,2400]) && var(15) <= 0 && p2statetype = A && random <= 100 
trigger1 = stateno = 660 && animelemtime(2) > 0 && moveguarded
trigger2 = stateno = 670 && animelemtime(2) > 0 && moveguarded
trigger3 = stateno = 671 && animelemtime(2) > 0 && moveguarded

[State -1, Tornado Claw]
type = ChangeState
value = ifelse (random <= 500,2500,2600)
triggerall = var(9) = 1
triggerall = ctrl && statetype != A && random <= 200
trigger1 = (p2bodydist x = [20,50]) && p2statetype = A && p2bodydist y < -40
trigger2 = (p2bodydist x = [5,30]) && p2movetype = A 

[State -1,Groundrecover]
type = ChangeState
value = 5201
triggerall = var(9) = 1  
trigger1 = canrecover && Vel Y > 0 && Pos Y >= 0 && life >0 && random <= 100 && (stateno = [5050,5060])

[State -1,Ground Adv Guard]
type = ChangeState
value = 330
triggerall = var(9) = 1
triggerall = random <= 50
triggerall = life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,Air Adv Guard]
type = ChangeState
value = 340
triggerall = var(9) = 1
triggerall = random <= 50
triggerall = life > 0 && statetype = A
trigger1 = stateno = 154 
