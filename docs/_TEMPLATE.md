# CARD: <subsystem-id>

> **Purpose:** one sentence — what this subsystem does / what problem it solves.

## Architecture & mental model
How this part of the engine ACTUALLY works. Engine lineage (CNS explods? Lua? motif coords? .zss?),
key identifiers (state numbers, helper IDs, file paths, vars), and the one mental model that prevents
confusion. Write this from the LIVE files, not from memory.

## Boundaries — DO NOT confuse with
Explicit list of other subsystems this gets mistaken for, and the one-line reason each is different.
This is the firewall — be specific (name the patterns/state numbers that DON'T belong here).

## Canonical pattern(s)
Reusable fix recipes specific to THIS subsystem, with the actual code blocks.

## Members / files / key IDs
Who/what this applies to; exact file names + casing; state-number ranges.

## Gotchas / hard-won facts
Things that burned a past session and can't be rederived quickly.

## Current state (update every patch)
What's done & shipped · what's open · what Raven still needs to test.

## Changelog refs
P-IDs of changes that touched this subsystem.
