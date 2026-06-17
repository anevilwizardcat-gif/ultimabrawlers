;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

[Command]
name = "gutsp"
command = ~D, B, x

[Command]
name = "gutsp2"
command = ~D, B, y

[Command]
name = "buster"
command = ~D, F, x

[Command]
name = "buster2"
command = ~D, F, y

[Command]
name = "spread"
command = ~D, F, x+y

[Command]
name = "sword"
command = ~F, D, F, x

[Command]
name = "sword2"
command = ~F, D, F, y

[Command]
name = "guts"
command = ~D, F, a

[Command]
name = "bass"
command = ~D, F, b

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
name = "recovery"
command = x+y
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

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;bass
[State -1, bass]
type = ChangeState
value = 401
triggerall = (command = "bass") && (!Pos Y) && (Power > 499)
trigger1 = (ctrl) && (!NumHelper(430))

;---------------------------------------------------------------------------
;guts
[State -1, guts]
type = ChangeState
value = 400
triggerall = (command = "guts") && (!Pos Y) && (Power > 499)
trigger1 = (ctrl) && (!NumHelper(410))

;---------------------------------------------------------------------------
;sword2
[State -1, sword2]
type = ChangeState
value = 325
triggerall = (command = "sword2") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;---------------------------------------------------------------------------
;sword
[State -1, sword]
type = ChangeState
value = 321
triggerall = (command = "sword") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;---------------------------------------------------------------------------
;gutsp2
[State -1, gutsp2]
type = ChangeState
value = 315
triggerall = (command = "gutsp2") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;---------------------------------------------------------------------------
;gutsp
[State -1, gutsp]
type = ChangeState
value = 310
triggerall = (command = "gutsp") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;---------------------------------------------------------------------------
;spread
[State -1, spread]
type = ChangeState
value = 308
triggerall = (command = "spread") && (!Pos Y) && (Power > 499)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;---------------------------------------------------------------------------
;buster2
[State -1, buster2]
type = ChangeState
value = 305
triggerall = (command = "buster2") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;---------------------------------------------------------------------------
;buster
[State -1, buster]
type = ChangeState
value = 300
triggerall = (command = "buster") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 207]) && (movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;JSK
[State -1, JSK]
type = ChangeState
value = 253
triggerall = command = "b" && statetype = A
trigger1 = (ctrl) || (stateno = [250, 252]) && (movecontact)

;---------------------------------------------------------------------------
;JSP
[State -1, JSP]
type = ChangeState
value = 252
triggerall = command = "y" && statetype = A
trigger1 = (ctrl) || (stateno = [250, 251]) && (movecontact)

;---------------------------------------------------------------------------
;JLK
[State -1, LJK]
type = ChangeState
value = 251
triggerall = command = "a" && statetype = A
trigger1 = (ctrl) || (stateno = 250) && (movecontact)

;---------------------------------------------------------------------------
;JLP
[State -1, JLP]
type = ChangeState
value = 250
triggerall = command = "x" && statetype = A
trigger1 = (ctrl)

;---------------------------------------------------------------------------
;CSK
[State -1, CSK]
type = ChangeState
value = 207
triggerall = (command = "b") && (command = "holddown") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 205]) && (movecontact)

;---------------------------------------------------------------------------
;SSK
[State -1, SSK]
type = ChangeState
value = 206
triggerall = (command = "b") && (command != "holddown") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 205]) && (movecontact)

;---------------------------------------------------------------------------
;CSP
[State -1, CSP]
type = ChangeState
value = 205
triggerall = (command = "y") && (command = "holddown") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 203]) && (movecontact)

;---------------------------------------------------------------------------
;SSP
[State -1, SSP]
type = ChangeState
value = 204
triggerall = (command = "y") && (command != "holddown") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 203]) && (movecontact)

;---------------------------------------------------------------------------
;CLK
[State -1, CLK]
type = ChangeState
value = 203
triggerall = (command = "a") && (command = "holddown") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 201]) && (movecontact)

;---------------------------------------------------------------------------
;SLK
[State -1, SLK]
type = ChangeState
value = 202
triggerall = (command = "a") && (command != "holddown") && (!Pos Y)
trigger1 = (ctrl) || (stateno = [200, 201]) && (movecontact)

;---------------------------------------------------------------------------
;CLP
[State -1, CLP]
type = ChangeState
value = 201
triggerall = (command = "x") && (command = "holddown") && (!Pos Y)
trigger1 = (ctrl)

;---------------------------------------------------------------------------
;SLP
[State -1, SLP]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown") && (!Pos Y)
trigger1 = (ctrl)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = (command = "start") && (statetype != A) && (ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = (command = "FF") && (statetype = S) && (ctrl)