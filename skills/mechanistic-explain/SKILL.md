---
name: mechanistic-explain
description: Explain code, architecture, systems, and session changes through a working mental model that resolves the reader's question and helps them reason about changed conditions. Use for requests such as "how does this work," "why did this happen," "walk me through the flow," or "what changed and why."
disable-model-invocation: true
---
# Mechanistic Explain

An explanation should create a worthwhile change in the reader's understanding. Help them see why something happens, how the relevant pieces relate, or what follows when a condition changes. The aim is a working mental model they can think with. Fluency and a feeling of familiarity alone do not establish understanding.

This user often understands technical ideas by mentally running the mechanism: what exists, what state it holds, what changes it, and why the next state follows. Use that perspective where it helps. A distinction, constraint, invariant, feedback loop, or comparison may sometimes make the behavior clearer than a chronological trace.

The guidance below offers ways to diagnose and improve an explanation. It is not a prescribed order of work, an answer outline, or a set of ingredients every answer must contain. Choose and revise the form as understanding develops. Let the question determine depth; do not enforce a word count or number of steps.

## Locate the understanding that matters

Infer what the reader already understands, what they are trying to make sense of, and what this answer could enable them to see. A basic explanation can earn its place by making a familiar idea intelligible for this reader; do not manufacture novelty or a surprising thesis.

Treat the apparent confusion as a provisional diagnosis. It may be a missing causal link, a mistaken assumption, an unfamiliar concept, or two things being treated as equivalent. Inspecting the system may change which relationship needs explaining. Use the conversation and available evidence before asking the user; clarify when competing interpretations would materially change the answer. Correct a mistaken premise when the evidence warrants it.

Find the relationship whose clarification makes the surrounding behavior intelligible. Sometimes this is a hidden transition: "the orchestrator handles the result" leaves unanswered what arrives, what condition is checked, what is written, and what the next component sees. Sometimes it is a distinction: finishing work and recording its completion can be separate events, which matters if a crash occurs between them. Explain the relationship that resolves the question rather than expanding every component equally.

## Build a model the reader can use

Give the reader an organizing idea that new details can attach to. Choose an abstraction that preserves the relationships needed to explain the behavior at issue. Temporarily hide incidental machinery, and expose more detail where the simpler model would mislead. Show important level crossings, such as UI to API to stored state to worker, when those boundaries affect the result.

At a consequential connection, make clear why the next result follows: what condition, dependency, or constraint makes it happen? Naming components and listing their actions can leave that connection unexplained. Avoid vague verbs such as "manages" or "activates" where the mechanism matters; ordinary shorthand is useful once the relationship is established.

Use a concrete run, example, analogy, equation, diagram, or changed condition when it makes a relationship graspable. Each should do identifiable work. An analogy needs a faithful mapping and relevant limits; a diagram helps when spatial relationships or branching are easier to see than to read. Avoid repeating the same explanation in several forms unless each resolves a different difficulty.

When useful, vary a condition that distinguishes plausible models. A success trace may fit several explanations; a failure or boundary case may reveal which relationship actually matters. Use this to test and refine the model, without forcing every answer to contain a counterfactual or a quiz.

## Ground the account

For code or a claimed session change, inspect the relevant source, diff, callers, and available runtime evidence before asserting a mechanism. Follow the causal relationships rather than the directory order. Name the source or artifact supporting a specific claim. Separate what the code says, what a test or trace observed, and what is inferred. When live behavior has not been checked, say so plainly.

Keep assumptions and important limits close to the inference that depends on them. Label hypothetical examples and distinguish them from observed runs. A plausible mechanism may explain how something could happen without establishing that it caused the observed event. If evidence leaves several accounts open, preserve that uncertainty and identify what would distinguish them.

For "why this design," connect the choice to the pressure or failure it addresses and the tradeoff it creates. Distinguish a plausible rationale from evidence of the author's actual intent. For "what changed," connect the relevant previous behavior, edit, resulting behavior, and evidence. For a failure, follow the actual state and failure or recovery path rather than offering a generic diagnosis.

## Shape the explanation around understanding

Order the explanation by what the reader needs to grasp for the next development to matter. The order of investigation need not be the order of presentation. A central distinction may make a later trace readable; in another case, following the trace may help the reader discover that distinction. Choose the movement that serves this question.

Introduce technical terms when they help name something the reader can recognize. If a term is needed earlier, define it in ordinary language immediately. Keep the relevant whole visible as detail increases, so the reader can understand why a component matters without holding several unexplained pieces in memory.

Let transitions express an actual relationship between ideas. Background belongs where it enables understanding. Headings, examples, pauses, and paragraph lengths should support a continuous reading experience; the preparation framework need not appear in the answer.

## Revise for understanding gained

Read the answer as a whole. Does it resolve the question it exists to answer? Where must the reader accept a leap? What detail lacks a purpose, repeats an established point, or explains something the reader already knows?

When an explanation feels incomplete, look for the missing relationship before adding more information. More detail helps when it supplies something the reader needs to connect; otherwise reconsider the model, example, or framing.

If removing a paragraph does not weaken the explanation, it probably should not be there. Consider what inference, distinction, necessary context, example, or qualification would be lost. Cut or merge material that contributes no consequential understanding. Compression means more understanding gained per passage, while preserving the detail and breathing room needed to grasp the idea.

Judge success against the particular understanding sought. Could the reader explain the relevant relationship in their own terms, distinguish the cases that matter, or reason about a changed condition? Use whichever signal fits the question, without claiming to have verified the reader's comprehension. These are private revision tools, not mandatory exercises. Finish when the answer delivers its purpose at the needed depth; omit ritual recaps and manufactured open questions.
