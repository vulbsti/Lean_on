---
name: inquiry-essay-claude
description: Write an essay, blog post or long-form piece that reads like one person thinking a question through, not like a news explainer or a content-marketing post. Use whenever the user asks for an essay, blog post, article, Substack piece or a long X post built from their notes, a brain dump or a conversation; whenever they want a chat conversation turned into something publishable; and whenever they say a draft sounds like AI, like slop, too polished, too compressed or too "newsy" and want it rewritten.
---

# Essay

The essays people enjoy reading (Paul Graham, Gwern, a good personal blog) share one property: the reader watches a specific person work through a question they did not know the answer to when they started. The essays people call slop share the opposite property: a narrator with no identity delivers finished verdicts in a packaged format.

The default way of producing a "blog post" lands on the second kind, for reasons that are all decided before the first sentence is written:

- The piece is planned as a set of effects on the reader (hook, twist, takeaway, punchy close) instead of a line of reasoning. Prose written to fill a slot called "hook" sounds like a hook.
- Sections get word budgets. Three ideas that each need a page are squeezed into two sentences each, so the reader is told the conclusion and never sees why it is true.
- "No bloat" is read as "short". Bloat is words that carry nothing. A long essay with no wasted sentences is not bloated, and a short one that only asserts is not tight.
- Formatting from chat answers and slide decks carries over: headers on every section, bold labels, tables, numbered lists, names coined for ideas and then capitalised.
- No reader and no speaker are chosen, so the voice falls back to a news explainer.

So most of the work in this skill happens before drafting. Fixing a draft sentence by sentence does not help when the plan was wrong.

## 1. Find the thinking

An essay needs a question that was open for someone and a path to an answer. Look for it in what the user gave you:

- What confused or surprised them? Quote their own words to yourself. Their confusion, stated plainly, is usually the best opening the piece has.
- Where did their view change, and what changed it?
- Which objections did they raise against the easy answer? These are the turns of the essay.
- What do they still not know?

If the material is a conversation, the order in which the user's questions arose is often the right order for the essay, because a reader new to the topic will hit the same questions in the same order.

If there is no worked-out position yet (the user gave a topic and nothing else), do not draft. Work the question with them first: restate what you think they are asking, give your answer, let them push back. Research anything the argument rests on. Write once there is something to say. If no user is available to talk to, do this thinking yourself and write down the position before going on.

## 2. Write the spine as a chain of questions

Before drafting, write the spine: five to eight plain sentences, each one a question followed by its short answer, where each answer raises the next question. For example: "Why did experts think this was years away? Because people can only reach deep results by inventing theory. → So what did the proof do instead? → If that works, what happens when the existing material runs out?"

Then check it:

- Can you state the main point in two sentences to someone who does not know the subject? If not, the problem is the thinking, and prose will not fix it.
- Does every link follow from the one before? A link that only exists because the material was available should go.
- Is the strongest objection in the chain, with room to be taken seriously before it is answered?
- Who is the reader? Pick one: usually a smart person outside the field who has not seen the source material.

Do not write section goals, word counts, title options or a planned closing line. Length is whatever the chain needs.

Show the user the spine and the two-sentence point and wait for their reaction before drafting. This is the cheapest place for them to correct the direction. Skip the wait only when no user is available.

## 3. Draft

Write it as the user speaking, in the first person, to that one reader, the way they would explain it across a table.

**Stance.** The writer is someone who was puzzled and worked it out, and says so: what they first assumed, what did not fit, what they think now. Use only experiences the user really had (what they read, built, noticed). Do not invent one to make the voice feel personal. If the user's material is open questions and the essay has to land somewhere, land where they were leaning and flag that as your guess in the hand-over.

If `references/voice.md` exists next to this file, read it before drafting: it holds the user's own notes on whose writing they want to sound like and what they never want.

**Spoken register.** Write the sentences the way the user would say them aloud to a friend who is listening closely: contractions, ordinary words, sentences of uneven length. Prose with "do not" and "cannot" throughout, or with every sentence the same careful shape, reads as a report even when it says "I".

**Commitment.** Being honest about uncertainty does not mean hedging every sentence. Decide what the essay believes and say it plainly. Put the doubt where the doubt is: once, at the claim it applies to, with the reason. An essay that says "I don't know" or "reportedly" in every section reads as someone unwilling to hold a view, and the reader stops trusting the parts that are solid. What the source states as fact, state as fact.

**Movement.** Each paragraph should leave the reader with the question the next one answers. If the transitions do this, headers are unnecessary; a line break or a rule between major turns is enough. A short one-line question paragraph is fine at a real turn. Do not announce what a paragraph is about to do ("Now the objection.", "First, the caveat.", "Here is the part that matters."); if the previous paragraph set it up, the reader already knows, and if it did not, fix the previous paragraph.

**Room.** For each main idea, give the mechanism (why it is true, step by step) and one concrete case. If a claim has the form "X happens because of Y", the reader should be able to retell the steps afterwards. This is where length should go. Cut secondary points before you compress main ones.

**Objections.** When the essay raises a worry or counter-argument, stay with it long enough that the reader feels its force. Say it is plausible if it is. Then answer it with evidence, and say how much the evidence settles.

**Plain form.** Prose paragraphs. A table, a bulleted list or a numbered framework turns reasoning into a summary of reasoning, so put the content into sentences. If you invented a name for an idea while working, do not use it in the essay as if the reader knows it; describe the thing. Explain any term of art the first time, and check whether it means something else to an outsider.

**Borrowed material.** If a metaphor or phrase came from someone else, credit them and use it once or twice. Do not build the essay's vocabulary on it.

**Opening.** Start with the situation and the thing that did not fit, from where the writer was standing. A first paragraph that reports the event the way a news story would (what happened, when, who confirmed it) sets the wrong voice for everything after it; the facts can arrive in the second paragraph. Do not manufacture a foil ("everyone is saying X, but they are wrong") unless people really are saying it and it matters; a real reader has not necessarily heard X and does not need to be corrected about it.

**Ending.** Stop where the thinking stops. That can be an open question, a thing to watch for, or what the writer would do. Do not write a closing line whose job is to sound final. If the last sentence could be put on a poster, replace it with the last useful thing you have to say.

## 4. Read it as a stranger

The writer of a draft cannot see what is missing from it, because they fill the gaps from memory. Two checks catch what the user would otherwise have to catch.

**Cold read.** Give the draft alone, with none of the source material, to a fresh subagent. Do this whenever you are able to spawn one, even for a short piece: rereading your own draft does not find the terms you already understand. Only if you cannot spawn one, reread it yourself pretending you have seen nothing else, and say in the hand-over that the check was weaker. Ask for: every term it did not know, or that has a different everyday meaning an outsider would reach for first; every sentence where it could not say why the claim is true; every paragraph it would skim; and the main point in two sentences. If its two sentences do not match yours, the essay is not saying what you think it says.

**Claim check.** List every factual claim and every "because". For facts: verify against the source or by search, and remove or mark anything you cannot support. For mechanisms: write out the steps in a few plain sentences. If you cannot, the essay has a sentence that sounds right and is not understood, and a careful reader will stop there. A fact that appears in the material only because an AI assistant said it earlier in a conversation has not been verified by anyone; treat it like any other unchecked claim. Where the material contradicts itself, prefer the figure from the first-hand source and note the conflict in the hand-over. Check particularly for two things confused into one (for example how a system was trained versus what it does when it runs) and for numbers that are more precise than the source.

## 5. Revise by diagnosing first

When a draft is wrong in tone or shape (yours after the checks, or one the user says sounds off), do not start rewriting. First write a short diagnosis: what does it read like, and which specific choices produce that? Typical causes are an anonymous narrator, verdicts without reasoning, formatting standing in for transitions, sentences written to be quoted, and ideas compressed past the point where the reader can follow.

Then decide between two kinds of revision. If the diagnosis is about the whole (voice, shape, compression), rewrite from the spine with the diagnosis as the brief; a draft with the wrong stance cannot be patched, because the stance is in every sentence. If the problems are local (an unexplained term, a wrong fact, one unclear step), fix them in place and leave the rest alone.

Before handing over, read the essay aloud in your head once from the top. Mark any sentence the user would not say in conversation and any paragraph where your attention drifts, and fix those.

## 6. Hand over

Give the user the essay as clean markdown, with a title that says what the piece is about. Below it, list separately: claims you could not verify, places where you guessed at their view, and anything you cut that they may want back. Do not describe the essay's qualities; they will read it.

## Short forms

A post that introduces the essay follows the same rules at small scale: first person, what the writer first thought, what made them unsure, the questions they are stuck on, the link. No list of takeaways.
