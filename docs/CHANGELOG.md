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
