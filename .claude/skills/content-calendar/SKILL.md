---
name: content-calendar
description: Build a social media content calendar as a working Excel file from a short JSON plan, with slots generated per channel and cadence, pillar and format mix balanced to target, tentpoles placed, reactive slots held, a status workflow and a summary sheet. Use this whenever the user asks for a content calendar, posting schedule, editorial calendar, content plan for a month or quarter, or "what should we post", for any social platform, even if they only ask for the calendar as part of a strategy deck.
---

# Content calendar

A calendar is the operating document a team works from every day, so it has to be complete, balanced and consistent across clients. The script does the mechanical part (dates, slots, mix balancing, structure) so the effort goes into the hooks, captions and creative that make it good.

## Before you build

1. Load the client's brand profile with the `client-brand` skill for pillars, voice, channels and guardrails.
2. Confirm from the brief: date range, channels and sustainable cadence per channel, pillars and their target shares, format mix per channel, tentpoles (launches, sales moments, seasonal and cultural dates, events), share of slots to hold for reactive content (15 to 20% is the default), owners and posting windows. Ask only for what is missing and would change the calendar; see the question bank in `docs/socal/playbook.md`.
3. Run the capacity check from the playbook: total posts times production time must fit the team with a 20% buffer. If it does not, reduce cadence or channels before quality, and say so.

## Build

1. Write the plan as JSON following `assets/example-plan.json`. Pillar shares should sum to 1, as should each channel's format shares. Use posting days from analytics when known; otherwise leave `days` out and the script spreads posts across the week.
2. Generate the workbook:

```bash
python3 .claude/skills/content-calendar/scripts/build_calendar.py plan.json --out "<Client> <period> content calendar.xlsx"
```

The script needs `openpyxl` (`pip install openpyxl`). It creates four sheets: **Calendar** (one row per slot with the standard columns, status dropdown, filters, frozen header), **Summary** (posts per channel per month, pillar and format mix actual versus target, reactive share), **Tentpoles**, and **Guide** (column definitions and status workflow).

3. Fill the creative. Open the workbook with `openpyxl` and complete Hook, Caption, Visual description, CTA and Hashtags for every non-reactive slot, in the client's voice, following the hook formulas, caption structure and platform playbooks in `docs/socal/playbook.md`. Tentpole rows come first; series and recurring formats next; then the rest. Reactive slots keep their hold text; do not invent trend content weeks in advance.
4. Quality check: pillar mix within 5 points of target per channel; every tentpole present; no two identical hooks; each caption's first line stands alone as a hook; one call to action per post; hashtags within platform norms; nothing that conflicts with the brand guardrails; dates and days correct.

## Deliver

Hand over the workbook and, when part of a strategy deck, a calendar overview slide per month (tentpoles, series, mix) rather than pasting the grid. Explain the status workflow to the team: Idea, Drafted, In review, Approved, Scheduled, Published. Suggest a weekly 30-minute calendar review and a monthly performance checkpoint, as in the playbook.

## Notes

- Slot IDs are stable (`IG-2026-W44-2`) so the team can reference posts in review.
- Re-running the script with an edited plan regenerates the structure; it does not merge hand-written content. Generate once, then edit the workbook.
- A calendar without hooks and captions is a schedule, not a calendar. Do not deliver the bare output of the script.
