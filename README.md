# Skills

[![skills.sh](https://skills.sh/b/mhosinski/skills)](https://skills.sh/mhosinski/skills)

Agent skills I actually use. They're small prompts, and they work with Claude Code, Codex, Cursor, and any agent that reads `SKILL.md` files. Take them and make them your own.

## Install

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

## Skills

### [`/needle`](./skills/engineering/needle/SKILL.md): Your project has turned into a haystack

Ask an agent to review a project and it gives you twenty findings at the same volume. The one that matters is buried among the nits.

`/needle` asks for the single most consequential thing in the project that doesn't make sense. It won't always pick the right one. Usually you get a top pick and a few runners-up, and sometimes a runner-up is the real insight. Being forced to rank by impact is still what pulls those findings out of the pile.

## License

MIT
