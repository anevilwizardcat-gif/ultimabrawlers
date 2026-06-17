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
command.time = 15
command.buffer.time = 1
;
    [Command]
    name = "CPU1"
    command = U, D, F, U, D, F 
    time = 0
     
    [Command]
    name = "CPU2"
    command = U, B, F, U, D, F
    time = 0
     
    [Command]
    name = "CPU3"
    command = U, D, D, U, D, F
    time = 0
     
    [Command]
    name = "CPU4"
    command = U, F, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU5"
    command = B, B, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU6"
    command = U, D, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU7"
    command = F, F, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU8"
    command = U, D, U, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU9"
    command = F, B, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU10"
    command = F, F, B, B, U, B, U, D, F
    time = 0

;--------------------------------------------------------------------------
[Command]
name = "demonio"
command = ~$D, F, D, F,  b+y
time = 30
buffer.time = 15

[Command]
name = "demonio"
command = ~$D, F, D, F, z
time = 30
buffer.time = 15

[Command]
name = "QcfHcbLP"
command = ~$D, DF, F, $D, DB, B, x+y
time = 30
buffer.time = 15

[Command]
name = "QcfHcbLP"
command = ~$D, F, $D, B,  x+y
time = 30
buffer.time = 15

[Command]
name = "QcfHcbLP"
command = ~$D, DF, F, $D, DB, B, c
time = 30
buffer.time = 15

[Command]
name = "QcfHcbLP"
command = ~$D, F, $D, B,  c
time = 30
buffer.time = 15

;--------------------------------------------------------------------------
[Command]
name = "drive2"
command = ~$D, F, D, F, x+y
time = 30
buffer.time = 15

[Command]
name = "drive2"
command = ~$D, DF, F, D, DF, F, x+y
time = 30
buffer.time = 15
time = 30

[Command]
name = "especilarmaforte"
command = ~$D, B, D, B, x+y
time = 30
buffer.time = 15

[Command]
name = "especilarmaforte"
command = ~$D, DB, B, D, DB, B, x+y
time = 30
buffer.time = 15
time = 30

[Command]
name = "drive"
command = ~$D, F, D, F, x
time = 30
buffer.time = 15

[Command]
name = "2QcbLP"
command = ~$D, DF, F, D, DF, F, x
time = 30
buffer.time = 15

[Command]
name = "drive"
command = ~$D, F, D, F, y
time = 30
buffer.time = 15

[Command]
name = "2QcfSP"
command = ~$D, DF, F, B, D, DF, F, y
time = 30
buffer.time = 15

[Command]
name = "2QcbLP"
command = ~D,DF,F,D,DF,F,x
time = 30

[Command]
name = "2QcbSP"
command = ~D,DF,F,B,D,DF,F,y
time = 30

;------------------------------estilos
 [Command]
name = "estilos"
command = ~$D, F, D, F, a
time = 30
buffer.time = 15

[Command]
name = "estilos"
command = ~$D, F, D, F, b
time = 30
buffer.time = 15

;------------------------------------------------------------------------------
[Command]
name = "especilarmafraco"
command = ~$D, B, D, B, x
time = 30
buffer.time = 15

[Command]
name = "especilarmafraco"
command = ~$D, B, D, B, y
time = 30
buffer.time = 15

[Command]
name = "especilarmafracocombo"
command = ~$D, B, D, B, D, B, y
time = 45
buffer.time = 15

[Command]
name = "especilarmafracocombo"
command = ~$D, B, D, B, D, B, x
time = 45
buffer.time = 15

[Command]
name = "guitarra"
command = ~$D, B, D, F, x+y
time = 30
buffer.time = 15

[Command]
name = "gelo"
command = ~$D, B, D, F, x
time = 30
buffer.time = 15

[Command]
name = "gelo"
command = ~$D, B, D, F, y
time = 30
buffer.time = 15

[Command]
name = "DBDB_K"
command = ~$D, DB, B, D, DB, B, x
time = 30
buffer.time = 15

[Command]
name = "DBDB_K"
command = ~$D, B, D, B, y
time = 30
buffer.time = 15

[Command]
name = "DBDB_K"
command = ~$D, DB, B, D, DB, B, y
time = 30
buffer.time = 15
time = 30

[Command]
name = "DBDB_KK"
command = ~$D, B, D, B, a+b
time = 30
buffer.time = 15

[Command]
name = "DBDB_KK"
command = ~$D, DB, B, D, DB, B, a+b
time = 30
buffer.time = 15
time = 30

;--------------------------------------------------------------------------
[Command];uppercut
name = "DPLP"
command = ~F, D, DF, x
time = 20

[Command]
name = "DPSP"
command = ~F, D, DF, y
time = 20

[Command]
name = "dash_espadaｭ_x"
command = ~30$B, F, x
time = 30

[Command]
name = "dash_espadaｭ_y"
command = ~30$B, F, y
time = 30

[Command]
name = "DPLK"
command = ~$F, D, DF, a
time = 15
buffer.time = 8

[Command]
name = "DPLK"
command = ~F,D,DF, a
time = 20

[Command]
name = "DPSK"
command = ~$F, D, DF, b
time = 15
buffer.time = 8

[Command]
name = "DPSK"
command = ~F,D,DF, b
time = 20

;-------------------------------------------------------
[Command]
name = "QcbLK"
command = ~D,DB,B, a
time = 15

[Command]
name = "QcbSK"
command = D,DB,B, b
time = 15

[Command]
name = "QcbLK"
command = ~$D, DB, B, a
time = 15
buffer.time = 7

[Command]
name = "QcbLK"
command = ~$D, B, a
time = 15
buffer.time = 7

[Command]
name =  "QcbSK"
command = ~$D, DB, B, b
time = 15
buffer.time = 7

[Command]
name =  "QcbSK"
command = ~$D, B, b
time = 15
buffer.time = 7

;-------------------DF+Kick
[Command]
name = "DF_a"
command = ~$D, F, a
time = 15
buffer.time = 7

[Command]
name = "DF_a"
command = ~$D, DF, F, a
time = 14
buffer.time = 7

[Command]
name = "DF_b"
command = ~$D, F, b
time = 15
buffer.time = 7

[Command]
name = "DF_b"
command = ~$D, DF, F, b
time = 14
buffer.time = 7

;-------------------------------------
[Command]
name = "QcbLP"
command = ~D,DB,B, x
time = 15

[Command]
name = "QcbSP"
command = ~D,DB,B, y
time = 15

[Command]
name = "QcbLP"
command = ~$D, DB, B, x
time = 15
buffer.time = 7

[Command]
name = "QcbLP"
command = ~$D, B, x
time = 15
buffer.time = 7

[Command]
name = "QcbSP"
command = ~$D, DB, B, y
time = 15
buffer.time = 7

[Command]
name = "QcbSP"
command = ~$D, B, y
time = 15
buffer.time = 7

;------------------------------
[Command]
name = "QcfLP"
command = ~$D, F, x
time = 15
buffer.time = 7

[Command]
name = "QcfLP"
command = ~$D, DF, F, x
time = 15
buffer.time = 7

[Command]
name = "QcfSP"
command = ~$D, F, y
time = 15
buffer.time = 7

[Command]
name = "QcfSP"
command = ~$D, DF, F, y
time = 14
buffer.time = 7
;-------------------------------------------

[Command]
name = "xy"
command = x+y

[Command]
name = "ab"
command = a+b

[Command]
name 	= "DU2"
command = D, U
time 	= 9

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU1"
command = DB, UF
time = 10

[Command]
name = "DU2"
command = DF, UB
time = 10

[Command]
name = "DU3"
command = DF, UF
time = 10

[Command]
name = "DU4"
command = DB, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command];
name = "recovery"
command = z
time = 1

[Command]
name = "rolamento"
command = x+a;/F, x+a
time = 1

[Command]
name = "rolamento"
command = z
time = 1

[Command]
name = "rolamentoTras"
command = /B, x+a
time = 1

[Command]
name = "rolamento2"
command = x+a
time = 20
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "dfwd_x"
command = /$DF,x
time = 1

[Command]
name = "dfwd_b"
command = /$DF,b
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "up"
command = UB
time = 1

[Command]
name = "up"
command = UF
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "up"
command = U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

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

[Command]
name 	= "DU"
command = $D, $U
time 	= 18

[Command]
name = "longjump"
command = D, $U
time = 18

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

[State -1, Activate AI]
type = Varset
    triggerall = var(59) != 1
    trigger1 = command = "CPU1"
    trigger2 = command = "CPU2"
    trigger3 = command = "CPU3"
    trigger4 = command = "CPU4"
    trigger5 = command = "CPU5"
    trigger6 = command = "CPU6"
    trigger7 = command = "CPU7"
    trigger8 = command = "CPU8"
    trigger9 = command = "CPU9"
    trigger10 = command = "CPU10"
v = 59
value = 1


;===========================
;No juggle Check
;===========================
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(56) >= 1
flag =nojugglecheck
ignorehitpause = 1

;===========================================================================
;[State -1, Maxmode]
;type = null;ChangeState
;value = 900
;triggerall = command = "a" && command = "y" || command = "c"
;triggerall = statetype != A
;;triggerall = var(56) >= 1
;triggerall = power >= 1000
;triggerall = numhelper(6010) = 0
;trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------  
;クイックMAX
;[State -1, Maxmode 2]
;type = null;ChangeState
;value = 901
;triggerall = command = "a" && command = "y" || command = "c"
;triggerall = statetype != A
;;triggerall = var(56) >= 1
;triggerall = power >= 0
;triggerall = numhelper(6010) = 0
;;trigger1 = stateno = [499]
;trigger1 = movecontact

;---------------------------------------------------------------------------
;-------------------------------------hypers
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;--------------------------------nivel 3
;------------------------------------------------------------------
;d
[State -1, BBX]
type = ChangeState
value = 3900
triggerall = var(50) = 0
triggerall = power >= 3000  ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
triggerall = command = "demonio"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390]
 
[State Supercancels]
type = ChangeState
value = 3900
triggerall = command = "demonio"
triggerall = power >= 3000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]
trigger2 = movecontact && stateno = [3000,3699]

[State -1, berseker AI]
type = ChangeState
value = 3900
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 3000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
trigger1 = Random < (20 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0

[State -1,  AI]
type = ChangeState
value = 3900
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 3000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0

;--------------------------------nivel 2
;------------------------------------------------------------------
;drive2
[State -1, BBX]
type = ChangeState
value = 3500
triggerall = var(50) = 0
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = command = "drive2"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390]
;trigger5 = StateNo = 3000 && movecontact 
 
[State Supercancels]
type = ChangeState
value = 3500
triggerall = command = "drive2"
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]
trigger2 = Stateno = [3000,3299]
trigger2 = movecontact

;------------------------------------------------------------
;varias espadadas arma esquisita
[State -1, espadadas]
type = ChangeState
value = 3600
triggerall = var(50) = 0
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = command = "especilarmaforte" 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
 
[State Supercancels]
type = ChangeState
value = 3600
triggerall = command = "especilarmaforte"
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]
trigger2 = movecontact && stateno = [3000,3299]

[State -1,  AI]
type = ChangeState
value = 3600
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0

;----------------------
;guitarra
[State -1, guitarra]
type = ChangeState
value = 3300
triggerall = var(50) = 0
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = command = "guitarra" 
triggerall = statetype != A
triggerall = stateno !=3300 ;
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
 
[State Supercancels]
type = ChangeState
value = 3300
triggerall = command = "guitarra"
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000) 
triggerall = statetype != A 
triggerall = stateno !=3300 ;
trigger1 = movecontact && stateno = [1000,1999]
trigger2 = movecontact && stateno = [3000,3199]
trigger3 = stateno = 3200
trigger3 = movecontact

[State -1,  AI]
type = ChangeState
value = 3300
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = stateno !=3300 ;
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0

[State -1, berseker AI]
type = ChangeState
value = 3300
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 2000 ;ifelse(var(58) >= 1,power >= 2000,power >= 3000)
triggerall = stateno !=3300 ;
trigger1 = var(56) >= 1
trigger1 = numhelper(6010)= 1 && movecontact && stateno = [1020,1999] 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

;--------------------------------nivel 1
;------------------------------------------------------------------
;varias espadadas
[State -1, espadadas]
type = ChangeState
value = 3100
triggerall = var(50) = 0
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
triggerall = command = "especilarmafraco" || command = "especilarmafraco"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
 
[State Supercancels]
type = ChangeState
value = 3100
triggerall = command = "especilarmafraco" || command = "especilarmafraco"
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]
trigger1 = stateno != [1100,1199]

[State Supercancels]
type = ChangeState
value = 3100
triggerall = command = "especilarmafracocombo" || command = "especilarmafracocombo"
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1100,1199]

[State -1,  AI]
type = ChangeState
value = 3100
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (20 * (AILevel ** 2 / 64.0))

[State -1, berseker AI]
type = ChangeState
value = 3100
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
trigger1 = var(56) >= 1
trigger1 = numhelper(6010)= 1 && movecontact && stateno = [1020,1999] 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

;corte drive
[State -1, drive]
type = ChangeState
value = 3000
triggerall = var(50) = 0
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
triggerall = command = "drive" || command = "drive"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
 
[State Supercancels]
type = ChangeState
value = 3000
triggerall = command = "drive" || command = "drive"
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]

[State -1,  AI]
type = ChangeState
value = 3000
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (20 * (AILevel ** 2 / 64.0))

[State -1, berseker AI]
type = ChangeState
value = 3000
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
trigger1 = var(56) >= 1
trigger1 = numhelper(6010)= 1 && movecontact && stateno = [1020,1999] 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

;gelo
[State -1, drive]
type = ChangeState
value = 3200
triggerall = var(50) = 0
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
triggerall = command = "gelo"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
 
[State Supercancels]
type = ChangeState
value = 3200
triggerall = command = "gelo"
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]

[State -1,  AI]
type = ChangeState
value = 3200
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (20 * (AILevel ** 2 / 64.0))

[State -1, berseker AI]
type = ChangeState
value = 3200
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != A 
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
trigger1 = var(56) >= 1
trigger1 = numhelper(6010)= 1 && movecontact && stateno = [1020,1999] 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

;estilos
[State -1, estilos]
type = ChangeState
value = 2000
triggerall = var(50) = 0
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 0,power >= 1000) 
triggerall = command = "estilos"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
 
[State Supercancels]
type = ChangeState
value = 2000
triggerall = command = "estilos"
triggerall = power >= 1000 ;ifelse(var(58) >= 1,power >= 1000,power >= 2000) 
triggerall = statetype != A 
trigger1 = movecontact && stateno = [1000,1999]


;------------------------------------------------------------------------------------------------------
;------------------------------------------golpes especiais-------------------------------------------
;------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------- 

;-------------------------------------------------------
;estilos no alto

;-------------------------------------------------------
;sequencia de espadadas no alto
[State -1, dash no alto]
type = ChangeState
value = 1760
triggerall = var(50) = 0
triggerall = var(45) = 1
triggerall = command = "DF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, dash no alto]
type = ChangeState
value = 1770
triggerall = var(50) = 0
triggerall = var(45) = 1
triggerall = command = "DF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;sequencia de tiros no alto
[State -1, tiros no alto]
type = ChangeState
value = 1700
triggerall = var(50) = 0
triggerall = var(45) = 4
triggerall = command = "DF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, tiros no alto]
type = ChangeState
value = 1710
triggerall = var(50) = 0
triggerall = var(45) = 4
triggerall = command = "DF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,460] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;dash no alto
[State -1, dash no alto]
type = ChangeState
value = 1720
triggerall = var(50) = 0
triggerall = var(45) = 2
triggerall = command = "DF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, dash no alto]
type = ChangeState
value = 1730
triggerall = var(50) = 0
triggerall = var(45) = 2
triggerall = command = "DF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;contra  golpe
[State -1, parry]
type = ChangeState
value = 1740
triggerall = var(50) = 0
triggerall = var(45) = 3
triggerall = command = "DF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, parry]
type = ChangeState
value = 1750
triggerall = var(50) = 0
triggerall = var(45) = 3
triggerall = command = "DF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1700,1799]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;------------------------------------------------------- 
;Espadada pra cima fraco
[State -1, TCLP]
type = ChangeState
value = 1200
triggerall = var(50) = 0
triggerall = command = "DPLP"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1200,1299]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1200
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (20 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (10 * (AILevel ** 2 / 64.0))
trigger3 = var(56) >= 1 &&  stateno != [1200,1299]
trigger3 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = p2bodydist x = [20,60]
trigger4 = p2statetype = A
trigger4 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = ctrl 

[State -1, TCSP]
type = ChangeState
value = 1210
triggerall = var(50) = 0
triggerall = command = "DPSP"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1200,1299]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1210
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (20 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (10 * (AILevel ** 2 / 64.0))
trigger3 = var(56) >= 1 &&  stateno != [1200,1299]
trigger3 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = p2bodydist x = [0,60]
trigger4 = p2statetype = A
trigger4 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = ctrl

;-------------------------------------------------------------------------------------------------estilos no ch縊
;Espadada giratia
[State -1, espada giratoria forte]
type = ChangeState
value = 1300
triggerall = var(50) = 0
triggerall = var(45) = 1
triggerall = command = "DF_b" 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, espada giratoria fraco]
type = ChangeState
value = 1310
triggerall = var(50) = 0
triggerall = var(45) = 1
triggerall = command = "DF_a" 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;dash no ch縊
[State -1, dash no ch縊]
type = ChangeState
value = 1320
triggerall = var(50) = 0
triggerall = var(45) = 2
triggerall = command = "DF_a"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, dash no ch縊]
type = ChangeState
value = 1330
triggerall = var(50) = 0
triggerall = var(45) = 2
triggerall = command = "DF_b"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;contra golpe
[State -1, conntra golpe]
type = ChangeState
value = 1340
triggerall = var(50) = 0
triggerall = var(45) = 3
triggerall = command = "DF_a"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, conntra golpe]
type = ChangeState
value = 1350
triggerall = var(50) = 0
triggerall = var(45) = 3
triggerall = command = "DF_b"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;rajada de tiros  
[State -1, rajada de tiros]
type = ChangeState
value = 1360
triggerall = var(50) = 0
triggerall = var(45) = 4
triggerall = command = "DF_b"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, rajada de tiros]
type = ChangeState
value = 1370
triggerall = var(50) = 0
triggerall = var(45) = 4
triggerall = command = "DF_a"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1300,1399]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------------------------fim dos estilos
;tiros pro alto e pra frente
[State -1, tiros pro alto]
type = ChangeState
value = 1600
triggerall = var(50) = 0
triggerall = command = "QcfSP"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 ;&& stateno != [1600,1699]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1600
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = p2bodydist x = [20,60]
trigger1 = p2bodydist y = [1,1000]
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = ctrl 

[State -1, tiro 12]
type = ChangeState
value = 1605
triggerall = var(50) = 0
triggerall = command = "QcfLP"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1600,1699]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

;-------------------------------------------------------
;espadada descendo
[State -1, espadada descendo]
type = ChangeState
value = 1500
triggerall = var(50) = 0
triggerall = command = "QcbSP" || command = "QcbLP" 
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1500,1599]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1500
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = A
triggerall = Random < (500 * (AILevel ** 2 / 64.0))
trigger1 = p2statetype = s 
trigger1 = p2bodydist x = [-10,30]
trigger1 = ctrl = 1
trigger2 = var(56) >= 1
trigger2 = numhelper(6010)= 1 && movecontact && stateno = 1210

;-------------------------------------------------------
;sequencia de chutes
[State -1, chutes]
type = ChangeState
value = 1400
triggerall = var(50) = 0
triggerall = command = "QcbSK"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1400,1499]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1400
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (30 * (AILevel ** 2 / 64.0))
trigger3 = var(56) >= 1 &&  stateno != [1400,1499]
trigger3 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))

[State -1, chutes]
type = ChangeState
value = 1420
triggerall = var(50) = 0
triggerall = command = "QcbLK"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1400,1499]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1420
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (30 * (AILevel ** 2 / 64.0))
trigger3 = var(56) >= 1 &&  stateno != [1400,1499]
trigger3 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))

;-------------------------------------------------------
;combos com armas
[State -1, combo Espada]
type = ChangeState
value = 1100
triggerall = var(50) = 0
triggerall = command = "QcbSP"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1100,1149]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1100
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2stateno != [120,180]
trigger1 = Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (30 * (AILevel ** 2 / 64.0))
trigger3 = var(56) >= 1 &&  stateno != [1100,1149]
trigger3 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))

[State -1, combo arma esquisita]
type = ChangeState
value = 1150
triggerall = var(50) = 0
triggerall = command = "QcbLP"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1150,1199]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1150
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = 310 && animelemtime(16) > 0 && animelemtime(20) < 0
trigger2 = movecontact && stateno = [200,499]
trigger2 = Random < (30 * (AILevel ** 2 / 64.0))
trigger3 = var(56) >= 1 &&  stateno != [1150,1199]
trigger3 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]
trigger3 = Random < (50 * (AILevel ** 2 / 64.0))

;-------------------------------------------------------
;dash com espada
[State -1, dash Espada]
type = ChangeState
value = 1000
triggerall = var(50) = 0
triggerall = command = "dash_espadaｭ_x"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1000,1049]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1000
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = p2bodydist x = [100,1000]
trigger1 = ctrl 

[State -1, dash Espada]
type = ChangeState
value = 1010
triggerall = var(50) = 0
triggerall = command = "dash_espadaｭ_y"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = movecontact && stateno = [200,240] 
trigger3 = movecontact && stateno = [400,449] 
trigger4 = movecontact && stateno = [300,390] 
;Max cancel
trigger5 = var(56) >= 1 && stateno != [1000,1049]
trigger5 = numhelper(6010)= 1 && movecontact && stateno = [1000,1999]

[State -1, AI]
type = ChangeState
value = 1010
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = p2bodydist x = [200,1000]
trigger1 = ctrl 

;------------------------------------------------------------------------------------------------------
;------------------------------------------golpes normais-------------------------------------------
;------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Pulo Alto
;[State -1, High Jump]
;type = ChangeState
;value = 42
;triggerall = command = "DU" || command = "DU1" || command = "DU2" || command = "DU3" || command = "DU4"
;trigger1 = statetype != A
;trigger1 = ctrl || stateno = 100

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(50) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(50) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
[State -1, esquiva]
type = ChangeState
value = 700
triggerall = command = "rolamento" 
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = stateno != [200,5070]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && time > 4

[State -1, UKEMI]
type = ChangeState
value = 5200
triggerall = command = "rolamento"
triggerall = alive = 1
triggerall = stateno = [441,446] ;
trigger1 = StateNo = 5050 || StateNo = 5071
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20

[State -1, Run Fwd ai]
type = ChangeState
value = 5200
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = alive = 1
triggerall = stateno = [441,446] ;
triggerall = Random < (300 * (AILevel ** 2 / 64.0))
trigger1 = StateNo = 5050 || StateNo = 5071
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20

[State -1, esquiva no golpe]
type = ChangeState
value = 701
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = command = "rolamento"
triggerall = statetype != A
triggerall = ifelse(var(58) >= 1,power >= 0,power >= 1000) 
trigger1 = ctrl
trigger2 = stateno = [150,153]
;trigger2 = movecontact && stateno = [200,699] 
;trigger3 = stateno = 150 || stateno = 153

[State -1, CD]
type = ChangeState
value = 650
triggerall = var(50) = 0
triggerall = (command = "b" && Command = "y") || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl  

;---------------------------------------------------------------------------
;[State -1, MAX]
;type = ChangeState
;value = 900
;triggerall = var(58) = 0
;triggerall = var(50) = 0
;triggerall = command = "c"; && command = "holdback"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = stateno = 5000
;trigger2 = stateno = 5010

;;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Grab ai]
type = ChangeState
value = 800
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = p2statetype != L 
triggerall = p2statetype != A 
triggerall = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = p2bodydist x = [0,20]
trigger1 = ctrl = 1 

;;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;;Kung Fu Throw
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 870
;triggerall = var(50) = 0
;triggerall = command = "b"
;triggerall = statetype = A
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd" ;&& command = "holdup"
;trigger1 = p2bodydist X < 5
;trigger1 = p2bodydist Y > -10 && p2bodydist Y < 10
;trigger1 = (p2statetype = A)
;;trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;[State -1, CD]
;type = ChangeState
;value = 350
;triggerall = var(50) = 0
;triggerall = ((command = "b" && Command = "y") || command = "c"  ) && command = "holddown"
;triggerall = statetype != A
;trigger1 = ctrl || stateno = 100
;trigger2 = movecontact && stateno = [200,245] 
;trigger3 = movecontact && stateno = [400,449] 
;;trigger4 = movecontact && stateno = [300,390] 

;---------------------------------------------------------------------------
;Chain Slash
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = var(50) = 0
triggerall = command = "fwd_x"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 100 && time > 4
trigger3 = stateno = 52

;Chain Slash
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = var(50) = 0
triggerall = command = "fwd_x"
triggerall = statetype != A
triggerall = statetype != A
trigger1 = movecontact && stateno = [200,245] 
trigger2 = movecontact && stateno = [400,449] 
;trigger3 = movecontact && stateno = [300,390] 


[State -1, combo ]
type = ChangeState
value = 310
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = Random < (500 * (AILevel ** 2 / 64.0))
trigger1 = movecontact && stateno = [200,240]
trigger2 = p2bodydist x = [20,40]
trigger2 = ctrl = 1
trigger3 = stateno = 400 && movecontact


;-------------------------------------------------------------
[State -1, Blow off]
type = ChangeState
value = 300
triggerall = var(50) = 0
triggerall = (command = "b" && Command = "y") || command = "c" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (ctrl || (stateno = [100,101]) && time > 1)
trigger2 = stateno = [150,153]
trigger2 = power >= 1000

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && animelemtime(2) > 1 && Animelemtime(3) < 1
trigger3 = stateno = 100 && time > 5
trigger4 = movecontact && stateno = 200
trigger5 = movecontact && stateno = 230
trigger6 = movecontact && stateno = 235
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 430
trigger9 = stateno = 52


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = P2BodyDist X > 15
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100; && time > 1

[State -1, soco forte longe ai]
type = ChangeState
value = 210
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = S
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [15,75]
trigger1 = p2statetype != A 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = ctrl = 1 

[State -1, soco forte perto]
type = ChangeState
value = 215
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = P2BodyDist X <= 15
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100; && time > 1

[State -1, soco forte longe ai]
type = ChangeState
value = 215
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = S
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [0,15]
trigger1 = p2statetype != A 
trigger1 = Random < (1000 * (AILevel ** 2 / 64.0))
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X > 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5
trigger3 = movecontact && stateno = 200
trigger4 = stateno = 430 && animelemtime(3) > 1 && Animelemtime(4) <= 1
trigger5 = movecontact && stateno = 230 && (animelemtime(4) >= 0)
trigger6 = movecontact && stateno = 235 && (animelemtime(3) >= 0)
trigger7 = stateno = 52

[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5
trigger3 = movecontact && stateno = 200
trigger4 = stateno = 430 && animelemtime(3) > 1 && Animelemtime(4) <= 1
trigger5 = stateno = 235 && animelemtime(4) > 1
trigger6 = stateno = 230 && animelemtime(3) > 1
trigger7 = stateno = 52

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = var(50) = 0
triggerall = P2BodyDist X <= 23
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 ;&& time > 5


[State -1, Strong Kick ai]
type = ChangeState
value = 245
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = S
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [0,20]
trigger1 = p2statetype != A 
trigger1 = Random < (1000 * (AILevel ** 2 / 64.0))
trigger1 = ctrl = 1 


[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(50) = 0
triggerall = P2BodyDist X > 23
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 ;&& time > 5

[State -1, Strong Kick ai]
type = ChangeState
value = 240
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = S
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [23,60]
trigger1 = p2statetype = S 
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = ctrl = 1 


;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(50) = 0
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5
trigger3 = stateno = 400 && animelemtime(3) > 0
trigger4 = stateno = 430 && animelemtime(3) > 0
trigger5 = stateno = 200 && animelemtime(2) > 0
trigger6 = stateno = 230 && animelemtime(2) > 0

[State -1, Crouching Light Punch ai]
type = ChangeState
value = 400
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = C
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [0,20]
trigger1 = p2statetype = S 
trigger1 = Random < (500 * (AILevel ** 2 / 64.0))
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5

[State -1, Crouching Strong Punch ai]
type = ChangeState
value = 410
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype = C
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [0,20]
trigger1 = p2statetype = A 
trigger1 = Random < (500 * (AILevel ** 2 / 64.0))
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5
trigger3 = stateno = 430 && animelemtime(3) > 0
trigger4 = stateno = 430 && animelemtime(3) > 0
trigger5 = stateno = 235 && animelemtime(3) > 1 && Animelemtime(4) <= 1
trigger6 = stateno = 230 && animelemtime(4) > 1 && Animelemtime(5) <= 1


[State -1, Crouching light Kick ai]
type = ChangeState
value = 430
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [0,15]
trigger1 = p2statetype = S 
trigger1 = ctrl = 1 
trigger2 = stateno = 430 && animelemtime(3) > 1 && Animelemtime(3) <= 3 && movecontact
trigger2 = Random < (1000 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 && time > 5

[State -1, Crouching strong Kick ai]
type = ChangeState
value = 440
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [0,15]
trigger1 = p2statetype = S 
trigger1 = ctrl = 1 

;-----------------------------------------------------------------
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(50) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl  

[State -1, Jump light Punch ai]
type = ChangeState
value = 600
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = random < 999999999999
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [50,120]
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
trigger1 = vel X = 0
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl  
;trigger2 = stateno = 105
;trigger3 = movecontact && stateno != 610 && stateno = [600,640]

[State -1, Jump Strong Punch ai]
type = ChangeState
value = 620
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = random < 100
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [-10,30]
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(50) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch ai]
type = ChangeState
value = 610
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = random < 100
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [20,70]
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(50) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick aI]
type = ChangeState
value = 630
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = Random < (1000 * (AILevel ** 2 / 64.0))
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [40,70]
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(50) = 0
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick AI]
type = ChangeState
value = 640
triggerall = roundstate = 2 
triggerall = var(59) != 0 
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = random < 999999999999
trigger1 = p2statetype != L 
trigger1 = p2bodydist x = [-10,40]
trigger1 = ctrl = 1 
trigger1 = random < 999999999999
trigger2 = p2statetype != L 
trigger2 = p2bodydist x = [-10,30]
trigger2 = p2statetype != A 
trigger2 = ctrl = 1 
trigger2 = random < 999999999999

[State -1, defesa] ; standing block/guard
type = ChangeState
value = 130
triggerall = RoundState = 2
triggerall = var(59) != 0 
triggerall = statetype != A
triggerall = NumEnemy
triggerall = !EnemyNear, HitDefAttr = SCA,NT,ST,HT
triggerall = Ctrl
trigger1 = InGuardDist
trigger1 = Facing != EnemyNear, Facing
trigger2 = Facing = EnemyNear, Facing
trigger2 = P2BodyDist X = [-10,60] ; to be changed for your own need

[State -1, em baixo]
type = ChangeState
value = 131
triggerall = RoundState = 2
triggerall = var(59) != 0 
triggerall = P2StateType = C
triggerall = statetype = C
triggerall = NumEnemy
triggerall = !EnemyNear, HitDefAttr = SCA,NT,ST,HT
triggerall = Ctrl && P2StateType != A
trigger1 = InGuardDist
trigger1 = Facing != EnemyNear, Facing
trigger2 = P2BodyDist x < 0 && P2MoveType = A
trigger2 = P2BodyDist X = [-10,60] 
