# How the Listening State Map predicts an end state

All values are 0–1 unless noted. `v` = volume step / 10. These are tunable hypotheses, not measurements.

## Inputs

**Listener start state** (Thayer's energy–tension plane)
- `E` energy: drained → charged
- `T` tension: calm → wired

**Track profile**
- `bpm`, `attack` (sharpness and rate of transients), `density` (fullness of arrangement)
- `harshness` (distortion, dissonance, aggressive treble), `unpredictability` (sudden swings, drops)
- `bass` (felt low-frequency weight), `lyrics` (intelligible words), `familiarity`

## Derived track properties

- **Music energy** `D = 0.5·tempo + 0.3·attack + 0.2·density`, tempo normalised from 50–180 bpm.
- **Effective bass** = `bass × smoothstep(0.45, 0.9, v)`. At low volume the ear loses bass far more than midrange (equal-loudness contours, ISO 226), so bass only counts once the volume is up.
- **Effective harshness** = `harshness × (0.3 + 0.7v)`. Harsh upper treble also fades when quiet.
- **Music tension** `Tm = 0.65·harshEff + 0.35·unpredictability·(0.4+0.6v) + 0.15·bassEff·attack`.

This is why the same metal track can carry rhythmic drive without aggression at low volume: `D` is unchanged but `Tm` falls.

## Forces on the listener

- **Entrainment match** `match = exp(-((|D − E| / isoWidth)²))`. Rhythmic entrainment only locks when the music's energy is near the listener's (the iso principle). A large gap means weak pull and added irritation.
- **Energy pull** `dE = pull·(0.35+0.65v)·(0.35+0.65·match)·(D − E) + bassLift·bassEff·attack`. Music drags energy toward its own level; louder and better-matched drags harder; felt bass with sharp attacks adds energy.
- **Tension pull** `tPull·(0.1+0.6v)·(Tm − T)`. Music drags tension toward its own tension level, more strongly when loud.
- **Loudness load** `load·4·max(0, v−0.5)²·(0.7·attack + 0.3·density)·(0.5 + T)`. Above mid volume, loud dense sharp sound adds tension, and an already tense listener is more sensitive to it.
- **Mismatch irritation** `irritate·(1 − match)·v`. Music far from the listener's state adds tension, scaled by volume.

End state: `E' = E + dE`, `T' = T + dT`, clamped to 0–1.

## Attention effects

- **Masking** `v^1.2`: how much the room and inner speech are drowned out.
- **Capture** `lyrics·(0.3+0.7v) + 0.5·unpredictability·v`: how much the music competes with the task for working memory. Penalised for focus goals.
- **Absorption** `mask·(0.55·(1−attack) + 0.25·bassEff + 0.2·(1−tempo))·(1 − 0.5·lyrics)`: loud, smooth, bass-heavy, slow, wordless music leaves attention nowhere to go but the sound. Required for the "dreamy reset" goal.

## Goals (target zones on the plane)

| Goal | Energy | Tension | Capture penalty |
|---|---|---|---|
| Deep focus | 0.45–0.72 | 0.12–0.42 | high |
| Fast execution | 0.62–0.88 | 0.25–0.55 | medium |
| Loose and creative | 0.30–0.55 | 0–0.30 | low |
| Dreamy reset | 0.12–0.42 | 0–0.25 | none, needs absorption |

Ranking tries every track at every volume 1–10 and keeps the volume whose end state is closest to the zone. When no single track reaches the zone, the page proposes a sequence: a bridge track near the current state first, then one that moves toward the goal.

## Predicting a new case by hand

1. Where does `D` sit relative to current energy? Far away means weak pull and irritation.
2. At this volume, is bass felt and is harshness audible? That sets `Tm`.
3. Is the listener already tense? Then loud, dense, sharp music adds load.
4. Does the goal need spare attention (keep capture low) or absorption (raise masking)?
