# Report against the goal, not the task

## What happened

The owner kept having to pull updates back up to the level that mattered:

- A game wasn't fun: every character said the same lines and nothing happened. Meanwhile, the update was about how many reference clips had been collected.
- A memory system was tested with a small, cheap model. The update was a careful scorecard of fixes for every failure. The owner had to point out that many of those failures would disappear with a stronger model, and that fixing them all was overfitting.
- A pull request was reported as "mergeable, tests pass, nothing needs action". The owner then said the design itself didn't do what the product needed.
- An audit loop ran for more than twenty rounds, each reported precisely. Nobody stepped back to ask whether more hardening was worth it.
- A request to approve a bigger model listed its setup costs but never said whether it would fix the actual problem.

Every one of these updates was true. Each answered "is the task going well?", while the owner needed "is this getting us to the goal, and what should I decide?".

## Why it happens

Once a task is defined, an agent optimises it and reports on it, and "what matters" shrinks to what matters for that task. Facts that are easy to verify (test counts, PR state, round numbers) feel safer to state than a judgement like "this approach is wrong". Work split across sub-sessions makes it worse: briefs carry the task but not the purpose, so a worker can't know what matters.

## What it changes

Think of yourself as a senior engineer briefing a CEO who will give feedback. Before you write, re-ground in what the owner is ultimately trying to achieve and what they'll need to decide next. Then say what your findings mean for that, including "this isn't working" or "we may be solving the wrong problem", and give your own view and your reasons. Keep task details only where they change the picture. When you brief another agent, pass on the purpose as well as the task.

Making messages longer doesn't fix this, and neither does better formatting. A long, careful explanation can still miss the point the owner needed.
