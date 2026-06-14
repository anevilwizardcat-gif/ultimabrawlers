Infinite's Cloud Strife AI patch by Galeo Last updated 2019/06/14

How to use

Put "Cloud_Ga_AI" file and "Cloud_Ga_AI.def" in Infinite's cloud file in select.def

Cloud/Cloud_Ga_AI.def

It can be used if it writes.

Modification

・ Delete CtrlSet of [Statedef -1]

・ Change voice when "OmniSlash" is activated

・ Fixed that kanji at the time of "Cross Slash" and "Max Cross Slash" hit may be reversed.

-Changed the SE at the time of "Max Cross Slash" to the same as other 2 gauge techniques

・ We cope with wide screen and MUGEN 1.1 with direction at the time of KO with background of super special move and super special move


AI setting

Open "Cloud_cmd.cns" in "Cloud_Ga_AI" file with Notepad etc.

AI Config

There is a setting item just below the place where it comes out by searching for.

[State -1, AI Level]; AI Level
type = VarSet
trigger1 =! IsHelper & & AILevel & & Alive & & RoundState = 2
var (59) = 8; 1 to 8
ignorehitpause = 1
You can set the AI ??level. The default is eight.
You can set from 1 to 8, but I think the strength will hardly change even if you change it.

[State -1, AI counterattack frequency]; AI counterattack frequency
type = VarSet
trigger1 =! IsHelper & & var (59)
var (54) = 7; 0: Do not fight back 1 to 9: The larger the number, the harder the attack against the attack 10: Super reaction
ignorehitpause = 1
You can set the frequency of AI counterattack. The default is 7.
It is not used if it is 0. 1 or more will be used, the higher the number, the more frequently it will be used. It is super reaction at 10.

[State -1, AI Blocking frequency]; AI blocking frequency
type = VarSet
trigger1 =! IsHelper & & var (59)
var (53) = 2; 0: do not use 1 to 10: The higher the number, the higher the frequency of use
ignorehitpause = 1
You can set the frequency of AI blocking. The default is 2.
It is not used if it is 0. 1 or more will be used, the higher the number, the more frequently it will be used.

[State -1, AI Guard level]; AI guard level
type = VarSet
trigger1 =! IsHelper & & var (59)
var (52) = 8; 0: Don't guard too much 1 to 10: The larger the number, the harder the guard
ignorehitpause = 1
You can set AI guard and guard switching frequency. The default is eight.
If it is 0, it does not guard too much and switching is appropriate. The guard frequency rises at 1 or more, and the larger the number, the harder the guard and the better guard switching.

Change log

2019/06/11

Start of release

2019/06/14

Add readme
Add guard level to setting item of AI
Add punches and strong punches while standing on the AI ??skill
AI Tome change condition
Add usage statement of "Meteor Rain" of AI
AI guard description correction

