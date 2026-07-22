# Evolve KY — "Do you really need a panel upgrade?"

Jason Walls' talk deck for the **Evolve KY** monthly meeting.

- **When:** Sunday, July 26, 2026, 2:30–4:30 PM
- **Where:** All Peoples, 4936 Brownsboro Rd, Louisville
- **Audience:** EV owners & the EV-curious (not electricians)
- **Angle:** You probably *don't* need a $3–5k panel upgrade to charge at home — and ChargeRight proves it with the real NEC math.

## Run it

Open `index.html` in any browser — single self-contained file, no build. (For the **live calculator** to run, open it over http, not as a `file://` snapshot: `python3 -m http.server` in this folder, or just use the deployed Vercel URL.)

**Controls:** `→` / `Space` next · `←` back · `N` speaker notes · on-screen `‹ ›` buttons always work (even while typing in the calculator).

## The deck (12 slides)

1. Title
2. Who I am
3. The moment (the $3–5k quote)
4. The truth (≈4 of 5 have room)
5. Straight talk (who *does* need it)
6. So why the quote?
7. **The math — LIVE.** An interactive NEC 220.82 load calculator. Type in a real attendee's house (sq ft, service size, appliances, AC, charger amps) and the verdict lands live: ✅ room / ⚠️ tight / 🔴 over.
8. **This is ChargeRight.** The app does that exact calc from a photo of your panel.
9. In plain terms (like adding an electric range)
10. How to know yours (free check today · evchargeright.com)
11. **Tell somebody** — the one repeatable share line, big and quotable.
12. **Pass it on** — hero close ("keep your buddy's $4,000") + **QR code** to evchargeright.com and a prompt to text it to someone in the room.

### Business objective: word-of-mouth
The close is built to turn the room into advocates (Jason's chosen goal). The three mechanics of shareability are baked in: a **wow** (live "you'd save $4k"), a **repeatable line** (slide 11), and a **friction-free way to share now** (QR on slide 12). `qr.svg` encodes https://evchargeright.com (generated with segno, self-contained, offline-safe).

## The live calculator — accuracy

The slide-7 calculator **mirrors the production ChargeRight engine** (`~/dev/Firebase/src/lib/calculator.ts` → `calculateNECLoad`, verdict via `capacity-verdict.ts`), verified against `~/dev/nec-reference`:

- **220.82(B):** 3 VA/ft² + small-appliance (2×1500) + laundry (1×1500) + appliance nameplates (range 8000 / dryer 5000 / water-heater 4500 / hot-tub 6000 VA)
- **Demand factor:** first 10 kVA @ 100% + remainder × 0.40
- **220.82(C):** larger of cooling (tons×1200) or electric heat (kW×1000×0.65)
- **EV load:** amps × 240 V
- **Verdict (230.79):** total ≤ 80% service = *comfortable* · ≤ 100% = *tight* · > 100% = *exceeds*

> Simplifications vs. the full app (fine for a live demo, noted for honesty): single-AC cooling, electric-heat modeled as `<4 units` (65%), no multi-zone/heat-pump-strip split, no largest-motor surcharge (correctly omitted — it's not in 220.82). **Do not change these NEC constants without Jason's electrician sign-off** (ChargeRight repo rule).

## Provenance

Faithful rebuild of the 10-slide deck that was live on Vercel (`evolve-deck`, 2026-06-25) — original source wasn't on this Mac, so copy was reconstructed verbatim — then extended with the live calculator + product slide, and two audit fixes applied ("tonight"→"here today"; "dryer"→"electric range").

> **Not** the 17-scene interactive demo (`chargeright-evolve-demo`) stranded on the "bandit" Windows box. If that's recovered before the talk it's the richer product demo; this deck now stands on its own regardless.
