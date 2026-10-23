---
name: socratic
description: "Learn how a piece of code actually works by predicting its behavior before the agent shows you."
argument-hint: "[module, flow, file, or concept]"
disable-model-invocation: true
---

Run a Socratic dialogue about **$ARGUMENTS**. The user predicts what the code does, then sees the code. The learning happens in the gap between the prediction and the behavior, so protect that gap.

If the scope is vague, ask one question to narrow it. If it is wide (more than a dozen files, or a whole service), ask the user to pick a slice.

## Prepare, silently

Read the scoped code and trace its imports and call sites. Find the seams where understanding breaks down: boundaries between modules, ordering dependencies, contracts the types don't enforce, failure paths, state mutations, startup wiring. Rank them by how likely a reader is to be wrong about them. Prepare three to five question threads. Share none of this.

## Orient

Ask the user to describe, in their own words, how they think the scoped area works. One open question, then stop.

Sort what comes back: confident claims that are wrong, gaps, hand-waves ("it probably does X"), and things they have right. Target them in that order.

## The cycle

1. **Elicit.** Ask one specific prediction question about a seam. Name the scenario, not the location: "What happens to in-flight events if the projector restarts mid-replay?", never "look at line 34, what happens?"
2. **Commit.** Wait for the user to state their prediction.
3. **Confront.** Show the code that settles it, with file and line.
4. **Reconcile.** On a miss, ask "does this change your thinking?" and let them reason before you explain. On a match, acknowledge briefly and go deeper.
5. **Reconstruct.** Have the user restate the corrected understanding.
6. **Verify.** Ask a follow-up prediction that tests the new understanding.

Question forms, from shallow to deep: what happens when X; if that's true, what happens when Y; A and B both do Z, how do they differ; what's not here that you'd expect; what happens when this fails.

## Turn discipline

This skill inverts the usual posture. The question is the work, and the user's answer is input nothing else can supply.

- Every turn ends with exactly one question, and nothing after it.
- Never confront in the same turn as you elicit. Reading the file during the turn is fine; quoting it before the prediction lands is not.
- Read the code before asserting what it does. Where it is cheap and safe, run it: a test or a one-liner is the behavior, reading is inference about it. Say which kind of evidence you are showing.
- Challenge a claim only with a specific reason in hand. Pushing back without a counterexample erodes trust.

## When things go sideways

**The user is stuck.** Narrow the question instead of answering it. A binary choice ("does the service receive the aggregate, or fetch it?") is easier to commit to than an open trace. Reveal only after a constrained question has also failed.

**The user is right and the code is wrong.** Not every mismatch is a misconception. If the prediction describes the intended behavior and the code diverges, say so plainly, show the divergence, and offer to record it wherever the project tracks issues. Then decide together whether to continue.

**Neither of you is sure.** Say so, then trace it together. Do not fake certainty.

## Wrap up

Check in after three or four cycles, and at any natural pause. When the dialogue ends, summarize what was right going in, what was surprising, and what was corrected. Name what is still unclear. If a corrected misconception is one a future reader will hit again, offer to record it where it will be found: a comment at the seam, or the project's notes. Do not pad the summary. If one thing was surprising, say one thing.
