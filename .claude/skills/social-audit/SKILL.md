---
name: social-audit
description: Run a structured social media channel and competitor audit with a fixed procedure, a weighted scoring rubric and a generated Excel scorecard, so every audit is comparable and nothing is skipped. Use this whenever the user asks to audit, review, assess, benchmark, diagnose or "take a look at" a brand's social channels or compare them to competitors, including as the first step of a social strategy, and even when they just ask "how are our channels doing".
---

# Social audit

An audit answers one question: where should this brand invest and stop investing on social, and why? The same procedure every time makes audits comparable across clients and over time, and the scorecard turns judgement into numbers the client can track.

## Before you start

1. Load the client's brand profile with the `client-brand` skill. The audit is judged against their goals and audience, not generic ideals.
2. Agree scope with the user: which channels, which period (90 days is the default; shorter hides patterns, longer blurs them), and which competitors (3 to 5 direct plus 1 or 2 best-in-class from any category).
3. Agree data access: platform analytics exports or screenshots from the client, or public observation only. Say which you are working from in the deliverable, because public-only audits cannot see reach and must estimate engagement rate by followers.

## Procedure

Work channel by channel, then across channels, then against competitors.

### 1. Foundations
Handle and name searchability, bio clarity (who it is for, what they get, why now), link destination and whether it is maintained, profile and cover visuals, highlights or pinned posts, contact and shopping setup, verification, cross-links between channels.

### 2. Content
Pull the period's posts. Record format mix, pillar or theme mix, cadence achieved per week versus what is claimed, hook quality in the first frame and first line, caption craft and calls to action, visual consistency against the brand profile, accessibility (captions, alt text), and the top and bottom ten posts with a one-line reason for each.

### 3. Engagement and community
Engagement rate by reach (or by followers if reach is unavailable), save and share rates where visible, comment quality (conversation versus emoji), response rate and time to comments and DMs, tone of responses, evidence of community (recurring names, UGC, group activity).

### 4. Growth and reach
Follower trend, reach trend, share of reach from non-followers, video view trends, hook rate and completion where available.

### 5. Conversion and journey
What the calls to action ask for, where links go, whether landing pages match the post, use of shopping, lead or booking tools, promo codes, and whether any of this is measured.

### 6. Measurement and operations
What is tracked, how often, who owns it, tooling in use, approval workflow, and whether learnings feed back into content.

### 7. Competitors
For each competitor on each in-scope channel: followers, posts in period, cadence, format mix, average engagement per post, engagement rate by followers, three things they do that work, one gap. Then the category view: where the client leads, where they lag, and the white space nobody owns.

### 8. Score
Score each channel on the eight dimensions in `references/scoring-rubric.md` from 1 to 5 using the rubric's anchors, and write one line of evidence per score. Scores without evidence are opinions.

### 9. Build the scorecard
Put the collected numbers and scores into a JSON file matching the schema in the rubric file, then run:

```bash
python3 .claude/skills/social-audit/scripts/build_scorecard.py audit.json --out "<Client> social audit scorecard.xlsx"
```

The script computes engagement, save and share rates, posts per week, weighted scores and competitor benchmarks, and writes a four-sheet workbook (Summary, Metrics, Competitors, Rubric). It needs `openpyxl` (`pip install openpyxl`).

### 10. Turn findings into insight
Insight is a finding plus its cause plus its consequence. "Static posts are 60% of the feed" is a finding. "Static posts are 60% of the feed while Reels reach 3x more non-followers, so most production effort goes into the format with the least discovery" is an insight. Group insights into three to five themes, each leading to a recommendation with an expected effect and effort.

## Deliverable

A deck (pptx skill) with: executive summary with the overall score and the three moves that matter; scorecard heat map; channel-by-channel findings with evidence; competitor benchmark and white space; recommendations by impact and effort; 30-60-90 day plan; appendix with methodology, data sources and the full metric tables. Attach the scorecard workbook. Follow the deck standards and QA checklist in `docs/socal/playbook.md`.

Be specific. Use the client's real posts as examples. Date-stamp platform benchmarks. If data was unavailable, say so and state the assumption used.
