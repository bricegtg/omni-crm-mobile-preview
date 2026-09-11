# OmniOS Mobile CRM Preview

Single-page, mobile-first CRM preview. Everything lives in `index.html`
(Tailwind via CDN, Chart.js, Font Awesome, Plus Jakarta Sans). There is no
build step, package manager, or test suite. Open the file in a browser to
check changes.

## Installed agent toolkits

Three plugins are enabled for this repo in `.claude/settings.json`. They are
loaded automatically in every session. Nobody needs to "activate" them:
pick the skill that fits the task and invoke it with the Skill tool. This
applies to subagents as much as to the main agent.

| Toolkit | Purpose | Reach for it when |
|---|---|---|
| **superpowers** | Process discipline: brainstorm, plan, TDD, debug, review, finish a branch | Starting any non-trivial change, debugging, or reviewing work |
| **agent-skills** | Engineering checklists by phase: spec, plan, build, verify, review, ship | UI work, browser testing, performance, security, docs, git hygiene |
| **ponytail** | Minimal-code bias, runs at `lite` here | Always on. Build what was asked, mention the simpler option in one line |

Skill names to look for, by situation:

- New feature or unclear ask: `superpowers:brainstorming`, then `agent-skills:spec-driven-development`
- Planning: `superpowers:writing-plans` or `agent-skills:planning-and-task-breakdown`
- Implementing: `agent-skills:incremental-implementation`, `agent-skills:frontend-ui-engineering`
- Testing: `superpowers:test-driven-development`, `agent-skills:browser-testing-with-devtools`
- Something broke: `superpowers:systematic-debugging`, `agent-skills:debugging-and-error-recovery`
- Review: `superpowers:requesting-code-review`, `agent-skills:code-review-and-quality`, `/ponytail-review`
- Simplify or trim: `agent-skills:code-simplification`, `/ponytail-audit`
- Done with a branch: `superpowers:finishing-a-development-branch`
- Delegating: `superpowers:subagent-driven-development`; subagents get this file too

Full discovery flowcharts live in `superpowers:using-superpowers` and
`agent-skills:using-agent-skills`. Read one if unsure which skill applies.

## Also configured

- Perplexity MCP server (`.mcp.json`): needs a one-time sign-in via `/mcp`
  in an interactive session before it works.
- Ponytail intensity: `PONYTAIL_DEFAULT_MODE=lite` in project settings.
  Change per session with `/ponytail full|ultra|off`.

## Conventions

- Keep the blue and white palette (`blue-600` accents on `slate-50`).
- Mobile-first: test at ~400px width; the page must not scroll sideways.
- Prefer editing existing sections over adding new script or CSS.
