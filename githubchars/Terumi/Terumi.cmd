;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

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
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
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
[Statedef -1]

;===========================================================================
;===========================================================================
[State -1, Unholy Wrath of the Basilisk]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.25
triggerall = var(22) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 1005) && animelemtime(10) >= 0
trigger10 = (stateno = [1000,1001]) && moveguarded
trigger11 = (stateno = 300) && movecontact
trigger12 = (stateno = 220) && movehit
trigger13 = (stateno = 1500) && movehit
trigger13 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Serpent's Cursed Sting]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 1005) && animelemtime(10) >= 0
trigger10 = (stateno = [1000,1001]) && moveguarded
trigger11 = (stateno = 300) && movecontact
trigger12 = (stateno = 220) && movehit
trigger13 = (stateno = 1500) && movehit
trigger13 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Dungeon of Serpents]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 1005) && animelemtime(10) >= 0
trigger10 = (stateno = [1000,1001]) && moveguarded
trigger11 = (stateno = 300) && movecontact
trigger12 = (stateno = 220) && movehit
trigger13 = (stateno = 1500) && movehit
trigger13 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Rising Fang]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = stateno = 5120 && time >= 3
trigger10 = (stateno = 220) && movehit
trigger11 = (stateno = 1500) && movehit
trigger11 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Divine Twin Blades]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = stateno = 5120 && time >= 3
trigger10 = (stateno = 220) && movehit
trigger11 = (stateno = 1500) && movehit
trigger11 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Air Twin Blades]
type = ChangeState
value = 1601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_c"
triggerall = power >= 500
triggerall = statetype = A
triggerall = var(32) = 0
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, Snake Bite A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 220) && movehit
trigger10 = (stateno = 1500) && movehit
trigger10 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Snake Bite B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 220) && movehit
trigger10 = (stateno = 1500) && movehit
trigger10 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Retaliating Fang]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 220) && movehit
trigger13 = (stateno = 1500) && movehit
trigger13 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Cleaving Fang]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Gleaming Fang]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = 220) && movehit
trigger10 = (stateno = 1500) && movehit
trigger10 = animelemtime(25) >= 3
;---------------------------------------------------------------------------
[State -1, Air Gleaming Fang]
type = ChangeState
value = 1450
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, Serpent's Laceration]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 1101)
trigger1 = animelemtime(25) >= 3
trigger1 = animelemtime(31) < 0
;---------------------------------------------------------------------------
[State -1, Venomous Bite]
type = ChangeState
value = 1700
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger7 = (stateno = 815) && movecontact
trigger8 = (stateno = 211) && movecontact
trigger8 = animelemtime(14) >= 0
trigger9 = (stateno = [1000,1001]) && moveguarded
trigger10 = (stateno = 220) && movehit
trigger11 = (stateno = 1500) && movehit
trigger11 = animelemtime(25) >= 3

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Ultra Guard Cancel]
type = changestate
value = 8060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = stateno = [120,155]

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = var(33) > 0
trigger2 = Movecontact
trigger3 = stateno = 210
trigger3 = Movecontact
trigger3 = var(33) > 0
trigger4 = (stateno = 211) && movecontact
trigger4 = animelemtime(14) >= 0
trigger4 = var(33) > 0

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,410]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype != A
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [400,410]) && Movecontact
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 210) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = (stateno = 211) && movecontact
trigger5 = animelemtime(14) >= 0
trigger6 = stateno = 100
trigger7 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = changeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger3 = var(30) > 0

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger4 = prevstateno != 410
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = 210) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = (stateno = 211) && movecontact
trigger5 = animelemtime(14) >= 0
trigger6 = Stateno = 100
trigger7 = stateno = 1401
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 210) && Movecontact
trigger4 = (Stateno = 410) && Movecontact
trigger5 = (Stateno = 300) && Movecontact
trigger5 = prevstateno != [150,153]

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(15) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 202) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 202) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 202) && movecontact

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = prevstateno != [120,159]
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != 1200
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = p2stateno != 1006
triggerall = time > 0
trigger1 = movecontact
trigger2 = stateno = 1400 && animelemtime(11) > 0
trigger2 = helper(6140),var(1)=1
trigger3 = stateno = 1400 && animelemtime(11) > 0
trigger3 = helper(6141),var(1)=1
trigger4 = stateno = 1450 && animelemtime(11) > 0
trigger4 = helper(6142),var(1)=1
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != [8000,8050]
trigger1 = stateno = 3050
trigger1 = moveguarded
trigger2 = stateno = 3051
trigger3 = stateno = 3052

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = stateno != [8000,8050]
trigger1 = stateno = 3000
trigger1 = moveguarded
trigger2 = stateno = 3005
trigger2 = animelemtime(10) >= 1
trigger2 = movehit

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != [8000,8050]
trigger1 = stateno = 3050
trigger2 = stateno = 3051
trigger3 = stateno = 3052

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = stateno != [8000,8050]
trigger1 = stateno = 3000
trigger1 = moveguarded
trigger2 = stateno = 3005
trigger2 = animelemtime(10) >= 1
trigger2 = movehit


;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 206
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]


;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;Guarding
;===========================================================================

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,20]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 11
trigger3 = random <= 299
trigger3 = p2dist X = [0,60]
trigger4 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger5 = PlayerIdExist(helper(33333333),var(3))
trigger5 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 9 
trigger5 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 35

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 160
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,10]
trigger1 = enemynear,vel X = 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 3
trigger1 = p2movetype = A 
trigger1 = p2bodydist X = [0,40]
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]
;---------------------------------------------------------------------------
[State -1, Unholy Wrath of the Basilisk]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = roundno >= 1
triggerall = power >= 2000
triggerall = statetype != A
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
trigger1 = (stateno = 1005) && animelemtime(11) >= 0
;---------------------------------------------------------------------------
[State -1, Serpent's Cursed Sting]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = L
trigger1 = p2bodydist X = [0,20]
trigger1 = p2stateno != 5120
trigger2 = (stateno = 1005) && animelemtime(11) >= 0
;---------------------------------------------------------------------------
[State -1, Dungeon of Serpents]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype != A
trigger1 = p2bodydist X = [0,30]
trigger1 = p2bodydist Y = [-70,0]

;---------------------------------------------------------------------------
[State -1, Rising Fang Wake up]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 10
triggerall = power < 500
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,30]
trigger1 = p2bodydist Y = [-165,0]
trigger1 = enemynear, Vel X >= 0
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,10]
trigger1 = p2bodydist Y = [-165,0]
trigger1 = enemynear, Vel X < 0

;---------------------------------------------------------------------------
[State -1, Divine Twin Blades Wake up]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 10
triggerall = power >= 500
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,40]
trigger1 = p2bodydist Y = [-165,0]
trigger1 = enemynear, Vel X >= 0
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,25]
trigger1 = p2bodydist Y = [-165,0]
trigger1 = enemynear, Vel X < 0

;---------------------------------------------------------------------------
[State -1, Rising Fang]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist Y = [-165,0]
triggerall = power < 500
triggerall = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = enemynear, Vel X >= 0
trigger2 = p2bodydist X = [0,10]
trigger2 = enemynear, Vel X < 0

;---------------------------------------------------------------------------
[State -1, Divine Twin Blades]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist Y = [-165,0]
triggerall = power >= 500
triggerall = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = enemynear, Vel X >= 0
trigger2 = p2bodydist X = [0,10]
trigger2 = enemynear, Vel X < 0

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = prevstateno != [100,101]
trigger1 = enemynear,movetype != A
trigger1 = ctrl
trigger1 = p2bodydist X >= 50

;---------------------------------------------------------------------------


[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x / PlayerID(helper(33333333),var(3)), vel x ) = ceil( 95 / abs(const(velocity.jump.y)))
trigger2 = enemynear,movetype = A
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = enemynear,movetype = A
trigger3 = p2bodydist X = [35,500]
trigger3 = enemynear, Vel X != 0
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = enemynear,movetype = A
trigger5 = p2bodydist X = [0,35]
trigger5 = enemynear,statetype != A

;---------------------------------------------------------------------------
[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4
trigger2 = prevstateno = 1500
trigger3 = stateno = 5120 && time >= 11
trigger3 = random <= 299
trigger3 = p2dist X = [0,60]

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger1 = p2bodydist X >= 65
trigger1 = pos Y <= -45
trigger2 = ctrl
trigger2 = p2bodydist X < 65
trigger2 = p2bodydist X >= 20
trigger3 = ctrl
trigger3 = p2bodydist X >= 50
trigger3 = prevstateno = 162

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,611]) && moveguarded

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = (Stateno = 300) && Movecontact
trigger1 = prevstateno != [150,153]

;---------------------------------------------------------------------------
[State -1, Running 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 100
trigger1 = p2bodydist X = [0,25]
trigger1 = p2statetype = C

[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 100
trigger1 = p2bodydist X = [0,25]
trigger1 = p2statetype = S

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = P2movetype != H
triggerall = random < AIlevel*10
triggerall = p2bodydist X = [0,20]
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = P2statetype = A
triggerall = P2statetype != L
triggerall = random < AIlevel*10
triggerall = p2bodydist X = [0,20]
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = P2statetype = A
triggerall = random < AIlevel*10
triggerall = p2bodydist X = [0,10]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,30]
triggerall = p2bodydist Y = [-120,0]
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = p2bodydist X = [0,40]
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 202
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist Y = [-35,0]
triggerall = p2bodydist X = [30,60]
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, My attack was blocked]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = moveguarded
triggerall = random <= 249
trigger1 = (stateno = 201)
trigger1 = animelemtime(9) >= 2
trigger2 = (stateno = 211)
trigger2 = animelemtime(14) >= 2

[State -1, My attack was blocked]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = moveguarded
triggerall = random <= 249
trigger1 = (stateno = 202)
trigger1 = animelemtime(10) >= 0
trigger2 = (stateno = 211)
trigger2 = animelemtime(14) >= 2

[State -1, My attack was blocked]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = moveguarded
triggerall = random <= 249
trigger1 = (stateno = 202)
trigger1 = animelemtime(10) >= 2
trigger2 = (stateno = 211)
trigger2 = animelemtime(14) >= 2
trigger3 = (stateno = 420)
trigger2 = animelemtime(6) >= 2

;---------------------------------------------------------------------------
[State -1, My attack was blocked]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = moveguarded
triggerall = random <= 249
trigger1 = (stateno = 201)
trigger1 = animelemtime(10) >= 2
trigger2 = (stateno = 210)
trigger2 = animelemtime(14) >= 2

;---------------------------------------------------------------------------
[State -1, 2A]
type = changeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = enemynear,movetype = A
trigger1 = p2bodydist X = [0,15]
trigger1 = prevStateNo = 140
trigger1 = movetype = I

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = random <= 499
triggerall = enemynear,statetype != A
triggerall = p2bodydist X = [0,25]
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = 210) && movecontact

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,40]
triggerall = p2bodydist Y = [-110,50]
triggerall = Var(50) != 1
triggerall = alive && Roundstate = 2
triggerall = life < Lifemax/3
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,40]
trigger1 = ctrl
trigger1 = var(11) = 1

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
trigger1= p2bodydist X = [0,60]
trigger1 = ctrl
trigger2 = stateno = 50
trigger2 = var(11) = 0
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [0,20]
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 600) && animelemtime(16) >=0
trigger2 = movecontact
trigger3 = (stateno = 202) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = enemynear, stateno = [120,155]
sysvar(1) = -1

;---------------------------------------------------------------------------
[State -1, Snake Bite A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = p2bodydist X = [40,150]
trigger1 = random < AIlevel*8
trigger1 = ctrl
trigger2 = power < 500
trigger2 = (stateno = 211) && movehit
trigger2 = animelemtime(14) >= 2

;---------------------------------------------------------------------------
[State -1, Snake Bite B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = power >= 1500
trigger1 = (stateno = 211) && movehit
trigger1 = animelemtime(14) >= 2

;---------------------------------------------------------------------------
[State -1, Venomous Bite]
type = ChangeState
value = 1700
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 500
triggerall = ctrl
trigger1 = p2bodydist Y >= -130
trigger1 =  p2movetype = A
trigger1 = p2bodydist X = [0,65]
trigger2 =  p2movetype = A
trigger2 = p2bodydist X >= 64
trigger2 = enemynear, vel X >= 10

;---------------------------------------------------------------------------
[State -1, Gleaming Fang]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger1 = p2bodydist X >= 60
trigger1 = p2bodydist Y = [-35,0]
trigger1 = enemynear, vel Y >= 0
trigger1 = p2movetype = A
;---------------------------------------------------------------------------
[State -1, Air Gleaming Fang]
type = ChangeState
value = 1450
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = power >= 500
triggerall = statetype = A
trigger1 = (stateno = 620) && movehit

;---------------------------------------------------------------------------
[State -1, Cleaving Fang]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = L
trigger1 = p2bodydist X = [0,20]
trigger1 = p2stateno != 5120
trigger2 = power >= 500
trigger2 = power < 1500
trigger2 = (stateno = 211) && movehit
trigger2 = animelemtime(14) >= 2
trigger3 = (stateno = 420) && movehit

;---------------------------------------------------------------------------
[State -1, Serpent's Laceration]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 500
triggerall = random <= 499
trigger1 = (stateno = 1101)
trigger1 = animelemtime(27) >= 0
trigger1 = animelemtime(31) < 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 206
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = p2bodydist X = [0,40]
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
trigger1 = random <= 399

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/4
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]


;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = Roundstate = 2
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = moveguarded
trigger1 = stateno = [3000,3005]
trigger2 = stateno = 3050
trigger3 = stateno = 3051
trigger4 = stateno = 3052

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = Roundstate = 2
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = moveguarded
trigger1 = stateno = [3000,3005]
trigger2 = stateno = 3050
trigger3 = stateno = 3051
trigger4 = stateno = 3052

