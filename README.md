# Lean on

utkarsh's skills, and what we've learned building them.

## Layout

- `skills/<name>/SKILL.md`: one folder per skill, in the standard SKILL.md format (frontmatter `name` and `description`, then the instructions).
- `learnings/`: what we found while building and testing the skills, such as diagnoses, test plans and results.
- `plugins/<name>/`: installable Claude plugins, listed in the marketplace file `.claude-plugin/marketplace.json`.

## Plugins

| Plugin | Use it for |
| --- | --- |
| [listening-state-map](plugins/listening-state-map) | Seeing how a track at a given volume moves your energy and tension from where you start, syncing Spotify, and logging what actually happened to calibrate the model |

Install in claude.ai, the desktop app or Cowork: Customize → Plugins → Add → Add marketplace, enter `vulbsti/Lean_on`, then install **listening-state-map**.

Install in Claude Code:

```
/plugin marketplace add vulbsti/Lean_on
/plugin install listening-state-map@lean-on
```

## Skills

| Skill | Use it for | Status |
| --- | --- | --- |
| [vision-review](skills/vision-review/SKILL.md) | Building and running a reviewer that predicts the owner's verdict on any kind of work (images, film, code, writing, sound) | Being tested, round 1 done |
| [film-review-ten-thousand-hands](skills/film-review-ten-thousand-hands/SKILL.md) | Reviewing the music film Ten Thousand Hands the way its director does. It is the specialised baseline for vision-review | Being tested, round 1 done |
| [essay-investigation](skills/essay-investigation/SKILL.md) | Turning rough observations into essays that investigate a proposition through mechanisms, evidence, competing explanations, and an earned synthesis | Extracted from the Romantic Love Illusion chat; structure validated, writing outcomes not yet independently tested |

## Learnings

- [Vision-aligned evals](learnings/vision-aligned-evals.md): why checklist evals kept failing on "vibes", and what a visionary reviewer does
- [Reviewer tests](learnings/vision-review-tests/): generic vs specialised reviewer, test plan, results and new verdicts
