# omni-crm-mobile-preview
Mobile-first AI CRM preview in blue and white

## Claude Code agents

Project subagents live in `.claude/agents/`. Run `/agents` in Claude Code to see them.

- `preview-reviewer` reviews changes to `index.html` for mobile layout, design consistency, and runtime errors. Invoke it with "use the preview-reviewer subagent to check my changes", or let Claude delegate to it automatically after edits.
- `socal` (SoCal) is a senior social media strategist and content developer. It asks clarifying questions first, researches the client in Google Drive and on the web, works from the playbook in `docs/socal/playbook.md`, generates concept visuals and video with Higgsfield when connected, and delivers consulting-grade strategy decks and content calendars. Claude delegates to it automatically for any social media request.

## Claude Code skills

Project skills live in `.claude/skills/` and are used by SoCal (and by Claude directly) for repeatable social media work:

- `client-brand` loads or builds a per-client brand profile from `docs/socal/clients/` before any client work, so voice, visuals and guardrails are consistent.
- `social-audit` runs a fixed audit procedure with a weighted rubric and generates an Excel scorecard (`scripts/build_scorecard.py`).
- `content-calendar` generates a balanced content calendar workbook from a short JSON plan (`scripts/build_calendar.py`), ready for hooks and captions.

The scripts need Python 3 and `openpyxl` (`pip install openpyxl`).
