---
name: vision-review
description: Build and run a reviewer that judges work the way its owner would, in any medium (images, film, code, writing, sound). Use when outputs pass checks but still feel off, when setting up an eval or reviewer for subjective quality, or before iterating on creative work.
---

# Vision review

A checklist only sees what it lists, and the work goes wrong in everything it doesn't list. This skill builds a reviewer with one job: predict the owner's verdict on real work, and say where the work stops being the thing being made. It gets better in only one way. It is wrong about the owner, and it rewrites what it believes.

The owner's verdicts are the ground truth. Your own sense of "good" is the same sense that produced the work, so it can't see the gap by itself. It needs the owner's verdicts and real references next to the work.

## What the reviewer is made of

Keep three things in the project, in a `review/` folder or wherever the project keeps its docs.

1. **`intent.md`**, one page. What is being made, for whom, what it should feel like, why, and what it must never become. Use the owner's own words and quote them. Mark anything you inferred as a guess. Keep the owner's specific observations ("shot 28 looks lit like a portrait, not by the dim panel above him") rather than your generalisation of them ("realistic lighting"). A general instruction swaps one default for another, and a specific one teaches. The page grows by being rewritten, never by being appended to.
2. **`verdicts.md`**, the log. One entry for every time the owner judged real output: the date, what they saw (a path), their verdict in their exact words, what they picked over what, the reviewer's prediction if it made one, and one line on what it taught. Newest first. Never edit the owner's words.
3. **Anchors.** Real examples the owner called right and wrong, each with the owner's reason. Prefer things from the real world (a real photo, a shipped product, a released track) over generated ones.

To build them, read the whole history: threads, chat, review notes, PR comments. A verdict on an actual output outweighs a general statement. When the two conflict, the verdict wins, and the statement becomes a guess to check. Then write the intent back to the owner as one plain paragraph and ask, "Is this what you're making?" Don't rely on it until they say yes or correct it.

## How the reviewer looks

Run the reviewer as a fresh agent that didn't make the work. Give it `intent.md`, `verdicts.md`, the anchors, and the work in its real context: the whole scene, sequence, feature or page, not a fragment. Let it look at the work the way the owner will meet it. Images get the full frame and 100% crops, beside the closest anchor. Code gets run, with every surface it touches walked, not just the tested path. If it can't perceive the medium (Claude can't hear audio), say so plainly and review only what can be read or measured.

It answers in prose, in this order:

1. **Beside the closest anchor, where does this read differently?** Point at the spot, and say what the owner would notice first.
2. **Where does this stop being the thing in `intent.md`?** Judge its fit with the whole: its neighbours, the story, the system. Not whether it's "good" in general.
3. **What will the owner say?** Write the predicted verdict in the owner's voice, using past verdicts as the guide, and how sure you are.
4. **Is the problem this output, or the approach?** If it's the approach, say so and stop proposing small fixes.

How the reviewer behaves:
- It names the problem and why it matters to the owner, and leaves the fix to the maker. One sentence of direction is fine. A list of fixes is not.
- Scores are never the headline. If it needs a number, a comparison against an anchor ("closer to R1 than round 3, because...") beats an absolute score.
- It never turns a past complaint into a rule ("never glow"). It asks why the owner minded, and judges that.
- It's a reviewer, not a gate. Its value is predicting the owner and showing them where to look.

## Calibrate before trusting

Before the reviewer judges new work, replay it on past cases from `verdicts.md` with the verdict hidden. Keep the newest few cases aside as a test set that is never used while tuning.

- Compare its predicted decision (accept or reject, which one picked) with the owner's, and read every disagreement.
- On a miss, ask what the reviewer didn't have in front of it, or what it misunderstood about the owner. Rewrite `intent.md`, or add the case as an anchor. Never add a rule that only makes that one case pass. After the change, check that the held-out cases still agree.
- Also run it on work the owner loved. If it finds fault there, it's too harsh.
- Report agreement honestly, including how few cases there are. If it can't predict the owner, say so and keep the owner in the loop.

## The living loop

Every time the owner gives a verdict:
1. Log it in `verdicts.md` next to the reviewer's prediction.
2. If they differ, that's the most useful data in the project. Rewrite the part of `intent.md` the verdict disproves, and delete any belief it contradicts.
3. Show the owner the change, because they own `intent.md`. Keep it to one page.

## Step back

Stop working on details, and write a short diagnosis with two or three genuinely different approaches, when any of these happen:
- The owner raises the same kind of complaint twice in different words.
- Rounds beat the last round, but not the anchors.
- Each fix adds more instructions to the generator.
- Three rounds pass without the owner's verdict moving.
- Attempts at the same task diverge wildly. This means the intent is under-specified, so go back to the owner rather than averaging the attempts.

Measure progress against the anchors and the owner, never against the previous attempt.

## When to show the owner

Show the owner the work when the reviewer is least sure of its prediction, when it thinks the approach is wrong, and at every step back. Never pass off self-scored progress as the owner's view.
