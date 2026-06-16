# ultimabrawlers — CORE (read this first, every session)

This is the stable "constitution" for working on ultimabrawlers with **Raven**
(Ikemen GO 2v2 tag fangame, repo `github.com/anevilwizardcat-gif/ultimabrawlers`).
It does not contain subsystem detail — that lives in `ATLAS.md` + `cards/`.

Read order at session start: **this file → ATLAS.md → the one card for today's task.**
Do not read every card. Do not read CHANGELOG.md in full (grep it by subsystem).

---

## The session ritual (follow this loop on every task)

**START**
1. Read this file + `ATLAS.md`.
2. Identify the subsystem for today's task — by name, by symptom, or by the file involved.
   Find its row in ATLAS.
3. Re-read that row's **Architecture** and **DO-NOT-confuse-with** fields *before writing anything.*
   If I catch myself importing a pattern named in "DO-NOT-confuse-with", STOP — wrong architecture.
4. Open ONLY that subsystem's card (`cards/<id>.md`) and read it.
5. If the task touches a subsystem with no card yet, I create the card from the *live files*
   (not from memory) as part of the work, and add an ATLAS row.
6. Read the actual source before editing — Python, `encoding='latin-1'`. Never guess spawn/hide logic.

**END (every fix, same turn — no exceptions)**
7. Ship the fix via `present_files` THIS turn. Never "I staged it, sending now."
8. In the SAME turn: append a CHANGELOG entry, update the card's "Current state",
   bump the ATLAS row's Status, and ship the updated docs alongside the fix.
9. A turn never ends with an unshipped fix or an unlogged change.

If I break step 7 or 8, Raven should call it out — it's the #1 historical failure.

---

## Raven's values (non-negotiable)

- **No guesswork.** Read how the code actually works and match it. Don't pattern-match and assume.
- **Surgical, reversible edits.** Working characters are glass ornaments. Comment (`;`), don't delete.
  Revert is a last resort, not a first response.
- **Honest accountability.** If a fix has no effect or breaks something, say so. "I'm not sure, here's
  what I found" is fine. Confident-wrong answers and unshipped work are not.
- **Propagate fixes across the whole roster** when a bug is systemic, not just the char that surfaced it.

**Tone:** Raven is direct and corrects bluntly; internalize corrections, don't repeat them.
Own errors plainly, fix, move on. Don't grovel, don't get defensive, don't re-litigate a settled call.

---

## Environment & workflow traps (these waste hours if forgotten)

- **The repo is usually NOT the live build.** Default state = Raven's previous-morning backup (pushed from
  PC each AM, then Raven keeps testing on Steam Deck without pushing). A repo fetch is a *reference point.*
  Raven is usually running the files I last shipped. Raven sometimes pushes current state on purpose and
  will say so. **When in doubt, ask which state the repo reflects.** The files I stage are effectively live.
- **Shell is `sh`, not bash.** No process substitution `<()`. Use temp files.
- **Many files are non-UTF-8 (Shift-JIS).** `grep` errors on invalid UTF-8. Read/edit with Python
  `encoding='latin-1'`. Mojibake in author names/comments is normal.
- **GitHub is case-sensitive and casing DIFFERS from `select.def`** (e.g. `Cvs_Honda` vs `cvs_honda`).
  Fetch failed? Suspect casing first.
- **A ~14-byte fetch = GitHub's "404: Not Found" string.** Check byte size; never parse a 404 body as a file.
- **Screenshots committed to repo root beat coordinate arithmetic** for layout/measurement.

## File-delivery convention

- Outputs dir is flat → name collisions happen. Ship each file inside a **subfolder named for its destination
  char folder, with the BARE real filename** (e.g. `outputs/cvsking/cvsking.cns` → drop into `chars/cvsking/`).
- Casing must match each char's exact `.def` reference (`Cvs2_system.cns` vs `cvs2_system.cns` can coexist).
- Same-named "shared" files are NOT always byte-identical — md5/diff before assuming.

## `select.def` format (permanent reminder)

A roster line is `charFolder, stageName.def`. The **second** comma value is the **STAGE/MAP**, not an
alternate character def. The character loaded is the folder's default def.

---

## Terminology — Raven's words vs. what's in the code (READ THIS)

Raven describes things the way he pictures them and uses **"meter / gauge / bar / power meter"
interchangeably** to mean the same thing: the character's on-screen super/power meter. He does NOT
read the .cns/code, so he is not naming a specific code token. When he says any of those words, he
means *that character's visible super meter*, whatever it's literally called in the file.

Do NOT latch onto a code token just because it matches his word. The same visible meter is called
different things by different authors:
- groove family (Warusaki3): "groove bar" (id 6000), "GP counter" (6500), "gauge" (6100), states 6100-6170
- cvs2_system family: "Gauge" helper id 21000, states 21000-26000
- Gal129 family (cvs2_blanka/dhalsim): EX/groove meter, states 8000 + 8100-8160
- SF3: power gauge = state 50000 (NOT 25000, which is the stun gauge decoy)

Rule: map his word to the RIGHT subsystem/family first (via ATLAS), then to that family's code token.
If his phrasing is ambiguous about which on-screen element, ask one quick question rather than guess.

## Versioning scheme used by this doc system

- **Patch IDs:** `P001`, `P002`, … monotonic, never reused. Used to cross-reference ("supersedes P014").
- **Timestamps:** ISO date + local time, Central Time (Raven is in TN). e.g. `2026-06-16 14:20 CT`.
- **Build tags (optional):** tie a changelog entry to repo state, named for the backup it was built against,
  e.g. `ub-2026.06.15-bak`. Helps reconcile "repo ≠ live build."

## GitHub fetch rule (default)
Plain `github.com/<u>/<repo>/blob/<branch>/<path>` is an HTML **web page**, not file bytes -> fetching it
returns markup, not code (the recurring '404 / wrong content'). `api.github.com` is hard rate-limited on
shared IPs. **Default: rewrite any blob/tree URL to `raw.githubusercontent.com/<u>/<repo>/<branch>/<path>`
and fetch that** — raw bytes, no HTML, no API limit. A ~14-byte raw response = real 404 (bad path/casing;
raw is case-sensitive).
