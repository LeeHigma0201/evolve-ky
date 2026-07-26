# Evolve KY — "Do you really need a panel upgrade?"

Jason Walls' **teaching talk** for the **Evolve KY** monthly meeting.

- **When:** Sunday, July 26, 2026, 2:30–4:30 PM
- **Where:** All Peoples, 4936 Brownsboro Rd, Louisville
- **Audience:** EV owners & the EV-curious (not electricians) — plus a few people who speak at EV-charging ribbon-cuttings
- **Live:** **[evolve-deck.vercel.app](https://evolve-deck.vercel.app)** · run card: **[/runcard.html](https://evolve-deck.vercel.app/runcard.html)**

## The frame

**This is a teaching talk, not a sales pitch.** Reframed 2026-07-25 at Jason's direction.

Authority comes from *"I'm a union electrician, IBEW Local 369, and I run these load calculations"* — not from distance from selling. The audience leaves able to **do something**: pick the right NEC method, read what it says, and size a charger from their own driving. The ChargeRight recommendation lands at the end, after it's been earned.

> The earlier version was sales-shaped — anchor a $3–5k quote, social proof, name a villain, pitch the product mid-deck. That structure is gone. `"I don't do installs"` moved from slide 2 to the Q&A bank, where it answers *"what's your angle?"* instead of pre-defending against it.

## Design

Light, editorial, human — not a dark SaaS deck. ChargeRight design system (**DM Sans + Space Mono**, ChargeRight blue + success green, the house-and-bolt logo) on a warm-white card with a dotted "worksheet" ground. Emphasis via **highlighter** marks, not gradients.

## Run it

Open `index.html` in any browser — one self-contained file, no build. The live calculators want `http` rather than `file://` in some browsers: `python3 -m http.server 8899` in this folder, or just use the deployed URL.

**It advances in beats, not slides.** One tap of `Space` reveals the next piece of the slide and swaps the cue line at the bottom — the sentence Jason reads and the room reads with him. 17 slides, **70 beats**.

**Controls:** `Space`/`→` next beat (next slide at the last beat) · `←` back a beat (previous slide *fully revealed* at the first) · `↓`/`↑` skip a whole slide · `N` notes (every beat, current highlighted) · `T` timer (starts run recording) · `R` practice-run report · `P` pre-show loop · on-screen `‹ ›` always work, even while typing in a calculator.

**Pre-show loop.** The deck opens on a looping title card — logo, the question, four rotating lines and the QR, on a 20-second cycle. Pure CSS, so there's no video file to fail and it needs no network. Tap to start the talk; `P` brings it back.

**Full bleed.** The deck fills the projector at any aspect ratio — verified with zero overflow across all 70 beats at 1920×1080, 1280×800 and 1024×768. Everything scales off one unit (`--s: min(1.04vw, 1.55vh)`) taken from whichever screen dimension is tighter.

### How beats are wired
Elements carry `data-r="<reveal id>"`; each slide's `beats[]` says which beat each id lands on. So beats can be reordered or cut without retagging markup, a reveal id with no matching element just advances the cue (that's how the live-demo slides work), and an element whose id isn't in `beats[]` stays visible. Hidden beats keep their layout space — nothing on screen jumps as pieces land.

## The deck — 17 slides

| # | Slide | Teaches |
|---|---|---|
| 1 | Title | *(cold open: "the Tesla tax")* |
| 2 | Who I am | IBEW Local 369 · the promise to teach |
| 3 | What's at stake | $3–5k · and some people just don't buy the car |
| 4 | Start here | **Diversity** — a house never runs everything at once |
| 5 | The myth | 410 A of breakers on a 200 A service, and nothing trips |
| 6 | **Lesson 1** | Four legal methods. Three estimate, one measures. |
| 7 | **Lesson 2** | **220.83** — quoted verbatim; 8 kVA @100%, then 40% |
| 8 | **Lesson 3** | **220.87** — measured demand: peak × 1.25 + new load ≤ service |
| 9 | **Which one is yours** | the synthesis: standing house → 220.83 · no estimate → 220.87 |
| 10 | **LIVE calc** | NEC 220.82 panel capacity gauge on a real house |
| 11 | **Lesson 4 · LIVE** | **Charger sizer** — miles/day + hours plugged in → amps → breaker |
| 12 | 🎬 **Watch it run** | a real assessment, screen-recorded, full-bleed — the charger-sizing demo **and** the load calc (1:45) |
| 13 | What I find | 4 of 5 — as a **finding**, not an opening claim |
| 14 | Do it yourself | the questions to answer · what a panel photo adds |
| 15 | …or don't | ChargeRight · $12.99 · free calculator |
| 16 | Tell somebody | the one repeatable share line |
| 17 | Pass it on | hero close + QR · **$12.99 at evchargeright.com, or ChargeRight on the App Store (free download)** |

**≈24:40 full · 70 beats.** A six-step cut ladder down to ~17:05 is in the run card. One video, on slide 12.

### Still built for word-of-mouth
The close turns the room into advocates: a **wow** (the live demos), a **repeatable line** (slide 16), and a **friction-free way to share now** (QR on slide 17). `qr.svg` encodes https://evchargeright.com (segno, self-contained, offline-safe).

## The two live calculators

**Slide 10 — panel capacity.** Mirrors the production engine (`~/dev/ChargeRight-redesign-prod/src/lib/calculator.ts` + `capacity-verdict.ts`), verified against `~/dev/nec-reference`:
- **220.82(B):** 3 VA/ft² + small-appliance (2×1500) + laundry (1×1500) + appliance nameplates (range 8000 / dryer 5000 / water heater 4500 / hot tub 6000 VA)
- **Demand:** first 10 kVA @ 100% + remainder × 0.40
- **220.82(C):** larger of cooling (tons×1200) or electric heat (kW×1000×0.65)
- **EV:** amps × 240 at 100%, no demand factor
- **Verdict:** ≤80% of service = *comfortable* · ≤100% = *tight* · >100% = *exceeds*

> Simplifications, noted for honesty: single-AC cooling, electric heat modeled as `<4 units` (65%), no multi-zone/heat-pump-strip split, no largest-motor surcharge (correctly omitted — it isn't in 220.82).

**Slide 11 — charger sizer.** Mirrors ChargeRight's shipped `calculateChargingNeeds()`: `miles ÷ mi-per-kWh ÷ hours × 1.2`, capped at 11.5 kW, rounded up the standard charger ladder. The breaker step is the only NEC part — **625.42** (EV charging is continuous) + **625.41 / 210.20(A)** (125%) + **240.4(B)** (next size up).

> Verified demo sequence: 35 mi / 8 hr → **20 A breaker**. Double the miles to 60 → **still 20 A**. Cut hours 8 → 4 → **30 A**. *Hours are the lever, not the badge on the box.*

## Honesty constraints baked into the deck

- Every verbatim code quote is **NEC 2017** (newest freely distributable edition). **Kentucky is on 2023.** Slide 7 says so on screen and the run card scripts Jason saying it aloud.
- **NEC 2023 220.57** (EVSE at 100%, no demand factor) has **no verbatim text** in the reference repo — summarize it, never quote it as code.
- The **80% band is not a code pass/fail.** It derives from the continuous-load 125% rule; the code test is calculated load ≤ service rating (230.79).
- Whether the EV load sits **inside or outside** the 220.83 demand factor is an open interpretation (~29 A spread on the demo house). The shipped engine puts it outside at 100%; the deck matches.
- Miles-per-kWh spans **1.53–4.6** across the 539 vehicles in ChargeRight's catalog. The NEC part is exact, the driving part is an estimate — Jason names which is which on stage.

> **Do not change the NEC constants without Jason's electrician sign-off** (ChargeRight repo rule).

## What's in here

```
index.html            the deck (self-contained, 17 slides)
runcard.html          phone-readable / printable run card
rehearse.html         🎧 audio rehearsal player — every beat, spoken
audio/                17 per-slide tracks + 26:52 full run (generated from the deck's beats)
video-methods.mp4     UNUSED in the deck — kept as a website/follow-up asset
video-howitworks.mp4  slide 12 clip — real assessment, screen-recorded (1:45, full-bleed)
qr.svg                QR to evchargeright.com
install-video.sh      probe + transcode a NotebookLM download into a slot
rehearsal/            RUN-CARD.md · qa-bank.md · ab-tests.md · fumble-log.md · narration/
notebooklm/           SOURCE-load-math-explained.md · PROMPTS.md · INTEGRATION-MAP.md
```

## Deploy

Git-connected to Vercel — **push to `main` and it goes live.** Public by URL, `noindex`.

## Provenance

Rebuilt from the 10-slide deck that was live 2026-06-25, extended with live calculators, then reframed to a teaching structure on 2026-07-25.

> **Not** the 17-scene interactive demo (`chargeright-evolve-demo`) stranded on the "bandit" Windows box. This deck stands on its own.
