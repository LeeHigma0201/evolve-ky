# How Electricians Actually Decide If Your Panel Can Handle an EV Charger

*Source material for short explainer videos. Audience: EV owners and EV-curious homeowners at a Kentucky EV club meeting. No electrical background assumed. Written by Jason Walls, master electrician, IBEW 369 — builder of ChargeRight (evchargeright.com).*

**Every number below is worked on the SAME house.** Keep them consistent; do not round differently between sections.

**THE HOUSE:** 2,000 square feet. 200-amp service. Electric range (8,000 VA), electric dryer (5,000 VA), gas heat, 3-ton central air (3,600 VA). Adding a 48-amp Level 2 EV charger (11,520 VA).

---

## Part 1: The myth that sells the upgrade

Open an electrical panel and you see a column of breakers. Most people count them, see no empty slots, and conclude the panel is full.

Add up the numbers printed on those breakers and a typical 200-amp house looks like this:

| Circuit | Breaker |
|---|---|
| Electric range | 50 A |
| Electric dryer | 30 A |
| Air conditioner | 40 A |
| Kitchen counter circuits, laundry, bath, garage | 100 A |
| Furnace, dishwasher, disposal, microwave | 70 A |
| General lighting and outlet circuits | 120 A |
| **Total printed on the breakers** | **410 A** |

**Four hundred and ten amps of breakers on a two-hundred-amp service. And nothing trips. Nothing ever has.**

That is the single most important fact in this subject. A panel is not a bucket you fill. In almost every house in America the breakers add up to roughly double the service rating, and it works fine, because you never run everything at once. Electricians call this *diversity*. Nobody bakes, dries clothes, runs the AC, microwaves and vacuums simultaneously at three in the morning.

**Counting breakers is not a load calculation. It never was.** But it looks like one, and that is exactly why it gets used to sell panel upgrades.

---

## Part 2: There is not one right answer — there are three legal ones

The National Electrical Code gives more than one legitimate way to calculate what a house actually demands. All are legal. **They produce different answers on the same house.**

### Method 1 — The Standard Method (Article 220, Part III)
Piece by piece, a separate rule for each category.
- General lighting and outlets at 3 VA per square foot (Table 220.12)
- Kitchen counter circuits at 1,500 VA each, minimum two; laundry at 1,500 VA (220.52)
- Those get discounted on a sliding scale (Table 220.42): first 3,000 VA at 100%, from 3,001 to 120,000 at only 35%
- Range capped by Table 220.55 — a single range counts as 8 kW no matter its nameplate
- Dryer at 5,000 VA or nameplate, whichever is larger (220.54)
- Air conditioning added on top

**Result on our house: 93 amps existing. With the 48-amp charger: 141 amps.**

### Method 2 — The Optional Method (NEC 220.82)
Almost everything into one pot, then discount the pot.
- Add it all at nameplate: 3 VA/ft², kitchen circuits, laundry, range, dryer, water heater
- First 10,000 VA at 100%, everything above that at only 40%
- Then add heating **or** cooling, whichever is larger — never both, because you don't run the furnace and the AC in the same hour (220.82(C))

**Result on our house: 79 amps existing. With the charger: 127 amps.**

### Method 3 — The Existing Dwelling Method (NEC 220.83) — the one that actually fits
The code says this one is *"permitted to be used to determine if the existing service or feeder is of sufficient capacity to serve additional loads."*

Read that again. An existing house. Serving an additional load. **That is precisely what adding an EV charger is.**

- 220.83(A) applies when you are **not** installing additional air conditioning or electric space heating. Adding a charger is not adding AC, so (A) is the path.
- The AC already in the house still counts — it's an appliance that is permanently connected and on its own circuit.
- First 8,000 VA at 100%, remainder at 40%

**Result on our house with the charger: 113 amps.**

---

## Part 3: The same house, three legal methods, one 200-amp service

| Method | Total with a 48-amp charger | Percent of a 200 A service |
|---|---|---|
| Add up the breakers *(not a calculation)* | 410 A | 205% — "you need an upgrade" |
| Standard Method, Article 220 Part III | **141 A** | 71% |
| Optional Method, NEC 220.82 | **127 A** | 64% |
| Existing Dwelling, NEC 220.83(A) | **113 A** | 57% |

**Every legitimate method says this house fits. Only the fake one says it doesn't.**

The spread between the three real methods is 28 amps. On an older 100-amp service, that spread is the entire difference between "you need to spend four thousand dollars" and "you're fine."

*(All three include the EV charger at 100% of nameplate with no demand factor — the 2023 code treats EV charging equipment that way because a car pulls steadily for hours. It is the conservative choice.)*

---

## Part 4: The second thing nobody tells you — just charge slower

Every conversation about home charging assumes you need the biggest charger sold. You almost certainly don't.

| Charging at | Range added over an 8-hour night |
|---|---|
| 48 amps | about 320 miles |
| 32 amps | about 215 miles |
| 24 amps | about 160 miles |
| 16 amps | about 105 miles |

**The average American drives about 37 miles a day.**

At 16 amps you replace roughly a hundred miles every night — nearly triple a typical day — while adding 16 amps to your panel instead of 48.

**Take that same house and put it on an older 100-amp service:**
- At 48 amps: 127 amps of demand on a 100-amp service. Over the limit. A real problem.
- At 16 amps: **95 amps. It fits. No upgrade. Charge at home tonight.**

That is the answer for the roughly one in five homes that genuinely are tight. They get told to spend thousands. Very often they just need a smaller charger.

---

## Part 5: What to do

1. **Ignore the breaker count.** It adds up to about double your service in nearly every house and always has.
2. **Ask which method was used.** If someone quotes you a panel upgrade, ask whether they ran the calculation, and which one. A vague answer means they didn't run anything.
3. **Ask about a smaller charger.** Fewer amps may cost you nothing in real life and save you thousands.
4. **Run the numbers before you call anyone.** Free NEC 220.82 calculator at evchargeright.com. A full read from a photo of your panel, with a report you can hand a contractor, is $12.99.

The math takes ten minutes. The upsell takes ten seconds. That's the whole reason this gets sold as often as it does.

---

*Code references: NEC 220.12 and Table 220.12, 220.42 and Table 220.42, 220.52, 220.54, Table 220.55, 220.82, 220.83, 230.79. Worked from verbatim NEC 2017 text; the dwelling provisions cited are substantively unchanged through 2023. Nothing here substitutes for a licensed electrician evaluating a specific home.*
