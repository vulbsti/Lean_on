---
name: explain
description: Explain something so the reader wants to keep reading and ends up understanding it. Use when the user asks to explain, teach, walk through, or "help me understand" code, a system, a change an agent made, or any concept; also when they say an explanation did not land.
---

# Explain

The reader has high initiation energy for dense text. They stop reading when an
explanation is a list of sibling facts: complete, but with no reason to go from
one part to the next. Your job is an explanation whose parts are in the order
they are in because each one follows from the one before.

The check that governs everything below: **could the sections be shuffled
without loss?** If yes, the draft is a taxonomy, and it needs restructuring
before any wording is touched.

## Before drafting

Settle these four things first. Most flat explanations fail here, and no amount
of editing afterwards repairs it.

1. **The reader.** Work out from the conversation what they already know. Read
   `known.md` in this skill's folder: anything listed there is named, never
   explained. If you still cannot tell their level, ask at most two questions.
   *Why:* the right amount of explanation depends on prior knowledge, and
   explaining what someone knows is the fastest way to lose them.

2. **The question and its cost.** Write down the one question this explanation
   answers and what goes wrong for the reader if they do not know the answer.
   Both go in the first three sentences, before any definition or background.
   *Why:* people keep reading when the text is working on a problem they have.

3. **The running case.** Pick one concrete case from the reader's actual code,
   data or situation, and use that same case at every step. Do not introduce a
   second hypothetical.
   *Why:* with no shared case, the reader has to invent an example for each
   point and build the bridges between them alone.

4. **The medium.** Use the table at the end. Default to short text.

## While drafting

- **Smallest complete answer first.** One or two sentences that answer the
  question, then stop and offer the next layer. The first reply fits on one
  screen. Depth is the reader's choice.
- **Order by cause.** What was tried or assumed, what broke or what that
  forces, what follows. Between every pair of paragraphs, name the joining
  word. If the honest word is "but" or "therefore", keep the order. If only
  "and" fits, cut one of the two or move it.
- **Case before definition.** Show the thing happening in the running case,
  then name it. Define each term once, at first use, and use that one name
  from then on.
- **One new idea per paragraph.** Start each sentence from something already on
  the page and end it on the new thing.
- **Show the specimen.** The actual line, value, output, prompt or number,
  beside every general claim. To teach a distinction, show a good and a bad
  version side by side.
- **Say it literally.** If a plain phrase exists, use it. At most one analogy
  per explanation, taken from the reader's own work, placed before the
  mechanism and then dropped. Test: delete the analogy; if nothing is lost, it
  stays deleted.
- **Weight the main point.** Decide which single point matters most and give it
  the most room. Leave out what is true but not needed for this question.
- **Costs and limits in one place.** State where the idea does not apply once,
  together. Hedge only at the claim that is uncertain, and say what the
  uncertainty is.
- **Plain paragraphs.** No header per idea, no bullets for reasoning, no
  closing recap. End on what to do next or on what is still open.

## After drafting

- **One cut-only pass.** Remove sentences. Add none. The second draft is
  shorter and contains no new claims.
- **Run the shuffle check** from the top of this file.

## When the reader asks how two things connect

Give the single sentence that links them, and stop. The reply is shorter than
the passage it clarifies. Do not re-explain either side and do not defend the
earlier answer.

## When the reader says it did not land

Do not add. Ask which sentence lost them, or re-pitch the same content in
shorter sentences with the running case moved to the front.

## Checking understanding

<!-- TODO(human): decide when, if ever, this skill should test the reader.
     See the Learn by Doing request in the conversation. -->

## Medium

| The thing being explained | Produce |
|---|---|
| A fact, a lookup, a small "what is this" | Two sentences of text |
| A concept or a design decision | Text, following the rules above |
| One mechanism with behaviour over time (an algorithm, a state machine, a retry loop) | A single-file HTML page that steps through it, with pause, step and speed controls |
| How one real request or datum moves through a system | Capture one real run as data, then a page that scrubs through that run. Offer a second run on a failure path |
| Something with parameters the reader could tune | A page with sliders and a button that copies the chosen values back as a prompt |
| A change an agent made | Background, then intuition on toy data, then the walkthrough in the order a reader needs (not file order) |

Build an interactive page only when the thing has behaviour over time or a
parameter to move, and drive it from a captured real run wherever possible. A
page that re-implements the logic shows what you believe the code does, which
may differ from what it does; say which kind you built. Do not produce
flowcharts, Mermaid or box-and-arrow diagrams for this reader unless asked.

## Reference shape

The posts this reader finds clear follow one shape. Use it as the model:
a team wanted a specific outcome; it failed in two named ways; each failure
forced one fix; the actual artefact for each fix is shown; what still fails is
stated; the piece ends on open questions. Examples of that shape:

- https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents
- https://www.anthropic.com/engineering/code-execution-with-mcp
- https://claude.dev/blog/spending-your-effort/
