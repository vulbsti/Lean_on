# When to stop auditing

## What happened

A release had a "final adversarial audit must pass clean" gate. Rounds 11 through 22 each found one to three gaps. Some were real bugs, but most were increasingly rare configurations. A fresh auditor told to assume every claim is false will always find something, so the loop never converged. The owner asked why we were constantly doing audits.

## What it changes

Count the rounds and watch what the gaps are. When findings shift from core claims to edge cases, the audit is no longer telling you whether the thing works. It's just measuring how hard the auditor can look. Say so, and propose one last full round. After it, fix documentation gaps directly. For a real code gap, fix it and run one narrow check of that fix only, then ship.

The general point: any loop that compares against "can a fresh critic find a flaw?" climbs forever. Tie the stopping point to the goal (is it safe and useful enough to ship?), not to the critic running out of ideas.
