Blanka from Capcom VS. SNK 2
Last Update : 2015/2/15

There are no Rolling Cancel.

If you would like to disable the groove selection, you should read "How to set to disable groove selection.txt".

The setting change can be variously done by changing the numerical value in parentheses in the part written "Fvar(?) = ()" in option.cns.
EX-Groove system is revokable in option.cns.


Guard Clash system is pseudo. It is necessary to make shape "Var of each character for the value of Guard Clash is made, and the var is read" to reproduce the original completely.Complete reproduction of this part is almost impossible though it aims at complete reproduction.

Length of Guard Clash Point : 38 Point in P Groove, 43 point in K Groove, 48 point in others
Amount of a guard crash value decrease(The original is different in each 
Moves. )
===basic moves===
Only the first decreases to the value of Guard Clash though it goes out by two times. 
Light moves : all 2 points.
Middle moves : all 4 points. 
High moves : 7 points in the short distance. 6 points in other distances.

Special Moves : The cutting down damage is five points in 115 or less. Besides, It is a point that divided the one that six times were done by seven as for the cutting down damage.
In 115 or less the cutting down damage, it is Guard Clash is one-point ; Vega(having claw and mask)'s Rolling Crystal Flash and Sakura's Shououken
Super Aurts : a point of all


--------Groove System--------
You can Choose 6 Grooves.
All Grooves has Long Jump and Back Dash.

C-Groove
Gauge : (Lv.1,Lv.2,Lv.3(MAX)),Gauge Length(Normal) : 168Dot=56*3
Dash : Dash
Air System : Air Guard
Emergency Avoidance : Rolling
Liedown Action : Tactical Recovery
Counter System : Counter Attack
Note : SuperAurts of LV.2 can be canceled with Supermoves and SuperAurts while becoming a hit.
Note : The attack power rises by the amount of the gauge; It is increased 1.05 in MAX. It is increased 1.02 more than 2/3 from MAX. It is increased 1.01 more than 1/3 and less than 2/3.

A-Groove
Gauge : (Lv1*2),Gauge Length(Short) : 144Dot=72*2
Dash : Dash
Air System : None
Emergency Avoidance : Rolling
Liedown Action : Safe Fall
Counter System : Counter SystemAttack
Other : Custom Combo(While state of full gauge(Ground/Air))

P-Groove
Gauge : (Lv3(MAX)),Gauge Length(Long) : 192Dot
Dash : Dash
Air System : Small Jump
Emergency Avoidance : None
Liedown Action : Tactical Recovery
Counter System : None
Other : Parry(Stand/Crouch/Air)

S-Groove
Gauge : (Lv1 OR Lv3(Health is less than 30% and Gauge MAX)),Gauge Length(Short) : 100Dot
Dash : Run
Air System : Small Jump
Emergency Avoidance : Dodge
Liedown Action : Tactical Recovery
Counter System : Counter SystemAttack
Other : Power Charge
Note : SuperAurts of Lv.1 can be used even if Gauge is not MAX when physical strength is 30% or less. 
Note : It eats Attack, and only guard and the Gauge accumulation operation : how to collect Gauge.
Note : While MAX of gauge, this char's offence is increased 15%.

N-Groove
Gauge : (Lv1*3ORLv.3),Gauge Length(Long) : 216Dot=72*3
Dash : Run
Air System : Small Jump
Emergency Avoidance : Rolling
Liedown Action : Safe Fall
Counter System : Counter Attack/Movement(Front/Back)
Other : Power MAX ON(Spend 1 Gauge)
Note : While Power MAX ON, you can use SuperAurts of MAX(Lv.3).
Note : While Power MAX ON, this char's offence is increased 20%.

K-Groove
Gauge : (MAX(Lv.3)),Gauge Length(Short) : 72Dot
Dash : Run
Air System : Small Jump
Emergency Avoidance : None
Liedown Action : Safe Fall
Counter System : None
Other : Just Defence(Stand/Crouch/Air)
Note : Only when it eats Attack, and Just Defense : how to collect Gauge
Note : While MAX of gauge, this char's defence is increased 12.5% and It's offence is increased 10~35%.



I use my friend rei's CNS of Groove System and H"'s Pictures.


--------Update report
2007/2/13 Release
2007/2/23 Fix back step rolling. Fix punch throw. Fix win pose.
Fix jump velocity.Fix Tactical Recovery .and so on.
2007/2/23 Add Ground Shave Rolling. and so on
2007/3/2 Add Shout of Earth. Fix Hit Back of Electric Thunder.
2007/3/26	Fix Power MAX.
2007/4/3	Fix Dizzy.Add Cancelling Any Move.Fix Long Jump.Fix SNK Super Aurts Finish.and so on.
2007/4/5	Add Electric. Bug Fix Custom Combo and Power MAX.and so on.
2007/4/22	Fix Air Combo.Fix Defence in Power MAX of K-Groove.
2007/4/22	Add WinPose.
2007/4/25	Fix WinPose.Normal attack voice fix.and so on.
2007/4/29	Fix damage of Air Combo(fall.defence_up).and so on.
2007/5/4	Fix Command of Tap. Fix Direct Lightning.
2007/5/4	increased walk velocity.doesn't hit enemy recoverying in air. Fix Parry. Fix Counter Attack and Movement. Fix Safe Fall.
2007/5/13	Fix Blocking.Fix Offence while MAX of gauge in K-Groove.Fix Sound(Medium Punch).Fix Just Defence.Fix readme.and so on.
2007/5/27	Fix Avoid Throw.
2007/6/6	Fix Combo(Hit Count).Fix Sounds and Add Sounds.Fix Bug(Dodge).
2007/6/10	Fix Guard Clash.
2007/6/16	Fix Combo(Hit Count).Fix Sounds.
2007/6/16	Fix Blocking.
2007/9/4	Add Super Combo Cancel.Bug Fix(Just Denfence). and so on.
2007/9/4	Fix Reversal. Fix cancelation. Fix Run Sound. Fix AI(guard).
2007/9/4	Fix Attack of MAX SuperAurts in S/N-Groove.
2007/9/4	Fix AI. Fix Front Step and Back Step.
2007/9/4	Fix Jump Velocity. Fix Electric sound.
2007/12/03	Fix Down Effect. Fix Complete bug and so on.
2007/12/03	Fix Just Defence in the air. Add Dizzy Effect.
2007/12/03	Fix Cheap FINISH. Fix Damage Voice.
2007/12/03	Fix Air Guard. Fix Fall Animation.
2007/12/03	Fix Gauge position. Fix "How to set to disable groove selection.txt".Fix Bug(custom combo)
2007/12/03	Dizzy and Guard Clash adjust chain combo.(In chain combo, Dizzy is 0 Guard clash decrease 1 dot.).
2007/12/03	Fix Down effect animation. Fix Power Charge. Fix Pictures of Groove Selection. Fix AI(Guard). and so on.
2007/12/03	Fix AI.
2008/2/18	Add setting of ON/OFF of dizzy and guard clash(you press the start button when the round begin).
2008/2/18	If you choose blocking/just defence in EX-groove. Amount of the guard clash gauge is decreased.
2008/2/18	Fix Air Just Defence.
2008/2/18	Fix Air Combo. Fix Guard Clash. Fix SNK gauges.
2008/2/18	Fix Avoid Throw. Fix ON/OFF. You can change ON/OFF in option.cns.Fix Safe Fall.
2008/2/18	Fix hitpausetime. Fix Damage Voice. Fix First Attack. and so on.
2008/3/20	Fix/Add a lot of bonus message.Fix dizzy system. Fix guard clash system.
2008/3/20	some groove is little weak or little strong(please read option.cns).
2008/3/20	Fix light attack(hitback and cancel).
2008/3/20	Fix custom combo.
2008/3/20	Fix AI(EX-Groove). Fix Bug and slight mistakes.
2008/3/20	Fix AI(Add custom combo). and so on.
2008/6/23	Fix Dizzy. Fix Guarding. Fix AI. and so on.
2008/9/6	Add enemy guard clash. Fix adding power of Parry and Just Defence. Fix guard clash and dizzy. Fix AI. and so on.
2010/3/31	Fix AI. Fix Just Defence Bug. Decrease raging defence 1.225 to1.125. Fix figure sprites. Bug Fix. and so on
2010/5/2	Fix Bug. and so on.
2010/6/4	Fix Air X accel.
2015/2/15	Add finestKO,Fix Small Portrait, FixAI, and so on.


EMail : gal129x1_4@yahoo.co.jp

The images of Warusaki and H" is used for the char of Capcom VS. SNK 2 that I made.


I am variously indebted to these people making the character. 
*----SpecialThanks----*
Capcom
elecbyte
H"(Effects and pictures/ I made Reference to CNS)
The Dreamslayer(Effects)
Wuwo(Character Pictures)
Warusaki3(Effects/I made Reference to CNS)
jigsaw(Palettes)
Rei(Groove System)