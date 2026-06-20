# ultimabrawlers — CHANGELOG (append-only)

Newest at top. **Grep this by subsystem ID; do not read it whole.** Each entry is one shipped change.
Entry format:

```
## [Pnnn] YYYY-MM-DD HH:MM CT — build <tag-or-unknown>
Subsystem: <atlas-id> [/ family or sub-area]
Files shipped: <subfolder/filename>, ...
Change: what was edited, in one or two precise sentences.
Why: the reason / the bug it fixes.
Left untouched: things deliberately not changed + why (gameplay vars, settled chars, etc.).
Test: what Raven should verify.
Status: shipped | awaiting-test | confirmed | reverted. Supersedes: <P-id or none>.
```

Patch IDs are monotonic and never reused. Confirmed/reverted status gets updated in place by editing
the entry's Status line (the only allowed in-place edit; everything else is append-only).

---

> NOTE: P001–P006 are **backfilled** from the handoff doc. Exact dates/times were not recorded, so they
> read "date-unknown (pre-2026-06-16)". Treat them as historical context, not precise audit.

## [P018]  (font baked in - see P018b note in body)
 Font BAKED IN (P018b): chose VT323 (Raven's pick; Silkscreen secondary). Added to [Files]:
font10 = ikemen1/fonts/VT323.ttf + font10.height = 44 (verified via centered-menu mock render vs 54px spacing;
40-48 all readable, 44 chosen). Repointed [Title Info] menu.item.font + menu.item.active.font from 4 to 10.
VT323.ttf must be dropped into data/ikemen1/fonts/. Height is a single tweakable number. To switch to
Silkscreen later: swap the font10 file + maybe height ~32.
 2026-06-16 — menu/logo centered (ikemen1 motif) + pixel font options
File: data/ikemen1/system.def (active motif). Menu was hard-right (menu.pos=1240,330, font align -1).
Centered: menu.pos -> 640,330 (top-left origin, 1280 wide => 640); menu.item.font / menu.item.active.font
align -1 -> 0. Logo (sprites 0,0-0,3 in system.sff, 699x257, centered axis 349) sat at start=-250,155 on the
4 [TitleBG Title Logo*] layers; BG layers use SCREEN-CENTER origin (proof: [AttractBG Title Logo] same sprite
at start=0; negative -250 only makes sense center-relative) so start.x -250 -> 0 centers it; y=155 + sin.y bob
untouched. Two coordinate systems coexist: menu/foreground = top-left (center=640), BG layers = center
(center=0). Fonts: motif declares font1-9 in [Files]; menu uses font4=ikemen1/fonts/Menu1.def. To swap: add
fontN = ikemen1/fonts/<file>.ttf (Ikemen takes TTF/.fnt/.def), set fontN.height, point menu.item.font at N.
Provided pixel TTF options (Silkscreen Bold recommended, Press Start 2P / Silkscreen / VT323) + rendered
preview. Did NOT wire a font into system.def (TTF height needs a visual test pass).

### P017b — cvszcammy default power bar hidden
Cammy showed BOTH her custom groove gauge AND the default engine power bar (+level number). Added the standard
Warusaki3 `[State -2, Hide Engine Power Bar]` AssertSpecial flag=noPowerBarDisplay to cvscammy.cns -2 (Guile
and the roster already have it; her fresh version lacked it). This is the INVERSE of the Gal129/Honda P011 fix
(those chars REMOVE the assert because they use the default bar). Verified her groove gauge spawn (6100) is
untouched - the assert only flips the engine power-bar flag, independent of the custom gauge helper.
## [P017] 2026-06-16 — cvszcammy (Warusaki3) full Warusaki3 treatment
Files: cvszcammy/cvscammy.cns (popups/announcer) + cvszcammy/groove.cns (bench-UI + intro-hide).
New Warusaki3 char (folder cvszcammy, main cns = cvscammy.cns, NOT cvszcammy.cns). Standard groove
architecture (cvs_common + groove.cns + config.txt). Treatment:
  - GP: ALREADY off in her config.txt (var(0) = 2**0 in [State 10000, see GROOVE POINT]) - no action.
  - Popups/announcer: P014 generic patch on cvscammy.cns -> 46 popups + 2 announcer gated (uniform w/ roster).
  - Meter bench-UI + intro-hide: her groove.cns (md5 014ce641) was the PRE-bench-UI version - 0 bench guards,
    meters never hid when benched AND showed during intro. Diff vs roster groove.cns: her file is a STRICT
    SUBSET (0 Cammy-only lines; the 165 missing lines are exactly the bench-UI guards+sweeps). So replaced her
    groove.cns with the finished variant-A groove.cns (grooveA_P015: bench-UI + roundstate=2 intro-hide).
    Verified zero content loss. Her gauge explod-id sequence is byte-identical to variant A's.
LESSON: a freshly-pushed Warusaki3 char may ship the ORIGINAL groove.cns (no bench-UI). Diff vs a known-good
variant; if it's a strict subset, swap in the finished groove.cns rather than hand-adding 165 lines.

## [P016] 2026-06-16 — P014 rolled to 11 groove chars + Iori (H) bespoke popup gate
Files: cvsryu/ken/chunli/zangief/gouki/king/nakoruru/haohmaru/kyo/terry/sakura .cns (popup+announcer, P014
generic patch, uniform 46 popups + 2 announcer each) ; Cvs_iori/Cvs2_system.cns (bespoke).

GROOVE ROLLOUT: the P014 patch (gate -2 helper spawns whose stateno expression contains a 6600-6803 integer,
literal or ifelse, + group-9000 PlaySnds) applied identically to all 11 remaining groove chars. Identical
counts confirm the -2 spawn block is boilerplate across the roster.

IORI (author "H", Family-B): his popups are H's OWN system, NOT the groove 6600-6803 range - they live at
6000-6109 (e.g. COUNTER HIT=6001+var(45)*10, FIRST ATTACK=6002+var(45)*10, BLOCKING/GUARD CANCEL/JUST DEFENDED/
TECH BONUS/Reversal/SPECIAL+SUPER+FINEST finish text) + naration 6800-6803, all spawned in cvs2_system [-2].
That's why his "Counter!" survived the groove patch. FIX: gate -2 helper spawns whose stateno contains a number
in 6000-6109 or 6800-6803. CRITICAL PROTECTIONS (NOT gated): the "Gauge" helper (20000+Var(30)*1000 = the
meter) and the "groove" keyctrl helper (stateno 30000) - gating that keyctrl helper would clone Iori exactly
like the Mai v1 bug. The 8130 "COUNTER HIT EFFECT" (hit spark VFX) is also left (not in range). LEFT ALONE:
the 9000/9010/9020/9030 "finish" helpers - these are the dramatic super-KO CINEMATIC (assert NoBG/NoMusic/NoFG
to darken the screen), not a text bubble; pending Raven's call on whether to also kill that.
GENERAL LESSON: H/Family-B chars use a different popup state range AND carry a keyctrl groove helper in their
own cns -2 - always gate by stateno-range + protect name~groove/keyctrl, never blanket-gate -2 helpers.

## [P015] 2026-06-16 — groove meters hidden until round starts
Files: groove.cns (variant A: guile/ryu/ken/chunli/zangief/gouki/king/nakoruru ; variant B: haohmaru/kyo/
terry/sakura)
The groove EX/super meter (the "gauge" helper, stateno 6100+(var(20)*10), display states 6100/6110/6120/6130/
6140/6150/6160/6170 in groove.cns) was guarded by `roundstate <= 2`, which INCLUDES the intro (roundstate 0/1)
- so the meter showed during the walk-in before FIGHT. Fix: in the 8 gauge states only, create-guards
`roundstate <= 2` -> `roundstate = 2` and the bench sweep `roundstate > 2` -> `roundstate != 2`. Net: meter
visible ONLY during the active fight (roundstate 2); hidden during intro (0/1) AND post-KO (3/4). Bench/KO/dead
hiding preserved (other sweep triggers untouched). GP state 6500 and all non-gauge states verified byte-
identical. groove.cns has 2 variants so 2 files; covers all 12 groove chars. Other meter families (cvs2_system,
SF3, Chun-Li, Jedah, Morrigan) still to be audited for the same intro-hide.

### P014 addendum — computed-stateno popup survivors fixed
First test (Guile): combos/grades gone, but "Counter Hit" (and possibly its voice) survived. CAUSE: the active
Counter Hit spawn uses a COMPUTED stateno `stateno = ifelse(!(var(0)&2**13),6641,6631)` - the first numeric
gate matched only LITERAL statenos, so the 4 ifelse-based spawns slipped through. FIX: gate by ANY 6600-6803
integer appearing in the stateno expression (literal or inside ifelse). Now 46 popup spawns + 2 announcer
gated; all popup-named helpers (Guard/First Attack/Counter Hit/Tech Hit/Reversal/Finish Hit/Complete/Vital/
Perfect/Max Combo/naration) confirmed gated. LESSON: message spawns can carry computed statenos - match by
number-in-expression or by helper name, not literal stateno only.

## [P014] 2026-06-16 — char-side popup + announcer suppression (Guile reference; roster rollout pending)
File shipped: cvsguile/cvsguile.cns  (reference; identical generic patch to roll to other 11 once verified)

The CvS chars spam their OWN combo counter, action messages, grade calls, AND announcer voice over the
engine's native ones. All of it is cosmetic helpers spawned from the MAIN cns `[Statedef -2]`:
  - 6600-6644 : combo / action messages (FIRST ATTACK, COUNTER, etc.)
  - 6700-6764 : additional message family
  - 6800-6803 : grade narration helpers (Fantastic/Great/Finish/Complete) - helper name "naration_N",
                these also PLAY the announcer voice (snd group 10000), so gating them kills grade voice too
  - announcer : root-side PlaySnd snd group 9000 (e.g. [State -2,HyperComboFinish] 9000,0; 9000,4)
FIX (P014): add `triggerall = 0` to each popup helper spawn (42) + each group-9000 PlaySnd (2) in -2.
Pure cosmetic gating - CANNOT affect gameplay or cause a clone (worst case a popup remains). Fully reversible
(remove the triggerall=0 lines). GP (state 6500 spawn) intentionally NOT touched here - handled by config
var(0) bit 0 (P013), kept separate.
NOTE: groove.cns has TWO variants across roster (md5 edb94315 x8: guile/ryu/ken/chunli/zangief/gouki/king/
nakoruru ; e6abe860 x4: haohmaru/kyo/terry/sakura) but the popup SPAWNS live in each char's own cns -2, so the
generic patch (gate helper spawns with stateno in 6600-6644/6700-6799/6800-6803 + 9000 PlaySnds) applies
per-file regardless. Rollout: same programmatic patch to the other 11 cvs*.cns after Raven verifies Guile.

## [P013] 2026-06-16 — GP counter hide (groove roster) + Mai groove-gauge bench fix + announcer/popup recon
Files shipped: config.txt (drop into all 12 groove folders), cvsmai/cvs2_system.cns

GP / Grade-Point counter — HIDE (groove family): the author's switch is var(0) bit 0 ("2**0 = GROOVE POINT
  OFF", documented in config.txt; state 6500 ChangeStates to empty state 6501 when the bit is set). Edited the
  one line in config.txt `[State 10000, see GROOVE POINT]`: `var(0) = 0` -> `var(0) = 2**0`. config.txt is
  BYTE-IDENTICAL (md5 80eff3a4) across all 12 groove chars (cvsguile/haohmaru/kyo/terry/sakura/ryu/ken/chunli/
  zangief/gouki/king/nakoruru), so ONE file covers the roster. NOTE: Haohmaru was NOT actually hidden before —
  his config/groove.cns/cns are identical to Guile's on GP; the whole roster showed it. GP is display-only
  (CvS2 grade score, never consumed) so hiding is cosmetic and safe. Honda's GP is Family-B (cvs2_system,
  different config structure) — deferred to Family-B pass.

Mai (author "H", Family-B cvs2_system, gauge state 21000): her groove gauge had 24 explods and ZERO bench
  handling (showed always). Added the standard kyo/terry bench pattern (Sweep RemoveExplod + Restore
  ChangeState) at the TOP of state 21000, so it hides on tag-out/KO/round-end and re-draws on tag-in. Does NOT
  remove the gauge (the prior fix had deleted it entirely).

Announcer + action popups — RECON (not yet changed): announcer = sound GROUP 9000 (PlaySnd in the main cns,
  e.g. value=9000,0 on WinKo). Action/combo popups = the message-helper family (states 6600-6644 in groove.cns)
  spawned from the MAIN cns `[Statedef -2]` (cvsguile L9867-10350), gated by var(58) bits; with var(58)=0
  (default) only the base set (6600/6602/6603/6604) spawns. Plan: patch ONE char (Guile) as reference - gate
  those base message spawns + the 9000 PlaySnds - have Raven verify, THEN roll to all. Do NOT mass-edit 12
  chars unverified. Open Q for Raven: kill the combo COUNTER (hit number) too, or only action messages?


### P013 addendum — Mai gauge v1 REVERTED (clone) -> v2 (safe)
v1 (Sweep + Restore ChangeState value=21000) caused a Mai CLONE that attacked with its own CPU + console
"invalid state 30000" error. ROOT CAUSE: state 21000 is run by a keyctrl=1 helper named "groove" (id 20000,
home state 30000), gated by a var(30) / Root,Numhelper(20000) handshake. The Restore's ChangeState re-entry
reset that helper's timeline and broke the handshake -> it fell to state 0 as a keyctrl entity (clone).
HARD LESSON: NEVER use a ChangeState/re-entry "restore" on Mai's 21000 (or any state that is itself the
groove-helper/keyctrl machinery). v2 hides the gauge WITHOUT re-entry: each gauge-explod CREATE is gated on
`numexplod(id)=0 && !benched && root,alive && roundstate<=2`, plus a per-id RemoveExplod sweep on bench/KO/
round-end. All runs inside the helper's existing per-tick loop; var(30)/DestroySelf/29000-spawn untouched.
v2 cannot reproduce the clone (no ChangeState). Worst case = behaves like always-on original.


### P011 extension — Honda (Cvs_Honda) normal-meter
Honda is another Gal129 normal-meter char (folder Cvs_Honda, def Cvs_honda.def, uses Cvs2_system.cns). Same
treatment as cvs2_blanka/cvs2_dhalsim: disabled `[State -2, Hide Engine Power Bar]` AssertSpecial
(flag=noPowerBarDisplay) in Cvs2_system.cns L9643 (trigger1 = 1 -> 0) so the default engine power bar shows.
No GP for Honda (per Raven). No custom-gauge plumbing existed on Honda, so nothing to revert.

## [P012] 2026-06-16 23:10 CT — build nightly-06-07-2026
Subsystem: HUD / fight.def [Powerbar]
Files shipped: data/fight.def
Change: normalized every `p{1,2}.front<N>.palfx.sinmul` (front500..front10000 + frontMax) to the base
  `front` value `18, 18, 18, 70`. They previously varied per power threshold (front500=12,12,12,90, etc.).
Why: the power bar is one fill sprite (43,0) with mul=256,256,256; the per-threshold sinmul is a white shimmer
  added over the blue sprite. Lower sinmul = less white = darker/more-saturated blue. At 500 power (half of
  level 0) it switched front->front500 and visibly dropped to a darker blue, staying dark up the levels. Making
  all thresholds match the initial `front` shimmer keeps brightness uniform across the whole fill.
Note: there is a separate `front.palfx.sinmul = 128,128,128,15` in a DIFFERENT bar section (not [Powerbar]) —
  do not confuse it with the powerbar base; scope edits to inside [Powerbar].

## [INVESTIGATION] 2026-06-16 — GP / Grade-Point counter (state 6500)
GP = CvS2 grade/score (var(50)); awards points for win quality (remaining life, combos, perfects, no-damage,
  round wins). It is DISPLAY-ONLY — var(50) is never consumed and gives no combat advantage; purely cosmetic.
Lives in: groove.cns state 6500 (groove family, PER-CHAR copies) + Family-B cvs2_system (Honda/Mai/Iori).
  NOT present in Family-C Gal129 cvs2_blanka/cvs2_dhalsim (no statedef 6500). Display = box (anim 6500/6550),
  "GP" label (6501/6551), digits (explods 6510-6517), near top-center below health bars.
Current state: only BENCH-guarded (shows when active, hides when benched). Checked cvsterry's groove.cns — its
  GP counter is still active-visible, identical to cvsguile's — so despite the note that kyo/terry/etc were
  "hidden", the GP counter itself does NOT appear hard-hidden in those files. Flag to Raven before mass-editing.
To hide fully: set the ~20 GP-display explod `triggerall` to 0 (or comment them) per char's 6500 state; leave
  the score calc (harmless). Low-risk, cosmetic, per-char (groove.cns is not shared).

## [P011] 2026-06-16 22:00 CT — build nightly-06-07-2026
Subsystem: bench-ui-meters / Family C (Gal129) — RESOLUTION + revert of P007-P010
Files shipped: cvs2_blanka/N-cvs2_blanka.cns, cvs2_blanka/cvs2_system.cns,
  cvs2_dhalsim/N-cvs2_dhalsim.cns, cvs2_dhalsim/cvs2_system.cns
THE ANSWER: Gal129's cvs2_blanka/cvs2_dhalsim do NOT have a working custom power meter. The author's blurb
  ("multiple grooves incl. custom EX-mode power bar, integrated Guard bar, integrated CVS2 system") oversells
  it; a FRESH install of the character shows a plain ENGINE power meter. The 8000/8100 intro indicator and the
  8200 gauge family exist in the code but do not render as a usable bar in this game. Every attempt to surface
  the 8200 gauge (P008 un-gate + bench blocks, P009 var(59) guard, P010 groove clamp) was chasing a phantom.
Change: (1) REVERTED P008/P009/P010 — N- 8200 spawn restored to Gal129 original (partner-exclusions intact, no
  clamp/gates); cvs2_system restored to pristine (8200 bench Sweep/DestroySelf blocks removed). (2) Disabled the
  `[State -2, Hide Engine Power Bar]` AssertSpecial (flag=noPowerBarDisplay) in each N- — that P001-era assert
  hid the default engine power bar to make room for a custom bar that never displays. With it off, the normal
  engine power meter shows and the engine handles tag-in/out natively (active char's bar shows, benched char's
  doesn't) — exactly the desired behavior.
Not touched: P007 (st5 intro-indicator arbitration comments) — affects only the never-relevant 8000/8100 intro
  groove display, inert w.r.t. the power bar; left as-is to avoid disturbing prior work.
Lesson: VERIFY a feature actually renders in a fresh install before building meter plumbing for it. An author's
  feature blurb is marketing, not a spec.
Status: shipped — should be the final word on Blanka/Dhalsim meters.

## [P010] 2026-06-16 20:30 CT — build nightly-06-07-2026
Subsystem: bench-ui-meters / Family C (Gal129) — THE fix for "no visible meter" (completes P008/P009)
Files shipped: cvs2_blanka/N-cvs2_blanka.cns, cvs2_dhalsim/N-cvs2_dhalsim.cns
Change: clamped the 8200 gauge-helper spawn stateno to a valid groove:
  `stateno = 8200 + ifelse(var(59)=[0,6], var(59), 0)*10 + (var(59)=6)*5`. Disabled the P009 `var(59)!=-1`
  guard (insufficient — it only caught -1).
ROOT CAUSE (the piece missed in P008/P009): the gauge picks its state by `8200 + var(59)*10`, and in tag
  `var(59)` is copied from the partner via `var(59) = partner,var(20)` (the [State -3] VarSets). **The
  partner's var(20) is NOT a groove index.** In groove.cns it is a reused scratch var that during the match
  holds a GROOVE-POINT DISPLAY COORDINATE — config.txt sets `var(20)=5`, and states 6713/6723 compute
  `var(20)=root,var(47)*5`, `(root,var(47)-9)*3+45`, up to 999. So Blanka copied values like 5/45/999 into
  var(59) -> gauge tried to enter states 8450/8200+9990/etc. that DON'T EXIST -> helper spawned into a dead
  state -> no bar. The original design never hit this because, paired with a meter-partner, the gauge spawn
  was gated OFF entirely (the deference gate removed in P008). Clamping to [0,6] makes the helper always enter
  a real 82xx state (out-of-range -> groove 0). Power display is identical across groove styles, so the bar
  shows and fills correctly; only the groove STYLING defaults to 0 when var(59) is garbage (cosmetic).
Test: Blanka & Dhalsim 2v2 mirror — gauge should finally be VISIBLE when active, hide on tag-out/round-end/KO,
  restore on tag-in.
Status: shipped — awaiting test.

## [P009] 2026-06-16 19:20 CT — build nightly-06-07-2026
Subsystem: bench-ui-meters / Family C (Gal129) — completes P008
Files shipped: cvs2_blanka/N-cvs2_blanka.cns, cvs2_dhalsim/N-cvs2_dhalsim.cns
Change: added `triggerall = var(59) != -1` to the 8200 gauge-helper spawn in `[Statedef -2]`.
Why: P008 un-gated the 8200 spawn but the meter still didn't show — a TIMING bug it exposed. `var(59)`
  (groove index; selects the gauge state via `stateno = 8200 + var(59)*10`) is computed at frame 0 from
  scratch var(1) and DEFAULTS TO -1 (var(1)=0 -> var(1)%6=0 -> -1). It only becomes valid (0-5) when copied
  from the partner at roundstate=2 (the [State -3] VarSets). The un-gated spawn fired during intro
  (roundstate=1, fvar(37)=1 branch) while var(59) was still -1 -> tried to enter **state 8190, which does not
  exist** (8200-8265 exist, 8190 does not) -> dead helper that took id 8200 and blocked respawn -> no bar.
  Guarding on `var(59) != -1` defers the spawn until the groove is valid (roundstate=2, post partner-copy),
  so it always enters a real 82xx state. Order-independent (re-checks each tick).
Left untouched: everything else from P008; the partner-groove copy (it's what provides a valid var(59) in
  tag — so Blanka's gauge currently shows the PARTNER's groove styling; see watch item).
Test: Blanka & Dhalsim 2v2 mirror — gauge should now appear at fight start when active, hide on tag-out /
  round-end / KO, restore on tag-in.
Status: shipped — awaiting test. Supersedes: none (completes P008).

## [P008] 2026-06-16 18:30 CT — build nightly-06-07-2026
Subsystem: bench-ui-meters / Family C (Gal129 CvS2-EX: cvs2_blanka, cvs2_dhalsim)
Files shipped: cvs2_blanka/N-cvs2_blanka.cns, cvs2_blanka/cvs2_system.cns,
  cvs2_dhalsim/N-cvs2_dhalsim.cns, cvs2_dhalsim/cvs2_system.cns
Change: (1) In `[Statedef -2]` (N-cvs2_<c>.cns), un-gated the **8200** gauge-helper spawn — commented the 4
  partner-exclusion `trigger2` lines so it spawns regardless of partner — and added `triggerall = stateno !=
  [6565610,6565611]` so it does NOT respawn while the root is benched. (2) In cvs2_system.cns, added a bench
  block (RemoveExplod sweep + DestroySelf, on root benched / roundstate>2 / !root,alive) to the TOP of all 8
  in-match gauge states (8200/8210/8220/8230/8240/8250/8260/8265), which previously had NO bench handling.
Why: **CORRECTION to the Family-C model.** The real in-match power meter is the **8200 family in
  cvs2_system.cns**, NOT 8000/8100. States 8000 & 8100-8160 both DestroySelf at roundstate>1 — they are the
  INTRO groove-selector/indicator, gone the instant the fight starts. The 8200 gauge's spawn was blocked by
  the same `!(partner has a meter)` gate, so in any tag team with a meter-partner (e.g. + Guile) the fight
  meter never spawned -> "no meter at all." 8200 also had zero teardown, so it needed bench handling added.
Left untouched: 8200 gameplay/power-read logic; 8098/8099 selector; Family A/B; single-play (root never
  benches, so the meter only hides at round-end/KO there — matches protocol).
Test: Blanka & Dhalsim in 2v2 (incl. mirror Blanka+Guile vs Guile+Blanka): fight meter now (a) appears when
  active regardless of pick order/partner, (b) hides on tag-out, (c) hides at round start/end + victory,
  (d) restores on tag-in.
Status: shipped — awaiting test. Supersedes: corrects the "8100-8160 = in-match meter" claim in P004/P007.
Note on P007: P007 commented the simul-arbitration in 8000/8100-8160 (the intro indicator). Harmless but it
  was the wrong target; it never touched the fight meter. Left in place (benign).

## [P007] 2026-06-16 CT — build: repo main (anevilwizardcat-gif/ultimabrawlers)
Subsystem: bench-ui-meters / Family C (Gal129 EX-meter, cvs2_blanka + cvs2_dhalsim)
Files shipped: cvs2_blanka/system-cvs2_blanka.cns, cvs2_dhalsim/system-cvs2_dhalsim.cns
Change: commented out the leftover MUGEN-simul bar arbitration in the in-match EX-meter display
  states (8000 and 8100-8160). In each state's RemoveExplod AND DestroySelf, disabled the
  trigger pair `triggerN = numpartner` + `triggerN = (partner,authorname="warusaki3"&&partner,fvar(39)=1)
  ||(root,ID-partner,ID>0 && (partner rei/gal129)&&partner,fvar(39)=1)`. 16 pairs (32 lines) per char.
Why: that pair is "if my teammate also has a meter, suppress/share mine" — correct for MUGEN simul
  (one shared on-screen bar) but wrong for this 2v2 TAG game where only one teammate is on screen and
  the bench UI already hides the benched meter. It was the only pick-order/partner-dependent thing in
  the meter path, matching Blanka's symptom (picked 1st w/ another meter char = invisible; picked 2nd =
  always visible even when benched).
How (mechanism): `fvar(39)` = system-type flag (1 = CvS2 meter). The arbitration keyed off the
  teammate's author + fvar(39). Removing it makes Blanka/Dhalsim always own their own meter; visibility
  is then decided solely by the already-present bench Sweep+Guard (root,stateno bench check).
Left untouched: the bench Sweep/Guard (kept, 9 sweeps + 39 guards intact per file); the pre-round groove
  SELECTOR states 8098/8099 and their ID arbitration (transient, dies at roundstate=2, only fires vs
  rei/gal129 partners); cvs2_system.cns (shared + overridden by st5; gameplay logic — NOT touched);
  all gameplay states. Statedef counts unchanged (blanka 70, dhalsim 56).
Test: (1) CVS Blanka picked FIRST alongside a groove char (e.g. Guile) -> his meter should now show when
  he's tagged in and hide when benched. (2) CVS Blanka picked SECOND -> meter should now HIDE when benched
  (not stay up). (3) Same for CVS Dhalsim. (4) Sanity: a Blanka+Dhalsim team (two Family-C chars) -> each
  should show own meter when active, hide when benched.
Status: shipped, awaiting-test. Supersedes: none (extends P004 which added the bench hide to these files).
Confidence note: high that this removes the pick-order dependence; if "benched but visible" still occurs
  for either char after this, that points to a bench-guard gap on a specific explod rather than the
  arbitration -> send a screenshot of which bar lingers and I'll chase that explod id next.

## [P006] date-unknown (pre-2026-06-16) — build unknown
Subsystem: stand-system / data/tag.zss
Files shipped: data/tag.zss
Change: added one-line exemption `(map(ownStop)=0 || map(ownTandem)=1)` to the Jotaro tandem tag-in gate
so tandem is allowed while standalone timestop super stays blocked. `ownTandem = (var(8)=2)`.
Why: switch gate was blocked whenever `map(ownStop)=1`, which covered the whole internal-timestop tandem.
Left untouched: standalone timestop block (still gated).
Test: Jotaro can tag during tandem; timestop super still can't tag.
Status: shipped. Supersedes: none. Note: could extend to DIO/Polnareff/Avdul if they broadcast ownTandem.

## [P005] date-unknown (pre-2026-06-16) — build unknown
Subsystem: bench-ui-meters / Family B
Files shipped: Cvs_Honda/Cvs2_system.cns, cvsmai/cvs2_system.cns
Change: commented `trigger1 = ID<partner,ID` above `id = 21000` so each char spawns its own gauge.
Why: tag needs per-char meter; the lower-ID arbitration suppressed one teammate (2 Hondas = 0 bars).
Left untouched: `var(30)=1` Turns-Mode block, `fvar(1)` team-position VarSets (gameplay).
Test: 2 Hondas same team → both show a bar when active; benched one hides.
Status: shipped. Supersedes: none.

## [P004] date-unknown (pre-2026-06-16) — build unknown
Subsystem: bench-ui-meters / Family C
Files shipped: cvs2_blanka/system-cvs2_blanka.cns, cvs2_dhalsim/system-cvs2_dhalsim.cns
Change: applied bench sweep+guard pattern to EX-gauge states 8000/8100–8160/8526 in each char's own system file.
Why: the shared-file sweep never touches the author's bolted-on EX gauge in `system-cvs2_<c>.cns`.
Left untouched: id-21000 gauge spawn (Blanka/Dhalsim don't use it).
Test: benched Blanka/Dhalsim EX gauge disappears; restores on tag-in.
Status: shipped. Supersedes: none.

## [P003] date-unknown (pre-2026-06-16) — build unknown
Subsystem: bench-ui-meters / Family A
Files shipped: chars/groove.cns (shared — covers all 12 groove chars)
Change: added sweep+guard to gauge state 6160 (EX/MAX-mode draw) — the one display state that lacked a sweep.
Why: EX/MAX gauge stayed drawn while benched.
Left untouched: gameplay states; only the 6100–6170 gauge band.
Test: benched groove char in EX/MAX shows no lingering gauge.
Status: shipped. Supersedes: none.

## [P002] date-unknown (pre-2026-06-16) — build unknown
Subsystem: bench-ui-meters / Family A
Files shipped: <each groove char>/<char>.cns (×12: 8 Group-A + kyo/terry/sakura/haohmaru)
Change: commented the single `!partner,authorname = "warusaki3"` exclusion line in all three spawn blocks
(6000/6500/6100) per char.
Why: two Warusaki3 teammates → only first-pick spawned a meter; second pick got nothing.
Left untouched: spawn logic otherwise; gameplay.
Test: two groove chars same team → each spawns its own meter; benched one hides.
Status: shipped. Supersedes: none.

## [P001] date-unknown (pre-2026-06-16) — build unknown
Subsystem: bench-ui-meters / default engine power bar
Files shipped: <groove + cvs2 roster>/<char main with winning -2>
Change: added `noPowerBarDisplay` AssertSpecial to the winning `[Statedef -2]` across the groove roster + cvs2 family.
Why: default engine power bar was leaking through on groove chars that use a custom meter.
Left untouched: custom meter logic.
Test: no default engine power bar on groove/cvs2 chars.
Status: shipped. Supersedes: none.

## [P018c] Menu items invisible -> revert to bitmap font (TTF not rendered by build)
SYMPTOM: after P018b, main-menu logo centered fine but menu CHOICES invisible; cursor sounds
still play (menu logic + position OK, only glyph drawing fails). DIAGNOSIS: menu.item.font was
pointed at font10 = VT323 (FNT v2 Type=truetype). This build does not draw TrueType to screen --
consistent with Raven's own observation that the motif's Open_Sans (also truetype .def) is shipped
but never visibly used. The author made BITMAP fonts (Menu1.def + Menu1.sff, indexed 8-bank) for all
visible UI for this reason. FIX (surgical, centering preserved): menu.item.font + menu.item.active.font
reverted 10 -> 4 (original Menu1 bitmap), align kept 0 (center), menu.pos kept 640,330. font10 VT323.def
line commented (parked). NEXT: to get the VT323 LOOK, must render VT323 into a .sff bitmap glyph sheet +
bitmap .def matching Menu1 format (fixed size; active-color via palette bank or RGB tint). TTF wrapper
route abandoned for this build. HARD LESSON: in this motif, custom UI fonts MUST be bitmap .def+.sff;
truetype .def loads without error but renders nothing.

## [P018d] Menu font -> Pixel (bitmap, renders in this build)
Raven picked "Pixel" from a rendered comparison of the motif's existing bitmap fonts (Menu1/Menu2/Pixel/
PixelFlat), as the closest guaranteed-render match to the VT323 look. Font already shipped in motif
(font2 = ikemen1/fonts/Pixel.def + Pixel.sff) -> NO new font files needed. system.def changes only:
menu.item.font 4->2, menu.item.active.font 4->2 (bank 0, active blue tint 123,206,255 preserved),
menu.item.spacing 0,54 -> 0,30 (Pixel native height 18px vs Menu1 42px). menu.pos kept 640,330 (centered).
Tweakables: spacing 2nd number = line gap; pos.y = vertical start. NOTE for future: bitmap fonts are
fixed-size; to enlarge Pixel "Smash-thick" would require a 2x nearest-neighbor re-rendered Pixel.sff
(offered, Raven chose native size). FONT GLYPH FORMAT (hard-won, for any future bitmap font work):
SFFv2, group 0, image = ASCII code; sprites are fmt=12 PNG32 in ldata block, each preceded by a
4-BYTE LENGTH PREFIX -> PNG signature starts at (ldata_off + node.data_offset + 4). Header: 0x24=node
array off, 0x28=sprite count, 0x34=ldata off. Node=28B: +2 item(ascii), +16 data_off(u32), +20 data_len(u32).

## [P018e] Menu highlight -> gold; select-screen title -> Pixel
menu.item.active.font RGB 123,206,255 (blue) -> 255,210,40 (gold/yellow). [Select Info] title.font
4,0,0 -> 2,0,0 (was font4 Menu1 = the OLD main-menu font; now Pixel to match P018d). Tweak gold via the
RGB triplet. NOTE: select-screen NAMES/stage/record/teammenu still on font3 (Menu2) - a different
secondary font, left as-is (can switch to Pixel on request).
BACKGROUNDS (reported, NOT changed - baked sprites): main-menu blue = [TitleBG Background Sky] spriteno
100,0; char-select red = [SelectBG Background Sky] spriteno 101,0; both inside data/ikemen1/system.sff.
Recolor requires editing the sprite (Fighter Factory) or a programmatic extract->hue-shift->reinject
into the SFFv2 (risky on the 8MB sff; do with preview + care). Not a .def edit.

## [P019] Dante_KOF round-start clone — DIAGNOSED, fix needs missing file (OPEN)
Char CNS work (separate from P018* motif/font). Clone = helper ID 90900 spawned (Dante.cns [Statedef -2])
into Stateno 90900, which is undefined in all loaded files -> falls to state 0 -> visible clone, no AI.
Console "Dante's helper (59)" -> 59 is runtime index, gameplay ID is 90900. Root cause: def references
st4=misc.cns + stcommon=common1.cns, BOTH 404 in repo; misc.cns is Wou's system-states file holding
[Statedef 90900] (+ 90901/90902/99996/99997/99998/195500). Other repo Dantes are different authors
(R@CE AKIR@; Alexlexus/Zeckle/WanteD) -> cannot donate Wou's system. FIX: re-add Wou's misc.cns (+common1.cns)
to chars/Dante_KOF/. Interim option: stub an inert [Statedef 90900] to suppress clone. See cards/Dante_KOF.md.

## [P019 RESOLVED] Dante_KOF clone — fixed via inert statedef 90900 stub
Correction: Misc.cns IS pushed (capital M; raw is case-sensitive, my lowercase probe 404'd - logged as a
fetch lesson). Re-verified: statedef 90900 referenced ~20x, defined 0x across all 6 loaded files (Misc.cns
included) - the ADD004 system genuinely isn't in this variant. FIX: appended inert [Statedef 90900] stub to
Dante.cns (invisible, intangible, no vars set, no DestroySelf) -> helper lands in a valid inert state, clone
gone, var(22) unchanged (already 0). Reversible; remove if real ADD004 system restored. LATENT: def st4=misc.cns
vs file Misc.cns = Windows-OK but Linux/Steam-Deck-breaking casing mismatch (one-line def fix offered).
Full JD/style/bar still dormant pending Wou's original system file.

## [P020] Dante_KOF - Dante - S.cns trigger6 gaps fixed
States 1405/1420 PlaySnd: triggers [1-5,7,8] -> renumbered to [1-7] so the skipped swing sounds fire. Only 2
gap blocks in all his files. Shipped Dante - S.cns.
## [P020b] Dante_KOF - explod anim 4472 missing (OPEN)
[Statedef -2] persistent Explod ID 4472 anim=4472 not in Dante.air -> invalid-action warning, invisible effect.
Missing asset; offered to gate it or take the correct anim. Not changed yet.
## [P021] Wolverine - throw/jump clone fixed (missing jump-dust state 8100)
ADD004 engine "Jump Dust" helper run in char state 8100, which was undefined (had 8200 land-dust, not 8100)
-> state-0 clone. Added [Statedef 8100] mirroring 8200 + existing anim 8100 -> clone gone, jump dust restored.
Minor: sounds 5000,11 / 40,0 missing (silent, harmless). See cards/Wolverine.md.

## [P022] Dante_KOF - guard spark/sound spam fixed (42/6,2 absent from ultimabrawlers fightfx)
HitDef guard.sparkno=42 -> 40 (std guard spark, exists in data/fightfx.air); guardsound=6,2 -> 6,0 (only 6,0
exists in data/common.snd). Swept N/S/H.cns + Misc.cns (21 + 17). Real fix, not mute. Verified fightfx actions
[0,1,2,3,10,11,12,40,60..130] and common.snd groups [5,6,7,20]/g6 idx [0].
## [P022b OPEN] hit sparkno=6 also absent from fightfx -> will warn on hit; remap pending Raven's spark choice.

## [P023 DECISION NEEDED] Dante_KOF - whole effect layer needs ADD004 fightfx (not installed)
"Each attack warns" = systemic: 83 explods + hit/guard sparks reference ADD004 fightfx absent from
ultimabrawlers' minimal data/fightfx.air. Options: (A) mute-all sweep (gate 83 explods + remap sparks; plain
look, clean console, reversible) or (B) install ADD004 fightfx (restores effects; global file, riskier).
Awaiting Raven. Folds in earlier P020b (4472 explod) + P022b (sparkno 6) as part of the same root cause.

## [P023 DONE] Dante_KOF - effect layer reconciled to ultimabrawlers' default fightfx
Raven: ADD004 route or default fx for damage hits. ADD004 fightfx not installable (3rd-party + global risk),
so: hit sparks 4/5/6/8 -> 2 (40x), guard 41/42 -> 40 (48x), and 83 decorative explods with absent anims gated
(triggerall=0). Result: every hit/block shows a proper default spark+sound; no console spam; no on-screen loss
(gated effects were already invisible); fully reversible. Closes P020b (4472) + P022b (sparkno 6). 6 files shipped.

## [P024 DONE] Dante_KOF - sound refs reconciled (F6,1 / F9000,0 / 1000,3 etc.)
Invalid hitsound->5,0, guardsound->6,0; stray F-prefixes stripped to local (F9000,0->9000,0); bad local idx
remapped (1000,3->1000,0); missing voice/effect PlaySnds gated. EnvColor RGB values correctly ignored.
0 live invalid sounds left. 6 files shipped.

## [P025] Menu - select-screen fonts -> Pixel + gold highlights
[Select Info]: p1.name.font 3->2 + colour 210,210,255(blue)->255,210,40(gold); p2.name.font 3->2 (pink kept);
stage.font 3->2; stage.active.font 3->2 +gold; title already 2 (P018e). 6 refs. NOTE: the select CURSOR box
(the actual selection highlight) is sprite anim 160/161 (p1) & 170/171 (p2) in system.sff - a sprite recolor,
not a .def value. Menu sprite map: title bg 100,0; menu logo 0,0-0,3; select bg 101,0; cell bg 150,0 - all in
data/ikemen1/system.sff. Active lifebar = data/fight.def (motif system.def [Files] fight = fight.def).

## [P026] Menu - team-menu fonts, stage flicker, name sizes, P2 colour
Stage-name FLICKER root cause: stage.active2.font (the active blink colour) was still font3 - active stage
blinked between Pixel-gold (active.font) and Menu2 (active2.font). Fixed: stage.active2.font + stage.done.font
-> font2. Team-mode text ("Single"/"Tag" = teammenu.item.font; "TEAM MODE" = teammenu.selftitle/enemytitle)
p1+p2 -> font2 (p1 gold, p2 cyan); teammenu title scale .75->1 for Pixel. P2 name/teammenu colour 255,210,239
(pink) -> 90,225,255 (cyan) to contrast gold+purple (NOTE: p2 colour is independent of p1, always was).
Larger text: added p1.name.scale/p2.name.scale/stage.scale = 1.4,1.4 (Ikemen text elements take .scale, e.g.
teammenu titles already did - if names/stage don't grow in-engine, fallback = build a 2x Pixel bitmap font).
Extracted bg sprites from system.sff -> menu_sprites/: menu bg (100,0), charselect bg (101,0), logo (0,0), all
PNG32 1280x960 / 699x257. Backgrounds are NOT loose files; they live inside data/ikemen1/system.sff.

## [P027] Menu/Select background REMIX - purple Persona-pixel + scrolling starfields (system.sff rebuilt)
From-scratch redesign (not a recolour). Replaced 7 sprites inside data/ikemen1/system.sff:
  100,0 menu bg (1280x960)   - purple dithered gradient, gold halftone burst (top-right), gold diagonal
                               accent lines, clean star outlines, sparse pixel symbols, scanlines.
  101,0 select bg (1280x960) - same language, darker/more saturated, GOLD accent (per Raven; was cyan),
                               halftone bottom-left.
  100,1 (1280x960), 100,2 (2559x782), 100,3 (2467x960), 101,2 (2559x782), 101,3 (2467x960)
                             - transparent seamless STARFIELDS replacing the cloud scroll layers.
                               Mostly-transparent stars/diamonds/plus, wrap-seamless on X (drew each star
                               at x, x-W, x+W) so tile=1,0 loops cleanly R->L. Two densities = parallax
                               (slow faint back .2 layer / fast bright front .3 layer).
Kept each sprite at its EXACT original WxH so the existing [TitleBG]/[SelectBG] start/tile/velocity config
applies unchanged - NO system.def edit needed for the bg swap.
SFF REBUILD METHOD (verified): SFFv2, all data in ldata (tdata empty), 258 nodes @1360, ldata @8584.
PNG sprite ldata entry = uint32(W*H*4 uncompressed size) + PNG bytes; dataLength = 4 + len(png) (the 4-byte
prefix is the RAW size, NOT png length - confirmed 100,0 prefix 4915200 = 1280*960*4). 22 linked sprites
(fmt1/len0) preserved verbatim (resolve via linked-index, offset ignored). Rebuilt ldata in node order,
patched each node dataOffset/Length + header ldata_len/tdata_off. VERIFIED: 235 PNG decode ok, 1 LZ5 intact,
22 links valid, 0 failures, all 7 targets decode at native dims. New file 5.85MB (was 8.04MB; my PNGs
compress better). Editable source PNGs also shipped in menu_sprites/.

## [P028] FIX scroll layers - restore 100,1 (my error) + visible star LATTICE
Two issues from P027, found via full [TitleBGdef]/[SelectBGdef] re-read:
 (1) MY ERROR: replaced sprite 100,1 = "Background Black Bars" (static, trans=add1, NO velocity/tile,
     reused in BOTH TitleBG + SelectBG) with a starfield. 100,1 is a static additive UI overlay, NOT a
     panning cloud. -> RESTORED 100,1 to original (rebuilt from clean /tmp/system.sff; confirmed byte-identical).
 (2) The genuine panning layers ARE 100,2/100,3 (menu) + 101,2/101,3 (select) [tile=1,0, vel -0.1 back /
     -0.7 front]. P027 filled them with a UNIFORM RANDOM starfield -> pans but reads as static (no distinct
     feature to track motion). FIX: regenerated as a REGULAR DIAGONAL STAR LATTICE (even spacing, distinct
     bright star/sparkle/diamond stamps, brighter alpha) -> drift is now clearly visible + satisfying.
     Back layer dim/small (spacing150 sc4), front bright/big (spacing128 sc6) = parallax. Seamless on X
     (N=round(W/spacing) exact cells, wrap copies at x,x-W,x+W).
Rebuilt system.sff (now 6 sprites: 100,0 menu bg, 101,0 select bg, 100,2/3 + 101,2/3 lattices; 100,1 + all
others verbatim). VERIFIED: 235 PNG decode, 22 links valid, 0 fail, 100,1 byte-identical to original.
Shipped NEW_scroll_DEMO.gif (parallax loop preview) + lattice source PNGs in menu_sprites/.
LESSON: a sprite being in the cloud sprite-group (100,x) does NOT mean it's a scrolling layer - check the
.def element it's bound to (velocity/tile) before replacing. 100,1 = static bars; only x,2 and x,3 scroll.

## [P029] LOGO location documented + 6 replacement mockups (awaiting Raven's pick)
LOGO LIVES IN data/ikemen1/system.sff as a 4-sprite stack (all 699x257, axis 349,128, fmt12 PNG32):
  0,0 = MAIN logo            (bbox ~2,10..688,192 - full width)  drawn by [TitleBG Title Logo], layerno1, sin.y 15,264,2
  0,1 = secondary element    (bbox ~416,137..628,245 - lower-right small)  [TitleBG Title Logo 2], sin.y 15,264,32
  0,2 = shadow of 0,0        (additive, alpha 256,96)  [TitleBG Title LogoShadow], sin.y 15,264,2
  0,3 = shadow of 0,1        (additive, alpha 256,96)  [TitleBG Title LogoShadow], sin.y 15,264,32
  All start=0,155 (centered via P018), layerno=1. The two shadow sprites bob at a different sin phase = glow echo.
TO REPLACE THE LOGO CLEANLY: new art -> 0,0; regenerate 0,2 as a silhouette/glow of the new art; BLANK 0,1 + 0,3
(fully transparent) so the old secondary element doesn't ghost. Same SFF rebuild method as P027/P028.
Generated 6 mockups for "ULTIMA ARCADE ALLSTARS" / "ARCADE ALLSTARS: ULTIMA" (Persona slant, black stroke,
gold/magenta/cyan-on-purple), shipped menu_sprites/LOGO_1..6 + LOGO_contact_sheet.png. NOT baked - waiting on
Raven to choose a number. Fonts used from /mnt/skills/examples/canvas-design/canvas-fonts/ (BigShoulders-Bold,
Tektur, FreeSansBold, PixelifySans, EricaOne, Boldonse/Outfit).

## [P030] Logo mockups v2 - "fantastic" pixelated chrome + float plan confirmed
Raven confirmed the floating "GO" element = sprite 0,1 (bobs at sin.y phase 32 vs main 0,0 phase 2). PLAN
LOCKED: main "ARCADE ALLSTARS" -> 0,0; "ULTIMA" -> 0,1 as an independently-floating SUBTITLE; shadows 0,2/0,3
follow. Feedback on v1: more pizzazz + "pixelated like a retro logo but NOT crappy pixel-text fonts" + must
contrast vs the busy purple bg. v2 approach: render a real bold font (BigShoulders/EricaOne/Outfit), add
chrome gradient fill (highlight band), double outline (black + white/magenta), glow halo (contrast), optional
3D extrude / starburst / sparkles, THEN pixelate (LANCZOS downscale /3 + hard alpha threshold + NEAREST upscale)
= retro by resolution, not by typeface. Shipped LOGO2_A_goldchrome / B_magenta3D / C_cyanice / D_starburst +
LOGO2_contact_sheet.png. Awaiting Raven's pick (mix-and-match offered). NOT baked yet.

## [P031] Animated logo demos - pixel ripple wave + ULTIMA purple vs rainbow
Raven picked Logo A (gold chrome). Requests: (1) per-letter floating/ripple WAVE on the letters; (2) ULTIMA
recolored purple OR animated rainbow wave; (3) ULTIMA moved to hover BELOW ARCADE ALLSTARS at bottom-right
(was a kicker above). Built 2 animated GIF demos (LOGO_A_wave_purple.gif / LOGO_A_wave_rainbow.gif): gold-chrome
"ARCADE ALLSTARS" with a column-wise pixel ripple (np.roll per col, sine phase travels = letters bob in
sequence), ULTIMA tucked bottom-right; purple = purple chrome, rainbow = HSV fill scrolled per frame. 24-frame
seamless loops, pixelated (LANCZOS/3 + hard alpha + NEAREST up), composited over menu bg.
ANIMATION FEASIBILITY (Ikemen): static sprites only bob whole (sin.y); per-letter wave + rainbow REQUIRE either
(a) per-letter sprites w/ staggered sin.y (smooth, no rainbow) or (b) PRE-RENDERED FRAME ANIM via actionno ->
[Begin Action N] cycling frame sprites + bg element actionno=N. Rainbow forces route (b). Bake plan when Raven
picks: render ~24 frames of main wave -> sprites grp e.g. 10,0..; ULTIMA frames -> grp 11,0..; define
[Begin Action]s; repoint [TitleBG Title Logo]/[Logo 2] from spriteno to actionno; shadows 0,2/0,3 from frames or
keep simple. Tradeoff: +sprite slots, bigger sff. NOT baked - awaiting purple/rainbow + wave-intensity call.

## [P032] Logo anim corrected - RIGID per-letter bob (no morph) + vivid rainbow
Raven feedback on P031: letters should lift/drop as RIGID whole letters (same staggered timing) NOT morph/ripple;
rainbow too dull. FIX: render cohesive pixel logo, SLICE into per-letter vertical strips at font-advance
boundaries (bnd[i] from getlength prefixes), bob each strip rigidly dy=2.5*sin(ph+i*0.55) -> letters keep shape,
wave reads via staggered phase. ULTIMA = whole-sprite bob (no per-letter). Rainbow now FULL saturation
(hsv s=1 v=1, span 1.15) computed at small-res (no LANCZOS hue-averaging), white glow removed (was washing it),
GIF palette 256. Shipped LOGO_A_bob_purple.gif / LOGO_A_bob_rainbow.gif. Raven: "this is the look." Awaiting
final purple-vs-rainbow pick to BAKE (frame anim via actionno: main strips bob -> N frames sprite grp; ULTIMA
-> floating 0,1 anim; shadows follow).

## [P033] LOGO BAKED - animated rainbow build (system.sff + system.def)
Raven picked rainbow, wanted it faster + verified-transparent. Baked:
SFF: appended 36 sprites to data/ikemen1/system.sff via SAFE-APPEND (existing 258 sprites + 53 palettes kept
BYTE-IDENTICAL - their data offsets are relative to ldata start so they stay valid; only added new nodes +
data + bumped header count/ldata_off/tdata_off). New: grp 50 img 0..17 = ARCADE ALLSTARS per-letter rigid bob
wave; grp 51 img 0..17 = ULTIMA full-sat rainbow (hue scroll, fixed pos). All 699x257 axis 349,128 PNG32
transparent. VERIFIED: 294 sprites, 271 png decode, 22 links ok, 0 bad, 18/18 rainbow frames carry alpha,
100,0 bg byte-identical. File 6.27MB.
DEF: [TitleBG Title Logo] 0,0 -> type=anim actionno=50 (sin.y removed, wave baked). [TitleBG Title Logo 2]
0,1 -> type=anim actionno=51, sin.y=15,264,32 KEPT (engine floats ULTIMA independently like old "GO").
Both [TitleBG Title LogoShadow] (0,2/0,3) COMMENTED OUT (glow baked into frames). Appended [Begin Action 50]
+ [Begin Action 51] at EOF, 18 frames each @ 1 tick/frame (fast; per-anim tick is the speed knob - re-bake to
change). Confirmed motif uses type=anim+actionno elsewhere (lines 1207/1605/1710) - mirrored that.
INSTALL: BOTH system.sff + system.def go in data/ikemen1/ (def carries the anim wiring, sff the frames).
Shipped LOGO_transparency_check.png (checkerboard proof). Old 0,0/0,1 sprites left in sff (unreferenced, harmless).
SPEED NOTE: 1 tick/frame chosen because Raven says engine slows anims; trivial to re-bake slower if needed.

## [P034] Logo anim speed fix - 1 -> 4 ticks/frame
Raven: P033's 1 tick/frame overcompensated (too fast, ~0.3s/cycle vs demo ~1.7s). Set [Begin Action 50] +
[Begin Action 51] frame durations 1 -> 4 (18 frames * 4/60 = ~1.2s/cycle = near demo pace, kept a hair brisk to
hedge the engine's anim slowdown). system.def ONLY (sff unchanged - re-drop just the def). Speed knob = the
trailing number on each frame line in [Begin Action 50]/[51]; re-bake/edit to retune.

## [P035] Sprite re-texture capability + Dante coat demo (preview, not baked)
Demonstrated reading/decoding + re-shading CHARACTER sprites. chars/Dante (author "R@CE AKIR@ Editado por
Magno Cesar") = Dante.sff (SFFv2, 2763 sprites, mostly PNG8 fmt10). QUIRK: PNG8's embedded palette is a BLACK
placeholder - real colors live in the SFFv2 PALETTE NODE referenced by node paletteIndex; index 0 = transparent
magenta (252,2,252,a0). Decode = load PNG8 indices, remap through palette node, idx0->alpha0. Idle = .air
Action 0: breathing loop sprites 0,7 / 0,9 / 0,11 (10 ticks each) + fidget 0,19..0,36.
FEEDBACK ARC: v1 "refine" was just sat/brightness/rim = a filter (Raven rejected). REAL re-texture (v2, coat):
the coat's amateur ramp = 21 red indices all hue ~345 that only darken, capped V~0.47 (no highlight, no hue
shift). Re-authored as an arcade leather ramp: cool purple-shifted creases -> rich red body -> warm pink
SPECULAR sheen (control-point ramp, indices remapped by V-rank), THEN fold-sharpen (unsharp on coat luminance,
re-snap to ramp) for crisp leather sheen on fold ridges. Targeted ONLY coat-red indices (H 325-360 & S>0.45),
skin/hair/pants untouched. Silhouette + fold placement preserved. Applied to all 3 idle frames -> animates
consistently. Shipped dante_coat_retexture_demo.gif + dante_coat_retexture_5x.png. PREVIEW ONLY - nothing baked
into Dante.sff yet. NEXT IF APPROVED: hair (same technique on silver ramp - watch shared gray indices w/ sword),
tune specular strength, then roll across all of Dante's frames + re-inject into Dante.sff.
TECHNIQUE NOTE: this re-authors the EXISTING shade placement into a pro ramp + adds sheen; adding brand-new fold
GEOMETRY the artist never drew is deeper manual per-area work (possible, slower, iterative).

## [P036] VS / "NEXT MATCH" loading screen restyle + palette corruption FIX
The pre-match VS screen ([VS Screen] + [VersusBGdef] in system.def). Changes:
- NAMES font consistency: p1.name.font was 3,0,1 (Menu2) while p2 was font2 Pixel -> p1 unified to
  2,0,1, 255,210,40 (Pixel gold) + p1.name.scale 1.4 to match p2 (Pixel cyan 90,225,255). Both names now
  same font, our gold/cyan scheme. (Other screens [Victory]/[Dialogue Info] left alone.)
- NEW purple-pixel VS background -> sprite 204,0 (1280x960); scroll cloud layers -> seamless star lattices
  102,2 (2366x505) + 102,3 (2467x960). Same procedural style as menu/select (gold accent, symmetric halftone
  top corners, star outlines flanking where fighters stand).
- Custom arcadey YELLOW pixel "VS" -> replaced VS-logo anim frames 200,0..200,8 (304x334) [VersusBG 5
  actionno 200 keeps its zoom-in; all 9 frames = same yellow VS so no old chrome flickers].
- "NEXT MATCH" in our gold style -> replaced sprite 202,0 (516x44) [VersusBG 6 actionno 202 keeps slide-in].
- PALETTE FIX (bonus): P027/P028's ldata rebuild had DROPPED the 53 palette color tables (palette node
  offsets went stale -> 7 indexed sprites 203,0/1, 400-403, 700,0 rendered from garbage; they were just not
  prominently visible). Re-fetched repo system.sff (still the clean original w/ valid palettes), extracted the
  53 palette data blocks, and restored them in this rebuild (fixed palette node offsets). VERIFIED 203,0
  palette back to 1019 nonzero bytes.
SFF rebuild = same-count REPLACE (13 sprites) + palette restore; 294 sprites, 271 png decode, 22 links, 0 bad.
Shipped system.sff + system.def. NOTE: vsscreen may be gated by [Demo Mode] vsscreen.enabled / [VS Screen]
order settings - art is in place regardless of when the screen shows.

## [P037] VS screen text tweaks + custom power-meter concept R&D
- [VS Screen] names: p1.name.font + p2.name.font -> WHITE (255,255,255) (were gold/cyan) per request.
  Section-scoped (select-screen names + other screens untouched).
- [VS Screen] stage.font ("Next Stage: %s") -> gold 255,210,40 (was silver/default) so it's not the lone
  silver text now that VS+NEXT MATCH are gold/yellow. Shipped system.def.
- LIFEBAR R&D (concepts only, nothing baked): studied data/ilifebar/ilifebar.def (Raven's reference, SFA-style
  custom lifebar w/ Tag/Simul/Turns variants). Ikemen [Powerbar] architecture = bg0 frame spr + front fill spr
  (clipped across range.x proportional to power) + front<N> level-glow variants (palfx.sinmul/sinadd pulse) +
  counter (level number font) + levelN.snd; supports up to 9 levels. ilifebar uses bg0=5,0 / front=6,0 /
  front3000 MAX glow / counter font6 / levelbars=1.
  CURRENT PROBLEM (data/fight.def [Powerbar]): sprites scaled 2.35,1.4 (NON-INTEGER) -> stretched/blurry,
  inconsistent w/ crisp SF3-era meters. Fix = draw bar sprites at final display size (or integer scale only).
  Delivered 3 concepts -> menu_sprites/powermeter_concepts.png: A) SF3 EX-gauge (segmented bar + stock pip),
  B) Stock Blocks (discrete arcade chunks), C) Ultimabrawlers Gold (purple frame + gold halftone, matches
  menu/VS). Each shown empty/level2/MAX. Awaiting Raven's pick before building sprites + [Powerbar] def.

## [P038] Power-meter direction locked (A+C hybrid) + full lifebar HUD concept
- POWER METER (concept locked, not built): A+C hybrid per Raven - C's purple-bevel-frame + gold-edge + gold
  halftone empty + gold-chrome fill, A's segmentation/level-ticks + stock-pip spacing. Stock pip restyled to
  MATCH the bar (purple-gold frame + gold number, not the dull steel). P2 = full mirror (pip on right, fill
  runs right->left). States empty/level2/MAX shown -> menu_sprites/powermeter_AC_hybrid.png.
- LIFEBAR HUD concept (accounts for all ilifebar elements) -> menu_sprites/lifebar_hud_concept.png:
  health bars (yellow->orange fill + lighter damage-lag layer + RED low-health pulse, P2 shown low), center
  timer box (purple-gold, gold number), inward active portraits + small benched-PARTNER mugs at outer corners
  (tag), name plates, win pips, transient ROUND callout, A+C power meters at bottom corners. Purple/gold ties
  to menu/VS. Portraits/round-text are placeholders.
- Next: on Raven's ok, draw real frame+fill sprites at display size (NO 2.35x stretch), inject into fight.sff,
  write [Lifebar]+[Powerbar]+[Tag *] sections (bg0/mid/front/front26/front51/red + range.x; powerbar bg0/front/
  front3000 + counter + levelbars). Tag variants needed since ultimabrawlers is 2v2.

## [P039] SUPER METER built (sprites + animation), A+C hybrid — not yet injected
Authored the power-meter sprites at DISPLAY SIZE (frame 200x24, inner well 164x12) so NO stretch (kills the old
2.35,1.4 blur). Pieces in menu_sprites/super_meter/:
- pbar_bg_p1/p2.png = bg0 frame: pip box (sized for 1 digit + padding, not oversized) + bar frame + gold
  halftone empty well + level ticks. Gold-on-purple, matches menu/VS.
- pbar_front.png (+ pbar_front_0..7 shimmer frames) = the gold-chrome FILL the engine clips across range.x
  (this is the smooth SF3-style fill+drain — engine-driven, automatic).
- pbar_max_0..7.png = white-gold STROBE anim for the MAX-charge state (front<max>.anim + palfx).
- POWERBAR_def_reference.txt = full [Powerbar] wiring (bg0/front.anim/range.x/front<N> level glows/counter/
  level snds + P2 mirror + differing-max handling note).
Demo: super_meter_demo.gif (P1+P2, smooth charge -> level-ups w/ pip count -> MAX flash -> Jotaro-style drain).
SF3 smoothness = engine range.x clip for fill/drain + animated front<max> strobe for MAX.
DIFFERING MAX AMOUNTS: bar fills 0->char's powermax so "full"=that char's max; MAX strobe via front<N> threshold
variants defined up to each roster max (front3000/4000/5000...), top tier = strobe. (Honest caveat: front<N> is
threshold-based, not a literal per-char "is max" flag.)
NOT injected into fight.sff yet — placement/scale finalized when integrated with the lifebar (next).

## [P040] Lifebar HUD — 3 variants (concepts) + P2 super-meter fill-anchor fix
- P2 SUPER METER FIX: fill was anchoring at the bar's inner edge (read as "from center"); corrected so it
  fills FROM the stock-pip side outward (mirror of P1). In def: p2.range.x runs from the well edge nearest the
  pip toward center. Applies at build; meter art unchanged (as Raven said, design is decided).
- 3 lifebar HUD variants -> menu_sprites/lifebar_variant_A/B/C.png. ALL account for the real engine elements:
  health (yellow->orange + damage-lag bright edge), RECOVERABLE HP band (teal - the tag HP that regens while
  benched, drawn between current HP and max), low-HP red state, center TIMER, ROUNDS-WON pips, active portrait
  + small benched-PARTNER mug (tag p3/p4), name plates, decided super meter, and combo/round = center overlay.
  - A) Third Strike Classic: long horizontal bars, outer portraits, center timer, pips under names.
  - B) Tag Block: each player ONE unified corner unit (portrait+partner+name+HP+pips+super). Cleanest/dense.
  - C) Angled Arcade: sheared bars, inset portraits, gem win-pips, dynamic energy.
  Portraits/names are placeholders. Awaiting Raven's pick (or hybrid) before building sprites + fight.def
  ([Lifebar]+[Powerbar]+[Tag *] with recoverable layer, range.x, front26/front51 low-hp, counters).

## [P041] Variant C lifebar BUILT (v1, testable) — fight.def + fight.sff shipped
Restyled the existing (already-sheared) lifebar to Variant C purple/gold and wired the requested layout.
fight.sff: replaced 19 sprites IN PLACE at matching sizes (so the working shear/range/pos geometry is kept):
  lifebar 10,0(well)/11,0(gold border)/12,0(mid lag)/13,0-3(HP tiers gold->orange->red)/14,0(RECOVERABLE teal,
  the tag red layer); face frames 50,0+51,0(big)/70,0+71,0(small partner); win gems 100/101/102 + 120,0;
  power 40,0(frame+pip box+well)/43,0(gold fill), 41,0->transparent. 117 sprites, all decode, 0 bad, 0 palettes.
fight.def edits:
  - [Powerbar] FULLY rewritten: decided super-meter sprites, scale 1,1 (KILLS the 2.35x stretch), repositioned
    on-screen bottom (was pos y=901, off-screen), stock-pip counter.font=8 (Pixel), range.x for the new well,
    P2 facing -1 with fill anchored at the pip side (the P2 fix).
  - [WinIcon] moved below the HP bars (150,82 / 1130,82; was center 544/736).
  - [Tag_2P Name] p3/p4 (benched) names commented out -> tagged-OUT name hidden; tagged-IN char's name shows
    under the big box (native: incoming char becomes p1/p2 on tag, name appears).
Preview: menu_sprites/fight_hud_preview.png. SHIPPED data/fight.def + data/fight.sff (back up originals).
HONEST v1 NOTES: lifebar/faces are solid (same geometry); POWER BAR + WIN-ICON + NAME positions are blind
best-guesses that WILL need tuning from Raven's in-engine test. Bars/fills/meters animate smoothly natively
(engine range.x clip). TAG FACE SWAP = native engine swap (incoming->big slot+name, outgoing->small slot+name
hidden) - it's a clean INSTANT swap, NOT a sliding animation; a smooth slide needs a Lua mod to the lifebar
draw script (offered as next step). Recoverable HP = tag red layer (14,0); exact regen depends on tag config.

## [P042] Power bar — height + thickness + missing fill + MAX animation (one pass)
Tested screenshots: my P041 engine power bar sat mid-screen, empty, no MAX (vs Chun-Li SF3 / Iori K-GROOVE
which are thin + bottom = the target). Root causes + fixes:
  - HEIGHT: P041 wrongly moved pos y 901 -> 668 thinking 901 was off-screen. On the 4:3 screen the lifebar
    space is ~960 tall, so 901 IS the bottom. RESTORED pos to 574/706,901.
  - MISSING FILL: P041 rewrite (axis 0,0 + positive range.x + front.offset) doesn't render. REVERTED to the
    original working geometry: right-edge axis + range.x -9,-484 (p1) / 9,484 (p2). Fill now draws.
  - STRETCH/BLUR + THICKNESS: every scale 2.35,1.4 -> 1,1, and re-authored sprites at final size but THIN
    (~16px) to match Chun-Li/Iori. (range.x does NOT inherit element scale, per original author note, so it
    stayed -9,-484 and still matches the 484px sprite at scale 1,1.)
  - MAX ANIMATION: new dedicated bright fill sprite 43,1 (white-gold), wired to frontMax with palfx.add +
    palfx.sinadd (pulsing additive glow) = the cool MAX strobe. Top charge tiers also ramp brighter.
fight.sff: replaced 40,0 (490x16) + 43,0 (484x10) thin, added 43,1 (484x10 bright MAX). 118 sprites, all decode.
fight.def: [Powerbar] rebuilt from the original (kept pos/range/counters/levelbars/level-snds), de-stretched,
MAX enhanced, counters nudged for the thinner bar, stale 2.35 comments cleaned.
Preview: menu_sprites/powerbar_fix_preview.png. SHIPPED data/fight.def + data/fight.sff.
NOTE: fill grows from the inner edge outward (original range.x direction) - trivially flippable if wanted.
Position/thickness should now match the custom meters; may need a small nudge from the next screenshot.

## [P043] HOTFIX — startup crash (nil pointer in LifeBar.reset)
Crash log: runtime nil pointer deref at fightscreen.go LifeBar.reset -> lb.bg0.Reset(). Cause = MY P042 sff
rebuild: I rebuilt the node table from scratch and wrote the link field as a 4-byte int (-1), which set the
SFFv2 link (a uint16 at node offset +12) to 65535 on ALL sprites. Ikemen treats any nonzero link as a LINKED
sprite pointing to that index; #65535 doesn't exist, so the lifebar bg0 sprite (10,0) resolved to nil and
reset() dereferenced nil -> crash on the first round, before the match could draw.
FIX: zeroed the link field (uint16 @ +12) on all 118 nodes. Verified: link all 0, all sprites decode, and node
metadata (link,fmt,coldepth,palidx,flags) now matches the original byte-for-byte (0 mismatches). fight.def
unchanged (the def was fine; this was purely the sff). Re-shipped data/fight.sff.
LEARNING (added to card): SFFv2 sprite-node link is a uint16 at +12 (NOT int32). A full node-table rebuild MUST
keep link=0 (and palidx=0, flags=0) for normal fmt-12 sprites. Prefer in-place node edits (P041 method) over a
from-scratch rebuild - the in-place method preserves these fields automatically and is why P041 didn't crash.

## [P044] HOTFIX — round-start crash: 9 lifebar sections were deleted by the P042 regex
After P043 (link fix) the game booted and select worked, but ENTERING a round still crashed in LifeBar.reset
(same nil-deref). This was a SECOND, independent P042 bug. The [Powerbar] replacement regex
`;?-*\s*Powerbar.*?\n\[Powerbar\]` (DOTALL) matched the word "Powerbar" INSIDE the [Files] line
`font4 = ikemen1/fonts/PowerbarNum.def`, then `.*?` ate everything from there to the real [Powerbar] header —
silently DELETING 9 sections: [FightFx], [Lifebar], [Simul Lifebar], [Simul_3P/4P Lifebar], [Tag Lifebar],
[Tag_3P/4P Lifebar], [Turns Lifebar]. With no lifebar config, readLifeBar() built empty health bars whose
bg0.anim was nil, and FightScreen.reset()'s unguarded loop (lifeBars[i][j].reset(), fightscreen.go:5483 ->
LifeBar.reset:631 -> lb.bg0.Reset()) dereferenced the nil on round 1. (fight.def went 87 -> 78 sections; the
font4 line was corrupted to `font4 = ikemen1/fonts/;----- Powerbar...`.)
FIX: recovered the clean pre-corruption fight.def from repo git commit 23b9580 (87 sections) and rebuilt via a
positional section merge: restored [Files] + the 9 deleted sections from the clean commit, and carried over
every section I'd intentionally edited (de-stretched [Powerbar] with thin 40,0 + 43,0 fill + 43,1 MAX strobe;
[WinIcon] at 150,82 below the HP bars; [Tag_2P Name] partner-name hide) from the live file. Verified: 87
sections; all lifebar configs present and referencing the restyled sff sprites (10-14, xshear 3); [Files]
font4=PowerbarNum.def with no junk; EVERY live bar/win sprite ref resolves in fight.sff (no nil-anim risk).
fight.sff unchanged from P043.
LEARNING: NEVER anchor a section-replacement regex on a bare keyword. The keyword can appear inside an
unrelated line (here "Powerbar" inside the font filename "PowerbarNum.def"); with DOTALL the match then spans
across whole sections and deletes them with no error. Always anchor section edits on the literal `[Header]`
(e.g. `(?m)^\[Powerbar\][^\[]*`) or parse into sections and replace by exact name. The repo's git history
is the recovery source when a file gets structurally corrupted (git show <commit>:data/fight.def).

## [P045] Power bar: definitive fill mechanic + gold numbers + flashing-yellow MAX
Investigated the recurring "fill stops at a set point, higher levels empty" bug against the Ikemen engine
source (PowerBar.step/draw, resolvePBKey, calcBarFillRect), the DeepWiki Lifebar System doc
(deepwiki.com/ikemen-engine/Ikemen-GO/6.1-lifebar-system), and the repo CvS reference chars (cvsryu etc.).
ROOT MECHANIC (the thing I kept getting wrong): the fill's MAX REACH = range.x span x scale, INDEPENDENT of
the sprite width. To lengthen the bar you must extend the frame sprite (40,0) + fill sprite (43,0/43,1) +
range.x span TOGETHER; extend one alone and the fill stops at the shortest = the historical bug. Also:
without levelbars, a high-powerMax char barely fills a continuous bar (reads as "stops early, levels empty").
Current state already has levelbars=1 (CvS stocks, each level refills) + matched range.x (476 span vs 484 fill)
+ fully-opaque fill sprites (verified pixel-by-pixel), so the fill itself is correct now.
CHANGES: (1) Level NUMBERS blue (palfx.mul 110,185,255) -> gold (255,205,90) on all 24 counter elements
(counter + counter1000..10000 + counterMax, both sides); tunable. (2) MAX state: replaced the fast strobe
(sinmul 48,48,48,6 + sinadd 140,110,30,5) with the LIFEBAR low-HP technique - a brightness pulse
(palfx.sinmul 128,128,128,15, same period as the [Lifebar] front low-HP flash) + a subtle warm-yellow add, so
MAX now "flashes yellow" like the lifebar at low HP instead of strobing. (3) Added a FILL MECHANIC doc block
at the top of [Powerbar]. fight.sff unchanged.
RECOVERY NOTE: an intermediate edit truncated fight.def to 0 bytes (a Python latin-1 write choked on an
em-dash AFTER open('w') had already truncated the file). Rebuilt from git (clean 23b9580 base + my edits from
b889bd2 via the P044 positional merge), re-applied, verified in a temp, then copied.
LEARNING: writing Shift-JIS/latin-1 files in Python must be ASCII-safe - one non-latin char (em-dash) in a
write() after open('w') truncates the file then raises, leaving it EMPTY. Always write a temp + verify +
copy; never open('w') the live file with unverified content. Also keep '[' out of .def comments (it fools
^\[ section-boundary regexes, incl. my own verify).



## P046 - Power bar cleanup + lifebar color-tier fix + win-icon move + box restore
ROOT CAUSE, "red HP appears at ~50%": engine picks the lifebar health tier as
fv = largest key k where life >= k/100 (keys 100/50/25/0). So front50 shows 50-99%,
front25 shows 25-49%, front (critical) shows 0-24%. front25's sprite was RED (13,2),
so red appeared the instant HP dropped below 50%. And the 0-24% critical tier (front)
used a GOLD sprite (13,3) + brightness pulse -> looked like a MAX-power flash, not danger.
  FIX: front25 -> gold sprite 13,1 recolored ORANGE via palfx.mul 256,195,100.
  front (0-24%) -> RED sprite 13,2 + faster brightness pulse sinmul 128,128,128,8 = flashing red.
  Progression now: gold (50%+) -> orange (below 50%) -> flashing red (below 25%).
POWER BAR rebuilt to the clean reference structure (data/ilifebar): removed all
front500..front10000 + counter1000..counter10000 cruft (13 front elements -> 2). With
levelbars=1 the single `front` (43,0) drives EVERY level's fill; `frontMax` (43,1) is the
max skin. range.x=-9,-484, levelbars=1 unchanged. This removes the per-level front
elements that were the likeliest cause of "fills level 0, then never fills" (any one of
them failing to render leaves higher levels blank; `front` is known-good and used for all).
RESTORED level-number box: sprite 44,0 (202x18) re-added as p1/p2.bg2 at the counter offset.
All powerbar elements -> layerno=2 (consistent, above fighters); removed stale EXPERIMENT comments.
WIN ICONS: outer ends (150/1130) -> inner ends (600/680), toward center.
fight.sff unchanged. 87 sections. (9000,0 face refs load from each char's own sff - false positive in my sff check.)
OPEN: "charges once then stops" is powerMax-dependent. levelbars refills per 1000 power; a
char with powerMax=1000 maxes after ONE fill (looks like "never fills again"). SF3_Blanka_FRS
= powerMax 2160 (fills twice then maxes). Family C (blanka/dhalsim) uses this default bar.
NEED: which char shows the bug + its [Data] power= to confirm mis-build vs correct low-level behavior.


## P047 - THE misalignment: 8 lifebar sections (tag mode != the section I was editing) + MAXIMUM-graphic glitch + empty-max
CORE INSIGHT (why my P046 lifebar colors "didn't work" in game): Ikemen uses a DIFFERENT lifebar
section per team mode. There are 8: [Lifebar] (1v1), [Simul Lifebar], [Simul_3P/4P Lifebar],
[Tag Lifebar], [Tag_3P/4P Lifebar], [Turns Lifebar]. This is a 2v2 TAG game -> the active health
bars come from [Tag Lifebar], which I never touched. There is only ONE [Powerbar] (shared), which
is why the power changes DID show but the health colors did not. I had been fixing the 1v1 bar.
  FIX: applied the tier recolor to ALL 8 sections and ALL players (p1..p4, incl. teammate prefixes):
  front25 -> gold 13,1 + palfx.mul 256,195,100 (ORANGE, 25-49% HP); front (critical) -> red 13,2 +
  sinmul 128,128,128,8 (flashing red, 0-24% HP). Confirmed via uploaded nightly src/fightscreen.go
  that tier selection is fv = largest key k where life >= k/100 (front50=50-99, front25=25-49, front=0-24).
MAXIMUM-GRAPHIC GLITCH (the red "MAXIMUM!" bar cut off on P1, visible on P2): sprite 44,0 (202x18,
red, RGB 192,64,24) is the engine's "MAXIMUM!" indicator - the nightly uses it as frontMax.spr. In
P046 I MISIDENTIFIED 44,0 as a "number box" and added it as p1/p2.bg2 at offset +/-515, so it rendered
permanently, off-screen-left on P1 and visible on P2. There was never a 44,0 number box. REMOVED bg2.
EMPTY MAX METER: engine clips even frontMax to the power-based fill rect; power = 1.0 at max for ANY
powerMax (the level cap powerMax/1000-1 cancels). The cream sprite 43,1 I used for frontMax read as
empty in game; switched frontMax.spr 43,1 -> 43,0 (the gold sprite that demonstrably fills as the bar
charges) + keep the flashing palfx. Max should now be a full flashing gold bar.
SCALING NOTE (user asked): localcoord=1280,720 (same in nightly). Powerbar pos y=901 sits BELOW the
16:9 frame; it renders on the user's setup but the position is aspect-dependent - flag if aspect changes.
fight.sff unchanged. 87 sections. ASCII-clean. (9000,0 = char-portrait from char's own sff; 42,0 = commented mid.)
OPEN: (1) confirm empty-max fixed in game. (2) Power bar wanted THICKER + DIAGONAL/sheared box like the
lifebar (xshear) and SF3 - sprite re-author of 40,0 frame + 43,0 fill, do after fill behavior confirmed.
(3) nightly color-codes each level (front1000=blue..front3000=red etc.); mine is single gold - re-add if wanted.


## P048 - empty-max ROOT CAUSE (layerno) + concept shape (diagonal + thicker)
EMPTY MAX METER - real cause: frontMax was the ONLY powerbar element with no layerno line, so it
defaulted to a hidden layer while bg0/bg1/front were layerno=2 -> at max the gold fill rendered behind
everything = empty bar (frame still visible). The 43,1->43,0 sprite change in P047 was a red herring
(both fill fine; the layer was the problem). FIX: added p1/p2.frontMax.layerno = 2. Max should now be
a full gold bar flashing yellow (palfx.sinmul 128,128,128,15 + warm add), matching the old behavior.
CONCEPT SHAPE implemented (colors were already on-concept: frame 40,0 = dark purple 59,41,47, fill
43,0 = gold 242,192,97):
  - DIAGONAL: added xshear to bg0/front/frontMax - p1.=3, p2.=-3 (mirrored exactly like [Tag Lifebar]
    bg0/front which use xshear 3 / -3 + facing -1). xshear is a universal Lay property (anim.go ~1194 +
    motif.go ini:"xshear"), so the powerbar honors it just like the lifebar. Bar now leans like SF3/lifebar.
  - THICKER: scale.y 1->1.4 on bg0/front/frontMax. Sprites anchor axisY=0 (top) so growth is downward;
    shifted offsets up (bg0 y:3->-3, front/frontMax y:4->0) to keep the bottom edge fixed (bar at y=901
    is near the 4:3 bottom). range.x (horizontal fill reach) is unaffected by scale.y, so fill still works.
fight.sff unchanged. 87 sections. ASCII-clean.
OPEN/TUNE: confirm in-game - (a) max fills + flashes, (b) diagonal looks right, (c) thickness. scale.y
and offsets are tunable; if the 1.4x vertical stretch looks soft, re-author 40,0 frame + 43,0 fill taller
(native ~24px like lifebar 13,0) for crisp edges - that's the only remaining step for a pixel-perfect bar.


## P049 - pixel font (timer/combo/alerts) + tag bench texture + tag z-order + win-icon nudge
FONTS -> font8 (Pixel.def, the project pixel font):
  - [Time]: timer counters font 2 (Timer.def) -> 8.
  - [Combo]: counter numbers font 6 (ComboCounter.def) -> 8 AND combo text ("Hit!"/%) font 7 (HitNum.def)
    -> 8, so the whole combo readout is the pixel font. Rainbow-by-count palfx (counter10..100) kept.
  - [Action]: combat alert text font 5 (Action.def) -> 8.
  Alt fonts available if a different look is wanted: font7 HitNum, font9 Round, font4 PowerbarNum.
TAG BENCH (tagged-out) TEXTURE - root cause: bench bars p3/p4 use sprite GROUP 20-24 (435x11, untextured)
  while active p1/p2 use textured 10-14 (435x24). P047 had half-fixed it (low-HP tiers pointed at 24px 13,x,
  high-HP still on untextured 23,x) = inconsistent, untextured at high HP. FIX: pointed every bench element
  at the matching ACTIVE textured sprite and scaled to bench height:
    bg0 20->10, top 21->11, mid 22->12, red 24->14, front100 23,0->13,0, front50 23,1->13,1
    (front25=13,1+orange, front=13,2+flash already correct from P047). Added scale = 1,0.46 to every bench
    element (24px sprite -> ~11px, matching the native bench size). axisY=0 so it thins from the top, aligned.
  Removed p3/p4.scalefill (was =1) so the bench CLIPS via range.x like the active bar (texture stays fixed
  instead of stretching) - identical range.x=15,-460 to the active, so it clips the same way.
TAG Z-ORDER (active over bench): tag bars had NO explicit layerno (all default = same layer, last-drawn p3/p4
  bench covered the active). Set active p1/p2 elements layerno=2, bench p3/p4 elements layerno=1 -> the
  tagged-in bar now always draws on top of the benched bar. (Tag convention: p1/p2 = point/active slots,
  p3/p4 = assist/bench slots, engine tracks which char each shows, so active stays on top through tags.)
WIN ICONS: p1/p2.pos -> 600,92 / 680,92 (nudged down to sit clearly under the lifebar). x/y still tunable.
fight.sff UNCHANGED (texture done by sprite-ref remap, no re-author). 87 sections. ASCII-clean. All Tag
Lifebar sprite refs resolve.
OPEN/TUNE: confirm in-game - (a) bench textured + not stretching, (b) active overlaps bench on tag,
(c) timer/combo/alerts in pixel font, (d) win-icon position. NOT YET DONE: same bench-texture + z-order pass
on [Tag_3P Lifebar]/[Tag_4P Lifebar]/[Simul*] (only [Tag Lifebar]=2v2 done). Bench scale.y=0.46 is a 24->11px
downscale - if it looks soft, re-author 20-24 natively at 11px. Timer COLOR (red/pink warning palfx) left as-is.


## P050 - bench lifebar RE-AUTHORED (native 11px our-style sprites) + counter bump
Why P049's bench fix didn't work: P049 pointed the bench at the active textures (10-14, 435x24) with
scale = 1,0.46 to thin them. That render-time squish DESTROYED the outline box + texture detail, so at
50-100% HP the bench read as a plain/"default" bar and only the orange palfx tier (25-49%) looked "ours".
Squishing a 24px outlined frame to 11px is the wrong tool (same lesson as the bench in earlier notes).
FIX = re-author the native bench sprite group 20-24 (435x11) to BE our style at crisp native size, then
use it cleanly with no scale:
  SFF SURGERY (fight.sff, append+repoint, no data shift):
    - 20,0 frame: redrawn 435x11 solid dark-purple box (16,11,22) + crisp 1px light-purple outline (78,60,98)
      = "our outline box" that survives at 11px (a downscale could not).
    - 23,0-3 fills: LANCZOS downscale of active 13,0-3 (gold/red gradients downscale cleanly).
    - 21,0 top<-11,0, 22,0 mid<-12,0, 24,0-1 red<-14,0-1 (downscaled).
    - Method: SFFv2 PNG block = [4-byte uint32 LE raw-len = w*h*4][PNG]. Appended 9 blocks at file end,
      set each node dataOffset=(pos-LD)/dataLength=len(block), extended ldata len @0x38, moved tdata off
      @0x3C to new EOF (tdata was empty). fight.sff 629820 -> 631493 bytes (+1673). Old data orphaned, harmless.
      Re-read all 9 sprites from the written file to confirm they decode.
  CONFIG ([Tag Lifebar] p3/p4): reverted to native group (bg0 20,0 / top 21,0 / mid 22,0 / red 24,0 /
    front100 23,0 / front50 23,1 / front25 23,1+orange / front 23,2+flash). REMOVED the 1,0.46 scale.
    Restored scalefill=1 (match active fill behavior). Kept layerno=1 (under active p1/p2 = layerno 2).
  Z-ORDER / RED POKE: native 11px = no scale property to misbehave (a likely cause of the bench rendering
    tall and poking into p1 in red). Also aligned bench x to the active: p3 607,34 -> 595,34 (under p1),
    p4 672,34 -> 684,34 (under p2), so the bench no longer juts past the active's right edge.
WIN-ICON COUNTER (round-win count): p1/p2.counter.scale = 1.4,1.4 (larger) + offset 0,5 -> 0,-3 (raised).
  NOTE: "the counter" assumed = the WinIcon round-win counter (no counter element exists in [Tag Lifebar]).
87 sections, ASCII-clean, all Tag Lifebar sprite refs resolve, tier palfx (orange/flash) preserved.
OPEN/CONFIRM: in-game - (a) bench is our box+gold at ALL hp (not just orange), (b) no red poke over p1,
(c) counter size/height. If "the counter" meant something else, say which. NOT DONE: same native-sprite
bench treatment is only on [Tag Lifebar]=2v2; Tag_3P/4P + Simul still use the old untextured 20-24 look
(but the sprites themselves are now re-authored, so those modes get the new box too if they reference 20-24).


## P051 - timer gold + names font + win counter bold + combo "HITS!" + powerbar fill slant
TIMER ([Time]): all counter palfx.mul red/pink (256,0,0 / 256,128,128) -> GOLD 255,205,90. Low-time sinmul
  pulse kept (now a gold pulse). (User offered gold OR white; went gold to match bars - white is a 1-line swap.)
CHARACTER NAMES (under icons, all lifebar sections): font 3 (Menu2Small) -> font 8 (Pixel), colors/white kept.
WIN COUNTER ([WinIcon] round-win count): font 4 (PowerbarNum) -> font 7 (HitNum, bold) per "bolder, not the
  timer's font". scale 1.4 -> 1.15 (HitNum renders bigger). Position kept at 600/680 (inner ends = between bars).
COMBO ([Combo]): text "H!\n%p%" -> "HITS!" (all tiers). counter (number) scale 1.6 = big. text (HITS!) palfx
  gold 255,205,90 + offset 78,40 to sit to the RIGHT of the big number. team1/team2.pos raised y 260 -> 232.
  Rainbow-by-count number palfx kept. NOTE: 78,40 offset is a first guess - combo layout needs in-game eyes.
POWERBAR FILL SLANT ([Powerbar]): p1/p2 front + frontMax got scalefill = 1. WHY: the frame (bg0) shears via
  xshear so the box leans, but the FILL used range.x clipping = vertical (straight) leading edge despite its
  xshear. scalefill makes the sheared sprite scale to the power so its slanted edge becomes the leading edge
  (exactly how the lifebar slants). EXPERIMENT/REVERSIBLE: powerbar also uses levelbars=1 (per-level sweep);
  if the sweep renders wrong, delete the two scalefill lines. Flagged to user to test.
87 sections, ASCII-clean.
DEFERRED - LEVEL NUMBERS -> "logo text": the logo ("ARCADE ALLSTARS ULTIMA") is a CUSTOM GRAPHIC (bold
  ITALIC, gold gradient, white outline, dark drop-shadow) - NOT a font. There is no logo font to point font4
  at. To match it the power level numbers (counter/counterMax, currently font4 PowerbarNum) need custom 0-9
  (+M) glyphs authored in that style as a NEW bitmap font (sff + .def in ikemen1/fonts/) - a self-contained
  asset job. Planned as the next focused step (get the Ikemen bitmap-font format + glyph quality right).
OPEN/TUNE: combo HITS! offset; win-counter exact spot/size; timer gold-vs-white; powerbar slant test.


## P052 - level numbers -> custom "logo-style" bitmap font (LogoNum)
The power level numbers wanted the LOGO look (bold ITALIC, gold gradient, white outline, dark drop-shadow).
The logo is a custom graphic, and font4 (PowerbarNum) is a FNT v2 bitmap font of MONO glyphs tinted gold by
palfx - a tint can't add a gradient/outline/shadow, those must be baked into the glyph art. So:
NEW FONT LogoNum (drop-in, place both in ikemen1/fonts/):
  - LogoNum.sff: 11 glyphs (group 0, ASCII 48-57 = 0-9, 77 = M), PNG32, 30px tall to match the originals.
    Glyphs generated from DejaVuSans-BoldOblique (bold+italic) + baked: dark drop-shadow, 2px white outline,
    vertical gold gradient (light gold 255,228,78 -> deep gold 201,138,28). Built by cloning PowerbarNum.sff
    and swapping each glyph (append+repoint, axisX=0, axisY kept). Re-read all 11 to verify decode.
  - LogoNum.def: FNT v2 bitmap, cloned from PowerbarNum.def (name + File -> LogoNum).
fight.def: registered font10 = ikemen1/fonts/LogoNum.def. In [Powerbar] ONLY, p1/p2 counter + counterMax
  font 4 -> 10, and palfx.mul 255,205,90 -> 256,256,256 (neutral: gold is baked into the glyphs now).
  font4/PowerbarNum LEFT UNTOUCHED - AI win/lose messages still use it.
NOTE: glyph horizontal anchor set to left (axisX=0); if a digit sits a few px off, nudge counter.offset.
87 sections, ASCII-clean. fight.sff unchanged since P050.
NEW DELIVERABLES the user must drop in: data/ikemen1/fonts/LogoNum.def + LogoNum.sff.

P053 (combo + timer fonts; POWERBAR SLANT ROOT-CAUSE: xshear/scalefill are NO-OPS)
- COMBO ([Combo]): number font 8(Pixel) -> 7(HitNum, bold), scale 1.6 -> 2.2; rainbow palfx kept.
  HITS! text font 8 -> 1(Menu2), offset 78,40 -> 8,20 (tight gap + raise next to the number).
  Engine (LifeBarCombo.draw): x is advanced by the number's TextWidth, number drawn right-aligned to x,
  HITS! drawn at x + text.offset (AFTER the number's right edge). So HITS! follows the number width =>
  no 999-hit overlap is possible regardless of digits. text.offset.x = gap after number; text.offset.y =
  vertical sit. ALIGNMENT IS IN-GAME TUNING (text.offset x/y + counter.scale).
- TIMER ([Time]): all counter*.font 8(Pixel) -> 10(LogoNum) = same font as the level numbers; palfx.mul ->
  256,256,256 (neutral; gold/outline baked into glyphs); scale -> 1.5 (was tiny); cyan sinmul 0,128,128 ->
  80,80,80 (brightness pulse, no color cast). LogoNum has 0-9 (timer digits fine). EDGE: infinite-time shows
  "o" which LogoNum lacks - add an 'o' glyph if infinite rounds are used. framespercount=60 is STANDARD
  (1s/tick @60fps); the "2s/tick" feel is a game-SPEED setting, NOT [Time] - do NOT touch framespercount.
- POWERBAR SLANT - ROOT CAUSE (engine source common.go): **xshear AND scalefill are NOT real Ikemen-GO
  Layout properties.** Layout struct (common.go ~565) = offset/facing/vfacing/layerno/scale/angle/window ONLY.
  Layout.DrawAnim hardcodes the shear param to 0. So every xshear= and scalefill= line ever placed in
  [Powerbar]/[*Lifebar] did NOTHING. Commented out 48 such no-op lines in [Powerbar].
  MEASURED the sprites: frame bg0 40,0 = straight 490x16 rectangle (opaque edges AND gold-outline left edge
  vertical at EVERY row); bg1 41,0 fully transparent; fill 43,0 = straight rectangle. => the power bar was
  NEVER actually slanted - the prior xshear "slant the box" config was a no-op the whole time, and the fill
  already matches the (straight) frame. TO ACTUALLY SLANT: bake a parallelogram into BOTH 40,0 and 43,0
  sprites (real sprite re-author). Offered to Raven pending go-ahead on direction/amount.
- fight.sff: a harmless +155-byte no-op (identical fill 43,0 re-appended during a 0-shear test) is in the
  LOCAL copy only; NOT shipped; functionally identical to P050. Live fight.sff stays P050.
- SHIPPED: data/fight.def ONLY. Combo uses fonts 7(HitNum)+1(Menu2), timer uses 10(LogoNum) - all already
  registered/present (LogoNum from P052). No new sff/font files needed.

P054 (combo tier-fix + win-pip reposition + POWERBAR SLANT BAKED IN)
- COMBO 10-HIT GLITCH FIXED: [Combo] has TIER sub-elements counter10..counter100 (the rainbow) AND
  text10..text100 (HITS! per tier). P053 only updated the BASE counter/text, so at 10 hits the engine
  swapped to the stale tier (font8 pixel + offset 78,40) = the "revert to old look + lose color" the user saw.
  Now ALL tiers updated: counter* -> font6 (ComboCounter) scale 0.9; text* -> font1 (Menu2) offset 8,20.
  Rainbow palfx on the counter tiers KEPT (only font/scale changed). No more 10-hit revert.
- COMBO FONT: number -> font6 ComboCounter = the closest match to LogoNum (same bold gradient+outline
  treatment; silver vs gold, upright vs italic; the dedicated combo font; digits-only). Its light gradient
  takes the rainbow palfx tints cleanly (tinted gradients with dark outlines). HITS! -> font1 Menu2
  (ComboCounter has no letters). PIXEL-FONT ANSWER for Raven: the only LITERAL pixel font is "Pixel" (font8,
  the basic blocky one he disliked); ComboCounter is closest IN SPIRIT to LogoNum but is smooth, not pixel.
  counter.scale 0.9 is TUNABLE.
- WIN PIPS ([WinIcon]): p1.pos 600->320, p2.pos 680->960 (y=92 kept) so the round-win icons sit under each
  player's bar instead of clipping in the center gap. Bars: P1 right-edge x=595 (extends left), P2 left-edge
  x=684 (extends right); localcoord 1280x720. X is TUNABLE.
- POWERBAR SLANT BAKED (the real fix - xshear/scalefill are engine no-ops): sheared frame 40,0 (490x16->493x16)
  and fill 43,0 (484x10->486x10) into matching "/" parallelograms, slope 0.2. RIGHT-EDGE ANCHOR PRESERVED:
  canvas expanded leftward, axisX shifted by the lean (490->493, 484->486) so the bars render in the SAME spot.
  Fill is windowed - clip still works (window is screen-space); body leans, charging leading edge stays a
  vertical cut (natural). P2 mirrors via facing. NOTE: bg0/front scale 1,1.4 stretches vertically, so the
  displayed lean is a touch shallower (~8deg) than the baked slope - raise the slope if more lean is wanted;
  direction is "/" and easy to flip. fight.sff +600 bytes (2 appended sheared sprites).
- SHIPPED: data/fight.def + data/fight.sff. ComboCounter/Menu2 already in the build (no new font files).

P055 (combo font -> Anton bitmap font; smaller, no overlap)
- Raven picked Anton from the P-preview. Baked a styled Anton bitmap font (FNT v2): glyphs 0-9 + H I T S !
  (the combo number + "HITS!"). Italic skew baked (~0.17); DARK outline (so rainbow tier-tints keep contrast);
  light white->silver gradient fill (so palfx tints show as colored gradients). Each glyph = tight bbox + 3px
  right gap => cannot overlap. The old "too large + overlapped itself" was ComboCounter sizing/spacing, not the
  font. ~43px native. NEW FILES: data/ikemen1/fonts/Anton.def + Anton.sff. Registered font11.
- [Combo]: ALL tiers (counter + counter10..100, text + text10..100) -> font11. counter.scale 0.9->0.8 (number
  ~34px); text.scale added 0.55 (HITS! ~24px, smaller than number); text.offset 8,20->8,10. Rainbow palfx on
  counter tiers KEPT; gold palfx on HITS! KEPT (tintable gradient => both still color per tier).
- TUNABLE: counter.scale (number size), text.scale (HITS! size), text.offset (gap x + baseline y).
- NOTE: combo outline is DARK (needed so the rainbow fill keeps contrast); meter/LogoNum uses a WHITE outline.
  For exact meter-match (gold fill + white outline) Raven would drop the rainbow = a re-bake. Glyph set is
  digits+HITS! only; if the combo text changes, glyphs must be added.
- SHIPPED: fight.def + ikemen1/fonts/Anton.def + Anton.sff. fight.sff unchanged this turn.

P056 (font-slot cap discovery + remap; fixes invisible combo AND restores timer + level numbers)
- ROOT CAUSE: Ikemen lifebar font slice is hard-capped -> `type Lifebar struct { ... fnt [10]*Fnt ... }`,
  loader `for i := range l.fnt { LoadFile("font%v", i) }` => ONLY font0..font9 load. font10 + font11 are
  NEVER loaded; any lifebar element pointing at them gets font[0]=-1 and is NOT drawn (lifebar.go ~162) =>
  invisible. This silently broke the combo (font11, P055) AND the timer + powerbar level numbers (font10,
  P052/P053) the whole time.
- FIX (remap onto free in-range slots, fonts themselves unchanged):
    font3 (was Menu2Small; free since names -> font8 in P051) -> LogoNum.def
    font6 (was ComboCounter; free since combo moved off it in P055) -> Anton.def
    all `.font = 10` refs -> 3 (timer + level numbers => LogoNum); all `.font = 11` refs -> 6 (combo => Anton)
    font10/font11 [Files] lines commented DEAD.
- RESULT: combo visible again (font6=Anton, loads) + timer & level numbers restored (font3=LogoNum, loads).
- USABLE LIFEBAR FONT INDEXES = 0-9 ONLY. Remaining free slot: font5 (Action, unused). NEVER use font10+.
- SHIPPED: fight.def + ikemen1/fonts/{Anton.def,Anton.sff,LogoNum.def,LogoNum.sff}. fight.sff unchanged.

P057 (combo number raised + smidge larger; CORRECTION to combo-tier understanding; popup box identified)
- Combo number was crowding "HITS!". Engine geometry (readLifeBarCombo + draw, lifebar.go ~1429/1516):
  number drawn at pos.y; "HITS!" drawn to the RIGHT of the number at pos.y + text.offset.y. Raised the number
  by lifting pos.y 232->224 and holding HITS via text.offset.y 10->18. counter.scale 0.8->0.85. team1+team2.
- CORRECTION: readLifeBarCombo reads ONLY base `counter.` and `text.`. It does NOT read counter10..counter100
  / text10..text100 and does NOT cycle palfx. So in stock Ikemen-GO master the combo number is a SINGLE color
  and the numbered rainbow-tier lines are INERT. Prior "reverts at 10 hits / must hit every tier" note was
  unverified. Kept tier edits in sync as belt-and-suspenders in case Raven's nightly differs. OPEN: confirm
  whether the combo number actually changes color in-game.
- Popups = lifebar [Action] element (fight.def ~2858). Box = sprite 400,0 (group 400) drawn translucent
  AS80D128 ("shadow box"). Popup text font = font8 (Pixel). Message STRINGS are runtime-supplied (newLbMsg),
  not stored in fight.def. NOTE: font8 is already the crispest/most-arcade font; the smooth-looking elements
  are the Anton/LogoNum bakes (combo number, timer, level numbers).
- SHIPPED: fight.def.

P058 (popup [Action] box -> purple pixel panel, kept translucent; + arcade-pixel font direction set)
- Replaced fight.sff sprite 400,0 (270x28, the [Action] popup "shadow box") with a purple PIXEL panel:
  lighter-purple 1px border, vertical purple shade, subtle 2x2 dot grid, tiny pixel stars. Axis kept (135,0).
  Kept AS80D128 translucent blend (Raven: this box stays translucent even in our style). SFFv2 append+repoint
  (tdataLen was 0, clean append); verified decode 270x28. group 400 unused elsewhere -> safe.
- TUNABLE: dot density, star count, purple shade, AS blend factors (in [Begin Action 400] line).
- DIRECTION: going FULL ARCADE-PIXEL across the UI numbers. Popup text stays font8 (Pixel, already arcade).
  Built 5-option pixel-font preview (PressStart2P, Silkscreen Bold, VT323, Jersey10, PixelifySans) w/ arcade
  treatment. VT323 'S' mangled at small px -> dropped. AWAITING pick to re-bake combo (Anton/font6) +
  timer&level numbers (LogoNum/font3) as crisp pixel. fight.sff bak /tmp/fight.sff.bak.
- SHIPPED: fight.sff.

P059 (full arcade-pixel HUD font baked -> Jersey 10; combo + timer + level numbers)
- Raven picked Jersey 10 from the pixel-font preview. Baked Arcade.def + Arcade.sff (cloned Anton's PNG32
  header - confirmed-rendering lineage): glyphs 0-9 + H I T S !, chunky pixel (logical render -> hard alpha
  threshold to kill AA -> integer x4 upscale -> grid-stepped italic shear 0.18), gold 2-tone fill, hard dark
  outline, drop shadow. Native glyph height 44px (~= Anton 43). 15/15 glyphs verified decode.
- fight.def: font3 + font6 BOTH repointed to Arcade.def (one HUD pixel font for combo, timer, level numbers).
  Combo scales KEPT (0.85/0.55; Arcade 44 ~= Anton 43). Timer counter.scale retuned 1.5->1.02; powerbar level
  added p1/p2.counter.scale 0.68 (was default 1.0) - both x(LogoNum 30 / Arcade 44 = 0.682) to preserve sizes.
- Popup text stays font8 (Pixel) - already arcade. LogoNum/Anton .def/.sff now orphaned (unreferenced, left in
  build, harmless). Per-element scales tunable.
- SHIPPED: ikemen1/fonts/Arcade.def + Arcade.sff + fight.def.

P060 (in-round action popups restyled -> ArcadeMsg pixel font + purple box; GLOBAL, no per-char edits)
- SOURCE VERIFIED in engine (no guessing): "<< CHANGE >>" / REVERSAL / NICE COMBO / COUNTER HIT / DANGER /
  TECHNICAL / DOWN popups are pushed by the LifebarAction state controller (bytecode.go:7374) -> char method
  appendLifebarAction (char.go:5169). lifebar.go never populates [Action] (newLbMsg/insertLbMsg have zero callers
  there); char.go is the only caller. appendLifebarAction reads team%v.bg. + team%v.text. from the [Action]
  IniSection at runtime -> styling is GLOBAL via fight.def [Action]; the strings are sctrl params inside the
  characters (custom; not in engine/base-Lua/fight.def) and need NOT be touched to restyle.
- TEXT FONT (the actual miss in prior turns): [Action] team1/team2.text.font 8 (Pixel) -> 5. font5 was registered
  to an UNUSED Action.def (no element referenced font 5) -> repointed font5 = ikemen1/fonts/ArcadeMsg.def.
- ArcadeMsg.def/sff: NEW popup font, Jersey 10, full set A-Z 0-9 ! < > (39 glyphs), gold 2-tone + dark outline +
  drop shadow + italic, baked LH=13/UP=4 (chunky-low-res so it stays pixel when small), native 40px. Built on
  Arcade's confirmed-rendering PNG32 header. Chevrons present in Jersey10.
- SIZE (non-intrusive): [Action] team1/team2.text.scale 0.85,0.95 -> 0.55,0.55 (~22px in the 28px box).
- BOX: unchanged from P058 - sprite 400,0 (270x28 purple dotted/star panel, AS80D128 translucent). Confirmed
  [Begin Action 400]="400,0,...,AS80D128" + decoded live sprite = purple. REQUIRES fight.sff applied.
- HUD Arcade kept 44px (0-9+HITS!) on font3/font6 - full-alphabet bake was 52px and would grow combo/timer/level
  ~18%, so popup font is a SEPARATE file. Fixed malformed team2.front.scale.
- SHIPPED: fight.def + ArcadeMsg.def + ArcadeMsg.sff (+ Arcade.def/sff unchanged 44px). fight.sff (P058) needed for box.

P061 (in-round action popups: REAL fix - box sprite 400,0 restyled on the LIVE fight.sff)
- ROOT CAUSE of "zero visible changes" (verified against Raven's uploaded live build + matching Ikemen-GO source):
  (1) These popups are NOT text. data/action.zss fires `lifebarAction{spr: const(MsgReversal), 0; top: 1}` etc.
      -> the engine draws PRE-BAKED SPRITES from fight.sff: box = bg sprite 400,0, message = front sprite from
      groups 401-425 (FIRST ATTACK, COUNTER HIT, REVERSAL, DANGER, NICE/GOOD/SWEET/GREAT/AMAZING/GDLK COMBO,
      SPECIAL/SUPER FINISH, PERFECT, PARTNER ASSIST, << CHANGE >>, DOWN, ASSIST OK, ACTIVE/COUNTER SWITCH,
      GUARD CRUSH, PARRYING, JUST DEFENDED, CLUTCH). Since spr (not text) is passed, the [Action] text.font is
      never used -> ALL prior font edits (P060 font5/ArcadeMsg, [Action] text.font 8->5) are INERT (left in place,
      harmless; revertible on request).
  (2) Prior box edits (P058) were applied to a STALE outputs/data/fight.sff, NOT Raven's live file. Confirmed by
      decoding the LIVE data/fight.sff (632248 b): sprite 400,0 was still the original dark-gray slanted panel.
- FIX: re-fetched the LIVE fight.sff and rebuilt sprite 400,0 (270x28) = translucent purple, slanted (reused the
  ORIGINAL alpha mask so the parallelogram slant is identical), dot grid + a few stars matching bar sprite 10,0
  (sampled base purple (16,11,22), dot highlight (96,56,140); box uses base 72,38,122 / dot 132,86,188 / bevel
  168,124,214). Drawn with the existing AS80D128 blend ([Begin Action 400]="400,0,...,AS80D128") -> translucent
  purple. Append+repoint surgery on the live file. Output 633180 b.
- Message text sprites (401-425) left as-is (their own colorful font). Offered: re-render all 25 in Jersey10
  arcade gold to match the HUD.
- SHIPPED: data/fight.sff (the live file + new box). No fight.def change needed (bg.anim=400 already correct).

P062 (action popups: all 25 message sprites -> arcade gold + box reshaped to clean parallelogram)
- MESSAGE SPRITES 401-425 re-rendered in Jersey 10 arcade gold (matches HUD font): gold 2-tone (255,238,150 ->
  232,165,38) + dark outline (46,26,8) + drop shadow + italic shear 0.16, baked LH=11/UP=2 (~2px chunky pixels,
  ~20-22px tall). Each kept center-anchored like the originals: axis=(w/2, h/2-14) reproduces the original
  vertical seat (orig sprites were axis (w/2,-6) on 16px). All 25 fit (widest 215px vs ~257px box body):
  401 FIRST ATTACK ... 425 CLUTCH (full set). Words rendered with their spaces; << CHANGE >> chevrons render.
- BOX 400,0 reshaped: original was a converging TRAPEZOID (looked cut-off on the left). Now a clean right-leaning
  PARALLELOGRAM (13px shear, both edges parallel) so the slant reads intentional like the bars. Kept translucent
  purple + dot grid + stars + top bevel, axis (135,0), AS80D128 blend.
- Done on the live fight.sff (P061 base). Output 644317 b. All text is now baked-gold; box restyled.
- Open tuning (needs Raven's eyes): slant direction/amount (can flip or make left edge vertical); whether to add
  color accents (e.g. DANGER red) vs all-gold; exact popup vertical seat.
- SHIPPED: data/fight.sff (box 400,0 + messages 401-425).

P063 (action popups: legibility fix - message sprites re-rendered hi-res; fight.sff re-packed clean)
- PROBLEM: P062 messages baked chunky at LH=11/UP=2 (~9px caps). At that resolution Jersey 10's D is
  indistinguishable from O -> "GDLK COMBO" read as "GOLK", same for DANGER/DOWN/GUARD/DEFENDED. Removing the
  italic alone did NOT fix it (resolution-limited).
- FIX: re-rendered all 25 message sprites (401-425) at higher logical resolution LH=26/UP=1 (crisp 1px pixels,
  ~16px caps) + slight italic 0.06 (keeps HUD lean) + 1px letter spacing. D now reads clearly across all words.
  Kept ~16px tall (= original size; not enlarged) and the gold/outline/shadow treatment. Widest word 194px
  (box body ~257). Axis still (w/2, h/2-14) to hold vertical seat.
- Also RE-PACKED fight.sff cleanly: dropped accumulated orphan sprite blocks from the P061/P062 append-surgery
  (653871 -> 603172 bytes); all 118 referenced sprites preserved (fmt/axis/link intact).
- Box 400,0 unchanged (P062 parallelogram, purple/dots/stars, AS80D128).
- Note on the tradeoff: chunky 2px pixels can't render legible condensed-font caps inside the 28px box; the
  finer 1px hi-res is the legible option (still crisp/no-AA = pixelated). Revertible to chunkier if desired but
  the D/O ambiguity returns.
- SHIPPED: data/fight.sff (messages 401-425 re-rendered; clean re-pack).

P064 (ULTIMA COMBO animated rainbow tier + D-legibility fix)
- ULTIMA COMBO (replaces "GDLK COMBO" at the 25+ hit tier): animated rainbow-wave text, like the menu ULTIMA.
  * 14 frames baked as fight.sff sprites 412,0-13 (each = "ULTIMA COMBO" with per-letter rainbow hue cycling +
    per-letter vertical sine-wave bob; canvas 165x24, axis (w/2,h/2-14) so it seats like other messages).
  * fight.def: new [Begin Action 4120] cycles 412,0-13 @2 ticks/frame (loops ~2x over the popup's display).
  * data/action.zss line 66: the 25+ branch changed from `lifebarAction{spr: const(MsgCombo25), 0; top: 1}`
    to `lifebarAction{anim: 4120; top: 1}`. The bg box (anim 400) still draws behind it. Other combo tiers
    (NICE/GOOD/SWEET/GREAT/AMAZING) unchanged.
- D-LEGIBILITY FIX (user: D read as O; "DOWN" looked off): all static message sprites 401-411,413-425 re-rendered
  with fix_D() - straightens the D's left edge + forces a solid 2px flat left vertical - and italic reduced
  0.06 -> 0.04. D now reads clearly vs round O (verified DOWN/DANGER/GOOD/GUARD/DEFENDED). O untouched (round).
- fight.sff re-packed clean: 118 -> 131 sprites, 618362 b.
- REQUIRES ALL THREE FILES applied: data/fight.sff + data/fight.def + data/action.zss (the animation only plays
  with all three). Tuning: anim speed (the "2" in [Begin Action 4120] frame lines), wave amplitude, rainbow
  saturation. Can match the exact menu-ULTIMA style if pointed at that asset.
- SHIPPED: data/fight.sff + data/fight.def + data/action.zss.

P065 (DANGER red warning pulse + ULTIMA COMBO lingers longer)
- DANGER (405): restored to RED and animated as a warning pulse. 10 frames baked as fight.sff sprites 405,0-9
  (red 2-tone fill, brightness throbbing ~60-100% = alarm pulse; same outline/shadow/italic/D-fix treatment as
  the other messages; canvas 89x16, axis (w/2,h/2-14) so it seats like the rest). fight.def: new [Begin Action
  4050] cycles 405,0-9 @3 ticks. action.zss line 42: DANGER changed from `spr: const(MsgDanger), 0` to
  `anim: 4050` (its existing timeMul: 2 kept).
- ULTIMA COMBO lingers longer: action.zss line 66 added `timeMul: 2.5` (display ~150 ticks vs the prior 60) so
  the rainbow animation has time to be enjoyed. SAFE re: other popups - each popup carries its OWN independent
  resttime and they stack vertically via [Action] team*.spacing (0,32), so a longer ULTIMA does not shift or
  overlap other messages' disappear timing. timeMul is the engine's intended knob for this (win messages use 3).
- fight.sff re-packed clean: 131 -> 140 sprites, 623060 b.
- REQUIRES all three files applied together: data/fight.sff + data/fight.def + data/action.zss.
- Tuning: DANGER pulse speed = the "3" in [Begin Action 4050] frame lines (lower=faster); ULTIMA linger = the
  2.5 in its timeMul (lower=shorter). Note: 2.5 is a float - if it ever fails to parse in-engine, fall back to
  an int (2 or 3).
- SHIPPED: data/fight.sff + data/fight.def + data/action.zss.

P066 (cvsmai groove meter / clone fix - config.txt was missing [Statedef 30000])
- SYMPTOM: selecting Mai spawned a visible Mai clone (helper name "groove", id 20000) standing behind her;
  she showed the DEFAULT engine power bar instead of a groove gauge "like the other cvs guys"; console:
  `WARNING: groove (..) in state 30000: changed to invalid state 30000 (from state 0)`.
- ROOT CAUSE: cvsmai is Family B (cvs2_system). Its groove helper spawns (cvs2_system.cns L745/L10766) with
  `ID=20000, stateno=30000, name="groove"`, gated `var(30) = 0`. State 30000 (the groove-SYSTEM config block)
  lives in `config.txt` (st4) for this family. Honda's & Iori's config.txt are byte-identical (md5 10415e48)
  and DO contain `[Statedef 30000]` (sets the groove vars, `var(30) = -1`, then ChangeState 20001 = groove
  select). Mai's config.txt (2234 b) had been truncated/replaced with ONLY the groove-POINT display states
  (10000/10010) and was MISSING [Statedef 30000]. So Mai's groove helper landed in a non-existent state ->
  stuck in state 0 = her idle anim = the "clone"; var(30) never initialised -> stayed 0 -> (a) the var(30)=0
  spawn trigger kept firing the broken helper, (b) no groove was selected so the 21000 gauge had no valid
  groove state -> engine power-bar fallback, (c) the console warning. The P013 GP-OFF edit most likely
  truncated the file.
- FIX: rebuilt cvsmai/config.txt = the shared [Statedef 30000] block (verbatim from Honda/Iori) + Mai's
  existing [Statedef 10000]/[10010] groove-point states (P013 GP-OFF preserved). Additive/surgical - nothing
  removed. 11328 b. Restores the groove gauge, removes the clone, clears the warning.
- LATENT (separate, NOT this bug): cvsmai.def [Files] references `Mai.cmd / Mai-N.cns / Mai-S.cns / Mai-H.cns`
  but the actual repo files are lowercase `mai.cmd / mai-N.cns / mai-S.cns / mai-H.cns`. Loads on Windows
  (case-insensitive); would FAIL to load on case-sensitive Steam Deck/Linux (Mai would break entirely). Since
  Mai currently loads, the config.txt above IS the active bug. Offer: lowercase those 4 refs in the .def.
- SHIPPED: cvsmai/config.txt.

P067 (combo counter - overlap fixed + purple, thick-T "HITS!")
- This is the fight.def [Combo] HUD element + its font - NOT the popup sprites (action.zss/400-425). Separate
  subsystem; do not cross-apply.
- OVERLAP: the combo number (font6 Arcade gold, scale 0.85 = ~37px tall, drawn from team*.pos y) overlapped
  "HITS!" which sat only `text.offset = 8,18` below it. Pushed every combo text offset `8, 18 -> 8, 42`
  (both teams, all tiers) so HITS clears the number with a small gap.
- THIN T + PURPLE HITS (one asset): the number is digits-only, so HITS got its own font. Baked
  ikemen1/fonts/PurpleHits.def + .sff = Jersey10, purple 2-tone (top 178,128,232 / bot 110,62,168), dark
  outline 28,14,48, drop shadow, italic, glyphs H/I/T/S/! at ASCII image indices, 44px-tall PNG32 (header
  cloned from Arcade.sff, SFFv2, 0 palettes). The T stem is thickened (+3px horizontal mask dilation) to match
  the H/S weight - fixes the "T too thin" complaint. Pointed font5 (the now-orphaned ArcadeMsg popup font, inert
  since popups became sprites in P061) -> PurpleHits.def. [Combo] team*.text*.font 6->5; gold text palfx
  (255,205,90) neutralised to 256,256,256 so the purple shows true. The NUMBER stays font6 (gold Arcade) -
  untouched (it has no T, so the thin-T fix never needed to touch the gold font).
- Tuning: HITS x/y position = [Combo] team*.text.offset; purple shade / T weight = re-bake PurpleHits glyphs
  (thick=N dilation). Only font0-9 load (P056) - font5 is a valid slot.
- SHIPPED: data/fight.def + data/ikemen1/fonts/PurpleHits.def + data/ikemen1/fonts/PurpleHits.sff.

P068 (feedback pass: Mai power-bar + KO-hide; combo font uniform+centered; ULTIMA flame v1)
- MAI bug A (default power bar ON TOP of her gauge): Mai's cvs2_system.cns was MISSING the noPowerBarDisplay
  assert entirely (Honda/Iori carry it; Honda's is deliberately disabled per P011, but Mai had none). Added
  to Mai's [Statedef -2]: `AssertSpecial flag = noPowerBarDisplay, trigger1 = 1, ignorehitpause = 1`. Now that
  she has a working groove gauge (P066), this suppresses the redundant engine bar.
- MAI bug B (groove gauge doesn't hide on KO): only gauge state 21000 (C-groove) had the KO/bench RemoveExplod
  sweep; states 22000/23000/24000/26000 had NONE and 25000 was partial, so on any other groove the persistent
  (removetime=-1) gauge explods were never removed on KO. The spawn guards already block re-spawn on
  KO/bench/roundstate (root,alive + roundstate<=2 + not-benched). Added a full KO/bench sweep
  (`RemoveExplod ... trigger1 = root,stateno=[6565610,6565611] || roundstate>2 || !root,alive`) for every
  spawn id in 22000-26000. All six gauge states now sweep on KO/bench/round-end.
- COMBO FONT (PurpleHits.sff rebuilt): previous bake thickened ONLY the T (+3) -> the I read as skinny next to
  it. Jersey10's natural stems are already uniform (6px); the fix is a UNIFORM pass - every glyph dilated by
  the SAME +1 so all five (H I T S !) carry equal stroke weight (and the T no longer looks thin). Also centered
  the number over HITS: combo text offset.x 8 -> 0 in fight.def (centers under the 2-digit ULTIMA range).
- ULTIMA FLAME v1 (Raven supplied a placement mock): baked an 8-frame flickering flame (fight.sff group
  430,0-7, axis bottom-centre), [Begin Action 4130] @3 ticks in fight.def. action.zss [-4] spawns it as an
  explod at combo >= 25 (the ULTIMA threshold), one per side (teamSide 1 -> postype left pos 115,250 /
  teamSide 2 -> postype right pos -115,250), ontop, removetime -1, and removeExplod{4130} when the combo drops
  below 25 / ends. ** POSITION + SCALE + LAYER ARE A FIRST PASS ** - the lifebar is 1280x720 but explods draw
  in each char's localcoord, so exact placement under the number needs one screenshot tune (per the
  screenshots-beat-arithmetic rule). Tunables are commented inline (pos/scale; drop ontop or lower sprpriority
  if it covers the number instead of sitting behind it). Reuses the bake->[Begin Action]->fire pattern.
- SHIPPED: cvsmai/cvs2_system.cns + data/fight.def + data/fight.sff + data/action.zss + ikemen1/fonts/PurpleHits.sff.

P069 (Mai default-bar real fix + gauge restore + lifebar red damage + ULTIMA flame that actually renders)
- MAI bug A (engine power bar STILL showing after P068): ROOT CAUSE found - P068's noPowerBarDisplay assert was
  inserted into [Statedef 8000] (a MOVE state), not [Statedef -2]. So it only suppressed the bar while Mai was
  in that one move and showed otherwise. MOVED the assert to [Statedef -2] (runs every frame). Confirmed Iori
  (settled/working) carries the same `ID<partner,ID` arbitration UNcommented and shows no default bar, so the
  arbitration was never the cause - the misplaced statedef was. Engine bar now stays suppressed.
- MAI gauge restore (removed on tag-out, didn't return - a REGRESSION introduced by P068): states 22000-26000
  spawned their explods with `trigger1 = Time = 0` (once only). P068's KO/bench sweep removed them on tag-out and,
  being Time=0, they never re-spawned -> gauge gone for good on those grooves. Converted all 104 explod spawns in
  22000-26000 to the self-respawn pattern already proven on state 21000 (P013v2): `triggerall root,stateno !=
  [6565610,6565611]` + `root,alive` + `roundstate<=2`, and `trigger1 = numexplod(<id>)=0 && teamside`. Now hides
  on bench/KO (guard fail + sweep) AND restores on tag-in (numexplod re-spawn). NO ChangeState - respects the
  P013 HARD LESSON (a ChangeState restore on Mai's gauge spawned an attacking clone).
- LIFEBAR "HP being removed" -> RED: the mid layer (the damage-lag chunk draining behind front HP) used
  `mid.palfx.mul = 200,200,200` (dimmed gold, same hue as the bars, so the loss didn't read). Changed all 40
  mid.palfx.mul across the lifebar sections to `256,44,28` (red). Recoverable HP is a separate element - untouched.
- ULTIMA FLAME - architectural finding + working solution. The P068 explod approach CANNOT work: a player explod
  (fired from action.zss [-4]) renders from the OWNER CHARACTER's sff, never the lifebar's fight.sff, so anim 4130
  (which lives in fight.sff) resolved to a nonexistent character anim -> invisible. (The groove-gauge explods only
  work because their anims, e.g. 21010, ARE in the character's own sff.) The lifebar has no conditional anim slot
  at the combo COUNTER, and lifebarAction draws fight.sff anims only at the single popup spot - so a flame *under
  the counter* is not achievable with these tools. REVERTED the dead explod from action.zss. SOLUTION: composited
  real flames INTO the ULTIMA COMBO popup frames (412,0-13 = anim 4120, which IS lifebar-drawn from fight.sff and
  has worked since P064). The 14 frames are now 200x58 (were 165x24); text kept exactly in place via axis (100,14),
  flames rise from below with a heat glow, text composited on top and fully legible. Fires at the existing >=25
  ULTIMA threshold through the existing lifebarAction - no action.zss/fight.def change needed. fight.sff 148 spr.
- SHIPPED: cvsmai/cvs2_system.cns + data/fight.def + data/fight.sff + data/action.zss.

P070 (flame under combo counter as RGB + HITS heavier outline + white clock + lowered popups)
- FLAME relocated from the ULTIMA COMBO popup to UNDER THE COMBO COUNTER, now RGB/rainbow. Engine fact (verified
  in Ikemen-GO src/lifebar.go): the [Combo] section DOES support a background animation - LifeBarCombo has a
  `bg AnimLayout` read from `team*.bg0.` keys and drawn at the counter position (co.bg.Draw at the counter x, pos.y,
  behind the number). Added `team1.bg0.anim = 4131` + `team2.bg0.anim = 4131` (+ offset 0,18 / scale / layerno 2).
  Baked a 10-frame RGB multi-tongue flame -> fight.sff group 431,0-9 (74x56, axis 37,52) + [Begin Action 4131].
  CAVEAT (told Raven): the engine draws the combo bg for EVERY combo - the per-count tiers (counter10-100 / a tiered
  bg) are INERT in this build - so the flame shows behind the counter for ALL combos, not only 30+ ultima. Gating to
  30+ only is not possible through the combo bg; would need a different mechanism. Restored the ULTIMA COMBO popup
  (412,0-13) to plain rainbow-wave text (re-baked fresh - the repo backup held only a single old 1-frame 412 sprite,
  and P069 had composited flames into it). offset 0,18 is screenshot-tunable.
- HITS text (PurpleHits.sff, font5): re-baked with a heavier outline (outline_w 1->2) while KEEPING the letter-body
  weight (thick=1), and the 'I' made slightly thicker (thick=2). Purple 2-tone + italic preserved.
- COUNTDOWN CLOCK -> white. The timer used font3 (gold Arcade), which is shared with the combo number (font6), so it
  couldn't be recolored in place; and the engine's font color param is a setColor MULTIPLY (can't brighten gold to
  white). Baked a white Jersey10 digit font into the FREE font2 slot (Timer.def + Timer.sff; font2's only prior ref
  was commented out and Timer.def was missing) and switched [Time] counter*.font 3 -> 2. Combo number stays gold.
- POPUPS lowered: [Action] team1/team2.pos.y 377 -> 440 (off the fighters' heads, still above the meter). Tunable.
- SHIPPED: data/fight.def + data/fight.sff + data/ikemen1/fonts/{Timer.def, Timer.sff, PurpleHits.sff}.
