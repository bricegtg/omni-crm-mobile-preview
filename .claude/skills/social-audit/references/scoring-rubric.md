# Scoring rubric and input schema

## Dimensions and weights

| Key | Dimension | Weight | What a 1 looks like | What a 5 looks like |
|---|---|---|---|---|
| foundations | Profile and foundations | 10% | Unclear bio, dead link, inconsistent visuals, no pinned content | Bio states audience and value, maintained link, complete setup, coherent visuals |
| strategy | Content strategy and pillars | 15% | Random topics, no visible themes, content serves the brand not the audience | 3 to 5 clear pillars tied to audience needs and business goals, visible in every week |
| craft | Format mix and craft | 15% | Formats mismatched to platform, weak hooks, off-brand visuals, no captions on video | Native formats, strong first frame and first line, consistent brand signature, accessible |
| cadence | Cadence and consistency | 10% | Long gaps, bursts then silence, claimed cadence not met | Steady cadence matched to capacity, sustained across the period |
| engagement | Engagement and community | 15% | Low engagement rate, no replies, comments unanswered for days | Engagement rate above category benchmark, replies within hours, real conversation and UGC |
| growth | Growth and reach | 10% | Flat or falling followers and reach, little non-follower reach | Growing reach with a healthy non-follower share, improving hook and completion rates |
| conversion | Conversion and journey | 15% | No calls to action, links to homepage, nothing measured | Clear CTAs, matched landing pages, shopping or lead tools in use, conversions tracked |
| measurement | Measurement and operations | 10% | No reporting, no owner, no learning loop | Regular reporting against targets, clear ownership, tests feeding back into content |

Scores are integers 1 to 5. Use 3 for "adequate, nothing notable". Reserve 5 for best-in-class evidence. Every score needs one line of evidence.

Overall channel score = weighted average, shown out of 5 and as a percentage. Grade bands: 4.2 and above Leading; 3.4 to 4.1 Solid; 2.6 to 3.3 Developing; below 2.6 At risk.

## Input JSON schema for build_scorecard.py

```json
{
  "client": "Northwind Coffee",
  "period": "1 Jun to 31 Aug 2026",
  "period_weeks": 13,
  "data_basis": "Platform analytics exports from client",
  "channels": [
    {
      "name": "Instagram",
      "handle": "@northwindcoffee",
      "followers": 12400,
      "followers_start": 11100,
      "posts": 38,
      "reach": 210000,
      "impressions": 265000,
      "likes": 6400,
      "comments": 410,
      "saves": 1250,
      "shares": 980,
      "video_views": 158000,
      "avg_response_hours": 9,
      "scores": {
        "foundations": 4, "strategy": 3, "craft": 3, "cadence": 4,
        "engagement": 3, "growth": 4, "conversion": 2, "measurement": 2
      },
      "evidence": {
        "foundations": "Bio states audience and offer; link goes to maintained landing page.",
        "conversion": "CTAs in 6 of 38 posts; link in bio leads to homepage, not subscription page."
      }
    }
  ],
  "competitors": [
    {
      "name": "Blue Bottle",
      "channel": "Instagram",
      "followers": 890000,
      "posts": 52,
      "avg_engagement_per_post": 5200,
      "notes": "Reels-led, strong product photography, no community replies."
    }
  ]
}
```

Fields other than `name` and `scores` are optional; the script computes what it can and leaves the rest blank. Reach-based rates are computed when `reach` is present; otherwise follower-based rates are used and labelled.
