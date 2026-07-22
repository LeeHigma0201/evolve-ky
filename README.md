# Evolve KY — "Do you really need a panel upgrade?"

Jason Walls' talk deck for the **Evolve KY** monthly meeting.

- **When:** Sunday, July 26, 2026, 2:30–4:30 PM
- **Where:** All Peoples, 4936 Brownsboro Rd, Louisville
- **Audience:** EV owners & the EV-curious (not electricians)
- **Angle:** You probably *don't* need a $3–5k panel upgrade to charge at home — and ChargeRight tells you for sure.

## Run it

Open `index.html` in any browser. It's a single self-contained file — no build, no dependencies (fonts load from Google Fonts with system fallbacks, so it still works offline, just less styled).

**Controls:** `→` / `Space` next · `←` back · `N` toggle speaker notes · click right/left half to advance.

## Deploy

Static — drop it on Vercel (project `evolve-deck`) or any static host.

## Provenance

This is a faithful rebuild of the 10-slide deck that was live on Vercel (`evolve-deck`, deployed 2026-06-25). The original build's source was not on this Mac, so the copy here was reconstructed **verbatim** from the deployed slides to create a real source of truth. Visual style (cream/orange, Archivo + IBM Plex Mono, accent square) matches the deployed look.

> **Not** the 17-scene interactive demo (`chargeright-evolve-demo`, live NEC 220.82 math + panel photo) — that one is stranded on the "bandit" Windows box and is the stronger *product* demo if it can be recovered before the talk.

## Pending audit fixes (NOT yet applied — flagged for Jason's go-ahead)

The slide copy is kept verbatim as the baseline. These are the issues found in the audit — say the word and I'll apply them:

1. **Slide 9 — "See me *tonight*"** → the meeting is **2:30–4:30 PM Sunday**, not evening. Change to "here today" / "after this."
2. **Slide 8 — "like adding a dryer"** → many Level 2 chargers pull *more* than a dryer (40–48A vs ~30A). Consider "an electric range."
3. **"Most of us drive 40 miles a day"** → US average is ~37; fine as rounded, just know the real figure if challenged.

## Goal gap (from the strategic review)

This deck wins **trust** but under-displays **the product**. To actually "show ChargeRight," the recommended additions are:

- A **product slide** (~slide 7, "The math") showing the panel-photo → NEC 220.82 → plain-answer flow.
- A one-line **credibility beat**: "the same load calc a master electrician runs — from a photo."
- A **live demo** on a real attendee's panel via evchargeright.com (strongest proof).
- Optional **why-it-wins** slide (honest math vs. auto-upsell; ChargeRight-vs-Qmerit material exists).
