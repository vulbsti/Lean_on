# Generic vs film reviewer: test plan

Question: which skill predicts utkarsh's verdicts better on work it has never seen judged, the generic `vision-review` or the specialised `film-review-ten-thousand-hands`?

## Cases (real verdicts, split by time)
Calibration (both skills may see these and their verdicts):
- C1: v1 frames (prod/review/frames_*.png) -> "HyperAI slop"
- C2: v2 test sheet (v2/review/test_sheet.png) -> T3, T4, T8, T9 read as photographs; Hall frames weaker; faces "AI person"
- C3: v4 accepted frames (v4/review/frames_sheet.png) -> "looks more like generated"

Held out (never shown with their verdicts, and the film skill's knowledge is cut to before 05:27 UTC for the test):
- H1: train round 3 (v4/scenes/train/sheet_final.png). Truth: "very close"; 28 is not a camera shot; 30 to 34 too clean. Scored per frame: does the reviewer flag 28 and 30 to 34, and does it leave the others?
- H2: three-way (v4/scenes/train/sheet_three_way.png: round 3, round4_detailed, short). Truth: round4_detailed is best.
- H3 (false-alarm check): R1, the real photo, shown unlabelled among frames. Truth: real.

## Fairness
- Both get the same project history up to 05:27 UTC on 2026-10-29, the same images, the same model and effort, fresh agents, and no labels saying which version is which.
- The generic skill builds intent.md and verdicts.md itself from that history; the film skill uses its baked-in sections with entries after the cutoff removed.
- 3 runs per skill per case, to see variance.

## Score
Agreement with the owner's decision on H1 to H3 (per frame on H1), plus a read of each review's prose: did it name what he named, and did it invent problems he didn't see? The sample is small (3 held-out cases), so this is a first signal, not a verdict. Every new owner verdict adds a case.
