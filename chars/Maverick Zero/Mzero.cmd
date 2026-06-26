;===========================================================================
;                          Alpha's Command File
;===========================================================================

[Command]
name = "hyper1"
command = ~D, DF, F, x+y
time = 38
[Command]
name = "hyper1"
command = ~D, DF, F, y+z
time = 38
[Command]
name = "hyper1"
command = ~D, DF, F, x+z
time = 38

[Command]
name = "hyper2"
command = ~D, DB, B, x+y
time = 38
[Command]
name = "hyper2"
command = ~D, DB, B, y+z
time = 38
[Command]
name = "hyper2"
command = ~D, DB, B, x+z
time = 38

[Command]
name = "shoryukenx"
command = D, B, x
time = 30

[Command]
name = "shoryukeny"
command = D, B, y
time = 30

[Command]
name = "shoryukenz"
command = F, D, z
time = 30

[Command]
name = "hadokenx"
command = ~D, DF, F, x
time = 11
[Command]
name = "hadokeny"
command = ~D, DF, F, y
time = 11
[Command]
name = "hadokenz"
command = ~D, DF, F, z
time = 11

[Command]
name = "hurricane"
command = ~D, DF, F, a
time = 11
[Command]
name = "hurricane2"
command = ~D, DF, F, b
time = 11
[Command]
name = "hurricane3"
command = ~D, DF, F, c
time = 11

;----- |Botones simples| -----

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



[Command]
name = "sjump"
command = ~$D, U
time = 5

[Command]
name = "sjumpf"
command = ~$D, UF
time = 5

[Command]
name = "sjumpb"
command = ~$D, UB
time = 5


[Command]
name = "recovery";Requerido (no quitar)
command = a+b
time = 1
[Command]
name = "recovery";Requerido (no quitar)
command = b+c
time = 1
[Command]
name = "recovery";Requerido (no quitar)
command = a+c
time = 1
[Command]
name = "recovery";Requerido (no quitar)
command = x+y
time = 1
[Command]
name = "recovery";Requerido (no quitar)
command = y+z
time = 1
[Command]
name = "recovery";Requerido (no quitar)
command = x+z
time = 1



[Command]
name = "stop"
command = x+a
time= 12


;----- |Doble| -----

[Command]
name = "FF"     ;Requerido (no quitar)
command = F, F
time = 10

[Command]
name = "BB"     ;Requerido (no quitar)
command = B, B
time = 10


;----- |Dir...| -----

[Command]
name = "holdfwd";Requerido (no quitar)
command = /$F
time = 1

[Command]
name = "holdback";Requerido (no quitar)
command = /$B
time = 1

[Command]
name = "holdup" ;Requerido (no quitar)
command = /$U
time = 1

[Command]
name = "holddown";Requerido (no quitar)
command = /$D
time = 1

[Statedef -1]

;===========================================================================
;                           Hyper combos
;===========================================================================


;------ Dark Hold ------
[State -1]
type = ChangeState
value = 14000
triggerall = command = "stop"
triggerall = power >= 1000
triggerall = !var(12)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = ctrl || stateno = 310 || stateno = 200
trigger2 = time < 3


[State -1]
type = ChangeState
value = 14003
triggerall = command = "stop"
triggerall = var(12)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = ctrl || stateno = 310 || stateno = 200
trigger2 = time < 3

;------ Shinku Ha Do Ken ------
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hyper1"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;------ Raging demon aereo ------
[State -1]
type = ChangeState
value = 3100
triggerall = command = "hyper2"
triggerall = power >= 1000 
triggerall = Pos Y < -20
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = [600,650]
trigger2 = MoveContact

;------ Shinku Ha Do Ken aereo------
[State -1]
type = ChangeState
value = 3050
triggerall = command = "hyper1"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = [600,650]
trigger2 = MoveContact

;===========================================================================
;                           Especiales
;===========================================================================

;------ hurricane Fang ------
[State -1]
type = ChangeState
value = 700
triggerall = command = "hurricane"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 701
triggerall = command = "hurricane2"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 702
triggerall = command = "hurricane3"
triggerall = statetype = S
trigger1 = ctrl = 1

;------ Sho Ryu Ken ------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "shoryukenx"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
;trigger2 = stateno = [200,450]
;trigger3 = time > 11
;trigger3 = stateno = [1100,1102]

[State -1]
type = ChangeState
value = 1000
triggerall = command = "shoryukeny"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
;trigger2 = stateno = [200,450]
;trigger3 = time > 11
;trigger3 = stateno = [1100,1102]
[State -1]
type = ChangeState
value = 1000
triggerall = command = "shoryukenz"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
;trigger2 = stateno = [200,450]
;trigger3 = time > 11
;trigger3 = stateno = [1100,1102]

;------ Ha Do Ken ------
[State -1]
type = ChangeState
value = 1100
triggerall = command = "hadokenx"
triggerall = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1101
triggerall = command = "hadokeny"
triggerall = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1102
triggerall = command = "hadokenz"
triggerall = statetype = S
trigger1 = ctrl = 1

;------ Ha Do Ken (aereo) ------
[State -1]
type = ChangeState
value = 1150
triggerall = command = "hadokenx"
triggerall = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1151
triggerall = command = "hadokeny"
triggerall = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1152
triggerall = command = "hadokenz"
triggerall = statetype = A
trigger1 = ctrl = 1
;===========================================================================
;                           Golpes Normales
;===========================================================================

;Puño debil parado
[State -1]
type = ChangeState
value = 309
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;Puño medio parado
[State -1]
type = ChangeState
value = 301
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 9
trigger3 = stateno = 200
trigger3 = movecontact 
trigger4 = stateno = 400
trigger4 = time >= 9
trigger5 = stateno = 400
trigger5 = movecontact 

;puño fuerte parado (sable x6)
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact 
trigger3 = stateno = 200
trigger3 = time > 12
trigger4 = stateno = 210
trigger4 = movecontact 
trigger5 = stateno = 210
trigger5 = time >= 9
trigger6 = stateno = 400
trigger6 = time >= 9
trigger7 = stateno = 400
trigger7 = movecontact 
trigger8 = stateno = 410
trigger8 = time >= 9
trigger9 = stateno = 410
trigger9 = movecontact 

;Golpe debil parado
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 11

;Golpe medio parado
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 9
trigger3 = stateno = 200
trigger3 = movecontact 
trigger4 = stateno = 400
trigger4 = time >= 9
trigger5 = stateno = 400
trigger5 = movecontact 

;Golpe fuerte parado
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact 
trigger3 = stateno = 200
trigger3 = time > 12
trigger4 = stateno = 210
trigger4 = movecontact 
trigger5 = stateno = 210
trigger5 = time >= 9
trigger6 = stateno = 400
trigger6 = time >= 9
trigger7 = stateno = 400
trigger7 = movecontact 
trigger8 = stateno = 410
trigger8 = time >= 9
trigger9 = stateno = 410
trigger9 = movecontact 



;===========================================================================
;                           Golpes Agachado
;===========================================================================


; Golpe debil agachado
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Golpe medio agachado
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 =  MoveContact
trigger3 = stateno = 400
trigger3 = time > 9
trigger4 = stateno = 200
trigger4 =  MoveContact
trigger5 = stateno = 200
trigger5 = time > 9

; Golpe fuerte agachado
[State -1]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact 
trigger3 = stateno = 200
trigger3 = time > 12
trigger4 = stateno = 210
trigger4 = movecontact 
trigger5 = stateno = 210
trigger5 = time >= 9
trigger6 = stateno = 400
trigger6 = time >= 9
trigger7 = stateno = 400
trigger7 = movecontact 
trigger8 = stateno = 410
trigger8 = time >= 9
trigger9 = stateno = 410
trigger9 = movecontact 



;===========================================================================
;                           Golpes Saltando
;===========================================================================


; puño debil saltando
[State -1]
type = ChangeState
value = 630
triggerall = StateNo != 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600
trigger2 = StateNo = [600,610]
trigger3 = MoveContact
trigger3 = StateNo = 610

; puño medio saltando
[State -1]
type = ChangeState
value = 601
triggerall = StateNo != 601
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = StateNo = [600,610]
trigger3 = stateno = 600


; puño fuerte saltando
[State -1]
type = ChangeState
value = 310
triggerall = StateNo != 310
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = StateNo = [600,610]
trigger3 = time > 7
trigger3 = StateNo = [600,610]

; golpe debil saltando
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600
trigger3 = MoveContact
trigger3 = StateNo = 610

; golpe medio saltando
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = stateno = 600
trigger3 = time > 9

; golpe fuerte saltando
[State -1]
type = ChangeState
value = 620 
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = StateNo = [600,610]
trigger3 = time > 7
trigger3 = StateNo = [600,610]





;===========================================================================
;                         Alpha's Other Stuff
;===========================================================================


;recovery Roll
[State -1]
type = ChangeState
value = 680
triggerall = command = "FF"
triggerall = life >= 1
trigger1 = stateno = 5110
trigger2 = stateno = 5120
trigger2 = time  < 25


;------ Correr ------
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1998
trigger2 = time >= 0


;------ Air Dash ------
[State -1]
type = null;ChangeState
value = 101
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 050
trigger2 = time >= 7

;---------------------------------------------------------------------------
;recovery Roll
[State -1]
type = ChangeState
value = 690
triggerall = command = "BB"
triggerall = life >= 1
trigger1 = stateno = 5110 ; || stateno = 5120
trigger2 = stateno = 5120
trigger2 = time  < 25


;------ Salto atras  ------
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;------ Taunt ------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Superjump Up
[State -1, Superjump Up]
type = ChangeState
value = 10023
trigger1 = command = "sjump"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Superjump Fwd
[State -1, Superjump Fwd]
type = ChangeState
value = 10024
trigger1 = command = "sjumpf"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Superjump Back
[State -1, Superjump Back]
type = ChangeState
value = 10025
trigger1 = command = "sjumpb"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl


;----air recovery------
[State -1]
type = ChangeState
value = 5210
triggerall = Var(3) != 2
triggerall = life >= 1
triggerall = command = "recovery"
triggerall = Pos Y < -69
trigger1 = stateno != 5020
trigger1 = stateno != 5030
trigger1 = stateno = [5001,5170]


;===========================================================================
;                         PRESENTED by Ariel Co.
;===========================================================================

