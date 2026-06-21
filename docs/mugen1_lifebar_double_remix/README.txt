                       ______________________________________________________
======================| MUGEN1 Lifebar Double Remix by Phantom.of.the.Server |=====================
                       ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯      [24.10.2025]

 - Contact: potsmugen@gmail.com
 - Website: https://network.mugenguild.com/pots/
 - If you downloaded this file from anywhere else, it's probably outdated
 
 - Custom lifebars for Ikemen GO January 2025 build and above
 - For older versions for older engines, try searching my Mediafire folder



=========================================< INSTALLATION >==========================================

 1 - Open your Ikemen GO's "data" folder

 2 - Create a new subfolder called "mugen1_lifebar_double_remix"

 3 - Move the contents of the archive into the new folder

 4 - Open your screenpack's "system.def" file

 5 - Look for this line under [Files]:

    fight = ../fight.def  ;Fight definition filename

 6A - For 16:9 screen aspect ratio, replace the line with this:

    fight = ../mugen1_lifebar_double_remix/fight_169.def

 6B - For 4:3 screen aspect ratio, replace the line with this:

    fight = ../mugen1_lifebar_double_remix/fight_43.def

 7 - If you don't want commentaries like "first attack", etc, then you're done. Otherwise continue

 8 - Inside Ikemen's "save" folder, open the "config.ini" file with a text editor

 9 - Look for this file in the "Common" group, "States" setting:

  "data/action.zss",

 10 - Replace it with:

  "data/mugen1_lifebar_double_remix/action.zss",

 11 - You're all set. If you want to change the announcer check the F.A.Q.



=========================================< INTRODUCTION >==========================================

This is a continuation of the work I did for the MUGEN1 Lifebar Remix.

It features more original assets than before, including announcers and fonts.

As the general look and feel of the lifebars changed, I'm releasing them separately.



============================================< F.A.Q. >=============================================

Q: I don't like the announcer. Can I change it?
|
A: There are 3 announcers to choose from. Open the "fight_43.def" or "fight_169.def" file (according to chosen aspect ratio)
and look for the [Files] group. Instructions are there.
You can also copy over Lasombra Demon's voice from my previous lifebar with little or no changes. It will just lack the commentary.



=========================================< KNOWN ISSUES >==========================================

 - Some minor rescaling artifacts in the 4:3 version
 - Some engine-side issues



=======================================< VERSION HISTORY >=========================================

<24.10.2025>
 - Minor fixes and Ikemen compatibility updates

<04.03.2025>
 - The stun and guard bars now flash when they're running low

<11.01.2025>
 - The timer now changes color when running out
 - The stun bar is now full when stun points are full

<04.01.2025>
 - Branched off from MUGEN1 Lifebar Remix
 - Replaced all fonts
 - Increased power bar size
 - Replaced announcer
 - Added female announcer
 - Added Nocturnis announcer
 - First release



========================================< WHAT'S MISSING >=========================================

 - More testing



========================================< SPECIAL THANKS >=========================================

 - Nocturnis, for recording himself as one of the announcers
 - Crikk, for the text to speech used in the other announcers
 - Deepak Dogra, for the Geometos font
 - Elecbyte, for the original MUGEN1 lifebars
 - Ikemen GO team, for several additions to the MUGEN1 lifebars
