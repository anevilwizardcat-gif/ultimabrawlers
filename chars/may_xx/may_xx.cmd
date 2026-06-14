;-| ai |-------------------------------------------------------------------
[Command]
name = "CPU1"
command = F, B, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, F, F
time = 1

[Command]
name = "CPU4"
command = U, F, B
time = 1

[Command]
name = "CPU5"
command = U, D, B
time = 1

[Command]
name = "CPU6"
command = B, D, U
time = 1

[Command]
name = "CPU7"
command = F, B, D
time = 1

[Command]
name = "CPU8"
command = F, U, D
time = 1

[Command]
name = "CPU9"
command = F, F, B
time = 1

[Command]
name = "CPU10"
command = F, D, B
time = 1

[Command]
name = "CPU11"
command = F, B, F, F, B, F
time = 1

[Command]
name = "CPU12"
command = U, B, F, F, B, F
time = 1

[Command]
name = "CPU13"
command = U, F, F, F, B, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, F, B, F
time = 1

[Command]
name = "CPU15"
command = U, D, B, F, B, F
time = 1

[Command]
name = "CPU16"
command = B, D, U, F, B, F
time = 1

[Command]
name = "CPU17"
command = F, B, D, F, B, F
time = 1

[Command]
name = "CPU18"
command = F, U, D, F, B, F
time = 1

[Command]
name = "CPU19"
command = F, F, B, F, B, F
time = 1

[Command]
name = "CPU20"
command = F, D, B, F, B, F
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "全員集合"
command = ~B, D, F, B, D, F, b
time = 30

[Command]
name = "全員集合"
command = ~B, D, F, B, D, F, ~b
time = 30

[Command]
name = "だだっこ"
command = ~F, DF, D, DB, B, b
time = 25

[Command]
name = "だだっこ"
command = ~F, DF, D, DB, B, ~b
time = 25

[Command]
name = "山田"
command = ~D, F, D, F, y
time = 25

[Command]
name = "山田"
command = ~D, F, D, F, ~y
time = 25

[Command]
name = "山田reverse"
command = ~D, B, D, B, y
time = 25

[Command]
name = "山田reverse"
command = ~D, B, D, B, ~y
time = 25

[Command]
name = "きりもみ"
command = ~F, DF, D, DB, B, y
time = 25

[Command]
name = "きりもみ"
command = ~F, DF, D, DB, B, ~y
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "イルカさん・縦_Ｓ"
command = ~30$D, $U, y

[Command]
name = "イルカさん・縦_Ｓ"
command = ~30$D, $U, ~y

[Command]
name = "イルカさん・縦_ＨＳ"
command = ~30$D, $U, b

[Command]
name = "イルカさん・縦_ＨＳ"
command = ~30$D, $U, ~b

[Command]
name = "イルカさん・横_Ｓ"
command = ~30$B, F, y

[Command]
name = "イルカさん・横_Ｓ"
command = ~30$B, F, ~y

[Command]
name = "イルカさん・横_ＨＳ"
command = ~30$B, F, b

[Command]
name = "イルカさん・横_ＨＳ"
command = ~30$B, F, ~b

[Command]
name = "OHK"
command = ~F, DF, D, DB, B, a
time = 25

[Command]
name = "OHK"
command = ~F, DF, D, DB, B, ~a
time = 25

[Command]
name = "レスティブローリング"
command = ~F, D, DF, y
time = 15

[Command]
name = "レスティブローリング"
command = ~F, D, DF, ~y
time = 15

[Command]
name = "レスティブローリング_HS"
command = ~F, D, DF, b
time = 15

[Command]
name = "レスティブローリング_HS"
command = ~F, D, DF, ~b
time = 15

[Command]
name = "拍手_P"
command = ~B, DB, D, DF, F, x
time = 25

[Command]
name = "拍手_P"
command = ~B, DB, D, DF, F, ~x
time = 25

[Command]
name = "拍手_K"
command = ~B, DB, D, DF, F, a
time = 25

[Command]
name = "拍手_K"
command = ~B, DB, D, DF, F, ~a
time = 25

[Command]
name = "拍手_S"
command = ~B, DB, D, DF, F, y
time = 25

[Command]
name = "拍手_S"
command = ~B, DB, D, DF, F, ~y
time = 25

[Command]
name = "拍手_HS"
command = ~B, DB, D, DF, F, b
time = 25

[Command]
name = "拍手_HS"
command = ~B, DB, D, DF, F, ~b
time = 25

[Command]
name = "ミストファイナー"
command = ~F, D, DF, a
time = 15

[Command]
name = "ミストファイナー"
command = ~F, D, DF, ~a
time = 15

[Command]
name = "派生"
command = ~D, DB, B, b

[Command]
name = "派生"
command = ~D, DB, B, ~b

[Command]
name = "JH"
command = ~D, DB, B, z

[Command]
name = "JH"
command = ~D, DB, B, ~z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "highjump"
command = D, $U
time = 8

[Command]
name = "highjump_n"
command = D, U
time = 8

[Command]
name = "highjump_f"
command = D, UF
time = 8

[Command]
name = "highjump_b"
command = D, UB
time = 8

[Command]
name = "highjumpcancel"
command = U, D, U
time = 20

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
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "一撃必殺準備"
command = a+b+x+y

[Command]
name = "一撃必殺準備"
command = z+c

[Command]
name = "rc"
command = a+b+x

[Command]
name = "rc"
command = a+b+y

[Command]
name = "rc"
command = a+y+x

[Command]
name = "rc"
command = b+x+y

[Command]
name = "rc"
command = c
time = 1

[Command]
name = "fd"
command = a+x

[Command]
name = "fd"
command = a+y

[Command]
name = "fd"
command = a+b

[Command]
name = "fd"
command = b+x

[Command]
name = "fd"
command = b+y

[Command]
name = "fd"
command = x+y

[Command]
name = "burst"
command = z+a

[Command]
name = "burst"
command = z+b

[Command]
name = "burst"
command = z+x

[Command]
name = "burst"
command = z+y

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_s"
command = /F,s
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
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "!hold_x"
command = ~x
time = 1

[Command]
name = "!hold_a"
command = ~a
time = 1

[Command]
name = "!hold_y"
command = ~y
time = 1

[Command]
name = "!hold_b"
command = ~b
time = 1

[Command]
name = "!hold_z"
command = ~z
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
name = "holdx"
command = /x
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdy"
command = /y
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
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

[Statedef -1];---------------------------------------------------------------

[State -3]
type = changestate
trigger1 = ishelper
trigger1 = ishelper(780+root,id)
trigger1 = stateno != 780
value = 780




[State -1]
type = ChangeState
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = command = "rc"
triggerall = Power >= 500
triggerall = statetype = A
triggerall = movetype != H
trigger1 = stateno = 1001
trigger1 = (time = [0,6]) && var(58)!=2 || (time = [9,12]) && var(58)=2
trigger2 = stateno = 1410
trigger2 = animelemtime(7) = [0,2]
value = 961
ignorehitpause = 1

[State -1]
type = ChangeState
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = command = "rc"
triggerall = Power >= 500
triggerall = statetype != A
triggerall = movetype != H
trigger1 = stateno = 1411
trigger1 = time = [24,26]
trigger2 = var(58)=2
trigger2 = stateno = 415
trigger2 = animelemtime(12) = [0,2]
value = 960
ignorehitpause = 1

[State -1]
type = ChangeState
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = command = "rc"
triggerall = Power >= 500
trigger1 = numhelper(1298) >= 1
trigger2 = numhelper(1299) >= 1
value = 960 + (statetype = A)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 950
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = var(59) = 0
triggerall = command = "rc"
;triggerall = (movecontact||movereversed)
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [200,899])&&(movecontact||movereversed||fvar(28))
trigger2 = (stateno = [1000,3999])&&(movecontact||movereversed||fvar(28))

trigger3 = (stateno = [200,451]) && var(29)

trigger4 = (var(6)||fvar(28))

[State -1]
type = ChangeState
value = 951
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,899]) && (movecontact||movereversed||fvar(28))
trigger2 = (stateno = [1100,3999]) && (movecontact||movereversed||fvar(28))
trigger3 = (var(6)||fvar(28))

[State -2]
type = ChangeState
value = 750
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = fvar(33) >= 1.5
triggerall = command = "burst"
triggerall = alive && roundstate = 2
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100,101]
trigger3 = time <= 1
trigger3 = movetype = A
trigger3 = stateno = [200,640]
trigger3 = prevstateno != [200,640]

[State -1]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = command = "holdfwd"
triggerall = command = "fd"||(command = "holdx")+(command ="holda")+(command ="holdy")+(command ="holdb")>=2
triggerall = command != "holddown"
triggerall = power >= 1000
triggerall = var(40) = 0
trigger1 = Stateno = [150,153]


[State -1]
type = ChangeState
value = 160+(statetype = C)*2+(statetype = A)*4
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 20
triggerall = command = "holdback"
triggerall = (command = "b" && command = "y")||(command = "holdb" && command = "y")||(command = "b" && command = "holdy")
triggerall = var(40) = 0
triggerall = var(58) = 2
triggerall = helper(780+id),fvar(17)=0
trigger1 = (ctrl||fvar(28))||(stateno = [120,140])
trigger2 = stateno = [100,101]
trigger3 = stateno = [110,115]
trigger4 = stateno = 52
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 197,20,61)

[State 153, 3]
type = ChangeState
triggerall = !ishelper
triggerall = helper(780+id),sysvar(0)
triggerall = helper(780+id),sysvar(1)
trigger1 = ((var(20) = [1,7]) && Time >= 15) || HitShakeOver
trigger1 = stateno = 150 || stateno = 152 || stateno = 154
trigger2 = stateno = 156
trigger2 = Time >= 13
value = helper(780+id),sysvar(1)

;===========================================================================

[State -1]
type = ChangeState
value = 3200
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "きりもみ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = stateno != 415
trigger2 = (stateno != [240,242])
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)


[State -1]
type = ChangeState
value = 3150
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = var(59) = 0
triggerall = var(58) != 2
triggerall = power >= 1000
triggerall = command = "山田reverse"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = stateno != 415
trigger2 = (stateno != [240,242])
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)


[State -1]
type = ChangeState
value = 3100
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "山田"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = stateno != 415
trigger2 = (stateno != [240,242])
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = var(40) = 0
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "だだっこ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28)) || (StateNo = 5120 && animtime = 0)
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = stateno != 415
trigger2 = (stateno != [240,242])
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)




;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4001
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(25) = 0
triggerall = var(40) = 1
triggerall = command = "全員集合"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(stateno = 196,18,64)
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(25) = 0
triggerall = var(40) < 2
triggerall = command = "一撃必殺準備"

triggerall = (var(59) <= 0)||(var(59)&&var(40) = 1)

trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(stateno = 196,18,64)


;---------------------------------------------------------------------------


;===========================================================================



[State -1]
type = ChangeState
value = 1190
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(58) = 2
triggerall = var(25) = 0
triggerall = command = "レスティブローリング_HS"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact||movereversed || var(29)) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5

trigger4 = numhelper(780+id)
trigger4 = helper(780+id),sysvar(0)
trigger4 = stateno = 155 && statetype = A

[State -1]
type = ChangeState
value = 1180
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(25) = 0
triggerall = command = "レスティブローリング"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact||movereversed || var(29)) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5

trigger4 = numhelper(780+id)
trigger4 = helper(780+id),sysvar(0)
trigger4 = stateno = 155 && statetype = A

[State -1]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "レスティブローリング" || (command = "レスティブローリング_HS" && var(58)=2)
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "OHK"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))

trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(stateno = 196,18,64)




[State -1]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(58) = 0
triggerall = command = "ミストファイナー"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)


[State -1]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "拍手_P"
triggerall = !numhelper(1210)
triggerall = !numhelper(1211)
triggerall = !numhelper(1212)
triggerall = !numhelper(1213)
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "拍手_K"
triggerall = !numhelper(1210)
triggerall = !numhelper(1211)
triggerall = !numhelper(1212)
triggerall = !numhelper(1213)
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 1202
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "拍手_S"
triggerall = !numhelper(1210)
triggerall = !numhelper(1211)
triggerall = !numhelper(1212)
triggerall = !numhelper(1213)
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 1203
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "拍手_HS"
triggerall = !numhelper(1210)
triggerall = !numhelper(1211)
triggerall = !numhelper(1212)
triggerall = !numhelper(1213)
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)




[State -1]
type = ChangeState
value = 1700
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(58) = 2
triggerall = var(40) = 0
triggerall = power >= 500
triggerall = command = "JH"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)



[State -1]
type = ChangeState
value = 1050 + (var(58)=2)*3
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "イルカさん・縦_Ｓ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 1060
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "イルカさん・縦_ＨＳ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)


[State -1]
type = ChangeState
value = 1000 + (var(58)=2)*3
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "イルカさん・横_Ｓ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)

[State -1]
type = ChangeState
value = 1010
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "イルカさん・横_ＨＳ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
trigger7 = (stateno != [240,242])
trigger7 = stateno != 415

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = stateno = 151 || stateno = 153 || (stateno = 155 && statetype != A)



[State 220, 4]
type = ChangeState
triggerall = var(22)
triggerall = stateno != [241,242]
triggerall = movetype != H
triggerall = statetype = S || statetype = C
triggerall = command = "holdup" && var(59) <= 0 || var(59)>0 || fvar(39)
triggerall = (p2stateno = [246,248]) && p2movetype = H
trigger1 = stateno = 200 && (movecontact||movereversed||fvar(28))
trigger2 = stateno = 210 && (movecontact||movereversed||fvar(28))
trigger3 = (stateno = [220,225]) && (movecontact||movereversed||fvar(28))
trigger4 = stateno = 400 && (movecontact||movereversed||fvar(28))
trigger5 = stateno = 240 && movehit
trigger6 = ctrl

trigger7 = numhelper(780+id)
trigger7 = helper(780+id),sysvar(0)
trigger7 = (stateno = [200,236]) && (movecontact||movereversed||fvar(28))

trigger8 = numhelper(780+id)
trigger8 = helper(780+id),sysvar(0)
trigger8 = (stateno = [400,450]) && (movecontact||movereversed||fvar(28))

value = 241
ctrl = 0

;===========================================================================
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = var(59) = 0
trigger1 = command = "FF" || ((helper(780+id),fvar(7) = [1,10]) && command = "fwd")
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State 空中投げ]
type = ChangeState
value = 850
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = (ctrl||fvar(28))
triggerall = p2bodydist X < 61 - (var(58)=2)*12
triggerall = p2bodydist Y > -80
triggerall = p2bodydist Y < 20
triggerall = p2statetype = A
triggerall = p2movetype != H
triggerall = !helper(780+id),var(8)
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;---------------------------------------------------------------------------
[State 投げ]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X = [-22,22]
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = command = "fwd_b"
trigger1 = (ctrl||fvar(28)) || (StateNo = 5120 && animtime = 0)
trigger2 = stateno = 101 && time >= 6
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 52
[State 投げ]
type = ChangeState
value = 805
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X = [-22,22]
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = command = "back_b"
trigger1 = (ctrl||fvar(28)) || (StateNo = 5120 && animtime = 0)
trigger2 = stateno = 101 && time >= 6
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 52
;===========================================================================
[State -1]
type = ChangeState
value = 130+(statetype = C)+(statetype = A)*2
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = power > 0
triggerall = var(25) = 1
triggerall = stateno != [110,115]
triggerall = var(40) = 0
trigger1 = (ctrl||fvar(28))||((stateno = [160,164])&&time <= 1)&&stateno%2=0
trigger2 = stateno = 100; && time >= 7
trigger3 = stateno = 101
trigger4 = stateno = 52
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 197,20,61)

;===========================================================================
[State -1]
type = ChangeState
value = 450
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_z"
triggerall = var(3) = 0
trigger1 = (stateno = [200, 230])
trigger1 = (movecontact||movereversed)
trigger2 = (stateno = [400, 430])
trigger2 = stateno != 415
trigger2 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 450
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))

trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = var(3) = 0

trigger1 = (stateno = [200, 230])
trigger1 = (movecontact||movereversed)

trigger2 = (stateno = [400, 430])
trigger2 = stateno != 415
trigger2 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))

trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_x"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = (movecontact||movereversed)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52


[State -1]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = command = "back_x"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = (command = "fwd_x")||((!movecontact&&(stateno!=[950,961]))&&(command = "x"&&command="holdfwd"&&command!="holddown"))
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [200, 220])
trigger2 = stateno != 205
trigger2 = (movecontact||movereversed)&&var(3) = 0

trigger3 = stateno = 400||stateno = 410
trigger3 = (movecontact||movereversed)&&var(3) = 0

trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(stateno = 196,18,64)
trigger6 = stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 415
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdfwd"
triggerall = command = "down_a"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_a"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52


[State -1]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(3) = 0
triggerall = command = "down_y"

trigger1 = stateno = [200,225]
trigger1 = (movecontact||movereversed)
trigger2 = stateno = [400, 410]
trigger2 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52

[State -1]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = var(3) = 0
triggerall = p2bodydist X = [-47,49]
trigger1 = stateno = [200,210]
trigger1 = (movecontact||movereversed)
trigger2 = stateno = 400||stateno = 410
trigger2 = (movecontact||movereversed)


[State -1]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X = [-47,49]
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = var(3) = 0
trigger1 = stateno = 220
trigger1 = (movecontact||movereversed)
trigger2 = p2bodydist X > 49 || p2bodydist X < -49
trigger2 = (stateno = [200,210])
trigger2 = (movecontact||movereversed)
trigger3 = p2bodydist X > 49 || p2bodydist X < -49
trigger3 = stateno = 400||stateno = 410
trigger3 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 225
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X > 49 || p2bodydist X < -49
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))

trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_b"
triggerall = var(3) = 0
trigger1 = (stateno = [200,225])
trigger1 = (movecontact||movereversed)
trigger2 = (stateno = [400, 420])
trigger2 = stateno != 415
trigger2 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 430
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52

[State -1]
type = ChangeState
value = 235
triggerall = !ishelper
triggerall = command = "back_b"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 235
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = (command = "fwd_b")||((!movecontact&&(stateno!=[950,961]))&&(command = "b"&&command="holdfwd"&&command!="holddown"))
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 200
trigger2 = (movecontact||movereversed) && var(3) = 0
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(stateno = 196,18,64)
trigger5 = stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = var(3) = 0
trigger1 = (stateno = [200,225])
trigger1 = (movecontact||movereversed)
trigger2 = stateno = 400||stateno = 420
trigger2 = (movecontact||movereversed)

[State -1]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))

trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 12||stateno = 52

;---------------------------------------------------------------------------
[State -1, Taunt];敬意
type = ChangeState
value = 196
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "fwd_s"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(stateno = 196,18,64)
trigger4 = stateno = 40 || stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt];
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [200,451]) && (movecontact||movereversed)
trigger2 = (stateno != [240,242])
trigger2 = stateno != 415
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(stateno = 196,18,64)

;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
[State ２段ジャンプ]
type = ChangeState
value = 99
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) != 1
triggerall = var(12) = 0
trigger1 = var(13) = 2
trigger1 = ctrl
trigger2 = var(13) = 2
trigger2 = stateno = 600 && (movecontact||movereversed||fvar(28))
trigger3 = var(13) = 2
trigger3 = stateno = 620 && (movecontact||movereversed||fvar(28))
trigger4 = var(13) = 2
trigger4 = stateno = 640 && (movecontact||movereversed||fvar(28))

trigger5 = numhelper(780+id)
trigger5 = helper(780+id),sysvar(0)
trigger5 = var(13) = 2
trigger5 = (stateno = [600,640]) && (movecontact||movereversed||fvar(28))

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "highjump" && var(17) = 1
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||movereversed||fvar(28))
trigger2 = stateno = 210 && (movecontact||movereversed||fvar(28))
trigger3 = (stateno = [220,225]) && (movecontact||movereversed||fvar(28))
trigger4 = stateno = 400 && (movecontact||movereversed||fvar(28))
trigger5 = stateno = 1500 && (movecontact||movereversed||fvar(28))

trigger6 = numhelper(780+id)
trigger6 = helper(780+id),sysvar(0)
trigger6 = (stateno = [200,236]) && (movecontact||movereversed||fvar(28))

trigger7 = numhelper(780+id)
trigger7 = helper(780+id),sysvar(0)
trigger7 = (stateno = [400,450]) && (movecontact||movereversed||fvar(28))

;ignorehitpause = 1
[State -1]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "highjumpcancel" && var(17) = 0
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||movereversed||fvar(28))
trigger2 = stateno = 210 && (movecontact||movereversed||fvar(28))
trigger3 = (stateno = [220,225]) && (movecontact||movereversed||fvar(28))
trigger4 = stateno = 400 && (movecontact||movereversed||fvar(28))
trigger5 = stateno = 1500 && (movecontact||movereversed||fvar(28))

trigger6 = numhelper(780+id)
trigger6 = helper(780+id),sysvar(0)
trigger6 = (stateno = [200,236]) && (movecontact||movereversed||fvar(28))

trigger7 = numhelper(780+id)
trigger7 = helper(780+id),sysvar(0)
trigger7 = (stateno = [400,450]) && (movecontact||movereversed||fvar(28))

ignorehitpause = 1
[State -1];ジャンプ属性テスト
type = varset
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdup" && command != "holddown" 
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||movereversed||fvar(28))
trigger2 = stateno = 210 && (movecontact||movereversed||fvar(28))
trigger3 = (stateno = [220,225]) && (movecontact||movereversed||fvar(28))
trigger4 = stateno = 400 && (movecontact||movereversed||fvar(28))
trigger5 = stateno = 1500 && (movecontact||movereversed||fvar(28))

trigger6 = numhelper(780+id)
trigger6 = helper(780+id),sysvar(0)
trigger6 = (stateno = [200,236]) && (movecontact||movereversed||fvar(28))

trigger7 = numhelper(780+id)
trigger7 = helper(780+id),sysvar(0)
trigger7 = (stateno = [400,450]) && (movecontact||movereversed||fvar(28))

var(17) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||movereversed||fvar(28))
trigger2 = stateno = 210 && (movecontact||movereversed||fvar(28))
trigger3 = (stateno = [220,225]) && (movecontact||movereversed||fvar(28))
trigger4 = stateno = 400 && (movecontact||movereversed||fvar(28))
trigger5 = stateno = 1500 && (movecontact||movereversed||fvar(28))

trigger6 = numhelper(780+id)
trigger6 = helper(780+id),sysvar(0)
trigger6 = (stateno = [200,236]) && (movecontact||movereversed||fvar(28))

trigger7 = numhelper(780+id)
trigger7 = helper(780+id),sysvar(0)
trigger7 = (stateno = [400,450]) && (movecontact||movereversed||fvar(28))

;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 110
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "FF" || ((helper(780+id),fvar(8) = [1,10]) && (command = "fwd"||(command!="holdup"&&command!="holddown"&&command="holdfwd"&&(prevstateno=[40,41])&&helper(780+id),sysvar(0))))
triggerall = pos y <= ifelse(vel y < 0,-35,-10) || helper(780+id),sysvar(0)
trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(13) < 2
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
trigger3 = stateno = [241,242]
trigger3 = var(13) < 2
trigger4 = stateno = 650 && ctrl
trigger4 = var(13) < 2
trigger5 = stateno = 961 && movetype != H
trigger5 = time = 1

;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 115
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= ifelse(vel y < 0,-35,-10)
trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(13) < 2
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
trigger3 = stateno = [241,242]
trigger3 = var(13) < 2
trigger4 = stateno = 650 && ctrl
trigger4 = var(13) < 2

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger1 = stateno != 1101
trigger2 = (stateno = [600,630])
trigger2 = (movecontact||movereversed) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5
trigger4 = stateno = 99 && (prevstateno = 600 || prevstateno = 620)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 610
trigger2 = (movecontact||movereversed) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5
trigger4 = stateno = 99 && prevstateno = 600
trigger5 = stateno = 640 && time >= 28
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 600 || stateno = 620 && var(58)=2
trigger2 = (movecontact||movereversed) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5
trigger4 = stateno = 99 && prevstateno = 600
trigger5 = stateno = 640 && time >= 28
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 600 || stateno = 610
trigger2 = (movecontact||movereversed) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5
trigger4 = stateno = 99 && prevstateno = 600
trigger5 = stateno = 640 && time >= 28
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 635
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 110 || stateno = 115
trigger2 = time >= 5
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 630
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = (movecontact||movereversed) && var(3) = 0
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 5
trigger4 = stateno = 99 && (prevstateno = 600 || prevstateno = 620)
trigger5 = stateno = 640 && time >= 28
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 120
triggerall = var(59) = 0
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "holdback"
triggerall = command = "holdup"
triggerall = statetype = A
trigger1 = ctrl&&(Stateno!=[120,154])
trigger1 = inguarddist
