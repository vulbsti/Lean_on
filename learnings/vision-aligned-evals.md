# Vision-aligned evals: what keeps failing and why

Living doc with sources: https://claude.ai/artifact/F1vvPvSMe1AnNRLGSnJKV8 (2026-10-29)

## What we want

Not a better checklist. We want a reviewer that holds the owner's intent the way the owner does, looks at the whole piece, and asks "where does this stop being the thing we are making?". It should change its mind when the owner overrules it, and tell when the fix is a new approach rather than a better frame. Its job is to predict the owner's verdict. The owner's picks are the ground truth.

## Why evals kept failing (film project, Ten Thousand Hands)

1. **A list sets the boundary of what can fail.** The judge only looks where the list points, and the work goes wrong in the thousand things nobody wrote down. Image eval v1 passed 54 of 62 frames the owner called generated, even though "photographic" was its first criterion.
2. **The judge shares the generator's taste.** A Claude judge learned "photographic" from the same internet as the image model, so on its own it approves the average. It can only see the gap with real references and the owner's verdicts beside the work.
3. **Criteria drift.** You need criteria to grade outputs, but grading outputs is how you find the criteria (Shankar et al.). The owner found "grooves of reality" only by looking at frames.
4. **Feedback becomes a rule instead of understanding.** "Glowing" became a glow ban, and "too clean" became a wear list. Fix why the owner minded, not the symptom they named. This is pasting the failure into the prompt.
5. **Loops climb the nearest hill.** "Fix the weakest frame and compare with the last round" always finds progress (3/4/3, then 4/4/3, then 4/4/4) while the gap to real stays the same.
6. **Stated principle beats revealed taste.** The owner said "don't over-engineer", and the reviewer ranked the short version first. The owner then picked the detailed version. Treat stated principles as hypotheses that picks can overturn.

## What a visionary reviewer does

- It holds the intent, in the owner's words, plus real examples of right and wrong with the owner's reasons.
- It judges fit with the whole (the scene, the system), not features.
- It compares against anchors instead of scoring.
- It predicts the owner, and treats every miss as the most valuable data.
- It rewrites its beliefs instead of appending rules.
- It knows the altitude: the problem is either this output or the approach.
- It names the problem, and leaves the fix to the maker.

## Nuance from the latest sources (Sep to Oct 2026)

- Opus 5.5 guide: a general instruction swaps one default for another, and specific patterns work better. So specifics are good when they come from the owner's verdicts and real references. What fails is specifics the agent invents from one complaint and uses as the judge's checklist.
- The Claude Code team's code review: the reviewer reads changes against the whole repo and the stated intent. It logs how authors responded, checks known-clean PRs for false alarms, and after three rounds asks the author to reconsider the approach. People keep "direction, taste and scope".
- Eval hillclimbing post: split cases into train and test, and revert gains that only show on train. Never paste failures into the prompt, and read transcripts before trusting a grader.
- pstack (poteto): blind the candidates, and read every output yourself. When attempts diverge, reframe rather than average them. The divergent reviewer looks for things that "worked for the wrong reasons". Redesign from first principles instead of bolting on.
- T3 Code AGENTS.md (Theo): the vision is written in the owner's voice. The instructions are good defaults, not hard rules. The test of coherence is walking every surface, not just the one that was tested.

## Open experiment

We are testing a generic skill (`skills/vision-review`) against a specialised one (`skills/film-review-ten-thousand-hands`). The goal is for the generic one to win, which would mean it captures the essence of reviewing rather than a template. Results are in `vision-review-tests/`.
