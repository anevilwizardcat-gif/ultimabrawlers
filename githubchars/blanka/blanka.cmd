; ------------------------------------------------------------
; Street Fighter Alpha 3'S Blanka, The Amazonian Weirdo By MHz
; ------------------------------------------------------------

; -| Super Motions |--------------------------------------------------------

; -| Special Motions |------------------------------------------------------
; -----------------

[Command]
name = "elec_x"
command = x, x, x
time = 30

[Command]
name = "elec_y"
command = y, y, y
time = 30

[Command]
name = "elec_z"
command = z, z, z
time = 30

; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

; -----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

; -----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z


; --------------------
; Charge Down up
[Command]
name = "chargedownup_a"
command = ~20$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~20$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~20$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~20$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~20$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~20$D, U, z
time = 10

[Command]
name = "chargedownup_kk"
command = ~20$D, U, a+b
time = 10

[Command]
name = "chargedownup_kk"
command = ~20$D, U, a+c
time = 10

[Command]
name = "chargedownup_kk"
command = ~20$D, U, b+c
time = 10

[Command]
name = "chargedownup_s"
command = ~20$D, U, s
time = 10

; --------------------
; Charge Back fwd
[Command]
name = "chargebackfwd_a"
command = ~20$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~20$B, F, b
time = 10

[Command]
name = "chargebackfwd_c"
command = ~20$B, F, c
time = 10

[Command]
name = "chargebackfwd_x"
command = ~20$B, F, x
time = 10

[Command]
name = "chargebackfwd_y"
command = ~20$B, F, y
time = 10

[Command]
name = "chargebackfwd_z"
command = ~20$B, F, z
time = 10

; --------------------
; Charge Back Downfwd
[Command]
name = "chargebackdwnfwd_a"
command = ~20$B, DF, a
time = 10

[Command]
name = "chargebackdwnfwd_b"
command = ~20$B, DF, b
time = 10

[Command]
name = "chargebackdwnfwd_c"
command = ~20$B, DF, c
time = 10

[Command]
name = "chargebackdwnfwd_x"
command = ~20$B, DF, x
time = 10

[Command]
name = "chargebackdwnfwd_y"
command = ~20$B, DF, y
time = 10

[Command]
name = "chargebackdwnfwd_z"
command = ~20$B, DF, z
time = 10

[Command]
name = "abc"
command = a+b+c
time = 10

[Command]
name = "xyz"
command = x+y+z
time = 10


; -| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"; Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"; Required (do not remove)
command = B, B
time = 10

; -| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"; Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

; -| Dir + Button |---------------------------------------------------------
[Command]
name = "df_z"
command = /DF,z
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

; -| Single Button |---------------------------------------------------------
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
name = "up"
command = U
time = 1

[Command]
name = "dwn"
command = D
time = 1

[Command]
name = "bck"
command = B
time = 1

[Command]
name = "fwd"
command = F
time = 1

; -| Two Buttons |---------------------------------------------------------
[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "fkk"
command = /F, a+b
time = 1

[Command]
name = "fkk"
command = /F, a+c
time = 1

[Command]
name = "fkk"
command = /F, b+c
time = 1

[Command]
name = "bkk"
command = /B, a+b
time = 1

[Command]
name = "bkk"
command = /B, a+c
time = 1

[Command]
name = "bkk"
command = /B, b+c
time = 1

; -| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"; Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback"; Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"; Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown"; Required (do not remove)
command = /$D
time = 1

; ---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ; Don't change this
;   type = ChangeState          ; Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.


[Statedef -1] ; MANDATORY

; ===========================================================================
; ---------------------------------------------------------------------------

;* SPECIALS
[State -1] ; Roll X
type = ChangeState
value = 1100
triggerall = command = "chargebackfwd_x"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

[State -1] ; Roll Y
type = ChangeState
value = 1110
triggerall = command = "chargebackfwd_y"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

[State -1] ; Roll Z
type = ChangeState
value = 1120
triggerall = command = "chargebackfwd_z"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

; ---------------------------------------------------------------------------
[State -1] ; Elec X
type = ChangeState
value = 1000
triggerall = command = "elec_x"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

; ---------------------------------------------------------------------------
[State -1] ; Elec Y
type = ChangeState
value = 1010
triggerall = command = "elec_y"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

; ---------------------------------------------------------------------------
[State -1] ; Elec Z
type = ChangeState
value = 1020
triggerall = command = "elec_z"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

; ---------------------------------------------------------------------------
[State -1] ; RunFwd
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; RunBack
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null; " below when you
; want to use it.
[State -1] ; Stand Throw
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ; Near P2
trigger1 = command = "fwd_b"; p2 stand
trigger1 = stateno != 100    ; Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"; p2 crouch
trigger2 = stateno != 100    ; Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"; p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"; p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

; ---------------------------------------------------------------------------
; This is disabled right now. Remove the "null; " below when you
; want to use it.
[State -1] ; Air Throw
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"


; ===========================================================================
[State -1] ; Taunt
type = ChangeState
value = 160
trigger1 = command = "s"
trigger1 = ctrl = 1
trigger1 = statetype = S

;* BASICS (STANDING)
; ---------------------------------------------------------------------------
[State -1] ; Stand X close
type = ChangeState
value = 205
triggerall = command = "x"; Place name of command here
triggerall = P2BodyDist x <= 30
triggerall = command != "holddown"; Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = time >= 5
trigger3 = MoveContact = 1
trigger3 = stateno = 400

; ---------------------------------------------------------------------------
[State -1] ; Stand X
type = ChangeState
value = 200
triggerall = command = "x"; Place name of command here
triggerall = command != "holddown"; Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 5
trigger3 = MoveContact = 1
trigger3 = stateno = 400

; ---------------------------------------------------------------------------
[State -1] ; Stand Y Close
type = ChangeState
value = 215
triggerall = command = "fwd_y"
triggerall = P2BodyDist x <= 30
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 230
trigger4 = MoveContact = 1
trigger4 = stateno = 400
trigger5 = MoveContact = 1
trigger5 = stateno = 430
trigger6 = MoveContact = 1
trigger6 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Stand Y
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 230
trigger4 = MoveContact = 1
trigger4 = stateno = 400
trigger5 = MoveContact = 1
trigger5 = stateno = 430
trigger6 = MoveContact = 1
trigger6 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Stand Z
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 210
trigger4 = MoveContact = 1
trigger4 = stateno = 230
trigger5 = MoveContact = 1
trigger5 = stateno = 240
trigger6 = MoveContact = 1
trigger6 = stateno = 400
trigger7 = MoveContact = 1
trigger7 = stateno = 410
trigger8 = MoveContact = 1
trigger8 = stateno = 430
trigger9 = MoveContact = 1
trigger9 = stateno = 440
trigger10= MoveContact = 1
trigger10= stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Stand A close
type = ChangeState
value = 235
triggerall = command = "fwd_a"
triggerall = P2BodyDist x <= 30
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 400
trigger4 = MoveContact = 1
trigger4 = stateno = 430
trigger5 = MoveContact = 1
trigger5 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Stand A
type = ChangeState
value = 230
triggerall = command = "a"; Place name of command here
triggerall = command != "holddown"; Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = time >= 5
trigger3 = MoveContact = 1
trigger3 = stateno = 200
trigger4 = MoveContact = 1
trigger4 = stateno = 400
trigger5 = MoveContact = 1
trigger5 = stateno = 430
trigger6 = MoveContact = 1
trigger6 = stateno = 205


; ---------------------------------------------------------------------------
[State -1] ; Stand B close
type = ChangeState
value = 245
triggerall = command = "fwd_b"; Place name of command here
triggerall = P2BodyDist x <= 30
triggerall = command != "holddown"; Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 210
trigger4 = MoveContact = 1
trigger4 = stateno = 230
trigger5 = MoveContact = 1
trigger5 = stateno = 400
trigger6 = MoveContact = 1
trigger6 = stateno = 410
trigger7 = MoveContact = 1
trigger7 = stateno = 430
trigger8 = MoveContact = 1
trigger8 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Stand B
type = ChangeState
value = 240
triggerall = command = "b"; Place name of command here
triggerall = command != "holddown"; Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 210
trigger4 = MoveContact = 1
trigger4 = stateno = 230
trigger5 = MoveContact = 1
trigger5 = stateno = 400
trigger6 = MoveContact = 1
trigger6 = stateno = 410
trigger7 = MoveContact = 1
trigger7 = stateno = 430
trigger8 = MoveContact = 1
trigger8 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Stand C
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact = 1
trigger2 = stateno = 200
trigger3 = MoveContact = 1
trigger3 = stateno = 210
trigger4 = MoveContact = 1
trigger4 = stateno = 230
trigger5 = MoveContact = 1
trigger5 = stateno = 240
trigger6 = MoveContact = 1
trigger6 = stateno = 400
trigger7 = MoveContact = 1
trigger7 = stateno = 410
trigger8 = MoveContact = 1
trigger8 = stateno = 430
trigger9 = MoveContact = 1
trigger9 = stateno = 440
trigger10= MoveContact = 1
trigger10= stateno = 205

;* BASICS (CROUCHING)
; ---------------------------------------------------------------------------
[State -1] ; Crouch X
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 5
trigger3 = MoveContact = 1
trigger3 = stateno = 200

; ---------------------------------------------------------------------------
[State -1] ; Crouch Y
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact = 1;
trigger2 = stateno = 200
trigger3 = MoveContact = 1;
trigger3 = stateno = 230
trigger4 = MoveContact = 1;
trigger4 = stateno = 400
trigger5 = MoveContact = 1;
trigger5 = stateno = 430
trigger6 = MoveContact = 1
trigger6 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Crouch Z slide
type = ChangeState
value = 425
triggerall = command = "df_z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; Crouch Z
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact = 1;
trigger2 = stateno = 200
trigger3 = MoveContact = 1;
trigger3 = stateno = 210
trigger4 = MoveContact = 1;
trigger4 = stateno = 230
trigger5 = MoveContact = 1;
trigger5 = stateno = 240
trigger6 = MoveContact = 1;
trigger6 = stateno = 400
trigger7 = MoveContact = 1;
trigger7 = stateno = 410
trigger8 = MoveContact = 1;
trigger8 = stateno = 430
trigger9 = MoveContact = 1;
trigger9 = stateno = 440
trigger10= MoveContact = 1
trigger10= stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Crouch A
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430 ; CA
trigger2 = time >= 7
trigger3 = MoveContact = 1;
trigger3 = stateno = 400 ; CX
trigger4 = MoveContact = 1;
trigger4 = stateno = 200 ; SX
trigger5 = MoveContact = 1;
trigger5 = stateno = 230 ; SA
trigger6 = MoveContact = 1
trigger6 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Crouch B
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact = 1;
trigger2 = stateno = 200
trigger3 = MoveContact = 1;
trigger3 = stateno = 210
trigger4 = MoveContact = 1;
trigger4 = stateno = 230
trigger5 = MoveContact = 1;
trigger5 = stateno = 400
trigger6 = MoveContact = 1;
trigger6 = stateno = 410
trigger7 = MoveContact = 1;
trigger7 = stateno = 430
trigger8 = MoveContact = 1
trigger8 = stateno = 205

; ---------------------------------------------------------------------------
[State -1] ; Crouch C
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact = 1;
trigger2 = stateno = 200
trigger3 = MoveContact = 1;
trigger3 = stateno = 210
trigger4 = MoveContact = 1;
trigger4 = stateno = 230
trigger5 = MoveContact = 1;
trigger5 = stateno = 240
trigger6 = MoveContact = 1;
trigger6 = stateno = 400
trigger7 = MoveContact = 1;
trigger7 = stateno = 410
trigger8 = MoveContact = 1;
trigger8 = stateno = 430
trigger9 = MoveContact = 1;
trigger9 = stateno = 440
trigger10= MoveContact = 1
trigger10= stateno = 205

;* BASICS (JUMPING)
; ---------------------------------------------------------------------------
[State -1] ; Jump X
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; Jump Y
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; Jump Z
type = ChangeState
value = 620
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; Jump A
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; Jump B
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

; ---------------------------------------------------------------------------
[State -1] ; Jump C
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
