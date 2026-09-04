# omni-crm-mobile-preview
Mobile-first AI CRM preview in blue and white

## Claude Code agents

Project subagents live in `.claude/agents/`. Run `/agents` in Claude Code to see them.

- `preview-reviewer` reviews changes to `index.html` for mobile layout, design consistency, and runtime errors. Invoke it with "use the preview-reviewer subagent to check my changes", or let Claude delegate to it automatically after edits.
- `social` is a senior social media strategist and content developer. It asks clarifying questions first, researches the client in Google Drive and on the web, and delivers consulting-grade strategy decks and content calendars. Claude delegates to it automatically for any social media request.
