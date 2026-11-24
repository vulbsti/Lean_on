# Lean on

utkarsh's skills, and what we've learned building them.

## Layout

- `skills/<name>/SKILL.md`: one folder per skill, in the standard SKILL.md format (frontmatter `name` and `description`, then the instructions).
- `learnings/`: what we found while building and testing the skills, such as diagnoses, test plans and results.
- `lessons/`: what past work taught about working with the owner, one file per lesson, listed in `lessons/INDEX.md`. They are read when relevant, not loaded every session.
- `plugins/<name>/`: installable Claude plugins, listed in the marketplace file `.claude-plugin/marketplace.json`.

The repo root is also the **lean-on** plugin. It ships every skill in `skills/` and the `lessons/` folder. Nothing loads on its own: each skill sets `disable-model-invocation: true`, so it runs only when you type its slash command (for example `/lean-on:explain`), and lessons are read only when you ask.

## Plugins

| Plugin | Use it for |
| --- | --- |
| lean-on (repo root) | All the skills below as slash commands, plus the lessons folder |
| [listening-state-map](plugins/listening-state-map) | Seeing how a track at a given volume moves your energy and tension from where you start, syncing Spotify, and logging what actually happened to calibrate the model |

Install in claude.ai, the desktop app or Cowork: Customize → Plugins → Add → Add marketplace, enter `vulbsti/Lean_on`, then install **lean-on** (and **listening-state-map** if you want it). This syncs to Claude Code when you're signed in with the same account. Projects keep their own plugin list: turn it on under each Project's settings → Plugins.

The lean-on plugin has no version number on purpose, so every commit to `main` counts as a new version. Edit a skill or lesson, push, and installed copies pick it up on their next refresh: Claude Code checks marketplaces added from claude.ai on its own, and new sessions sync at start. `listening-state-map` keeps an explicit version, so bump it when you change it.

Install in Claude Code:

```
/plugin install lean-on --marketplace vulbsti/Lean_on
/plugin install listening-state-map@lean-on
```

## Skills

| Skill | Use it for | Status |
| --- | --- | --- |
| [explain](skills/explain/SKILL.md) | Explaining code, a system, a change or a concept so the reader keeps reading and ends up understanding it | In daily use |
| [vision-review](skills/vision-review/SKILL.md) | Building and running a reviewer that predicts the owner's verdict on any kind of work (images, film, code, writing, sound) | Being tested, round 1 done |
| [film-review-ten-thousand-hands](skills/film-review-ten-thousand-hands/SKILL.md) | Reviewing the music film Ten Thousand Hands the way its director does. It is the specialised baseline for vision-review | Being tested, round 1 done |
| [essay-investigation](skills/essay-investigation/SKILL.md) | Turning rough observations into essays that investigate a proposition through mechanisms, evidence, competing explanations, and an earned synthesis | Extracted from the Romantic Love Illusion chat; structure validated, writing outcomes not yet independently tested |
| [mechanistic-explain](skills/mechanistic-explain/SKILL.md) | Explaining code, systems, and changes through a working mental model that resolves the reader's question and supports reasoning about changed conditions | Refined around reader understanding; structure validated, explanation outcomes not yet independently tested |
| [inquiry-essay-claude](skills/inquiry-essay-claude/SKILL.md) | Writing essays and blog posts that read like one person thinking a question through, not a news explainer: argument as a chain of questions, first-person draft, cold read by a fresh subagent, claim check | Tested on two topics over two rounds (Opus and Sonnet); last three edits not re-tested |
| [investigative-essay-chatgpt](skills/investigative-essay-chatgpt/SKILL.md) | Turning the unresolved question in a conversation or draft into a reflective essay | Compared guided and unguided short drafts on one topic, then revised the ending guidance |

## Lessons

See [lessons/INDEX.md](lessons/INDEX.md). Each one records what happened, why it went wrong and what it changes. Add one whenever the owner corrects how an agent works.

## Learnings

- [Vision-aligned evals](learnings/vision-aligned-evals.md): why checklist evals kept failing on "vibes", and what a visionary reviewer does
- [Reviewer tests](learnings/vision-review-tests/): generic vs specialised reviewer, test plan, results and new verdicts
