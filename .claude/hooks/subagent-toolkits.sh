#!/usr/bin/env bash
# SubagentStart hook: tell every subagent which skill toolkits are installed
# for this repo, so it uses them without being told to.
set -euo pipefail

read -r -d '' CONTEXT <<'TXT' || true
Toolkits available to you in this repo (invoke with the Skill tool, no activation needed):
- superpowers: brainstorming, writing-plans, test-driven-development, systematic-debugging, verification-before-completion, requesting-code-review, finishing-a-development-branch
- agent-skills: spec-driven-development, incremental-implementation, frontend-ui-engineering, browser-testing-with-devtools, debugging-and-error-recovery, code-review-and-quality, code-simplification, security-and-hardening, performance-optimization
- ponytail (lite): build what was asked, name the simpler alternative in one line
Pick the skill that matches your task before starting. CLAUDE.md at the repo root has the full table.
TXT

jq -cn --arg ctx "$CONTEXT" \
  '{hookSpecificOutput: {hookEventName: "SubagentStart", additionalContext: $ctx}}'
