# Card: round-timer (engine clock mechanism)

## What controls the displayed round clock
- `lifebar.go` LifeBarTime.draw: displayed time = `ceil(sys.time / framespercount)`.
- `fight.def` [Time] `framespercount` (LIVE = 60). 60 ticks per count = 1 count/sec ONLY IF the loop completes 60 frames/sec.
- `system.go`: `sys.time` set to roundTime at round start (L786). `sys.time--` at L1051 inside `s.action()`, gated by intro==0 && time>0 && !timerfreeze && not super/pause-with-bg. This decrement is NOT inside a tickFrame() gate and NOT multiplied by turbo -> it fires ONCE PER COMPLETED MAIN-LOOP FRAME.

## Frame/tick model (system.go)
- Main loop (L2055+): runs `s.stage.action()` + `s.action()` (logic; heavy char logic IS tickFrame-gated at L1285), then `addFrameTime(s.turbo)` (L2071); if it returns false -> `continue` (catch-up, skip render). `update()` -> `await(FPS=60)` (L509+) paces the loop via time.Sleep; on !frameSkip it does gfx.EndFrame()+SwapBuffers() which BLOCKS on vblank under VSync; sets frameSkip when >17ms behind, resyncs clock when >150ms behind.
- `addFrameTime(t)`: tickCountF += nextAddTime; tickCount++ when the int crosses; nextAddTime=t for next call. `turbo = gameSpeed * accel` (L1441/1451); accel=1 in normal play (L1696); FPS const = 60 (L30).
- KEY: turbo/GameSpeed scale CHARACTER logic (tickFrame-gated) but do NOT scale sys.time-- (per-frame). So a slow GameSpeed slows fighters while the CLOCK stays normal -> GameSpeed is NOT the clock fix.

## Why the clock can run slow (and the fix)
- Clock-rate == achieved loop frame-rate. ~2.5x slow => loop ~24fps. frameSkip is designed to keep LOGIC at 60 by skipping renders; if the clock is slow, frameSkip is not compensating -> the render/swap (VSync vblank) is pacing the loop below 60.
- FIX (config.ini, change lines only): VSync 1 -> 0; confirm Framerate = 60; Deck display at 60Hz, no per-game FPS cap (Gamescope). Repo config = GameSpeed 0 / Framerate 60 / VSync 1.
- Diagnostic: whole-game choppy/slow (expected) vs clock-only. Deck FPS overlay ~24fps confirms.
- Band-aid only (does not fix slow-mo): lower framespercount so the clock counts faster.

## Status
P104 = investigation + config/Deck fix recommendation (no game-data change shipped). Awaiting Raven's in-game FPS-overlay confirmation / live Deck config.ini.
