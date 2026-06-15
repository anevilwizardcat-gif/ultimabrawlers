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

[Command]
name = "Garudyne"
command =~D,F,D,F,a+b
time = 20

[Command]
name = "Garudyne"
command =~D,F,D,F,~a+b
time = 20

[Command]
name = "Garudyne"
command =~D,F,D,F,a
time = 20

[Command]
name = "Garudyne"
command =~D,F,D,F,~a
time = 20

[Command]
name = "Garudyne"
command =~D,F,D,F,b
time = 20

[Command]
name = "Garudyne"
command =~D,F,D,F,~b
time = 20

[Command]
name = "Sukukaja"
command =~D,B,D,B,a+b
time = 20

[Command]
name = "Sukukaja"
command =~D,B,D,B,~a+b
time = 20

[Command]
name = "Sukukaja"
command =~D,B,D,B,a
time = 20

[Command]
name = "Sukukaja"
command =~D,B,D,B,~a
time = 20

[Command]
name = "Sukukaja"
command =~D,B,D,B,b
time = 20

[Command]
name = "Sukukaja"
command =~D,B,D,B,~b
time = 20

[Command]
name = "Brave_Blade"
command =~D,D,D,a+b
time = 20

[Command]
name = "Brave_Blade"
command =~D,D,D,~a+b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name="BURST"
command=x+y+z

[Command]
name = "Dash_Spring/Moonsault_X"
command =~D,F,x+y
Time = 16

[Command]
name = "Dash_Spring/Moonsault_X"
command =~D,F,~x+y
Time = 16

[Command]
name = "Dash_Spring/Moonsault_L"
command =~D,F,x
Time = 16

[Command]
name = "Dash_Spring/Moonsault_L"
command =~D,F,~x
Time = 16

[Command]
name = "Dash_Spring/Moonsault_M"
command =~D,F,y
Time = 16

[Command]
name = "Dash_Spring/Moonsault_M"
command =~D,F,~y
Time = 16

[Command]
name = "Flying_Kunai/Tentarafoo_X"
command =~D,F,a+b
Time = 16

[Command]
name = "Flying_Kunai/Tentarafoo_X"
command =~D,F,~a+b
Time = 16
[Command]
name = "Flying_Kunai_X"
command =~D,B,a+b
Time = 16

[Command]
name = "Flying_Kunai_X"
command =~D,B,~a+b
Time = 16

[Command]
name = "Flying_Kunai/Tentarafoo_L"
command =~D,F,a
Time = 16

[Command]
name = "Flying_Kunai/Tentarafoo_L"
command =~D,F,~a
Time = 16

[Command]
name = "Flying_Kunai_L"
command =~D,B,a
Time = 16

[Command]
name = "Flying_Kunai_L"
command =~D,B,~a
Time = 16

[Command]
name = "Flying_Kunai/Tentarafoo_M"
command =~D,F,b
Time = 16

[Command]
name = "Flying_Kunai/Tentarafoo_M"
command =~D,F,~b
Time = 16

[Command]
name = "Flying_Kunai_M"
command =~D,B,b
Time = 16

[Command]
name = "Flying_Kunai_M"
command =~D,B,~b
Time = 16

[Command]
name = "Moonsault_X"
command =~D,B,x+y
Time = 16

[Command]
name = "Moonsault_X"
command =~D,B,~x+y
Time = 16

[Command]
name = "Moonsault_L"
command =~D,B,x
Time = 16

[Command]
name = "Moonsault_L"
command =~D,B,~x
Time = 16

[Command]
name = "Moonsault_M"
command =~D,B,y
Time = 16

[Command]
name = "Moonsault_M"
command =~D,B,~y
Time = 16

[Command]
name = "Dodge"
command =b+y
Time = 16

[Command]
name = "Dodge"
command =~b+y
Time = 16

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
TriggerAll = var(49) <= 2
trigger1=(command="BURST"||command="c")
trigger1=RoundState=2&&var(50)>=100&&movetype=H&&!ctrl&&alive&&(enemynear,HitDefAttr=SCA,NA||enemynear,HitDefAttr=SCA,SA||enemynear,HitDefAttr=SCA,NP||enemynear,HitDefAttr=SCA,SP)
trigger2=(command="BURST"||command="c")
trigger2=RoundState=2&&var(50)>=100&&((stateno=[120,159])&&time>=1)&&(enemynear,HitDefAttr=SCA,NA||enemynear,HitDefAttr=SCA,SA||enemynear,HitDefAttr=SCA,NP||enemynear,HitDefAttr=SCA,SP)

[State ];Normal Burst
type=ChangeState
value=6000
TriggerAll = var(49) <= 2
TriggerAll = !(NumHelper(300) || NumHelper(305) || NumHelper(402) || NumHelper(503) || NumHelper(505) || NumHelper(1005)|| NumHelper(1006)|| NumHelper(1007)|| NumHelper(1008))
trigger1=(command="BURST"||command="c")
trigger1=roundstate=2&&var(50)>=100&&ctrl&&!movecontact
trigger2=(command="BURST"||command="c")
trigger2=roundstate=2&&var(50)>=100&&ctrl&&((stateno=[60,65])&&time>=5)&&!movecontact

[State ];One More! Burst
type=ChangeState
value=6002
TriggerAll = var(49) <= 2
trigger1=(command="BURST"||command="c")
trigger1=RoundState=2&&var(50)>=100&&((stateno=[200,249])&&MoveContact)
trigger2=(command="BURST"||command="c")
trigger2=RoundState=2&&var(50)>=100&&(stateno=250&&Time>25&&MoveContact)
trigger3=(command="BURST"||command="c")
trigger3=RoundState=2&&var(50)>=100&&((stateno=[251,699])&&MoveContact)
trigger4=(command="BURST"||command="c")
trigger4=RoundState=2&&var(50)>=100&&(stateno=701&&MoveContact)
trigger5=(command="BURST"||command="c")
trigger5=RoundState=2&&var(50)>=100&&(stateno=706&&MoveContact)
trigger6=(command="BURST"||command="c")
trigger6=RoundState=2&&var(50)>=100&&((stateno=[1000,1005])&&MoveContact)
trigger7=(command="BURST"||command="c")
trigger7=RoundState=2&&var(50)>=100&&((stateno=[1015,1020])&&MoveContact)
trigger8=(command="BURST"||command="c")
trigger8=RoundState=2&&var(50)>=100&&(NumHelper(300) || NumHelper(402) || NumHelper(503) || NumHelper(1005) || NumHelper(1006) || NumHelper(1007) || NumHelper(1008) || NumHelper(1030))
trigger8=Helper(300),movecontact||Helper(402),movecontact||Helper(503),MoveContact||Helper(1005),movecontact||Helper(1006),movecontact||Helper(1007),MoveContact||Helper(1008),MoveContact||Helper(1030),MoveContact

;-----------------------------------------------------------------------------
;SPECIALS

;-----------------------------------------------------------------------------
;EX SKILLS
[State -1, Dash Spring EX]
type = ChangeState
value = 1004
TriggerAll = command = "Dash_Spring/Moonsault_X"
TriggerAll = Statetype != A
TriggerAll = power >= 500
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = (StateNo = [400,405]) && MoveContact
trigger5 = StateNo = 300 || StateNo = 402
trigger5 = numhelper(300)
trigger5 = helper(300),movecontact
trigger6 = StateNo = 300 || StateNo = 402
trigger6 = numhelper(402)
trigger6 = helper(402),movecontact

[State -1, Flying Kunai EX]
type = ChangeState
value = 1011
TriggerAll = command = "Flying_Kunai_X" || command = "Flying_Kunai/Tentarafoo_X"
TriggerAll = power >= 500
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = (StateNo = [1015,1020]) && MoveContact
trigger5 = (StateNo = [1015,1016]) && Anim = 1020 && Time > 24
trigger6 = (StateNo = [1017,1018]) && Anim = 1020 && Time > 27
trigger7 = StateNo = 1025 && Time < 22
trigger8 = StateNo = 1027 && Time < 42
trigger9 = StateNo = 1028 && Time < 32
trigger10 = StateNo = 503
trigger10 = numhelper(503)
trigger10 = helper(503),movecontact

[State -1, Moonsault EX (Forward)]
type = ChangeState
value = 1019
TriggerAll = command = "Dash_Spring/Moonsault_X"
TriggerAll = power >= 500
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact && Var(3) < 3
trigger6 = StateNo = 1025 && Time < 22
trigger7 = StateNo = 1027 && Time < 42
trigger8 = StateNo = 1028 && Time < 32
trigger9 = StateNo = 503
trigger9 = numhelper(503)
trigger9 = helper(503),movecontact
[State -1, Moonsault EX (Back)]
type = ChangeState
value = 1020
TriggerAll = command = "Moonsault_X"
TriggerAll = power >= 500
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact && Var(3) < 3
trigger6 = StateNo = 1025 && Time < 22
trigger7 = StateNo = 1027 && Time < 42
trigger8 = StateNo = 1028 && Time < 32
trigger9 = StateNo = 503
trigger9 = numhelper(503)
trigger9 = helper(503),movecontact

[State -1, Mirage Slash EX]
type = ChangeState
value = 1028
TriggerAll = var(49) <= 2
TriggerAll = command = "a" && command = "b"
TriggerAll = command = "holddown"
TriggerAll = power >= 500
TriggerAll = !NumHelper(505)
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact
trigger6 = StateNo = 503
trigger6 = numhelper(503)
trigger6 = helper(503),movecontact

;-----------------------------------------------------------------------------
;SKILLS
[State -1, Dash Spring Light]
type = ChangeState
value = 1000
TriggerAll = command = "Dash_Spring/Moonsault_L"
TriggerAll = Statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = (StateNo = [400,405]) && MoveContact
trigger5 = StateNo = 300 || StateNo = 402
trigger5 = numhelper(300)
trigger5 = helper(300),movecontact
trigger6 = StateNo = 300 || StateNo = 402
trigger6 = numhelper(402)
trigger6 = helper(402),movecontact
[State -1, Dash Spring Medium]
type = ChangeState
value = 1003
TriggerAll = command = "Dash_Spring/Moonsault_M"
TriggerAll = Statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = (StateNo = [400,405]) && MoveContact
trigger5 = StateNo = 300 || StateNo = 402
trigger5 = numhelper(300)
trigger5 = helper(300),movecontact
trigger6 = StateNo = 300 || StateNo = 402
trigger6 = numhelper(402)
trigger6 = helper(402),movecontact

[State -1, Flying Kunai Light]
type = ChangeState
value = 1006
TriggerAll = command = "Flying_Kunai_L" || command = "Flying_Kunai/Tentarafoo_L"
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = (StateNo = [1015,1020]) && MoveContact
trigger5 = (StateNo = [1015,1016]) && Anim = 1020 && Time > 24
trigger6 = (StateNo = [1017,1018]) && Anim = 1020 && Time > 27
trigger7 = StateNo = 1025 && Time < 22
trigger8 = StateNo = 1027 && Time < 42
trigger9 = StateNo = 1028 && Time < 32
trigger10 = StateNo = 503
trigger10 = numhelper(503)
trigger10 = helper(503),movecontact
[State -1, Flying Kunai Medium]
type = ChangeState
value = 1010
TriggerAll = command = "Flying_Kunai_M" || command = "Flying_Kunai/Tentarafoo_M"
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = (StateNo = [1015,1020]) && MoveContact
trigger5 = (StateNo = [1015,1016]) && Anim = 1020 && Time > 24
trigger6 = (StateNo = [1017,1018]) && Anim = 1020 && Time > 27
trigger7 = StateNo = 1025 && Time < 22
trigger8 = StateNo = 1027 && Time < 42
trigger9 = StateNo = 1028 && Time < 32
trigger10 = StateNo = 503
trigger10 = numhelper(503)
trigger10 = helper(503),movecontact

[State -1, Moonsault Light (Forward)]
type = ChangeState
value = 1015
TriggerAll = command = "Dash_Spring/Moonsault_L"
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact && Var(3) < 3
trigger6 = StateNo = 1025 && Time < 22
trigger7 = StateNo = 1027 && Time < 42
trigger8 = StateNo = 1028 && Time < 32
trigger9 = StateNo = 503
trigger9 = numhelper(503)
trigger9 = helper(503),movecontact
[State -1, Moonsault Light (Back)]
type = ChangeState
value = 1016
TriggerAll = command = "Moonsault_L"
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact && Var(3) < 3
trigger6 = StateNo = 1025 && Time < 22
trigger7 = StateNo = 1027 && Time < 42
trigger8 = StateNo = 1028 && Time < 32
trigger9 = StateNo = 503
trigger9 = numhelper(503)
trigger9 = helper(503),movecontact
[State -1, Moonsault Medium (Forward)]
type = ChangeState
value = 1017
TriggerAll = command = "Dash_Spring/Moonsault_M"
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact && Var(3) < 3
trigger6 = StateNo = 1025 && Time < 22
trigger7 = StateNo = 1027 && Time < 42
trigger8 = StateNo = 1028 && Time < 32
trigger9 = StateNo = 503
trigger9 = numhelper(503)
trigger9 = helper(503),movecontact
[State -1, Moonsault Medium (Back)]
type = ChangeState
value = 1018
TriggerAll = command = "Moonsault_M"
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact && Var(3) < 3
trigger6 = StateNo = 1025 && Time < 22
trigger7 = StateNo = 1027 && Time < 42
trigger8 = StateNo = 1028 && Time < 32
trigger9 = StateNo = 503
trigger9 = numhelper(503)
trigger9 = helper(503),movecontact

[State -1, Mirage Slash Light]
type = ChangeState
value = 1025
TriggerAll = var(49) <= 2
TriggerAll = command = "a"
TriggerAll = command = "holddown"
TriggerAll = !NumHelper(505)
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact
trigger6 = StateNo = 503
trigger6 = numhelper(503)
trigger6 = helper(503),movecontact
[State -1, Mirage Slash Medium]
type = ChangeState
value = 1027
TriggerAll = var(49) <= 2
TriggerAll = command = "b"
TriggerAll = command = "holddown"
TriggerAll = !NumHelper(505)
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = StateNo = 202 && MoveContact
trigger3 = (StateNo = [500,502]) && MoveContact
trigger4 = StateNo = 1002 && AnimElemTime(8) > 0
trigger5 = (StateNo = [1015,1020]) && MoveContact
trigger6 = StateNo = 503
trigger6 = numhelper(503)
trigger6 = helper(503),movecontact

[State -1, Tentarafoo Light]
type = ChangeState
value = 1030
TriggerAll = var(49) <= 2
TriggerAll = command = "Flying_Kunai/Tentarafoo_L"
TriggerAll = !NumHelper(505)
TriggerAll = Statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = (StateNo = [400,405]) && MoveContact
trigger5 = StateNo = 300 || StateNo = 402
trigger5 = numhelper(300)
trigger5 = helper(300),movecontact
trigger6 = StateNo = 300 || StateNo = 402
trigger6 = numhelper(402)
trigger6 = helper(402),movecontact
[State -1, Tentarafoo Medium]
type = ChangeState
value = 1034
TriggerAll = var(49) <= 2
TriggerAll = command = "Flying_Kunai/Tentarafoo_M"
TriggerAll = !NumHelper(505)
TriggerAll = Statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = (StateNo = [400,405]) && MoveContact
trigger5 = StateNo = 300 || StateNo = 402
trigger5 = numhelper(300)
trigger5 = helper(300),movecontact
trigger6 = StateNo = 300 || StateNo = 402
trigger6 = numhelper(402)
trigger6 = helper(402),movecontact

;-----------------------------------------------------------------------------
;FURIOUS ACTION
[State -1, Dodge]
type = ChangeState
value = 1040
triggerall = Statetype != A
triggerall = command = "Dodge"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])

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
TriggerAll = Statetype != A
TriggerAll = command = "a" && command = "x"
TriggerAll = command = "holdfwd"
trigger1 = ctrl
[State -1, Dodge back]
type = ChangeState
value = 751
TriggerAll = Statetype != A
TriggerAll = command = "a" && command = "x"
TriggerAll = command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
;REGULAR ATTACKS
;AOA
[State -1, AOA]
type = ChangeState
value = 250
TriggerAll = command = "x" && command = "y"
TriggerAll = command != "holddown"
TriggerAll = EnemyNear,StateNo != 625
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
[State -1, RUSH 'EM!]
type = ChangeState
value = 251
TriggerAll = command = "x" || command = "y"
TriggerAll = target,p2dist x > 0
trigger1 = stateno = 250 && AnimElemTime(9) > 0 && movehit && EnemyNear,StateNo = 625
[State -1, BEAT 'EM UP!]
type = ChangeState
value = ifelse(stateno=252,253,ifelse(stateno=253,254,ifelse(stateno=254,255,ifelse(stateno=255,256,257))))
TriggerAll = command = "x" || command = "y"
trigger1 = (stateno = [252,255]) && AnimElemTime(16) > 0 && movecontact
[State -1, LAUNCH UP]
type = ChangeState
value = 258
TriggerAll = command = "a"
trigger1 = (stateno = [252,256]) && movecontact
[State -1, Jump]
type = ChangeState
value = 50
TriggerAll = command = "up"
trigger1 = stateno = 258 && movecontact
[State -1, LAUNCH BACK]
type = ChangeState
value = 259
TriggerAll = command = "b"
trigger1 = (stateno = [252,256]) && movecontact

;Sweep
[State -1, Sweep]
type = ChangeState
value = 405
TriggerAll = command = "x" && command = "y"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (Stateno = [200,201]) && movecontact
trigger3 = Stateno = 205 && movecontact
trigger4 = (Stateno = [400,401]) && movecontact

;5A
[State -1, 5A]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
;5AA
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = stateno = 200 && movecontact
;5AAA
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = command = "x"
trigger1 = stateno = 201 && movecontact
;Flying Kunai
[State -1, Flying Kunai]
type = ChangeState
value = 1010
triggerall = command = "x"
trigger1 = stateno = 202 && MoveContact

;5B
[State -1, 5B]
type = ChangeState
value = 205
TriggerAll = command = "y"
TriggerAll = command != "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (Stateno = [200,201]) && movecontact
trigger3 = (Stateno = [400,401]) && movecontact

;2A
[State -1, 2A]
type = ChangeState
value = 400
TriggerAll = command = "x"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = stateno = 400 && movecontact
;2B
[State -1, 2B]
type = ChangeState
value = 401
TriggerAll = command = "y"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (Stateno = [200,201]) && movecontact
trigger3 = Stateno = 400

;j.A
[State -1, j.A]
type = ChangeState
value = 500
TriggerAll = command = "x"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 501 && movecontact
;j.B
[State -1, j.B]
type = ChangeState
value = 501
TriggerAll = command = "y"
TriggerAll = command!= "holddown"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 501 && movecontact
;j.2B
[State -1, j.2B]
type = ChangeState
value = 502
TriggerAll = command = "y"
TriggerAll = command = "holddown"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 501 && movecontact

;---------------------------------------------------------------------------
;PERSONA ATTACKS
;5C
[State -1, 5C]
type = ChangeState
value = 300
TriggerAll = var(49) <= 2
triggerall = command = "a"
triggerall = command != "holddown"
TriggerAll = !(NumHelper(305) || NumHelper(505))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = stateno = 205 && movecontact
trigger4 = (StateNo = [400,401]) && MoveContact
trigger5 = stateno = 405 && movecontact
;5D
[State -1, 5D]
type = ChangeState
value = 305
TriggerAll = var(49) <= 2
triggerall = command = "b"
triggerall = command != "holddown"
TriggerAll = !(NumHelper(305) || NumHelper(505))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))

;2C
[State -1, 2C]
type = ChangeState
value = 402
TriggerAll = var(49) <= 2
TriggerAll = command = "a" || command = "b"
TriggerAll = command = "holddown"
TriggerAll = !(NumHelper(305) || NumHelper(505))
triggerAll = statetype != A
trigger1 = (ctrl || (Anim = [99,101]))
trigger2 = (StateNo = [200,201]) && MoveContact
trigger3 = stateno = 205 && movecontact
trigger4 = (StateNo = [400,405]) && MoveContact
trigger5 = Var(3) = 0
trigger5 = StateNo = 300
trigger5 = numhelper(300) || numhelper(402)
trigger5 = helper(300),movecontact||helper(402),movecontact

;j.C
[State -1, j.C]
type = ChangeState
value = 503
TriggerAll = var(49) <= 2
TriggerAll = command = "a"
TriggerAll = command != "holddown"
TriggerAll = !(NumHelper(305) || NumHelper(505))
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = (StateNo = [500,502]) && MoveContact
;j.D
[State -1, j.D]
type = ChangeState
value = 505
TriggerAll = var(49) <= 2
TriggerAll = command = "b"
TriggerAll = command != "holddown"
TriggerAll = !(NumHelper(301) || NumHelper(305) || NumHelper(402) || NumHelper(505))
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))

;---------------------------------------------------------------------------
;Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
TriggerAll = Roundstate = 2
TriggerAll = command = "FF"
TriggerAll = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = StateNo = 300 || StateNo = 406
trigger4 = numhelper(301)
trigger4 = helper(301),movecontact

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
TriggerAll = Roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirDash Forward
[State -1, AirDash Forward]
type = ChangeState
value = 60
TriggerAll = Roundstate = 2
TriggerAll = time > 1
trigger1 = command = "FF"
trigger1 = stateno = 50
trigger1 = ctrl
trigger2 = command = "FF"
trigger2 = stateno = 1011
trigger2 = ctrl

;---------------------------------------------------------------------------
;AirDash Back
[State -1, AirDash Back]
type = ChangeState
value = 62
TriggerAll = Roundstate = 2
TriggerAll = time > 1
trigger1 = command = "BB"
trigger1 = stateno = 50
trigger1 = ctrl
trigger2 = command = "BB"
trigger2 = stateno = 1011
trigger2 = ctrl

[State -1]
Type = VarSet
TriggerAll = Var(59) = 1
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
trigger1 = (Stateno = [200,201]) && MoveContact
trigger2 = Stateno = 205 && MoveHit
trigger3 = Stateno = 401 && MoveContact
trigger4 = StateNo = 300
trigger4 = numhelper(300)
trigger4 = helper(300),MoveContact
trigger5 = StateNo = 402
trigger5 = numhelper(402)
trigger5 = helper(402),MoveContact
[state airjump cancel]
type=changestate
value=45
TriggerAll=command="holdup"
trigger1 = (Stateno = [500,502]) && MoveContact
trigger2 = stateno = 1011 && ctrl

;---------------------------------------------------------------------------
;Tauntage
[State -1]
type = ChangeState
value = 1950
TriggerAll = command = "start"
TriggerAll = StateNo!= 1950
TriggerAll = StateNo = 0 && AnimElemTime(82) <= 0
trigger1 = statetype = S
trigger1 = ctrl
