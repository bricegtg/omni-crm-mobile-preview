---
name: client-brand
description: Load or build the brand profile for a named client before doing any social media, content or marketing work for them. Use this whenever a client, brand or company is named in a social media task, whenever brand voice, tone, guidelines, colours, fonts, "on brand" or "off brand" come up, and before reviewing content for brand alignment, even if the user does not ask for the brand profile explicitly. Profiles live in docs/socal/clients/.
---

# Client brand profiles

Every recommendation, caption and visual has to sit inside the client's brand. Researching that from scratch on every task is slow and inconsistent, so each client gets one profile file that captures voice, visual identity, guardrails, audience and where their materials live. Load it when the client is named; build it when it does not exist yet.

## Where profiles live

`docs/socal/clients/<client-slug>.md`, one file per client, slug in lowercase with hyphens (`northwind-coffee.md`). `docs/socal/clients/_example-client.md` is a filled example for a fictional brand; use it to see the expected depth.

## When a client is named

1. Look for `docs/socal/clients/<slug>.md`. Try obvious slug variants before concluding it is missing.
2. If it exists, read it in full before doing the task, and treat it as the source of truth on voice, visuals and guardrails. If the task reveals something the profile is missing or has wrong, update the profile at the end and tell the user what changed.
3. If it does not exist, run the intake below before doing the task. Tell the user you are building the profile first and roughly how long it will take.

## Intake for a new client

Aim to fill the template from evidence, not guesses.

1. **Search what exists.** Search the connected Google Drive for the client's name, plus "brand guidelines", "brand book", "tone of voice", "style guide", "logo", "brand deck". Read brand guidelines fully; they win over anything inferred. Check the repository and any connected tools for prior work.
2. **Research the brand in public.** Website (about page, product pages, footer legal), current social channels (bios, last 20 to 30 posts, visual patterns, caption voice, hashtags, response style), recent press. Note what they actually do, which is often different from what their guidelines say.
3. **Ask the user** only for what evidence cannot answer, using the intake questions in the template. Keep it to the questions that change the work.
4. **Write the profile** by copying `assets/brand-profile-template.md` to `docs/socal/clients/<slug>.md` and filling every section. Where something is unknown, write "Unknown, assumed: ..." rather than leaving it blank, so the assumption is visible and can be corrected.
5. **Confirm with the user** in a short summary: voice in one line, three non-negotiables, anything assumed.

## Applying the profile

- **Voice check.** Read drafted copy against the voice section: does it use the brand's words, avoid banned words, match the emotional register, and sound like the same person across posts? Rewrite before showing the user.
- **Visual check.** Colours, typography, logo rules, photography and video style, and the first-frame device apply to every visual, mockup and deck. Pass them into any image or video generation brief verbatim.
- **Guardrails.** Off-limits topics, claims that need substantiation, regulated language, competitor mentions and disclosure rules are hard constraints. Flag conflicts instead of quietly working around them.
- **Audience.** Use the profile's audience segments rather than inventing new ones; propose changes to the profile if the evidence supports it.

## Keeping profiles current

Profiles are living documents. After each engagement add what was learned: what performed, decisions the client made, new products, new guardrails. Date the change log entry. Never store credentials, personal data about individuals, or confidential financials in a profile; link to where they live instead.
