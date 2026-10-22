# Skills For <Your Tagline Here>

[![skills.sh](https://skills.sh/b/mhosinski/skills)](https://skills.sh/mhosinski/skills)

The agent skills I use every day to <one-line outcome, e.g. "ship real software with coding agents">.

<Two or three sentences on the problem. Name the frustration your reader already feels, and what other approaches get wrong. Keep it opinionated.>

These skills are small, easy to adapt, and composable. They work with Claude Code, Codex, Cursor and any agent that reads `SKILL.md` files. Hack around with them. Make them your own.

<!-- Optional: newsletter / social link. Matt's biggest growth lever is one CTA right here. -->
<!-- [Follow along for new skills](https://...) -->

## Installation (30-second setup)

A plugin updates itself. [skills.sh](https://skills.sh/mhosinski/skills) copies editable files into your project, and you update them by hand. Pick one per agent, because installing both gives you every skill twice.

<details>
<summary><strong>Claude Code</strong></summary>

```bash
claude plugin marketplace add mhosinski/skills
claude plugin install mhosinski-skills@mhosinski
```

</details>

<details>
<summary><strong>Codex</strong></summary>

```bash
codex plugin marketplace add mhosinski/skills
codex plugin add mhosinski-skills@mhosinski
```

</details>

<details>
<summary><strong>Any other agent, or editable files</strong> (manual updates)</summary>

```bash
npx skills@latest add mhosinski/skills -a <agent>  # cursor, opencode, windsurf, amp; omit -a to choose
```

To update, run `npx skills@latest update`.

</details>

Then type `/needle` in your agent. That's it.

## Why These Skills Exist

I built these to fix failure modes I kept hitting with coding agents. Each section is one problem and the skill that fixes it.

### #1: Your Project Has Turned Into A Haystack

> "<Quote>"
>
> <Author>, <Source>

**The Problem**: Ask an agent to review a project and it gives you twenty findings at the same volume. The one that matters is buried among the nits.

**The Fix**: [`/needle`](./skills/engineering/needle/SKILL.md). It asks for the single most consequential thing in the project that doesn't make sense. It won't always pick the right one. Usually you get a top pick and a few runners-up, and sometimes a runner-up is the real insight. Being forced to rank by impact is still what pulls those findings out of the pile.

### #2: <Next Failure Mode>

> "<Quote>"
>
> <Author>, <Source>

**The Problem**: <...>

**The Fix**: [`/<skill-name>`](./skills/<bucket>/<skill-name>/SKILL.md). <...>

### Summary

<One paragraph tying it together: the principle behind all of these skills.>

## Reference

**User-invoked** skills run only when you type them (e.g. `/grill-me`). **Model-invoked** skills can be typed by you _or_ picked up by the agent automatically when the task fits.

### Engineering

Skills for code work.

**User-invoked**

- **[needle](./skills/engineering/needle/SKILL.md)**: Hunt for the needle: the one thing in this project that matters most and doesn't make sense.

**Model-invoked**

- _(none yet)_

### Productivity

General workflow tools, not code-specific.

**User-invoked**

- _(none yet)_

**Model-invoked**

- _(none yet)_

## License

MIT
