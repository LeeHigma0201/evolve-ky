# Where every NotebookLM asset goes

**Notebook:** [The Real Math of EV Charging and Panel Capacity](https://notebooklm.google.com/notebook/aa6002f0-52df-4dc9-b91f-c1ce1c72f573)
**Source:** `SOURCE-load-math-explained.md` — three methods, all worked on the same house.

**The deck now runs ONE video, on slide 12.** Slot A was removed 2026-07-26 at Jason's call — a portrait NotebookLM clip next to the real screen-recorded assessment looked like the amateur one, and its content just repeated slide 5. Slide 9 is now a 3-beat synthesis with no video.

---

## The two deck slots — drop the file, done

| Slot | Deck slide | File | What the clip covers | Status |
|---|---|---|---|---|
| ~~**A**~~ | ~~9 of 17~~ | `video-methods.mp4` | ❌ **REMOVED from the deck.** Kept in the repo as a website / follow-up asset. Slide 9 is now "which one is yours" — no video. |  |
| **B** | **12 of 17** — after the live charger sizer, before "what I find" | `video-howitworks.mp4` | **A real assessment, screen-recorded.** Seven questions → 220.83(A) → 21,640 VA = 90 A on a 200 A service (45.1%) → every legal method agrees | ✅ **installed & live** — 83 s, 5 MB |

> **Slot B is no longer a NotebookLM clip.** Built 2026-07-26 as a screen recording of a real
> ChargeRight assessment, composited 16:9 with its own explainer rail. Because it carries its
> own rail, slide 12 gained a `fullbleed:true` flag (`.vidwrap.fb` in `index.html`) — beside the
> beats it would render ~760 px wide and the app UI would be unreadable from the back of the
> room. Pipeline + regeneration notes: `~/dev/promo-video/panel-check-90s/README.md`.
> Optional VO: `rehearsal/VO-panel-check-90s.md`, mixed with `rehearsal/mix-vo.sh`.
>
> **Do not re-install it with `install-video.sh`** — that scales to 1280 wide, and this clip
> needs its native 1920 to stay legible full-bleed. Copy it in directly.

> **Deck was reframed to a teaching structure on 2026-07-25 and is now 17 slides.** Both video slots kept their positions (9 and 12) but their neighbours changed — slot A now lands after the four method lessons, which makes it a better fit than before. Slot B now reinforces the live charger-sizing lesson immediately after it.

**To install slot B when it finishes:**

```bash
cd ~/dev/evolve-ky
./install-video.sh ~/Downloads/<whatever-it-downloaded>.mp4 howitworks
git add -A && git commit -m "Add video-howitworks.mp4" && git push
```

`install-video.sh` probes the source, transcodes to web-safe H.264/AAC with `+faststart` (starts playing before the whole file buffers — matters on venue wifi), warns if it's over ~90 s, and puts it where the deck expects it.

> **Note on format:** NotebookLM Shorts come out **720×1280 portrait**. The deck's video slides are built for that — portrait clip on the left, key beats on the right. Don't try to force them landscape.

**If you never add them:** the slides still work. Each shows your talking points instead, in an amber "say this instead" card. **The deck cannot break because a video is missing** — that's deliberate.

---

## What each slot does for you

Both are **breathers**. You step aside, the room watches the screen, you drink water and read your next lines. They sit at the two highest-stress moments:

- **Slot A** buys you the 90 seconds before the live calculator — the riskiest part of the talk.
- **Slot B** buys you the 60 seconds before the ask, while they're still looking at the screen.

**Both are marked cuttable.** Drop both and you're at **22:00** — for a 15-minute slot keep going down the RUN-CARD.md cut ladder (17:05 floor). The slides say "cuttable" on-screen so you can decide day-of.

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
