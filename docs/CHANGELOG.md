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
