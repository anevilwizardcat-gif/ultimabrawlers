; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;===================< BUTTON REMAPPING >===================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================< DEFAULT VALUES >===================

[Defaults]
command.time = 15
command.buffer.time = 1


;===================< SINGLE BUTTON >===================

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
name = "start"
command = s
time = 1


;===================< HOLD DIR >===================

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


;===================< HOLD BUTTON >===================

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
name = "holdstart"
command = /s
time = 1


;===================< DIR >===================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1


;===================< SUPER MOTIONS >===================

[Command]
name = "illusion"
command = x, x, F, a, z
time = 45

[Command]
name = "slumber"
command = x, b, ~B, y, c
time = 45

[Command]
name = "shower"
command = y, x, ~B, a, b
time = 45

[Command]
name = "hcbk"
command = ~F, DF, D, DB, B, a
time = 30
[Command]
name = "hcbk"
command = ~F, DF, D, DB, B, b
time = 30
[Command]
name = "hcbk"
command = ~F, DF, D, DB, B, c
time = 30
[Command]
name = "hcbk"
command = ~F, DF, D, DB, B, ~a
time = 30
[Command]
name = "hcbk"
command = ~F, DF, D, DB, B, ~b
time = 30
[Command]
name = "hcbk"
command = ~F, DF, D, DB, B, ~c
time = 30

[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~z
time = 30

[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, a
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, b
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, c
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~a
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~b
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~c
time = 30

[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, z
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~z
time = 30


;===================< SPECIAL MOTIONS >===================

[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, x
time = 30
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, y
time = 30
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, z
time = 30
[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, ~x
time = 30
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, ~y
time = 30
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, ~z
time = 30

[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+y
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+z
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, y+z
time = 30

[Command]
name = "dfx"
command = ~F, D, DF, x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, z
time = 20
[Command]
name = "dfx"
command = ~F, D, DF, ~x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, ~y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, ~z
time = 20

[Command]
name = "df2p"
command = ~F, D, DF, x+y
time = 20
[Command]
name = "df2p"
command = ~F, D, DF, x+z
time = 20
[Command]
name = "df2p"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "qcfx"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "qcba"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, c
time = 15
[Command]
name = "qcba"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time = 15

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, a+c
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "Counter_P"
command = F, D, DF, x
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, y
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, z
time = 16

[Command]
name = "Counter_K"
command = F, D, DF, a
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, b
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, c
time = 16


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "airdashf"
command = UF, ~F, F
time = 10
[Command]
name = "airdashf"
command = UF, ~UF, UF
time = 10

[Command]
name = "airdashb"
command = UB, ~B, B
time = 10
[Command]
name = "airdashb"
command = UB, ~UB, UB
time = 10


;===================< DOUBLE TAP >===================

[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;===================< 2/3 BUTTON COMBINATION >===================

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = x+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "2p"
command = x+y
time = 1
[Command]
name = "2p"
command = x+z
time = 1
[Command]
name = "2p"
command = y+z
time = 1

[Command]
name = "2k"
command = a+b
time = 1
[Command]
name = "2k"
command = a+c
time = 1
[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "roll"
command = a+x
time = 1

[Command]
name = "darkforce"
command = c+z
time = 1


;===========================================================================
;===============================< -1 STATES >=================================
;===========================================================================

[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno = 52 || stateno = 5120) && !animtime
trigger2 = (stateno = [200, 259]) && !animtime
trigger3 = ((stateno = [700, 701]) || (stateno = [710, 729]) || stateno = 770) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, roll / dodge]
type = changestate
value = ifelse(command = "holdfwd", 720, ifelse(command = "holdback", 725, 710))
trigger1 = !AIlevel
trigger1 = command = "roll"
trigger1 = roundstate = 2 && statetype != A && ctrl

[State -1, darknessillusion]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = command = "illusion"
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(40)
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) || (stateno = 52 && prevstateno = 226)
trigger3 = (stateno = [1100, 1110]) && anim != 1101 && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, eternalslumber]
type = changestate
value = 4100
triggerall = !AIlevel
triggerall = command = "slumber"
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(40)
triggerall = !numhelper(4105)
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) || (stateno = 52 && prevstateno = 226)
trigger3 = (stateno = [1100, 1110]) && anim != 1101 && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, finishingshower]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = command = "shower"
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(40)
triggerall = !numhelper(3305)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) || (stateno = 52 && prevstateno = 226)
trigger3 = ((stateno = [1100, 1110]) || stateno = 3100) && anim != 1101 && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3300
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, valkyrieturn]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = command = "hcbk"
triggerall = roundstate = 2 && power >= (1000 * !var(40))
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 285]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 285]) || var(40)) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || stateno = 3100) && anim != 1101 && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, cardinalblade]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "2dfk"
triggerall = roundstate = 2 && statetype != A && power >= (1000 * !var(40))
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])
trigger3 = (stateno = [1100, 1110]) && anim != 1101 && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, airsoulphoenix]
type = changestate
value = 3050
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = roundstate = 2 && statetype = A && var(9) != 2 && power >= (1000 * !var(40))
triggerall = !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [260, 285]) && ((prevstateno != [260, 285]) || var(40)) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || stateno = 3100) && anim != 1101 && (movecontact = [1, 24])
trigger4 = stateno = 3401 && (movecontact = [1, 24])
trigger5 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3050
trigger5 = helper(stateno + 5), var(3)

[State -1, soulphoenix]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = roundstate = 2 && statetype != A && power >= (1000 * !var(40))
triggerall = !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || stateno = 3100) && anim != 1101 && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3000
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, EXshadowblade]
type = changestate
value = 1110
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = roundstate = 2 && statetype != A && power >= 500 && !var(40)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])

[State -1, EXvectordrain]
type = changestate
value = 1320
triggerall = !AIlevel
triggerall = command = "hcb2p"
triggerall = roundstate = 2 && statetype != A && power >= 500 && !var(40)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [260, 285]) && ((prevstateno != [260, 285]) || var(40)) && (movecontact = [1, 8])

[State -1, EXairsoulfist]
type = changestate
value = 1060
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = roundstate = 2 && statetype = A && var(9) != 2 && power >= 500 && !var(40)
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [260, 285]) && ((prevstateno != [260, 285]) || var(40)) && (movecontact = [1, 8])

[State -1, EXsoulfist]
type = changestate
value = 1010
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = roundstate = 2 && statetype != A && power >= 500 && !var(40)
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])

[State -1, shadowblade]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])

[State -1, vectordrain]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "hcbx" || command = "hcby" || command = "hcbz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])

[State -1, airsoulfist]
type = changestate
value = 1050
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype = A && var(9) != 2
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [260, 285]) && ((prevstateno != [260, 285]) || var(40)) && (movecontact = [1, 8])

[State -1, soulfist]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype != A
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 245)
trigger2 = (stateno = [200, 255]) && (stateno != 255 || var(40)) && ((prevstateno != [200, 255]) || var(40)) && (movecontact = [1, 8])

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = roundstate = 2 && power >= 2000 && !var(40)

[State -1, throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = S && ctrl

[State -1, darkforcereset]
type = changestate
value = 771
triggerall = statetype != A && ctrl
trigger1 = var(40) < 0
trigger2 = !AIlevel
trigger2 = command = "darkforce"
trigger2 = roundstate = 2 && numhelper(775) && var(40) > 0

[State -1, darkforce]
type = changestate
value = 770
trigger1 = !AIlevel
trigger1 = command = "darkforce"
trigger1 = roundstate = 2 && statetype != A && power >= 3000
trigger1 = !numhelper(775) && !var(40) && ctrl

[State -1, powercharge]
type = changestate
value = 740
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < powermax
trigger1 = !var(40) && !numhelper(775) && ctrl

[State -1, Air Dash]
type = changestate
value = ifelse((command = "airdashf" || command = "FF"), 100, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB" || command = "airdashf" || command = "airdashb"
trigger1 = roundstate = 2 && (stateno != [100, 105]) && statetype = A && ctrl

[State -1, dash]
type = changestate
value = ifelse(command = "FF", 100, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 105]) && statetype = S && ctrl

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command = "x" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 245) && time >= 5

[State -1, SMP]
type = changestate
value = 205
triggerall = !AIlevel
triggerall = command = "y" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 215) && (movecontact = [1, 4])
trigger3 = (stateno = 230 || stateno = 245) && (movecontact = [1, 4])

[State -1, SHP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "z" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, SLK]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = command = "a" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && (movecontact = [1, 4])
trigger3 = (stateno = 200 || stateno = 245) && time >= 5

[State -1, SMK]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command = "b" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || stateno = 215) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || stateno = 245) && (movecontact = [1, 4])

[State -1, SHK2]
type = changestate
value = 226
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown" && command = "holdfwd" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 212]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 240]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, SHK]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 212]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 240]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, CLP]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command = "x" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 245) && time >= 5
trigger3 = (stateno = 200 || stateno = 245) && time >= 5

[State -1, CMP]
type = changestate
value = 235
triggerall = !AIlevel
triggerall = command = "y" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 215 || stateno = 245) && (movecontact = [1, 4])

[State -1, CHP]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "z" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, CLK]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = command = "a" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 245) && time >= 5
trigger3 = (stateno = 200 || stateno = 230) && (movecontact = [1, 4])

[State -1, CMK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command = "b" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 207]) || stateno = 215) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 235]) || stateno = 245) && (movecontact = [1, 4])

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200, 212]) || (stateno = [215, 220])) && (movecontact = [1, 4])
trigger3 = ((stateno = [230, 240]) || (stateno = [245, 250])) && (movecontact = [1, 4])

[State -1, ALP]
type = changestate
value = 260
triggerall = !AIlevel
triggerall = command = "x" && statetype = A
trigger1 = ctrl

[State -1, AMP]
type = changestate
value = 265
triggerall = !AIlevel
triggerall = command = "y" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 260 || stateno = 275) && (movecontact = [1, 4]) && var(9) != 2

[State -1, AHP]
type = changestate
value = 270
triggerall = !AIlevel
triggerall = command = "z" && statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [260, 265]) || (stateno = [275, 280])) && (movecontact = [1, 4]) && var(9) != 2

[State -1, ALK]
type = changestate
value = 275
triggerall = !AIlevel
triggerall = command = "a" && statetype = A
trigger1 = ctrl
trigger2 = stateno = 260 && (movecontact = [1, 24]) && var(9) != 2

[State -1, AMK]
type = changestate
value = 280
triggerall = !AIlevel
triggerall = command = "b" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 260 || stateno = 265 || stateno = 275) && (movecontact = [1, 24]) && var(9) != 2
trigger2 = ((stateno = [260, 265]) || stateno = 275) && (movecontact = [1, 4]) && var(9) != 2

[State -1, AHK]
type = changestate
value = 285
triggerall = !AIlevel
triggerall = command = "c" && statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [260, 270]) || (stateno = [275, 280])) && (movecontact = [1, 4]) && var(9) != 2

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 702
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, taunt]
type = changestate
value = 195
triggerall = !AIlevel
triggerall = command = "start" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])


;===========================================================================
;=================================< A.I. >====================================
;===========================================================================

[State -1, Standing Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [700, 702]) && stateno != 5120) || var(40)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
slot = 0
time = 0

[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype != C && roundstate = 2 && ctrl && (stateno != [100, 105])
trigger1 = enemynear, movetype != A && p2bodydist x > 120 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, sidestep / dodge]
type = changestate
value = ifelse((backedgebodydist > 40 && random < 200), 725, ifelse(random < 600, 720, 710))
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && (stateno != [100, 105])
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(40) && life < 500 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 740
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < powermax
trigger1 = !var(40) && !numhelper(775) && ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, taunt]
type = changestate
value = 195
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && life >= (enemynear, life)
trigger1 = p2dist x > 200 && (enemynear, vel y > 0) && ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = !(enemynear, ctrl) && (enemynear, movetype = H)

[State -1, throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 21]) && (p2bodydist y = [ -25, 25]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (p2bodydist x = [0, 36]) && (p2bodydist y = [ -25, 25]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 205
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 215
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 215 || stateno = 235 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SHK2]
type = changestate
value = 226
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (ifelse(p2statetype = C, 100, 20) * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 210 || stateno = 220 || stateno = 235 || stateno = 240 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 215) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 235
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 230 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 235 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 215 || stateno = 230) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 220 || stateno = 235 || stateno = 245) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 205 || stateno = 210 || stateno = 220 || stateno = 235 || stateno = 240 || stateno = 250) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 260
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 265
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 260 || stateno = 275) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 270
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 265 || stateno = 280) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 275
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 260 && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 280
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [ -50, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 265 || stateno = 275) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 285
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 265 || stateno = 270 || stateno = 280) && ((movehit = [1, 16]) = [1, 4]) && var(9) != 2 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, shadowblade]
type = changestate
value = ifelse((power >= 500 && random < 133 && !var(40)), 1110, 1100)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y >= -180) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && ((prevstateno != [200, 255]) || var(40)) && (movehit = [1, 16]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, EXairsoulfist]
type = changestate
value = 1060
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= 500 && statetype = A && var(9) != 2 && vel y > -1 && !var(40)
triggerall = (p2stateno != [120, 155])
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl && p2dist x < 0 && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && p2dist y < -50 && (enemynear, vel y <= -4) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, EXsoulfist]
type = changestate
value = 1010
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= 500 && statetype != A && !var(40)
triggerall = (p2stateno != [120, 155]) && p2statetype != L && (enemynear, vel y <= -4)
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl && p2dist x < 0 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && p2dist y < -80 && (enemynear, vel y <= -4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, airsoulfist]
type = changestate
value = 1050
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && var(9) != 2 && vel y > -1
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
triggerall = (enemynear, vel y > -1)
trigger1 = ctrl && p2dist x >= 0 && p2dist y >= -50 && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [260, 285]) && ((prevstateno != [260, 285]) || var(40)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, soulfist]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
triggerall = p2statetype != L && (enemynear, vel y > -1)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && p2dist x > 160 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, vectordrain]
type = changestate
value = ifelse((power >= 500 && random < 133 && !var(40)), 1320, 1300)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 25]) && (p2bodydist y = [ -25, 25]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (p2bodydist x = [0, 40]) && (p2bodydist y = [ -25, 25]) && random < (333 * (AIlevel ** 2 / 64.0))

[State -1, cardinalblade]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= (1000 * !var(40))
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y >= -180) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && ((prevstateno != [200, 255]) || var(40)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1100, 1110]) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3401 && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger5 = helper(stateno + 5), var(3) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, valkyrieturn]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= (1000 * !var(40))
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, pos y <= -80) && (enemynear, vel y <= -5)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (enemynear, movetype = A) && (enemynear, stateno = [1000, 4999]) && p2dist x < 160 && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3100 && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger3 = helper(stateno + 5), var(3) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, airsoulphoenix]
type = changestate
value = 3050
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && var(9) != 2 && power >= (1000 * !var(40))
triggerall = !numhelper(3005) && !numhelper(3055)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist x = [0, 180]) && p2dist y >= -50 && (enemynear, vel y > -3)
trigger1 = ctrl && (p2dist x = [p2dist y * 0.8, p2dist y * 1.2]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [260, 285]) && ((prevstateno != [260, 285]) || var(40)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1100, 1110]) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 3100 || (stateno = 3401 && hitcount >= 8)) && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, soulphoenix]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= (1000 * !var(40))
triggerall = !numhelper(3005) && !numhelper(3055)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist x = [0, 120]) && p2dist y > -180 && (enemynear, vel y > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && ((prevstateno != [200, 255]) || var(40)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1100, 1110]) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3401 && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, finishingshower]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(40)
triggerall = !numhelper(3305)
triggerall = !(enemynear, ctrl) && p2bodydist x >= 10 && p2bodydist y >= -240 && (enemynear, vel y >= -6) && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (p2stateno = [120, 155]) && (enemynear, life <= 30) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, darknessillusion]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(40)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 90]) && (p2bodydist y >= -120) && (enemynear, vel y = [ -2, 2]) && (enemynear, vel x > -3)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 255]) && random < (ifelse((movehit = [1, 16]), 100, 50) * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 52 && prevstateno = 226 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, eternalslumber]
type = changestate
value = 4100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(40)
triggerall = !numhelper(4105)
triggerall = !(enemynear, ctrl) && p2statetype != L && !(enemynear, hitfall)
triggerall = p2bodydist x >= 10 && p2bodydist y >= -180 && (enemynear, vel y >= 0) && (enemynear, vel x <= 2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (p2bodydist x = [0, 90]) && (p2dist y = [ -5, 5]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (p2stateno = [120, 155]) && p2statetype != A && random < (100 * (AIlevel ** 2 / 64.0))
