[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "hold x"
command = /$x
time = 1

[command]
name = "hold y"
command = /$y
time = 1

[command]
name = "hold z"
command = /$z
time = 1

[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

[command]
name = "abc"
command = a+b
time = 8

[command]
name = "abc"
command = b+c
time = 8

[command]
name = "abc"
command = a+c
time = 8

[command]
name = "xyz"
command = x+y+z

[command]
name = "xyz"
command = x+y


[command]
name = "xyz"
command =y+z


[command]
name = "xyz"
command = x+z



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


;-| Hold Button |--------------------------------------------------------
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
;-| CPU |----------------------------------------------------------------
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
name = "start2"
command = s
time = 1

[Command]
name = "holddownfwd"
command = /$DF
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
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1





;-| Hyper Motions |--------------------------------------------------------



;-----------No sé que hace esta mamada pero lo dejo por si se llega a ocupar---------------

[Command]
name = "16"
command = ~F, D, DF, x+y
time = 32

[Command]
name = "16"
command = ~F, D, DF, y+z
time = 32


[Command]
name = "16"
command =~F, D, DF, x+z
time = 32




;Le voy a poner nombre a estas mierdas para identificarlos.
;----------------------te agarra a vergazos por todas partes sin parar------------



;---------------------------[Maximum_Carnage]------------------------------

[Command]
name = "17"
command = ~D, DF, F, a+b
time = 32

[Command]
name = "17"
command = ~D, DF, F, b+c
time = 32


[Command]
name = "17"
command = ~D, DF, F, a+c
time = 32


;----------------------manos de hacha girando de manera circular------------------------------------


;---------------------------[Bloody_Spin]------------------------------
[Command]
name = "18"
command = ~D, DF, F, x+y
time = 32

[Command]
name = "18"
command = ~D, DF, F, y+z
time = 32

[Command]
name = "18"
command =~D, DF, F, x+z
time = 32


;-----------------------nalgadas en el trasero con un látigo-----------------------------------

;---------------------------[Sado_Whip]------------------------------

[Command]
name = "19"
command = ~D, B, a+b
time = 32

[Command]
name = "19"
command = ~D, B, b+c
time = 32

[Command]
name = "19"
command = ~D, B, a+z
time = 32


;---------------------------- no hace ni pinga------------------------------

;---------------------------[Borralo si quieres]------------------------------

[Command]
name = "hold_sp"
command = /x+y
time = 1

[Command]
name = "hold_sp"
command = /y+z
time = 1

[Command]
name = "hold_sp"
command = /x+z
time = 1


;-| Super Motions |------------------------------------------------------



;---------------------------------------------guadañas---------------------------------------


;debil


[Command]
name = "scythe_a"
command = ~D, B, x   
time = 15

;medio

[Command]
name = "scythe_b"
command = ~D, B, y   
time = 15

;fuerte

[Command]
name = "scythe_c"
command = ~D, B, z  
time = 15




;---------------------------------------------guadañas gore--------------------------------------


;debil

[Command]
name = "guro_scythe_a"
command = D, B, a   
time = 15

;medio

[Command]
name = "guro_scythe_b"
command = D,B , b   
time = 15

;fuerte

[Command]
name = "guro_scythe_c"
command = D, B, c   
time = 15





;-------------------------------------------- Garras al suelo ------------------------------------------




[Command]
name = "01" 
command = D, F, x
time = 15

[Command]
name = "02"
command = D, F, y
time = 15

[Command]
name = "03"
command = D, F, z
time = 15






;----------------------------------------- Lord Raptor / Tornado  ----------------------------------------------




[Command]
name = "07"
command = ~F, D, F, x
time = 20

[Command]
name = "08"
command = ~F, D, F, y
time = 20

[Command]
name = "09"
command = ~F, D, F, z
time = 20






;---------------------------------------------------- Tentáculo -------------------------------------------------------



[Command]
name = "10"
command = D, F, c
time = 20

[Command]
name = "11"
command = D, F, b
time = 20

[Command]
name = "12"
command = D, F, a
time = 20





;---------------------------------------- Patada Mata Pájaros ------------------------------------



;No se puede modificar desde aquí.
;Pon matapajaros en el buscador y te llebará a "Standing Strong Kick" para ajustarlo directmente.

 

[Command]
name = "matapajaros"
command = D,B, b
time = 20



;-------------------------------------------------------------------------------------------------











[Command]
name = "bwdb"
command = /B,b
time = 1


[Command]
name = "fwdz"
command = /F,z
time = 1

[Command]
name = "az"
command =/D,z


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

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1


;throw shouldersuplex

[Command]
name = "2k"
command = a+b
time = 5
[Command]
name = "2k"
command = b+c
time = 5
[Command]
name = "2k"
command = c+a
time = 5

;--------------throw---------------


[Command] 
name = "grab" 
command = /F, c
time = 1


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
command = x+a
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


;---------------------------------------------------------------------------
; 2. State entry
; --------------------------------------------------------------------------
[Statedef -1]


;guadañas

[State -1, Scythe Ligero]
type = ChangeState
value = 1500
triggerall = command = "scythe_a"
trigger1 = statetype = S && ctrl


[State -1, Scythe medio]
type = ChangeState
value = 1501
triggerall = command = "scythe_b"
trigger1 = statetype = S && ctrl


[State -1, Scythe fuerte]
type = ChangeState
value = 1502
triggerall = command = "scythe_c"
trigger1 = statetype = S && ctrl



;guadañas gore


;Este es el que antes era el 1200 (Sabretooth ligero)

[state -1, Garra Gore Ligera]

type = ChangeState
value = 1510                  
triggerall = statetype != A
triggerall = command = "guro_scythe_a" 
trigger1 = ctrl
trigger2 = stateno = [200,499] ; Esto permite que se use en combos (cancel)




[State -1, Scythe medio]
type = ChangeState
value = 1511
triggerall = command = "guro_scythe_b"
trigger1 = statetype = S && ctrl


[State -1, Scythe fuerte]
type = ChangeState
value = 1512
triggerall = command = "guro_scythe_c"
trigger1 = statetype = S && ctrl


;-------------------------------------------------------


[State -1, Agarre de Picos]
type = ChangeState
value = 1600
triggerall = command = "grab"
triggerall = statetype = S
triggerall = p2bodydist X <= 25  ; <--- Esto arregla la distancia para siempre
trigger1 = ctrl

;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;--------------------------------------------------------------------------------------------------------------------------------

;You're boring him.....===========================================================================
[State -1, random taunt]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 50
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5120   || p2stateno = 5020 || p2stateno = 5030


[State -1, Super Jump]
type = ChangeState
value = 40
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 1
trigger1 = stateno = 420

[State -1, A.I jump]
type = ChangeState
value = 40
triggerall = var(59) != 0 && NumEnemy
triggerall = (inguarddist) && (roundstate = 2) && (numenemy)
triggerall = statetype!=A && ctrl
trigger1 = enemynear,movetype=A && (p2bodydist x = [150,200]) && enemynear,hitdefattr=SC,AT && random<(39*(ailevel / 8.0))
trigger2 = enemynear, numproj >= 1 && random<(79*(ailevel / 8.0))


[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = random = [0,30]
trigger1 = ctrl
trigger1 = p2bodydist X < 1

[State -1: Recovery Roll]
type = ChangeState
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) 
triggerall = time > 10
trigger1 = random < 499
value = 891

[State -1]
Type=ChangeState
Triggerall=Inguarddist
Triggerall=var(59)>0
Triggerall=ctrl
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100)
value=120

[State -1]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard


[State -1, 1]
type = changestate
triggerall = RoundState = 2 
triggerall = StateType != A
triggerall = StateType != C
triggerall = p2StateType = S
triggerall = p2StateType = A
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = ctrl
trigger1 = p2stateno= [1000,1999]
trigger1 = Ctrl && P2BodyDist X <=100
trigger2 = ctrl
trigger2 = p2stateno= [200,299]
trigger2 = Ctrl && P2BodyDist X <=100
trigger3 = ctrl
trigger3 = p2stateno= [600,699]
trigger3 = Ctrl && P2BodyDist X <=100
value = 130

[State -1, 1]
type = changestate
triggerall = RoundState = 2 
triggerall = StateType != A
triggerall = StateType != S
triggerall = p2StateType = C
triggerall = p2StateType = A
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = ctrl
trigger1 = p2stateno= [1000,1999]
trigger1 = Ctrl && P2BodyDist X >=100
trigger2 = ctrl
trigger2 = p2stateno= [400,499]
trigger2 = Ctrl && P2BodyDist X <=100
value = 131


[State -1, 1]
type = changestate
triggerall = RoundState = 2
triggerall = StateType != S
triggerall = StateType != C
triggerall = p2StateType = A
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
triggerall = Random <= 800
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = ctrl
trigger1 = Ctrl && P2BodyDist X >=100
trigger1 = p2stateno= [1000,1999]
trigger2 = Ctrl && P2BodyDist X <=100
trigger2 = ctrl
trigger2 = p2stateno= [600,699]
value = 132

[State -1, Guard Push (Stand)]
type = ChangeState
value = 171
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 150
triggerall = numhelper(174) = 0
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
trigger1 = statetype = S
ignorehitpause = 1

[State -1, Guard Push (Stand)]
type = ChangeState
value = 172
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 152
triggerall = numhelper(174) = 0
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
trigger1 = statetype = C
ignorehitpause = 1

[State -1, Guard Push (Stand)]
type = ChangeState
value = 173
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 154
triggerall = numhelper(174) = 0
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
trigger1 = statetype = A
ignorehitpause = 1

[State -1]
type = ChangeState
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

[State -1,32]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = p2stateno != [3000,3999]
triggerall = var(59) != 0 
triggerall = roundstate = 2
triggerall = random <= 400
trigger1 =  stateno = 250 || stateno = 221|| stateno = 220|| stateno = 1220
trigger1 = movehit

[State -1, ]
type = ChangeState
value = 3100
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = stateno != [800,850]
triggerall = numhelper(33000) = 0
triggerall = p2stateno != [3000,3999]
triggerall = power >= 1000
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [150,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 1200 && movecontact && p2movetype=H
trigger3 = stateno = 1201 && movecontact && p2movetype=H
trigger4 = stateno = 1210 && movecontact && p2movetype=H
trigger5 = stateno = 1220 && movecontact && p2movetype=H
trigger6 = stateno = 450 && movecontact & p2movetype=H
trigger7= enemynear,anim=5300 && ctrl

;
[State -1, ]
type = ChangeState
value = 3200
triggerall = power >= 3000
triggerall = AILevel >7
triggerall = statetype != A
triggerall = p2statetype !=A
triggerall = p2statetype !=L
triggerall = ctrl 
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)|| (p2stateno=120||p2stateno=140)
triggerall = p2bodydist X < 80
triggerall = p2bodydist y = 0
triggerall = stateno != [800,899]
triggerall = stateno!= [1100,1999]
trigger1= ctrl
trigger2 = (p2stateno =[120,150]) &&ctrl
trigger3 = p2movetype=A && ctrl && (enemynear,hitdefattr!=SCA,AA,AP)&& AIlevel >5

[State -1,q]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) || var(54) = 1
triggerall = statetype != A 
triggerall = AILevel >= 6   
triggerall = p2stateno != [200,699]                ;character is standing
trigger1 = p2bodydist X < 50                               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 350  
trigger1 = p2dist y = 0                                     ;perform this move 20% of the time
value = 200                                                  ;change to [Statedef 200] which is light punch**

[State -1,q]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) || var(54) = 1
triggerall = statetype != A
triggerall = p2stateno != [200,699]   
triggerall = AILevel >= 6                   ;character is standing
trigger1 = p2bodydist X < 50                               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 350  
trigger1 = p2dist y = 0                                     ;perform this move 20% of the time
value = 230  

[State -1,w]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) || var(54) = 1
triggerall = p2stateno != [200,699]  
triggerall = AILevel >= 6
triggerall = statetype != A                  ;character is standing
trigger1 = p2bodydist X < 50                               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 350 
trigger1 = p2dist y = 0                                 ;perform this move 20% of the time
value = 400

[State -1,q]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) || var(54) = 1
triggerall = statetype != A
triggerall = p2stateno != [200,699]   
triggerall = AILevel >= 6                   ;character is standing
trigger1 = p2bodydist X < 50                               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 350  
trigger1 = p2dist y = 0                                     ;perform this move 20% of the time
value = 430  


[State -1,3]
type = ChangeState
value = 210
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 240
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 220
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact

[State -1, n]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 6
triggerall = statetype != A
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = movehit
trigger1 = stateno = 220 || stateno =450 || stateno = 251
value = 221

[State -1,3]
type = ChangeState
value = 250
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 240
trigger1 = movecontact

[State -1, n]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = statetype != A
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = movehit
trigger1 = stateno = 220 || stateno = 450|| stateno = 440|| stateno = 410
value = 420

[State -1,3]
type = ChangeState
value = 440
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 430
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 450
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 440
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 410
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 400
trigger1 = movecontact

;Start Air Chain
[State -1,41]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl                ;character is standing
triggerall = statetype = A
trigger1 = p2bodydist X <= 40
trigger1 = random <= 900
trigger1 = p2dist y = [-30,0]
value = 600

[State -1, p]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype = A                                     ;difficulty level is 4 or higher*
trigger1 = stateno = 600                                 ;trigger1 = random <= 750
trigger1 = movecontact                                     ;This will happen 75%
value = 630

[State -1, p]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype = A                                     ;difficulty level is 4 or higher*
trigger1 = stateno = 630                                 ;trigger1 = random <= 750
trigger1 = movecontact                                     ;This will happen 75%
value = 610

[State -1, p]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype = A                                     ;difficulty level is 4 or higher*
trigger1 = stateno = 610                                 ;trigger1 = random <= 750
trigger1 = movecontact                                     ;This will happen 75%
value = 640

[State -1, p]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype = A                                     ;difficulty level is 4 or higher*
trigger1 = stateno = 640                                 ;trigger1 = random <= 750
trigger1 = movecontact                                     ;This will happen 75%
value = 650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = statetype != A
trigger1 = movehit
trigger1 = stateno = 410||stateno = 440||stateno = 450
trigger1 = random <= 500
trigger2 = ctrl || var(54) = 1
trigger2 = random = [0,10]
trigger2 = p2bodydist x >= 200
value = 1000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = statetype != A
trigger1 = movehit
trigger1 = stateno = 410||stateno = 440||stateno = 450
trigger1 = random <= 500
trigger2 = ctrl || var(54) = 1
trigger2 = random = [0,10]
trigger2 = p2bodydist x >= 200
value = 1010

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = statetype != A
trigger1 = movehit
trigger1 = stateno = 410||stateno = 440||stateno = 450
trigger1 = random <= 500
trigger2 = ctrl || var(54) = 1
trigger2 = random = [0,10]
trigger2 = p2bodydist x >= 200
value = 1020

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = statetype != A
trigger1 = movehit
trigger1 = stateno = 220||stateno = 251||stateno = 221
trigger1 = random <= 500
trigger2 = ctrl || var(54) = 1
trigger2 = random = [0,10]
trigger2 = p2bodydist x >= 200
value = 1220


[State -1, pa]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = statetype != A
trigger1 = ((ctrl) || (var(54) = 1)) || (stateno = [200,450])
trigger1 = p2bodydist x <= 10
trigger1 = enemynear, statetype = C
value = 1100

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = statetype != A
trigger1 = movehit
trigger1 = stateno = 250
trigger1 = random <= 500
trigger2 = ctrl || var(54) = 1
trigger2 = random = [0,10]
trigger2 = p2bodydist x <= 10
value = 1120

[State -1, p]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype = A
trigger1 = stateno = 610||stateno = 640
trigger1 = movehit
trigger1 = random <= 400 
value = 1140

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = statetype != A
trigger1 = moveguarded
trigger1 = stateno = 220||stateno = 250||stateno = 251||stateno = 420||stateno = 450
trigger1 = random < 10
trigger2 = ctrl || var(54) = 1
trigger2 = random = [0,10]
trigger2 = p2bodydist x >= 200
value = 1300


;=======================================================================================
;HYPER COMBOS


[State -1, ]
type = ChangeState
value = 3200
triggerall = Command = "17"
triggerall = var(59) = 0
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3100
triggerall = Command = "19"
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]


[State -1, ]
type = ChangeState
value = 3000
triggerall = Command = "18"
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]

;=======================================================================================
;SUPER COMBOS

;
[state -1, a2]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall =  command = "10"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1310
triggerall = statetype != A
triggerall =  command = "11"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1320
triggerall = statetype != A
triggerall =  command = "12"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "07"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1110
triggerall = statetype != A
triggerall = command = "08"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = command = "09"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall =  command = "01"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1010
triggerall = statetype != A
triggerall =  command = "02"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1020
triggerall = statetype != A
triggerall =  command = "03"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1130
triggerall = statetype = A
triggerall =  command = "07"
trigger1 = ctrl
trigger2 = stateno = [600,699]

;
[state -1, a2]
type = ChangeState
value = 1140
triggerall = statetype = A
triggerall =  command = "08"
trigger1 = ctrl
trigger2 = stateno = [600,699]

;
[state -1, a2]
type = ChangeState
value = 1150
triggerall = statetype = A
triggerall =  command = "09"
trigger1 = ctrl
trigger2 = stateno = [600,699]






;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 250
trigger3 = stateno = 1201

;Dash Foward
[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = statetype != a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdback")&& (stateno !=[100,106])
trigger2 = ctrl

;Hop back
[State -1]
type = ChangeState
value = 102
triggerall = var(59) = 0
triggerall = numhelper(9998) = 0
triggerall = statetype != a
trigger1 = (command = "BB") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdfwd")&& (stateno !=[100,106])
trigger2 = ctrl

;
[State -1, AirDash FWD]
type = ChangeState
value = 104
triggerall = numhelper(109) = 0
triggerall = var(59) = 0
triggerall = statetype = a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdback")&& (stateno !=[100,106])
trigger2 = ctrl

;
[State -1, AirDash Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = numhelper(109) = 0
triggerall = statetype = a
trigger1 = (command = "BB") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdfwd")&& (stateno !=[100,106])
trigger2 = ctrl

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;Throw Foward
[State -1, Throw]
type = changestate
value = 800
triggerall = var(59) = 0
trigger1 = command = "z"
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

;Stand Light Punch
[state -1]
type = changestate
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl

;Stand Medium Punch 
[state -1]
type = changestate
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;Stand Strong Punch
[state -1]
type = changestate
value = 221
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact


;Stand Strong Punch
[state -1]
type = changestate
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;Standing Light Kick
[state -1]
type = changestate
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact


;Standing Medium Punch
[state -1]
type = changestate
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;Standing Strong Kick 
[state -1]
type = changestate
value = 251
triggerall = var(59) = 0

;------------------------------------------------------------------------


;triggerall = command = "matapajaros"   <--- Sesupone debe leer instrucciones directas del cómando.
;triggerall = command = "holdfwd"       <--- Si mantienes precionado ADELANTE
;triggerall = command = "holdback"      <--- Si mantienes precionado ATRAS
;triggerall = command = "holddown"      <--- Si mantienes precionado ABAJO


;----------------------aquí ajustas la patada hacia arriba.---------------



triggerall = command = "b"
triggerall = command = "holdback" 




;------------------------------------------------------------------------

trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;Standing Strong Kick 
[state -1]
type = changestate
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 221 && movecontact

;Crouching Light Punch
[state ]
type = changestate
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;Crouching Medium Punch
[state -1]
type = changestate
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;Crouching Strong Punch and Launcher
[state -1]
type = changestate
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact
trigger12 = stateno = 450 && movecontact
trigger13 = stateno = 221 && movecontact

;Crouching Light Kick
[state -1]
type = changestate
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact

;Crouching Medium Kick
[state -1]
type = changestate
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;Crouching Strong Kick
[state -1]
type = changestate
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;Jump Light Punch
[state -1]
type = changestate
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;Jump Medium Punch
[state -1]
type = changestate
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact


;Jump Strong Punch
[state -1]
type = changestate
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;Jump Light Kick
[state -1]
type = changestate
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact


;Jump Medium Kick
[state -1]
type = changestate
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact

;Jump Strong Kick
[state -1]
type = changestate
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

; Push Block (Stand)
[State -1]
type = ChangeState
value = 171
triggerall = var(59) = 0
triggerall = numhelper(174) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 172
triggerall = var(59) = 0
triggerall = numhelper(174) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 173
triggerall = var(59) = 0
triggerall = numhelper(174) =0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Forward Recovery Roll]
type = ChangeState
value = 891
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
