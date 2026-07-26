# VO script — "EV Charger Panel Check in 90 Seconds"

**Clip:** `video-howitworks.mp4` (deck slide 12) · also `~/Desktop/EV-Charger-Panel-Check-90s.mp4`
**Runtime:** 104.5 s · 1920×1080 · currently **silent** (the on-screen rail carries it)
**Written:** 2026-07-26, morning of the Evolve KY talk.

The clip already works with no audio — the right-hand rail says every one of these lines
on screen. This is **optional polish**: record it and the clip stops needing the room to read.

## How to record it

1. Play the clip once and watch the right-hand rail. Each card change is a cue.
2. Read down the table at a normal, unhurried pace. **±0.5 s is fine** — I re-align to the
   beats when I mix. ~314 words over 104 s is a slow read; leave the gaps.
3. Phone voice memo in the RV is fine. Quiet room, phone ~8 in away, slightly off-axis so
   you don't pop your Ps.
4. Drop it at **`~/dev/evolve-ky/rehearsal/vo-panel-check.m4a`** (.m4a / .wav / .mp3) and
   run `rehearsal/mix-vo.sh` — it normalises to −16 LUFS, muxes, and keeps a silent master.

## The script

| in | out | what's on screen | say |
|---|---|---|---|
| `0:00` | `0:03` | title card | This is the whole thing. Start to finish. |
| `0:03` | `0:05` | Step 1 of 3 · Your car | First the car. The car is the only thing that decides the circuit. |
| `0:05` | `0:11` | Only two inputs matter | Two things set it: how far you drive, and how long it sits. Thirty-five miles a day, plugged in overnight — sixteen amps. |
| `0:11` | `0:15` | Watch the miles | Now drive sixty instead. Nearly double. Watch the number… it doesn't move. |
| `0:15` | `0:19` | Push it further | A hundred miles a day. Almost three times the average. Still only twenty amps. |
| `0:19` | `0:21` | One at a time | So miles barely matter. Put it back to sixty, and change the other one instead. |
| `0:21` | `0:26` | Now change the other one | Same sixty miles — but home four hours instead of eight. Now it moves. Twenty amps. |
| `0:26` | `0:31` | The lever | Two hours, and it's forty. Same driver, same car, same miles. Only the time changed. |
| `0:31` | `0:36` | Back to a normal night | Hours are the lever. Not the badge on the box. For most people, overnight, it's sixteen amps. |
| `0:36` | `0:43` | Step 2 of 3 · Your panel | Now the panel. Is it the main one, and what's stamped on the main breaker. |
| `0:43` | `0:50` | The ceiling | Two hundred amps. That's the ceiling. Everything from here has to fit underneath it. |
| `0:50` | `0:56` | The house | Square footage and heat. Two thousand feet, three VA a foot. Gas heat, nothing to count. |
| `0:56` | `1:03` | Nameplate loads | Range and dryer. Not guesses — eight thousand and five thousand, straight out of the code tables. |
| `1:03` | `1:07` | Heating &amp; cooling | Three-ton air conditioner. Heating or cooling, whichever's bigger. Never both. |
| `1:07` | `1:13` | The rest of it | Water heater. Pool, hot tub, well. Whether there's already a charger. Seven short sections. |
| `1:13` | `1:18` | Step 3 of 3 · The math | That's twelve ninety-nine. And now the code runs — not adding up breakers. The real calculation. |
| `1:18` | `1:23` | The verdict | Ninety amps on a two hundred amp service. It fits. No upgrade. |
| `1:23` | `1:29` | The receipts | And it shows the work — the numbers underneath, so your electrician can check them. |
| `1:29` | `1:36` | NEC 220.83(A) | Two-twenty dot eighty-three A. First eight kVA at a hundred percent, the rest at forty. That's the method. |
| `1:36` | `1:40` | Every legal method | And every legal method agrees. Not one of them says upgrade. |
| `1:40` | `1:44` | end card | In the homes I've checked, about four out of five already had the room. The math was never the problem. Nobody ran it. |

## Delivery notes on the three that matter

- **`0:11` "it doesn't move"** — this is the surprise. Dry, almost throwaway. Let the screen
  do the work.
- **`0:26` "two hours, and it's forty"** — slow down. This is the lesson the room repeats.
- **`1:18` "It fits. No upgrade."** — land it and stop. Full beat before the next line.

## Say it like this

| Say | Not |
|---|---|
| "twelve ninety-nine" | "twelve dollars and ninety-nine cents" |
| "two-twenty dot eighty-three A" | "two hundred twenty point eighty three" |
| "VA" — spell the letters | "volt-amps" |
| "eight kVA" — "kay-vee-ay" | "eight thousand VA" |

## Don't say

- Don't call the method **220.82**. The report on screen computes **NEC 2023 Section
  220.83(A)** and now labels itself that way throughout.
- Don't say the calculator is free. **$12.99** for the report; the free thing is the
  calculator on the site.
- Don't imply you install anything.
