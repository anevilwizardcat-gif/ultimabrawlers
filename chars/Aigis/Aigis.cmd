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

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |---------------------------------------------------------

;-| Special Motions |------------------------------------------------------

[Command]
name="BURST"
command=x+y+z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DFF"     ;Required (do not remove)
command = /$D,$F,/$D,$F
time = 20

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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
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

;-| Single Dir |----------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

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

[Command]
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;-----------------------------------------------------------------------------
;BURSTS
[State ];Defensive Burst
type=ChangeState
value=6001
TriggerAll = var(49) <= 3
trigger1=(command="BURST"||command="c")
trigger1=RoundState=2&&var(50)>=100&&movetype=H&&!ctrl&&alive&&(enemynear,HitDefAttr=SCA,NA||enemynear,HitDefAttr=SCA,SA||enemynear,HitDefAttr=SCA,AA||enemynear,HitDefAttr=SCA,NP||enemynear,HitDefAttr=SCA,SP||enemynear,HitDefAttr=SCA,AP)
trigger2=(command="BURST"||command="c")
trigger2=RoundState=2&&var(50)>=100&&((stateno=[120,159])&&time>=1)&&(enemynear,HitDefAttr=SCA,NA||enemynear,HitDefAttr=SCA,SA||enemynear,HitDefAttr=SCA,AA||enemynear,HitDefAttr=SCA,NP||enemynear,HitDefAttr=SCA,SP||enemynear,HitDefAttr=SCA,AP)

[State ];Normal Burst
type=ChangeState
value=6000
TriggerAll = var(49) <= 3
TriggerAll = !(NumHelper(300) || NumHelper(305) || NumHelper(400) || NumHelper(500))
trigger1=(command="BURST"||command="c")
trigger1=roundstate=2&&var(50)>=100&&ctrl&&!movecontact
trigger2=(command="BURST"||command="c")
trigger2=roundstate=2&&var(50)>=100&&ctrl&&((stateno=[60,65])&&time>=5)&&!movecontact

[State ];One More! Burst
type=ChangeState
value=6002
TriggerAll = var(49) <= 3
trigger1=(command="BURST"||command="c")
trigger1=RoundState=2&&var(50)>=100&&((stateno=[200,249])&&MoveContact)
trigger2=(command="BURST"||command="c")
trigger2=RoundState=2&&var(50)>=100&&(stateno=201&&Var(7)=1)
trigger3=(command="BURST"||command="c")
trigger3=RoundState=2&&var(50)>=100&&(stateno=402&&Var(7)=1)
trigger4=(command="BURST"||command="c")
trigger4=RoundState=2&&var(50)>=100&&(stateno=250&&Time>26&&MoveContact)
trigger5=(command="BURST"||command="c")
trigger5=RoundState=2&&var(50)>=100&&((stateno=[251,699])&&MoveContact)
trigger6=(command="BURST"||command="c")
trigger6=RoundState=2&&var(50)>=100&&(stateno=701&&AnimElemTime(3)>=0&&MoveContact)
trigger7=(command="BURST"||command="c")
trigger7=RoundState=2&&var(50)>=100&&(stateno=706&&MoveContact)
trigger8=(command="BURST"||command="c")
trigger8=RoundState=2&&var(50)>=100&&NumHelper(500)
trigger8=stateno=505&&Var(7)=1
trigger9=(command="BURST"||command="c")
trigger9=RoundState=2&&var(50)>=100&&Numhelper(300)
trigger9=helper(300),stateno=301&&helper(300),movecontact
trigger10=(command="BURST"||command="c")
trigger10=RoundState=2&&var(50)>=100&&Numhelper(400)
trigger10=helper(400),stateno=406&&helper(400),movecontact

;-----------------------------------------------------------------------------
;SPECIALS

;-----------------------------------------------------------------------------
;SKILLS

;---------------------------------------------------------------------------
;THROWS
[State -1, Ground]
type = ChangeState
value = 700
triggerall = (command = "a" && command = "b")
triggerall = statetype != A
triggerall = Roundstate = 2
trigger1 = ctrl
[State -1, Air]
type = ChangeState
value = 705
triggerall = (command = "a" && command = "b")
triggerall = Roundstate = 2
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))

;---------------------------------------------------------------------------
;DODGING
[State -1, Dodge forward]
type = ChangeState
value = 750
triggerall = Statetype != A
triggerall = command = "a" && command = "x"
triggerall = command = "holdfwd"
trigger1 = ctrl
[State -1, Dodge back]
type = ChangeState
value = 751
triggerall = Statetype != A
triggerall = command = "a" && command = "x"
triggerall = command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
;REGULAR ATTACKS
;AOA
[State -1, AOA]
type = ChangeState
value = 250
triggerall = command = "x" && command = "y"
triggerall = command != "holddown"
triggerall = EnemyNear,StateNo != 625
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
[State -1, RUSH 'EM!]
type = ChangeState
value = 251
triggerall = command = "x" || command = "y"
triggerall = p2dist x > 0
trigger1 = stateno = 250 && AnimElemTime(8) > 0 && movehit && EnemyNear,StateNo = 625
[State -1, BEAT 'EM UP!]
type = ChangeState
value = ifelse(stateno=252,253,ifelse(stateno=253,254,ifelse(stateno=254,255,ifelse(stateno=255,256,257))))
triggerall = command = "x" || command = "y"
trigger1 = (stateno = [252,255]) && AnimElemTime(18) > 0 && movecontact
[State -1, LAUNCH UP]
type = ChangeState
value = 258
triggerall = command = "a"
trigger1 = (stateno = [252,256]) && movecontact
[State -1, Jump]
type = ChangeState
value = 50
triggerall = command = "up"
trigger1 = stateno = 258 && movecontact
[State -1, LAUNCH BACK]
type = ChangeState
value = 259
triggerall = command = "b"
trigger1 = (stateno = [252,256]) && movecontact

;Sweep
[State -1, Sweep]
type = ChangeState
value = 404
triggerall = command = "x" && command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && var(7) = 1
trigger4 = stateno = 205 && movecontact
trigger5 =(StateNo = [400,401]) && MoveContact
trigger6 = stateno = 402 && var(7) = 1

;5A
[State -1, 5A]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 =(StateNo = [400,401]) && MoveContact
;5AA
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = stateno = 200 && movecontact
;5AAA
[State -1, 5AAA]
type = ChangeState
value = 203
triggerall = command = "x"
trigger1 = stateno = 201 && var(7) = 1

;5B
[State -1, 5B]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && Var(8) = 0 && var(7) = 1
trigger4 =(StateNo = [400,401]) && MoveContact
trigger5 = stateno = 402 && var(7) = 1

;2A1&2
[State -1, 2A 1&2]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = stateno = 200 && movecontact
;2A3
[State -1, 2A3]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateno = 400 && Anim = 400 && (AnimElemTime (3) >= 1)
trigger2 = stateno = 401 && Anim = 401 && (AnimElemTime (3) >= 1)
;2B
[State -1, 2B]
type = ChangeState
value = 402
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 =(stateno = [400,401]) && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && var(7) = 1
trigger5 = stateno = 205 && Var(8) = 0 && movecontact

;j.A
[State -1, j.A]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 501 && Var(8) = 0 && movecontact
;j.B
[State -1, j.B]
type = ChangeState
value = 501
triggerall = command = "y"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 501 && movecontact
trigger3 = stateno = 500 && Var(8) = 0 && movecontact
;---------------------------------------------------------------------------
;PERSONA ATTACKS
;5C
[State -1, 5C]
type = ChangeState
value = 300
TriggerAll = var(49) <= 3
TriggerAll = command = "a"
TriggerAll = command != "holddown"
TriggerAll = !(NumHelper(300) || NumHelper(305) || NumHelper(400))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = stateno = 201 && var(7) = 1
trigger4 = stateno = 205 && MoveContact
trigger5 =(StateNo = [400,401]) && MoveContact
trigger6 = stateno = 402 && var(7) = 1
;5D
[State -1, 5D]
type = ChangeState
value = 305
TriggerAll = var(49) <= 3
TriggerAll = command = "b"
TriggerAll = command != "holddown"
TriggerAll = !(NumHelper(305))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = StateNo = 300
trigger2 = numhelper(300)
trigger2 = helper(300),MoveHit
trigger3 = StateNo = 405
trigger3 = numhelper(400)
trigger3 = helper(400),MoveHit

;2C
[State -1, 2C]
type = ChangeState
value = 405
TriggerAll = var(49) <= 3
TriggerAll = command = "a"
TriggerAll = command = "holddown"
TriggerAll = !(NumHelper(300) || NumHelper(305) || NumHelper(400))
triggerAll = statetype != A
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = stateno = 201 && var(7) = 1
trigger4 = stateno = 205 && MoveContact
trigger5 =(StateNo = [400,401]) && MoveContact
trigger6 = stateno = 402 && var(7) = 1

;j.C
[State -1, j.C]
type = ChangeState
value = 505
TriggerAll = var(49) <= 3
TriggerAll = command = "a"
TriggerAll = !NumHelper(305)
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = (StateNo = [500,501]) && MoveContact
;j.D
[State -1, j.D]
type = ChangeState
value = 507
TriggerAll = var(49) <= 3
TriggerAll = command = "b"
TriggerAll = !(NumHelper(300) || NumHelper(305) || NumHelper(400))
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 505
trigger2 = numhelper(500)
trigger2 = helper(500),MoveHit

;---------------------------------------------------------------------------
;Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = Roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirDash Forward
[State -1, AirDash Forward]
type = ChangeState
value = 60
triggerall = Roundstate = 2
triggerall = time > 1
trigger1 = command = "FF"
trigger1 = stateno = 50
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirDash Back
[State -1, AirDash Back]
type = ChangeState
value = 62
triggerall = Roundstate = 2
triggerall = time > 1
trigger1 = command = "BB"
trigger1 = stateno = 50
trigger1 = ctrl

[State -1]
Type = VarSet
triggerall = Var(59) = 1
trigger1 = Win = 1
trigger2 = Lose = 1
trigger3 = DrawGame = 1
trigger4 = RoundState = 4
var(59) = -1
IgnoreHitPause = 1

[State -1]
Type = VarSet
trigger1 = Var(59) = -1
trigger1 = RoundState = 1
var(59) = 1
IgnoreHitPause = 1

[state jump cancel]
type=changestate
value=40
TriggerAll=command="holdup"
trigger1 = Stateno = 200 && MoveContact
trigger2 = StateNo = 201 && var(9) = 1
trigger3 = StateNo = 205 && MoveHit
trigger4 = StateNo = 402 && var(9) = 1
trigger5 = StateNo = 300
trigger5 = numhelper(300)
trigger5 = helper(300),MoveHit
trigger6 = StateNo = 405
trigger6 = numhelper(400)
trigger6 = helper(400),MoveHit
[state airjump cancel]
type=changestate
value=45
TriggerAll=command="holdup"
trigger1 = Stateno = 202 && MoveContact
trigger2 = (Stateno = [500,501]) && MoveContact

;---------------------------------------------------------------------------
;Tauntage
[State -1]
type = ChangeState
value = 195
TriggerAll = command = "start"
TriggerAll = StateNo!= 195
TriggerAll = StateNo = 0 && AnimElemTime(104) <= 0
trigger1 = statetype = S
trigger1 = ctrl