;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 3

[Command]
name = "c"
command = c
time = 1
;buffer.time = 3

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 3

[Command]
name = "z"
command = z
time = 1
buffer.time = 3

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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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
;-| especiais |-----------------------------------------------
;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;Throws
[Command]  ;xy
name = "2HCF_x"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, x
time = 45
buffer.time = 3

[Command]
name = "2HCF_y"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, y
time = 45
buffer.time = 3

[Command]
name = "2HCF_ab"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, a+b
time = 45
buffer.time = 3

[Command]
name = "2HCF_a"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, a
time = 45
buffer.time = 3

[Command]
name = "2HCF_b"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, b
time = 45
buffer.time = 3

[Command]
name = "2HCB_xy"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x+y
time = 45
buffer.time = 3

[Command]
name = "2HCB_x"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x
time = 45
buffer.time = 3

[Command]
name = "2HCB_y"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, y
time = 45
buffer.time = 3

[Command]
name = "2HCB_ab"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, a+b
time = 45
buffer.time = 3

[Command]
name = "2HCB_a"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, a
time = 45
buffer.time = 3

[Command]
name = "2HCB_b"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, b
time = 45
buffer.time = 3

;Haohshokoken
[Command]
name = "FHCF_c"
command = ~F, B, DB, D, DF, F, c
time = 30
buffer.time = 3

[Command]
name = "FHCF_xy"
command = ~F, B, DB, D, DF, F, x+y
time = 30
buffer.time = 3

[Command]
name = "FHCF_x"
command = ~F, B, DB, D, DF, F, x
time = 30
buffer.time = 3

[Command]
name = "FHCF_y"
command = ~F, B, DB, D, DF, F, y
time = 30
buffer.time = 3

[Command]
name = "BHCB_xy"
command = ~B, F, DF, D, DB, B, x+y
time = 30
buffer.time = 3

[Command]
name = "BHCB_x"
command = ~B, F, DF, D, DB, B, x
time = 30
buffer.time = 3

[Command]
name = "BHCB_y"
command = ~B, F, DF, D, DB, B, y
time = 30
buffer.time = 3

;Ryukko
[Command]
name = "QCFHCB_xy"
command = ~D, DF, F, DF ,D, DB, B, x+y
time = 30
buffer.time = 3

[Command]
name = "QCFHCB_x"
command = ~D, DF, F, DF ,D, DB, B, x
time = 30
buffer.time = 3

[Command]
name = "QCFHCB_y"
command = ~D, DF, F, DF ,D, DB, B, y
time = 30
buffer.time = 3

[Command]
name = "QCBHCF_xy"
command = ~D, DB, B, DB ,D, DF ,F, x+y
time = 30
buffer.time = 3

[Command]
name = "QCBHCF_x"
command = ~D, DB, B, DB ,D, DF ,F, x
time = 30
buffer.time = 3

[Command]
name = "QCBHCF_y"
command = ~D, DB, B, DB ,D, DF ,F, y
time = 30
buffer.time = 3

[Command]
name = "QCFHCB_ab"
command = ~D, DF, F, DF ,D, DB, B, a+b
time = 30
buffer.time = 3

[Command]
name = "QCFHCB_a"
command = ~D, DF, F, DF ,D, DB, B, a
time = 30
buffer.time = 3

[Command]
name = "QCFHCB_b"
command = ~D, DF, F, DF ,D, DB, B, b
time = 30
buffer.time = 3

[Command]
name = "QCBHCF_ab"
command = ~D, DB, B, DB ,D, DF ,F,a+b
time = 30
buffer.time = 3

[Command]
name = "QCBHCF_a"
command = ~D, DB, B, DB ,D, DF,F, a
time = 30
buffer.time = 3

[Command]
name = "QCBHCF_b"
command = ~D, DB, B, DB ,D, DF ,F, b
time = 30
buffer.time = 3

;Raikoken
[Command]
name = "2QCF_z"
command = ~D, DF, F, D, DF, z
time = 30
buffer.time = 3

[Command]
name = "2QCF_ab"
command = ~D, DF, F, D, DF, a+b
time = 30
;buffer.time = 3

[Command]
name = "2QCF_a"
command = ~D, DF, F, D, DF, a
time = 30
buffer.time = 3

[Command]
name = "2QCF_b"
command = ~D, DF, F, D, DF, b
time = 30
buffer.time = 3

[Command]
name = "2QCF_xy"
command = ~D, DF, F, D, DF, F, x+y
time = 30
buffer.time = 3

[Command]
name = "2QCF_x"
command = ~D, DF, F, D, DF, x
time = 30
buffer.time = 3

[Command]
name = "2QCF_y"
command = ~D, DF, F, D, DF, y
time = 30
buffer.time = 3

[Command]
name = "2QCB_ab"
command = ~D, DB, B, D, DB, B, a+b
time = 30
buffer.time = 3

[Command]
name = "2QCB_a"
command = ~D, DB, B, D, DB, B, a
time = 30
buffer.time = 3

[Command]
name = "2QCB_b"
command = ~D, DB, B, D, DB, B, b
time = 30
buffer.time = 3

[Command]
name = "2QCB_xy"
command = ~D, DB, B, D, DB, B, x+y
time = 30
buffer.time = 3

[Command]
name = "2QCB_x"
command = ~D, DB, B, D, DB, B, x
time = 30
buffer.time = 3

[Command]
name = "2QCB_y"
command = ~D, DB, B, D, DB, B, y
time = 30
buffer.time = 3

[Command]
name = "2QCB_yb"
command = ~D, DB, B, D, DB, B, y+b
time = 30
buffer.time = 3

[Command]
name = "2QCB_yb"
command = ~D, DB, B, D, DB, B, z
time = 30
buffer.time = 3

[Command]
name = "2QCF_yb"
command = ~D, DB, B, D, DB, B, y+b
time = 30
buffer.time = 3

[Command]
name = "2QCF_yb"
command = ~D, DB, B, D, DB, B, z
time = 30
buffer.time = 3

[Command]
name = "QCF,QCB_x"
command = ~D, DF, F, D, DB, x
time = 30
buffer.time = 3

[Command]
name = "QCF,QCB_y"
command = ~D, DF, F, D, DB, y
time = 30
buffer.time = 3

;-| Special Motions |------------------------------------------------------
[Command]
name = "granada"
command = ~D, D, y
time = 20

[Command]
name = "granada2"
command = ~D, D, x
time = 20

[Command]
name = "granada3"
command = ~D, D, b
time = 20

[Command]
name = "granada4"
command = ~D, D, a
time = 20

;Argentina
[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a
time = 15
buffer.time = 3

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b
time = 15
buffer.time = 3

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 20
buffer.time = 3

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 20
buffer.time = 3

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
time = 20
buffer.time = 3

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
time = 20
buffer.time = 3

;Oniyaki
[Command]
name = "DP_x"
command = ~F, D, DF, x
time = 20
buffer.time = 3

[Command]
name = "DP_y"
command = ~F, D, DF, y
time = 20
buffer.time = 3

[Command]
name = "RDP_x"
command = ~B, D, DB, x
time = 20
buffer.time = 3

[Command]
name = "RDP_y"
command = ~B, D, DB, y
time = 20
buffer.time = 3

[Command]
name = "DP_a"
command = ~F, D, DF, a
time = 20
buffer.time = 3

[Command]
name = "DP_b"
command = ~F, D, DF, b
time = 20
buffer.time = 3

[Command]
name = "RDP_a"
command = ~B, D, DB, a
time = 20
buffer.time = 3

[Command]
name = "RDP_b"
command = ~B, D, DB, b
time = 20
buffer.time = 3

;Etancher
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 15
buffer.time = 3

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 15
buffer.time = 3

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15
buffer.time = 3

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15
buffer.time = 3

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 15
buffer.time = 3

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 15
buffer.time = 3

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15
buffer.time = 3

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15
buffer.time = 3

[Command]
name = "baixo_a"
command = /$D, a
time = 20

[Command]
name = "baixo_b"
command = /$D, b
time = 20

[Command]
name = "cima_a"
command = /$U, a
time = 20

[Command]
name = "cima_b"
command = /$U, b
time = 20

[Command]
name = "frente_a"
command = /$F, a
time = 20

[Command]
name = "frente_b"
command = /$F, b
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10
buffer.time = 3

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;buffer.time = 5

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 2

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "fwdrecovery";Required (do not remove)
command = F,x+a
time = 2

[Command]
name = "brecovery";Required (do not remove)
command = B,x+a
time = 2

[Command]
name = "knock"
command = y+b
time = 10

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "hijump"
command = ~$D, $U
time = 18
;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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

[Command]
name = "recovery2"
command = c
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

; AI Helper Check
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

; AI Helper Check 2
[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;===========================================================================
;KFM's jump into attack code.
;===========================================================================
[State -1, AtkDetecion1]
type = VarSet
trigger1 = 1
sysvar(3) = Floor(sysfvar(2))
ignorehitpause = 1

[State -1, AtkDetecion1]
type = VarSet
trigger1 = 1
sysfvar(2) = sysfvar(3)
ignorehitpause = 1

[State -1, AtkDetecion1]
type = VarSet
trigger1 = 1
sysfvar(3) = sysfvar(4)
ignorehitpause = 1

[State -1, AtkDetecion2]
type = VarSet
trigger1 = 1
sysfvar(4) = 1*(command = "a") + 10*(command = "b") + 100*(command = "c") + 1000*(command = "x") + 10000*(command = "y") + 100000*(command = "z")
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor(sysvar(4) % 10) = 0
trigger2 = Floor(sysvar(4) % 10) < 2
sysvar(4) = 1*(command = "holdfwd")
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/10) % 10) = 0
trigger2 = Floor((sysvar(4)/10) % 10) < 2
sysvar(4) = 10*(command = "holdback")
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/100) % 10) = 0
trigger2 = Floor((sysvar(4)/100) % 10) < 2
sysvar(4) = 100*(command = "holddown")
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/1000) % 10) = 0
trigger2 = Floor((sysvar(4)/1000) % 10) < 2
sysvar(4) = 1000*(command = "holdup")
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor(sysvar(4) % 10) > 0
trigger1 = command != "holdfwd"
sysvar(4) = -1
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/10) % 10) > 0
trigger1 = command != "holdback"
sysvar(4) = -10
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/100) % 10) > 0
trigger1 = command != "holddown"
sysvar(4) = -100
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/1000) % 10) > 0
trigger1 = command != "holdup"
sysvar(4) = -1000
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor(sysvar(4) % 10) > 0
trigger1 = command != "holdfwd"
sysvar(4) = -1
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/10) % 10) > 0
trigger1 = command != "holdback"
sysvar(4) = -10
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/100) % 10) > 0
trigger1 = command != "holddown"
sysvar(4) = -100
ignorehitpause = 1

[State -1, DirDetecion2]
type = VarAdd
trigger1 = Floor((sysvar(4)/1000) % 10) > 0
trigger1 = command != "holdup"
sysvar(4) = -1000
ignorehitpause = 1

;===============================================================================
;-------------------------------------------------------------------------------
;===============================================================================
;Hyper Desperation Moves
;===============================================================================
;-------------------------------------------------------------------------------
;===============================================================================
;===============================================================================
;Guns Combo
;===============================================================================
;===============================================================================
[State -1,Guns Combo <<<<<<<<<<<<]
type = ChangeState
value = 3200
triggerall = NumHelPer(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
;triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_yb",command="2QCF_yb")
triggerall = Power >= 1000
triggerall = life <= 250
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;===============================================================================
;-------------------------------------------------------------------------------
;===============================================================================
;Super Desperation Moves
;===============================================================================
;-------------------------------------------------------------------------------
;===============================================================================
;===============================================================================
;Bazooka
;===============================================================================
;===============================================================================
; Leon: No Chão / Bazooka: No Chão
[State -1,Bazooka]
type = ChangeState
value = 3510
triggerall = NumHelPer(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = Command = "holddown" && Command = "z"
triggerall = NumHelPer(3700) = 1
triggerall = Helper(3700), Pos X = [Pos X -35, Pos X +70]
triggerall = Helper(3700), stateno = 3710
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2

; Leon: No Chão / Bazooka: No Ar
[State -1,Bazooka]
type = ChangeState
value = 3511
triggerall = NumHelPer(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = Command = "holddown" && Command = "z"
triggerall = NumHelPer(3700) = 1
triggerall = Helper(3700), Pos X = [Pos X -25, Pos X +50];[Pos X -25, Pos X +30]
triggerall = Helper(3700), Pos Y = [-100, -10]
triggerall = Helper(3700), stateno = 3700
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2

; Leon: No Ar / Bazooka: No Ar
[State -1,Bazooka]
type = ChangeState
value = 3512
triggerall = NumHelPer(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = Command = "holddown" && Command = "z"
triggerall = NumHelPer(3700) = 1
triggerall = Helper(3700), Pos X = [Pos X -20, Pos X +50]
triggerall = Helper(3700), Pos Y = [-185, -100]
triggerall = Helper(3700), stateno = 3700
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 410 && animelemtime(3) >= 1 && Animelemtime(4) < 0
trigger3 = stateno = 420 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 430 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger5 = stateno = 440 && animelemtime(4) >= 1 && Animelemtime(5) < 3
trigger6 = stateno = 441 && animelemtime(5) >= 1 && Animelemtime(6) < 0
trigger7 = stateno = 450; && animelemtime(9) >= 1 && Animelemtime(10) < 3

;===============================================================================
;===============================================================================
;Uzi
;===============================================================================
;===============================================================================
;Forte
[State -1,Uzi]
type = ChangeState
value = 3300
triggerall = NumHelPer(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_xy",command="2QCF_xy")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;===============================================================================
;-------------------------------------------------------------------------------
;===============================================================================
;Desperation Moves
;===============================================================================
;-------------------------------------------------------------------------------
;===============================================================================
;===============================================================================
;Piercing eyes
;===============================================================================
;===============================================================================
;Forte
[State -1,Piercing eyes Forte]
type = null;ChangeState
value = 3801
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF,QCB_y",command="QCF,QCB_y")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

[State -1,Piercing eyes Fraco]
type = null;ChangeState
value = 3800
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF,QCB_x",command="QCF,QCB_x")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;-------------------------------------------------------------------------------
; Max PowerBar Condition
;-------------------------------------------------------------------------------
;Forte
[State -1,Piercing eyes Forte]
type = null;ChangeState
value = 3801
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF,QCB_y",command="QCF,QCB_y")
triggerall = Power >= 0;1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

[State -1,Piercing eyes Fraco]
type = null;ChangeState
value = 3800
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF,QCB_x",command="QCF,QCB_x")
triggerall = Power >= 0;1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;===============================================================================
;===============================================================================
; S.T.A.R.S. Advanced Attack
;===============================================================================
;===============================================================================
[State -1, S.T.A.R.S. Advanced Attack]
type = ChangeState
value = 3400
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
;triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_a",command="2QCB_a")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact
trigger2 = stateno = 1051 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact

[State -1, S.T.A.R.S. Advanced Attack]
type = ChangeState
value = 3400
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
;triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_b",command="2QCB_b")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact
trigger2 = stateno = 1051 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact

;-------------------------------------------------------------------------------
; Max PowerBar Condition
;-------------------------------------------------------------------------------
[State -1, S.T.A.R.S. Advanced Attack]
type = ChangeState
value = 3400
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
;triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_a",command="2QCB_a")
triggerall = Power >= 0
triggerall = statetype != A
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact
trigger2 = stateno = 1051 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact

[State -1, S.T.A.R.S. Advanced Attack]
type = ChangeState
value = 3400
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
;triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_b",command="2QCB_b")
triggerall = Power >= 0
triggerall = statetype != A
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact
trigger2 = stateno = 1051 && animelemtime(4) >= 1 && Animelemtime(5) < 4 && MoveContact

;===============================================================================
;===============================================================================
;Shotgun
;===============================================================================
;===============================================================================
;Forte
[State -1,Shotgun Forte]
type = ChangeState
value = 3010
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_y",command="2QCB_y")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

[State -1,Shotgun Fraco]
type = ChangeState
value = 3000
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_x",command="2QCB_x")
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;-------------------------------------------------------------------------------
; Max PowerBar Condition
;-------------------------------------------------------------------------------
;Forte
[State -1,Shotgun Forte]
type = ChangeState
value = 3010
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_y",command="2QCB_y")
triggerall = Power >= 0;1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

[State -1,Shotgun Fraco]
type = ChangeState
value = 3000
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCF_x",command="2QCB_x")
triggerall = Power >= 0;1000
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;===============================================================================
;===============================================================================
;Preparando Granada
;===============================================================================
;===============================================================================
;Preparando Granada
[State -1,Preparando Granada]
type = ChangeState
value = 3100
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_x",command="2QCF_x")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = var(32) < 9
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

[State -1,Preparando Granada]
type = ChangeState
value = 3100
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_y",command="2QCF_y")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = var(32) < 9
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;Preparando Granada (Ja contendo 9 granadas)
[State -1,Preparando Granada (Ja contendo 9 granadas)]
type = ChangeState
value = 3101
triggerall = numhelper(10090) = 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_x",command="2QCF_x")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = var(32) = 9
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

[State -1,Preparando Granada (Ja contendo 9 granadas)]
type = ChangeState
value = 3101
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_y",command="2QCF_y")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = var(32) = 9
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;-------------------------------------------------------------------------------
; Max PowerBar Condition
;-------------------------------------------------------------------------------
;Preparando Granada
[State -1,Preparando Granada]
type = ChangeState
value = 3100
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_x",command="2QCF_x")
triggerall = Power >= 0
triggerall = statetype != A
triggerall = var(32) < 9
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;Preparando Granada (Ja contendo 9 granadas)
[State -1,Preparando Granada (Ja contendo 9 granadas)]
type = ChangeState
value = 3101
triggerall = numhelper(10090) = 1
triggerall = helper(10090),var(25) > 0
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="2QCB_x",command="2QCF_x")
triggerall = Power >= 0
triggerall = statetype != A
triggerall = var(32) = 9
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;===============================================================================
;===============================================================================
;Granada
;===============================================================================
;===============================================================================
;Granada
[State -1,Granada]
type = ChangeState
value = 3110
;triggerall = var(59) != 1
triggerall = command = "granada" || command = "granada2" || command = "granada3" || command = "granada4"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
triggerall = var(32) > 0
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger11 = Power >= 2000
trigger11 = stateno = 1200 && animelemtime(14) >= 1 && Animelemtime(15) < 2 && MoveContact
trigger12 = Power >= 2000
trigger12 = stateno = 1215 && animelemtime(6) >= 1 && Animelemtime(7) < 2 && MoveContact
trigger13 = Power >= 2000
trigger13 = stateno = 1400 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact
trigger14 = Power >= 2000
trigger14 = stateno = 1410 && animelemtime(4) >= 1 && Animelemtime(5) < 2 && MoveContact

;===============================================================================
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;===============================================================================
; Special Moves
;===============================================================================
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;===============================================================================
; Facada Anti-Aérea
;===============================================================================
;Forte
[State -1,Facada Anti-Aérea Forte]
type = ChangeState
value = 1410
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="DP_y",command="RDP_y")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger44 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger45 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger46 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger47 = stateno = 1300 && MoveHit = 1 && NumHelPer(10090) = 1
trigger48 = stateno = 1310 && MoveHit = 1 && NumHelPer(10090) = 1
trigger49 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;Fraca
[State -1,Facada Anti-Aérea Fraca]
type = ChangeState
value = 1400
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="DP_x",command="RDP_x")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger44 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger45 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger46 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger47 = stateno = 1300 && MoveHit = 1 && NumHelPer(10090) = 1
trigger48 = stateno = 1310 && MoveHit = 1 && NumHelPer(10090) = 1
;trigger49 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;===============================================================================
; Chutão
;===============================================================================
;Forte
[State -1,Chutão Forte]
type = ChangeState
value = 1310
;triggerall = var(59) != 1
triggerall =  Command != "holda"
;triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF_b",command="QCB_b")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger44 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger45 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger46 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger47 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;Fraco
[State -1,Chutão Fraco]
type = ChangeState
value = 1300
;triggerall = var(59) != 1
;triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF_a",command="QCB_a")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger44 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger45 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger46 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger47 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;===============================================================================
; Soco Corrido
;===============================================================================
;Forte
[State -1,Soco Corrido Forte]
type = ChangeState
value = 1210
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCB_y",command="QCF_y")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger44 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger45 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;Fraco
[State -1,Soco Corrido Fraco]
type = ChangeState
value = 1200
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCB_x",command="QCF_x")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger44 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger45 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;===============================================================================
; Tiro
;===============================================================================
;Forte
[State -1,Tiro Forte]
type = ChangeState
value = 1105
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
;triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF_y",command="QCB_y")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger41 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger42 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;Fraco
[State -1,Tiro Fraco]
type = ChangeState
value = 1100
;triggerall = var(59) != 1
triggerall =  Command != "holda"
triggerall = Command != "holdb"
;triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCF_x",command="QCB_x")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1010 && MoveHit = 1 && NumHelPer(10090) = 1
trigger39 = stateno = 1051 && MoveHit = 1 && NumHelPer(10090) = 1
trigger40 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger41 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger42 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;===============================================================================
; Facada
;===============================================================================
;Forte
[State -1,Facada Forte]
type = ChangeState
value = 1050
;triggerall = var(59) != 1
triggerall =  Command != "holda"
;triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCB_b",command="QCF_b")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger6 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger7 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger8 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger9 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger10 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger39 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger40 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger44 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger45 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;Fraco
[State -1,Facada Fraca]
type = ChangeState
value = 1000
;triggerall = var(59) != 1
;triggerall =  Command != "holda"
triggerall = Command != "holdb"
triggerall = Command != "holdx"
triggerall = Command != "holdy"
triggerall = ifelse((Anim!=[5,6]),command="QCB_a",command="QCF_a")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger3 = stateno = 215 && animelemtime(3) >= 1 && Animelemtime(4) < 2
trigger4 = stateno = 245 && animelemtime(3) >= 1 && Animelemtime(4) < 1
trigger5 = stateno = 250 && animelemtime(6) >= 1 && Animelemtime(7) < 2
trigger6 = stateno = 265 && animelemtime(4) >= 1 && Animelemtime(5) < 2
trigger7 = stateno = 300 && animelemtime(2) >= 1 && Animelemtime(3) < 1
trigger8 = stateno = 310 && animelemtime(4) >= 1 && Animelemtime(5) < 1
trigger9 = stateno = 330 && animelemtime(2) >= 1 && Animelemtime(3) < 2
trigger10 = stateno = 340 && animelemtime(3) >= 1 && Animelemtime(4) < 2
; Max Bar Cancels
; Basics
trigger11 = stateno = 200 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger12 = stateno = 200 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger13 = stateno = 210 && NumHelPer(10090) = 1
trigger14 = stateno = 210 && NumHelPer(10090) = 1
trigger15 = stateno = 215 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger16 = stateno = 215 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
trigger17 = stateno = 230 && NumHelPer(10090) = 1
trigger18 = stateno = 230 && NumHelPer(10090) = 1
trigger19 = stateno = 240 && NumHelPer(10090) = 1
trigger20 = stateno = 240 && NumHelPer(10090) = 1
trigger21 = stateno = 245 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger22 = stateno = 245 && Animelemtime(4) >= 1 && NumHelPer(10090) = 1
trigger23 = stateno = 250 && animelemtime(6) < 1 && NumHelPer(10090) = 1
trigger24 = stateno = 250 && Animelemtime(7) >= 2 && NumHelPer(10090) = 1
trigger25 = stateno = 255 && NumHelPer(10090) = 1
trigger26 = stateno = 255 && NumHelPer(10090) = 1
trigger27 = stateno = 265 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger28 = stateno = 265 && Animelemtime(5) >= 2 && NumHelPer(10090) = 1
trigger29 = stateno = 300 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger30 = stateno = 300 && Animelemtime(3) >= 1 && NumHelPer(10090) = 1
trigger31 = stateno = 310 && animelemtime(4) < 1 && NumHelPer(10090) = 1
trigger32 = stateno = 310 && Animelemtime(5) >= 1 && NumHelPer(10090) = 1
trigger33 = stateno = 330 && animelemtime(2) < 1 && NumHelPer(10090) = 1
trigger34 = stateno = 330 && Animelemtime(3) >= 2 && NumHelPer(10090) = 1
trigger35 = stateno = 340 && animelemtime(3) < 1 && NumHelPer(10090) = 1
trigger36 = stateno = 340 && Animelemtime(4) >= 2 && NumHelPer(10090) = 1
; Advanceds
trigger37 = stateno = 260 && MoveHit = 1 && NumHelPer(10090) = 1
trigger38 = stateno = 1115 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger39 = stateno = 1165 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger40 = stateno = 1116 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger41 = stateno = 1166 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger42 = stateno = 1117 && time > 1 && time <= 12 && NumHelPer(10090) = 1
trigger43 = stateno = 1200 && MoveHit = 1 && NumHelPer(10090) = 1
trigger44 = stateno = 1215 && MoveHit = 1 && NumHelPer(10090) = 1
trigger45 = stateno = 1410 && MoveHit = 1 && Animelemtime(5) <= 0 && NumHelPer(10090) = 1

;---------------------------------------------------------------------------
;Guard Counter Blowback Attack
[State -1, Guard Counter Blowback Attack]
type = ChangeState
value = 255
;triggerall = var(59) != 1
triggerall = statetype != A
trigger1 =  (command = "z" || command = "knock")
trigger1 = stateno = 150 || stateno = 151
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;Blowback Attack Air
[State -1, Blowback Attack Air]
type = ChangeState
value = 450
;triggerall = !var(59)
triggerall =  (command = "z" || command = "knock")
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 40 && Time <= 1

;---------------------------------------------------------------------------
;Blowback Attack Ground
[State -1, Blowback Attack Ground]
type = ChangeState
value = 250
;trigger1 = !var(59)
trigger1 = (command = "z" || command = "knock")
trigger1 = statetype = S
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101

;-------------------------------------------------------------------------------
;Grab Attempt
[State -1, Grab Attempt]
type = ChangeState
value = 850
triggerall = EnemyNear,HitOver && EnemyNear,GetHitVar(ctrltime)=0
;triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = enemynear,anim!=[120,159]
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X <= 10 && p2dist X >= -20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
[State -1, Grab Attempt]
type = ChangeState
value = 800
triggerall = EnemyNear,HitOver && EnemyNear,GetHitVar(ctrltime)=0
;triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = enemynear,anim!=[120,159]
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X <= 10 && p2dist X >= -20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; PowerBar Explod
[State -1, >>> PowerBar Explod <<<]
type = ChangeState
value = 790
;triggerall = var(59) != 1
triggerall = Power >= 1000
triggerall = NumHelPer(10090) = 0
;triggerall = helper(10090),var(25) <= 0
triggerall = command = "c" || command = "a" && command = "y"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; PowerBar Explod
[State -1, >>> PowerBar Explod (Cancel Version) <<<]
type = ChangeState
value = 791
;triggerall = var(59) != 1
triggerall = Power >= 2000
triggerall = NumHelPer(10090) = 0
;triggerall = helper(10090),var(25) <= 0
triggerall = command = "c" || command = "a" && command = "y"
triggerall = statetype != A
trigger1 = stateno = 200 && movehit = 1
trigger2 = stateno = 210 && movehit = 1
trigger3 = stateno = 215 && movehit = 1
trigger4 = stateno = 230 && movehit = 1
trigger5 = stateno = 240 && movehit = 1
trigger6 = stateno = 245 && movehit = 1
trigger7 = stateno = 250 && movehit = 1
trigger8 = stateno = 255 && movehit = 1
trigger9 = stateno = 260 && movehit = 1
trigger10 = stateno = 265 && movehit = 1
trigger11 = stateno = 300 && movehit = 1
trigger12 = stateno = 310 && movehit = 1
trigger13 = stateno = 330 && movehit = 1
trigger14 = stateno = 340 && movehit = 1
;ignorehitpause = 1

;---------------------------------------------------------------------------
;Roll 1
[State -1, Roll 1]
type = ChangeState
value = 700
;triggerall = var(59) != 1
triggerall = command = "c" || command = "recovery"
triggerall = command != "holddown" && command != "holdback"
triggerall = Statetype != A
triggerall = stateno != 790
triggerall = stateno != 791
trigger1 = ctrl && prevstateno != 791
trigger2 = stateno = 150 && power >= 1000
trigger3 = stateno = 151 && power >= 1000
trigger4 = stateno = 100
trigger5 = stateno = 20
trigger6 = stateno = 0 && time > 5

;---------------------------------------------------------------------------
;Roll 2
[State -1, Roll 1]
type = ChangeState
value = 710
;triggerall = var(59) != 1
triggerall = command = "c" || command = "recovery"
triggerall = command != "holddown" && command = "holdback"
triggerall = Statetype != A
triggerall = stateno != 790
triggerall = stateno != 791
trigger1 = ctrl && prevstateno != 791
trigger2 = stateno = 150 && power >= 1000
trigger3 = stateno = 151 && power >= 1000
trigger4 = stateno = 100
trigger5 = stateno = 20
trigger6 = stateno = 0 && time > 5

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
;triggerall = var(59) != 1
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 791

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
;triggerall = var(59) != 1
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 791

;===========================================================================
;---------------------------------------------------------------------------
;One-Two Puncher
[State -1, One-Two Puncher]
type = ChangeState
value = 260
;triggerall = var(59) != 1
triggerall = command = "holdfwd" && command = "x"
triggerall = command != "holddown"
triggerall = command != "a"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101

[State -1, One-Two Puncher]
type = ChangeState
value = 265
;triggerall = var(59) != 1
triggerall = command = "holdfwd" && command = "x"
triggerall = command != "holddown"
triggerall = command != "a"
triggerall = statetype != A
trigger1 = stateno = 200 && animelemtime(2) >= 1 && animelemtime(5) < 0
trigger2 = stateno = 215 && animelemtime(3) >= 1 && animelemtime(4) < 0
trigger3 = stateno = 245 && animelemtime(3) >= 1 && animelemtime(5) < 0
trigger4 = stateno = 300 && animelemtime(2) >= 1 && animelemtime(3) < 0
trigger5 = stateno = 310 && animelemtime(4) >= 1 && animelemtime(5) < 0
trigger6 = stateno = 330 && animelemtime(2) >= 1 && animelemtime(3) < 0
trigger7 = stateno = 340 && animelemtime(5) >= 1 && animelemtime(6) < 0
;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
;triggerall = var(59) != 1
triggerall = command = "start"
trigger1 = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 400
;triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = ctrl
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 410
;triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = ctrl
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 430
;triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = ctrl
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = ifelse (!Vel X, 441, 440)
;triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = ctrl
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
;triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 310
;triggerall = var(59) != 1
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 330
;triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 340
;triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
;triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "a"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
;triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall =  P2dist X > 52
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Stand Strong Punch C
[State -1, Stand Strong Punch C]
type = ChangeState
value = 215
;triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall =  P2dist X <= 52
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
;triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "x"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
trigger2 = stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) < 0
trigger3 = stateno = 300 && animelemtime(2) >= 1 && animelemtime(3) < 0
trigger4 = stateno = 330 && animelemtime(2) >= 1 && animelemtime(3) < 0
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
;triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall =  P2dist X > 52
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
;triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall =  P2dist X <= 52
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) >= 0) || stateno = 101

;---------------------------------------------------------------------------
; Fall Breaker
[State -1, Fall Breaker]
type = ChangeState
value = 5200
;triggerall = var(59) != 1
triggerall = alive
triggerall = canrecover
triggerall = command = "recovery"
trigger1 = stateno = 5050
trigger1 = pos y >= -40
