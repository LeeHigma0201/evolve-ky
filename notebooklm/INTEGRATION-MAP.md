# Where every NotebookLM asset goes

**Notebook:** [The Real Math of EV Charging and Panel Capacity](https://notebooklm.google.com/notebook/aa6002f0-52df-4dc9-b91f-c1ce1c72f573)
**Source:** `SOURCE-load-math-explained.md` — three methods, all worked on the same house.

The deck already has both video slots built and wired. **You only have to drop two files in.**

---

## The two deck slots — drop the file, done

| Slot | Deck slide | Filename it expects | What the clip covers |
|---|---|---|---|
| **A** | **9 of 15** — right after the panel-myth bars, before the live calculator | `evolve-ky/video-methods.mp4` | 410 A of breakers · the three methods (141 / 127 / 113) · "every real method says it fits" |
| **B** | **12 of 15** — right after the ChargeRight product slide, before the CTA | `evolve-ky/video-howitworks.mp4` | Pick your car → snap the panel → plain-English report · $12.99 |

**To install:** download the mp4 from NotebookLM → rename it to the exact filename above → drop it in `~/dev/evolve-ky/` → `git add . && git commit && git push`. It auto-deploys. Nothing else to change.

**If you never add them:** the slides still work. Each shows your talking points instead, in an amber "say this instead" card. **The deck cannot break because a video is missing** — that's deliberate.

---

## What each slot does for you

Both are **breathers**. You step aside, the room watches the screen, you drink water and read your next lines. They sit at the two highest-stress moments:

- **Slot A** buys you the 90 seconds before the live calculator — the riskiest part of the talk.
- **Slot B** buys you the 60 seconds before the ask, while they're still looking at the screen.

**Both are marked cuttable.** If Mike gives you 15 minutes instead of 20, drop both and you're back to ~19 minutes. The slides say so on-screen so you can decide day-of.

---

## Everything generated in the notebook, and what it's for

| Asset | Use it for |
|---|---|
| **Short video** (3 methods) | **Deck slot A.** Download → `video-methods.mp4` |
| **Explainer video** (8:44) | ❌ **Too long for the talk.** Put it on the website / send as a follow-up. |
| **Flashcards** | **Your note cards.** Drill your own numbers before Sunday — this is the Q&A prep you asked for. |
| **Audio Overview** (podcast) | Shareable asset. Send to anyone who asks "explain it again." Good car-ride listening for the people who speak at ribbon-cuttings. |
| **Slide Deck** | Backup visuals / a source of frames if you want stills. Not a replacement for the real deck. |
| **Infographics** (×2) | Static images. Best one goes on the site or in a follow-up email; you don't need it on stage — slide 8 already does this job with exact numbers. |

---

## ⚠️ Verify before any of it goes public

NotebookLM paraphrases, and paraphrased code math drifts. Check every generated asset against `SOURCE-load-math-explained.md`:

- [ ] **410 A** breaker sum · **141 / 127 / 113 A** three methods · **95 A** at 16 amps on a 100 A service
- [ ] It doesn't invent a code section that isn't in the source
- [ ] It doesn't say the tool is free — **free calculator**, **$12.99** photo assessment
- [ ] It never implies Jason does installs
- [ ] It doesn't state the Kentucky EV fee as an exact dollar figure (it's re-indexed annually)

**Do not change the NEC constants in the source doc without Jason's electrician sign-off.**

---

## Re-rolling a clip (2 minutes, no Claude needed)

Studio panel → **Video Overview** → format **Short** → **Custom topic** → paste a prompt → **Generate**.

The prompts that produced these are in [PROMPTS.md](PROMPTS.md). The rule that makes them work: **number the beats and name the exact figures you want on screen.** Vague prompts make vague videos.
