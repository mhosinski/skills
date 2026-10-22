# Repo rules for agents

Skills live in bucket folders under `skills/`:

- `engineering/`: code work (promoted)
- `productivity/`: non-code workflow tools (promoted)
- `in-progress/`: public on purpose, feedback wanted, not shipped in the plugin

Every skill in a **promoted** bucket must have:

1. A `SKILL.md` and an `agents/openai.yaml` (copy `.agents/skill-template/`).
2. An entry in the top-level `README.md` Reference section, with the name linked to its `SKILL.md`.
3. An entry in its bucket's `README.md`.
4. A path in `.claude-plugin/plugin.json`'s `skills` array.

Skills in `in-progress/` appear in none of those lists.

## Invocation

- **User-invoked**: `disable-model-invocation: true` in frontmatter, and `policy.allow_implicit_invocation: false` in `agents/openai.yaml`. The `description` is a one-line human summary.
- **Model-invoked**: omit both. The `description` is model-facing and says when to use it ("Use when the user wants...").

A skill that depends on another says so explicitly: `Call the Skill tool with "<name>".` Only model-invoked skills can be called this way.

## Releases

Bump `version` in `.claude-plugin/plugin.json` when skills change, so plugin installs pick up the update. Run `claude plugin validate . --strict` after touching either manifest.

## Local dev

`scripts/link-skills.sh` symlinks every skill (except `deprecated/`) into `~/.claude/skills` and `~/.agents/skills`, so a `git pull` keeps your own install current.
