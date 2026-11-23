# The owner's taste beats the AI reviewer

## What happened

On photoreal film frames, blind Claude reviewers twice preferred a cleaner, shorter-prompt version. The owner picked the detailed version: a specific list of wear and grime, light described by what it touches, a real reference photo for look, and a camera pass. They also picked a darker, less-explained shot over the one the reviewer liked. The owner had earlier warned against over-engineering, but their actual picks went the other way.

On faces, naming an emotion in a prompt ("afraid", "relief") produced over-acted results. Describing only the action and where the person's attention is gave believable ones.

## What it changes

Model reviewers lean toward clean, average, well-lit images, because they learned "good" from the same data as the generator. For realism and taste, treat a model's verdict as a hypothesis and the owner's picks as ground truth. Show the owner side-by-side options early. Weigh texture and the "grooves of reality" (wear, dirt, lived-in detail) heavily. Treat stated principles as hypotheses that the owner's choices can overturn.

More depth: [vision-aligned evals](../learnings/vision-aligned-evals.md).
