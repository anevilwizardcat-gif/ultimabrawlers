Dhalsim from "Capcom VS. SNK 2" by Gal129
Last Update : 2012/3/18
Progress : 98.3%

"Close Basic Move" command is "Button + Backward Direction".



It is not possible to dizzy when there are two enemies though this character can make a enemy dizzy. 


|||||||||||||||||||||||
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
Note : While MAX of gauge, this char's defence is increased 22.5% and It's offence is increased 10~35%.



--------Update report
2011/9/25	Start
2011/12/25	Release
2012/03/18	Fix AI,Add FinestKO Logo,Fix massage,fix snk groove sfx,etc.


EMail : gal129x1_4@yahoo.co.jp

The images of Warusaki and H" is used for the char of Capcom VS. SNK 2 that I made.

*=====================*
I am variously indebted to these people making the character. 
*----SpecialThanks----*
Capcom
SNK
Elecbyte
H"(Effects and pictures/ I made Reference to CNS)
Just No Point (Chara Sprites)
Aokmaniac13 (Chara Effect Sprites)
Kong (Effects Sprites)
Xenozip(ZERO3 HitBox)
Warusaki3(Effects/I made Reference to CNS)
Rei(Groove System)
