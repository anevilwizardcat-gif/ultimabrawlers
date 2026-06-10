;=====================================================================
;  CMD File For "Zangief"                               Made By M.M.R.
;                                       Ver. 0.7           2001.Aug.30
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu"
command = ~D,DF, F, a
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, b
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, c
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, a
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, b
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, c
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, a
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, b
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, c
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, a
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, b
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, c
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, s
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, s
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, x
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, y
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, z
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, x
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, y
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, z
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, x
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, y
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, z
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, x
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, y
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, z
time = 1


;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; ファイナルアトミックバスター  (Final Atomic Buster)
[Command]
name = "fab_a"
command = ~B, D, F, U, B, D, F, U, x
time = 65

[Command]
name = "fab_a"
command = ~D, F, U, B, D, F, U, B, x
time = 65

[Command]
name = "fab_a"
command = ~F, U, B, D, F, U, B, D, x
time = 65

[Command]
name = "fab_a"
command = ~U, B, D, F, U, B, D, F, x
time = 65

[Command]
name = "fab_a"
command = ~B, U, F, D, B, U, F, D, x
time = 65

[Command]
name = "fab_a"
command = ~U, F, D, B, U, F, D, B, x
time = 65

[Command]
name = "fab_a"
command = ~F, D, B, U, F, D, B, U, x
time = 65

[Command]
name = "fab_a"
command = ~D, B, U, F, D, B, U, F, x
time = 65

[Command]
name = "fab_b"
command = ~B, D, F, U, B, D, F, U, y
time = 65

[Command]
name = "fab_b"
command = ~D, F, U, B, D, F, U, B, y
time = 65

[Command]
name = "fab_b"
command = ~F, U, B, D, F, U, B, D, y
time = 65

[Command]
name = "fab_b"
command = ~U, B, D, F, U, B, D, F, y
time = 65

[Command]
name = "fab_b"
command = ~B, U, F, D, B, U, F, D, y
time = 65

[Command]
name = "fab_b"
command = ~U, F, D, B, U, F, D, B, y
time = 65

[Command]
name = "fab_b"
command = ~F, D, B, U, F, D, B, U, y
time = 65

[Command]
name = "fab_b"
command = ~D, B, U, F, D, B, U, F, y
time = 65

[Command]
name = "fab_c"
command = ~B, D, F, U, B, D, F, U, z
time = 65

[Command]
name = "fab_c"
command = ~D, F, U, B, D, F, U, B, z
time = 65

[Command]
name = "fab_c"
command = ~F, U, B, D, F, U, B, D, z
time = 65

[Command]
name = "fab_c"
command = ~U, B, D, F, U, B, D, F, z
time = 65

[Command]
name = "fab_c"
command = ~B, U, F, D, B, U, F, D, z
time = 65

[Command]
name = "fab_c"
command = ~U, F, D, B, U, F, D, B, z
time = 65

[Command]
name = "fab_c"
command = ~F, D, B, U, F, D, B, U, z
time = 65

[Command]
name = "fab_c"
command = ~D, B, U, F, D, B, U, F, z
time = 65

;---------------------------------------------------------------------
; エリアルロシアンスラム　(Aerial Russian Slam)
[Command]
name = "ars_a"
command = ~D,DF, F, D,DF, a
time = 30

[Command]
name = "ars_b"
command = ~D,DF, F, D,DF, b
time = 30

[Command]
name = "ars_c"
command = ~D,DF, F, D,DF, c
time = 30

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; ダブルラリアット  (Double Lariat)
[Command]
name = "dl"
command = x+y+z
time = 1

;---------------------------------------------------------------------
; クイックダブルラリアット　(Quick Double Lariat)
[Command]
name = "qdl"
command = a+b+c
time = 1

;---------------------------------------------------------------------
; バニシングフラット　(Banishing Flat)
[Command]
name = "bf_a"
command = ~F, D,DF, x
time = 25

[Command]
name = "bf_b"
command = ~F, D,DF, y
time = 25

[Command]
name = "bf_c"
command = ~F, D,DF, z
time = 25

;---------------------------------------------------------------------
; スクリューパイルドライバー　(Screw Pile Driver)
[Command]
name = "spd_a"
command = ~B, D, F, U, x
time = 40

[Command]
name = "spd_a"
command = ~D, F, U, B, x
time = 40

[Command]
name = "spd_a"
command = ~F, U, B, D, x
time = 40

[Command]
name = "spd_a"
command = ~U, B, D, F, x
time = 40

[Command]
name = "spd_a"
command = ~B, U, F, D, x
time = 40

[Command]
name = "spd_a"
command = ~U, F, D, B, x
time = 40

[Command]
name = "spd_a"
command = ~F, D, B, U, x
time = 40

[Command]
name = "spd_a"
command = ~D, B, U, F, x
time = 40

[Command]
name = "spd_b"
command = ~B, D, F, U, y
time = 40

[Command]
name = "spd_b"
command = ~D, F, U, B, y
time = 40

[Command]
name = "spd_b"
command = ~F, U, B, D, y
time = 40

[Command]
name = "spd_b"
command = ~U, B, D, F, y
time = 40

[Command]
name = "spd_b"
command = ~B, U, F, D, y
time = 40

[Command]
name = "spd_b"
command = ~U, F, D, B, y
time = 40

[Command]
name = "spd_b"
command = ~F, D, B, U, y
time = 40

[Command]
name = "spd_b"
command = ~D, B, U, F, y
time = 40

[Command]
name = "spd_c"
command = ~B, D, F, U, z
time = 40

[Command]
name = "spd_c"
command = ~D, F, U, B, z
time = 40

[Command]
name = "spd_c"
command = ~F, U, B, D, z
time = 40

[Command]
name = "spd_c"
command = ~U, B, D, F, z
time = 40

[Command]
name = "spd_c"
command = ~B, U, F, D, z
time = 40

[Command]
name = "spd_c"
command = ~U, F, D, B, z
time = 40

[Command]
name = "spd_c"
command = ~F, D, B, U, z
time = 40

[Command]
name = "spd_c"
command = ~D, B, U, F, z
time = 40

;---------------------------------------------------------------------
; アトミックスープレックス　(Atomic Suplex)
[Command]
name = "as_a"
command = ~B, D, F, U, a
time = 40

[Command]
name = "as_a"
command = ~D, F, U, B, a
time = 40

[Command]
name = "as_a"
command = ~F, U, B, D, a
time = 40

[Command]
name = "as_a"
command = ~U, B, D, F, a
time = 40

[Command]
name = "as_a"
command = ~B, U, F, D, a
time = 40

[Command]
name = "as_a"
command = ~U, F, D, B, a
time = 40

[Command]
name = "as_a"
command = ~F, D, B, U, a
time = 40

[Command]
name = "as_a"
command = ~D, B, U, F, a
time = 40

[Command]
name = "as_b"
command = ~B, D, F, U, b
time = 40

[Command]
name = "as_b"
command = ~D, F, U, B, b
time = 40

[Command]
name = "as_b"
command = ~F, U, B, D, b
time = 40

[Command]
name = "as_b"
command = ~U, B, D, F, b
time = 40

[Command]
name = "as_b"
command = ~B, U, F, D, b
time = 40

[Command]
name = "as_b"
command = ~U, F, D, B, b
time = 40

[Command]
name = "as_b"
command = ~F, D, B, U, b
time = 40

[Command]
name = "as_b"
command = ~D, B, U, F, b
time = 40

[Command]
name = "as_c"
command = ~B, D, F, U, c
time = 40

[Command]
name = "as_c"
command = ~D, F, U, B, c
time = 40

[Command]
name = "as_c"
command = ~F, U, B, D, c
time = 40

[Command]
name = "as_c"
command = ~U, B, D, F, c
time = 40

[Command]
name = "as_c"
command = ~B, U, F, D, c
time = 40

[Command]
name = "as_c"
command = ~U, F, D, B, c
time = 40

[Command]
name = "as_c"
command = ~F, D, B, U, c
time = 40

[Command]
name = "as_c"
command = ~D, B, U, F, c
time = 40

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = z+x
time = 1

[Command]
name = "recovery_b"
command = a+b
time = 1

[Command]
name = "recovery_b"
command = b+c
time = 1

[Command]
name = "recovery_b"
command = c+a
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

;-| Dir + Button |----------------------------------------------------
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

;------------------- Street Fighter Zero 3
[Command]
name = "throw_p"
command = /F,x+y
time = 1

[Command]
name = "throw_p"
command = /F,y+z
time = 1

[Command]
name = "throw_p"
command = /F,z+x
time = 1

[Command]
name = "throw_p"
command = /B,x+y
time = 1

[Command]
name = "throw_p"
command = /B,y+z
time = 1

[Command]
name = "throw_p"
command = /B,z+x
time = 1

[Command]
name = "cthrow_p"
command = /DF,x+y
time = 1

[Command]
name = "cthrow_p"
command = /DF,y+z
time = 1

[Command]
name = "cthrow_p"
command = /DF,z+x
time = 1

[Command]
name = "cthrow_p"
command = /DB,x+y
time = 1

[Command]
name = "cthrow_p"
command = /DB,y+z
time = 1

[Command]
name = "cthrow_p"
command = /DB,z+x
time = 1

[Command]
name = "airthrow_p"
command = /$F,x+y
time = 1

[Command]
name = "airthrow_p"
command = /$F,y+z
time = 1

[Command]
name = "airthrow_p"
command = /$F,z+x
time = 1

[Command]
name = "airthrow_p"
command = /$B,x+y
time = 1

[Command]
name = "airthrow_p"
command = /$B,y+z
time = 1

[Command]
name = "airthrow_p"
command = /$B,z+x
time = 1

[Command]
name = "throw_k"
command = /F,a+b
time = 1

[Command]
name = "throw_k"
command = /F,b+c
time = 1

[Command]
name = "throw_k"
command = /F,c+a
time = 1

[Command]
name = "throw_k"
command = /B,a+b
time = 1

[Command]
name = "throw_k"
command = /B,b+c
time = 1

[Command]
name = "throw_k"
command = /B,c+a
time = 1

[Command]
name = "cthrow_k"
command = /DF,a+b
time = 1

[Command]
name = "cthrow_k"
command = /DF,b+c
time = 1

[Command]
name = "cthrow_k"
command = /DF,c+a
time = 1

[Command]
name = "cthrow_k"
command = /DB,a+b
time = 1

[Command]
name = "cthrow_k"
command = /DB,b+c
time = 1

[Command]
name = "cthrow_k"
command = /DB,c+a
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;------------------------ Street Fighter Zero 3
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "xx"
command = /x
time = 1

[Command]
name = "aa"
command = /a
time = 1

[Command]
name = "yy"
command = /y
time = 1

[Command]
name = "bb"
command = /b
time = 1

[Command]
name = "cc"
command = /c
time = 1

[Command]
name = "zz"
command = /z
time = 1

[Command]
name = "ss"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; ファイナルアトミックバスター（Ｌｖ１）
[State -1]
type = ChangeState
value = 3000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = Power >= 1000
trigger1 = (Command = "fab_a") && (Ctrl = 1 || StateNo = 40)
trigger2 = (Command = "fab_b" && Power < 2000) && (Ctrl = 1 || StateNo = 40)
trigger3 = (Command = "fab_c" && Power < 2000) && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 215 || StateNo = 300 || StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)
trigger1 = Command = "fab_a"
trigger2 = Command = "fab_b" && Power < 2000
trigger3 = Command = "fab_c" && Power < 2000

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = StateNo = 200 && Time <= 6
trigger1 = Command = "fab_a"
trigger2 = Command = "fab_b" && Power < 2000
trigger3 = Command = "fab_c" && Power < 2000

;---------------------------------------------------------------------
; ファイナルアトミックバスター（Ｌｖ２）
[State -1]
type = ChangeState
value = 3100
triggerall = StateType != A
triggerall = MoveType != H
triggerall = Power >= 2000
trigger1 = (Command = "fab_b") && (Ctrl = 1 || StateNo = 40)
trigger2 = (Command = "fab_c" && Power < 3000) && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 215 || StateNo = 300 || StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)
trigger1 = Command = "fab_b"
trigger2 = Command = "fab_c" && Power < 2000

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateNo = 200 && Time <= 6
trigger1 = Command = "fab_b"
trigger2 = Command = "fab_c" && Power < 2000

;---------------------------------------------------------------------
; ファイナルアトミックバスター（Ｌｖ３）
[State -1]
type = ChangeState
value = 3200
triggerall = StateType != A
triggerall = MoveType != H
triggerall = Power >= 3000
trigger1 = (Command = "fab_c") && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 215 || StateNo = 300 || StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)
trigger1 = Command = "fab_c"

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateNo = 200 && Time <= 6
trigger1 = Command = "fab_c"

;---------------------------------------------------------------------
; エリアルロシアンスラム（Ｌｖ１）
[State -1]
type = ChangeState
value = 3300
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Ctrl = 1
trigger1 = Command = "ars_a"
trigger2 = Command = "ars_b" && Power < 2000
trigger3 = Command = "ars_c" && Power < 2000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3300
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 215 || StateNo = 300 || StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)
trigger1 = Command = "ars_a"
trigger2 = Command = "ars_b" && Power < 2000
trigger3 = Command = "ars_c" && Power < 2000

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3300
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = StateNo = 200 && Time <= 6
trigger1 = Command = "ars_a"
trigger2 = Command = "ars_b" && Power < 2000
trigger3 = Command = "ars_c" && Power < 2000

;---------------------------------------------------------------------
; エリアルロシアンスラム（Ｌｖ２）
[State -1]
type = ChangeState
value = 3400
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = Ctrl = 1
trigger1 = Command = "ars_b"
trigger2 = Command = "ars_c" && Power < 3000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3400
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 215 || StateNo = 300 || StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)
trigger1 = Command = "ars_b"
trigger2 = Command = "ars_c" && Power < 3000

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3400
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateNo = 200 && Time <= 6
trigger1 = Command = "ars_b"
trigger2 = Command = "ars_c" && Power < 3000

;---------------------------------------------------------------------
; エリアルロシアンスラム（Ｌｖ３）
[State -1]
type = ChangeState
value = 3500
triggerall = StateType != A
triggerall = Power >= 3000
triggerall = Ctrl = 1
trigger1 = Command = "ars_c"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3500
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 215 || StateNo = 300 || StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)
trigger1 = Command = "ars_c"

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3500
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateNo = 200 && Time <= 6
trigger1 = Command = "ars_c"

;---------------------------------------------------------------------
; オリジナルコンボ発動
[State -1]
type = Null;ChangeState
value = 7000 + IfElse(StateType = A,50,0)
triggerall = Command = "s"
trigger1 = Ctrl = 1

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; スクリューパイルドライバー・弱
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "spd_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = StateType != A
triggerall = Command = "spd_a"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = StateType != A
triggerall = Command = "spd_a"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; スクリューパイルドライバー・中
[State -1]
type = ChangeState
value = 1230
triggerall = Command = "spd_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1230
triggerall = StateType != A
triggerall = Command = "spd_b"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1230
triggerall = StateType != A
triggerall = Command = "spd_b"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; スクリューパイルドライバー・強
[State -1]
type = ChangeState
value = 1260
triggerall = Command = "spd_c"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1260
triggerall = StateType != A
triggerall = Command = "spd_c"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1260
triggerall = StateType != A
triggerall = Command = "spd_c"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; アトミックスープレックス・弱
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "as_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = StateType != A
triggerall = Command = "as_a"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = StateType != A
triggerall = Command = "as_a"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; アトミックスープレックス・中
[State -1]
type = ChangeState
value = 1340
triggerall = Command = "as_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1340
triggerall = StateType != A
triggerall = Command = "as_b"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1340
triggerall = StateType != A
triggerall = Command = "as_b"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; アトミックスープレックス・強
[State -1]
type = ChangeState
value = 1370
triggerall = Command = "as_c"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1370
triggerall = StateType != A
triggerall = Command = "as_c"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1370
triggerall = StateType != A
triggerall = Command = "as_c"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; バニシングフラット・弱
[State -1]
type = ChangeState
value = 1100
triggerall = StateType != A
triggerall = Command = "bf_a"
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = StateType != A
triggerall = Command = "bf_a"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = StateType != A
triggerall = Command = "bf_a"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; バニシングフラット・中
[State -1]
type = ChangeState
value = 1110
triggerall = StateType != A
triggerall = Command = "bf_b"
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1110
triggerall = StateType != A
triggerall = Command = "bf_b"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1110
triggerall = StateType != A
triggerall = Command = "bf_b"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; バニシングフラット・強
[State -1]
type = ChangeState
value = 1120
triggerall = StateType != A
triggerall = Command = "bf_c"
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1120
triggerall = StateType != A
triggerall = Command = "bf_c"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1120
triggerall = StateType != A
triggerall = Command = "bf_c"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; ダブルラリアット
[State -1]
type = ChangeState
value = 1000
triggerall = StateType != A
triggerall = Command = "dl"
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = StateType != A
triggerall = Command = "dl"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = StateType != A
triggerall = Command = "dl"
trigger1 = StateNo = 200 && Time <= 6

;---------------------------------------------------------------------
; クイックダブルラリアット
[State -1]
type = ChangeState
value = 1050
triggerall = StateType != A
triggerall = Command = "qdl"
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1050
triggerall = StateType != A
triggerall = Command = "qdl"
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 215 || StateNo = 300
trigger2 = StateNo = 350 || (StateNo = 360 && AnimElem = 6, < 0)

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1050
triggerall = StateType != A
triggerall = Command = "qdl"
trigger1 = StateNo = 200 && Time <= 6

;=====================================================================
; Special Attacks , Moves and so on.
;=====================================================================

;---------------------------------------------------------------------
; ＺＥＲＯカウンター
[State -1]
type = ChangeState
value = 4000 + IfElse(Var(31) = 1,50,0)
triggerall = Command = "holdfwd"
triggerall = Command = "ax" || Command = "by" || Command = "cz"
triggerall = Var(31) != -1
trigger1 = Var(31) = 0 && Power >= 1000
trigger1 = StateNo = [150,153]
trigger2 = Var(31) = 1 && Power >= 1500
trigger2 = StateNo = [150,153]

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = Null;ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = Null;ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; バックドロップ（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
trigger1 = Command = "throw_p"

;---------------------------------------------------------------------
; 噛みつき（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 825
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
trigger1 = Command = "throw_k"

;---------------------------------------------------------------------
; ストマッククロー（Ｐしゃがみ投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100
triggerall = StateType = C
triggerall = Ctrl = 1
trigger1 = Command = "cthrow_p"

;---------------------------------------------------------------------
; パイルドライバー（Ｋしゃがみ投げ）
[State -1]
type = ChangeState
value = 875
triggerall = StateNo != 100
triggerall = StateType = C
triggerall = Ctrl = 1
trigger1 = Command = "cthrow_k"

;---------------------------------------------------------------------
; フライングパイルドライバー（Ｐ空中投げ）
[State -1]
type = ChangeState
value = 900
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_p"

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; ロシアンキック（↓or３＋中Ｋ）
[State -1]
type = ChangeState
value = 600
triggerall = Command = "b"
triggerall = !Command = "holdback"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ダイナマイトキック（↓or３＋強Ｋ）
[State -1]
type = ChangeState
value = 610
triggerall = Command = "c"
triggerall = !Command = "holdback"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; 空中ヘッドバッド（垂直Ｊ中、↑要素＋中Ｐ）
[State -1]
type = ChangeState
value = 620
triggerall = Command = "y"
triggerall = Command = "holdup"
trigger1 = StateType = A
trigger1 = Ctrl = 1
trigger1 = Vel X = 0

;---------------------------------------------------------------------
; 空中ヘッドバッド（垂直Ｊ中、↑要素＋強Ｐ）
[State -1]
type = ChangeState
value = 630
triggerall = Command = "z"
triggerall = Command = "holdup"
trigger1 = StateType = A
trigger1 = Ctrl = 1
trigger1 = Vel X = 0

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = Command = "s"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = StateNo = 300 && Time >= 8

;---------------------------------------------------------------------
; 中パンチ
[State -1]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = StateNo = 300 && Time >= 8

;---------------------------------------------------------------------
; 中キック
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 300 && Time >= 6

;---------------------------------------------------------------------
; しゃがみ中パンチ
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 350
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 300 && Time >= 8

;---------------------------------------------------------------------
; しゃがみ中キック
[State -1]
type = ChangeState
value = 360
triggerall = Command = "b"
triggerall = Command = "holdback"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 370
triggerall = Command = "c"
triggerall = Command = "holdback"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ中パンチ
[State -1]
type = ChangeState
value = 510
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 520
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 530
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ中キック
[State -1]
type = ChangeState
value = 540
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 550
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

