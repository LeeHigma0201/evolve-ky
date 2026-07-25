# NotebookLM — the ChargeRight explainer notebook

**Notebook:** [The Real Math of EV Charging and Panel Capacity](https://notebooklm.google.com/notebook/aa6002f0-52df-4dc9-b91f-c1ce1c72f573)
**Source loaded:** `SOURCE-load-math-explained.md` (one source, on purpose — see below)
**Account:** walls.jason03@gmail.com

---

## Why only one source

NotebookLM output quality tracks source *focus*, not source *count*. An 11-source grab bag produces a vague, hedging video. One tightly written source that already reads like a storyboard produces a video that follows your structure. `SOURCE-load-math-explained.md` was written to be that — it has the myth, both worked calculations, the EV totals, and the charge-slower lever, in the order you'd want them narrated.

**If you add sources, add ones that reinforce the same four beats.** Don't dump the whole NEC reference in — it will dilute everything.

---

## What's been generated

| Asset | Style | Status |
|---|---|---|
| **Explainer Video** | Whiteboard | generated 2026-07-24 |
| **Infographic** | default | generated 2026-07-24 |

---

## The steering prompt that was used (reuse / edit this)

> Explain to a homeowner with no electrical background why they probably do NOT need a $3,000-$5,000 panel upgrade to charge an EV at home. Follow this exact sequence.
> **ONE:** Open on the myth. Draw a breaker panel where the numbers printed on the breakers add up to about 410 amps on a 200-amp service, and nothing is wrong, nothing trips. Explain diversity: a house never runs everything at once, so counting breakers is not the math and never was.
> **TWO:** Show the two legal NEC calculation methods side by side on the SAME 2,000 square foot house. Walk the Standard Method step by step to 93 amps, then the Optional Method NEC 220.82 step by step to 79 amps. Show the numbers accumulating visually so the viewer sees where each method discounts the load differently. Emphasize that both are legal and they disagree by 14 amps.
> **THREE:** Add a 48-amp EV charger to each. 141 amps versus 127 amps on a 200-amp service. Room to spare either way. This house never needed an upgrade.
> **FOUR:** Close on the second lever nobody mentions. Charging at 16 amps instead of 48 still adds about 100 miles overnight against a 37-mile average day, and turns an over-limit 100-amp house into one that fits with no upgrade at all.
> **Tone:** a master electrician talking straight to a homeowner at a kitchen table. Confident, plain-spoken, no jargon without immediately explaining it, never condescending. The takeaway: run the math before you spend the money.

**Why it's shaped that way:** numbered beats survive summarization. Vague prompts ("explain load calculations") produce vague videos. Naming the exact numbers you want on screen is what keeps them on screen.

---

## Re-rolling it yourself (2 minutes, no Claude needed)

1. Open the notebook → **Studio** panel on the right
2. Click **Video Overview** → pick a **visual style** → paste a prompt into **Custom topic** → **Generate**
3. Formats: **Explainer** (long, comprehensive) or **Short** (bite-sized, better for social/Reels)

**Visual styles worth trying:** *Whiteboard* (best for math being worked — what we used), *Classic* (cleanest/most professional), *Custom* (describe your own look — try "clean editorial, navy and electric blue, technical but warm").

---

## Prompt variants for other assets

**For a 30-second social cut** — Format: **Short**
> One idea only: the breakers in your panel add up to about double your service rating and always have, because a house never runs everything at once. That's why "your panel is full" is almost never true. End on: run the math at evchargeright.com before you spend three to five thousand dollars.

**For the infographic** (regenerate if the first one's weak)
> A single side-by-side comparison of the NEC Standard Method versus the NEC 220.82 Optional Method on the same 2,000 square foot house. Left column Standard: 6,000 lighting, 3,000 kitchen, 1,500 laundry, discounted by Table 220.42 to 5,625, plus 8,000 range, 5,000 dryer, 3,600 AC — total 93 amps. Right column Optional 220.82: everything at nameplate 23,500, first 10,000 at 100% plus 40% of the rest equals 15,400, plus 3,600 cooling — total 79 amps. Make the 14-amp gap the visual punchline.

**For an audio overview** (podcast format — good for a car ride, or to embed on the site)
> Two hosts discussing why panel upgrades get oversold for EV charging. One plays the skeptical homeowner who just got a $4,000 quote, the other is the electrician explaining diversity, the two calculation methods, and the option to just charge slower. Keep it under 10 minutes.

---

## ⚠️ Verify before you publish any of it

NotebookLM will paraphrase, and paraphrased code math can drift. Before anything goes public:

- [ ] Check every number against `SOURCE-load-math-explained.md` — especially **93 A**, **79 A**, **141 A**, **127 A**, and the **10 kVA / 40%** split
- [ ] Make sure it doesn't state a code section number that isn't in the source
- [ ] Make sure it doesn't promise the tool is free — it's a **free calculator** plus a **$12.99** photo assessment
- [ ] Nothing should imply Jason does installs

**Do not change the NEC constants in the source doc without Jason's electrician sign-off** (ChargeRight repo rule).

---

## What NotebookLM is NOT good for

It generates narrated slideshows from your text. It **cannot** render an accurate breaker panel with your real numbers ticking up, and it won't match ChargeRight's brand. For the precise in-deck animation — panel fills up, standard vs 220.82 side by side, numbers accumulating — that's a custom HTML build in `index.html`, where it's exact, on-brand, and works with no wifi.

**Split the job:** NotebookLM for the shareable explainer you post and send to people. Custom HTML for anything that goes on screen during the talk.
