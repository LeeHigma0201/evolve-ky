# How Electricians Actually Decide If Your Panel Can Handle an EV Charger

*Source material for a short explainer video. Audience: EV owners and EV-curious homeowners. No electrical background assumed. Written by Jason Walls, master electrician, IBEW 369 — builder of ChargeRight (evchargeright.com).*

---

## Part 1: The myth that costs people thousands of dollars

Open your electrical panel and you'll see a column of breakers. Most people count them, see no empty slots, and conclude the panel is full.

Then they add up the numbers printed on those breakers. On a typical 200-amp house it looks something like this:

| Circuit | Breaker |
|---|---|
| Electric range | 50 A |
| Electric dryer | 30 A |
| Air conditioner | 40 A |
| Furnace | 15 A |
| Dishwasher | 20 A |
| Garbage disposal | 15 A |
| Microwave | 20 A |
| Kitchen counter circuits (×2) | 40 A |
| Laundry | 20 A |
| Bathroom | 20 A |
| Garage | 20 A |
| General lighting & outlets (×8) | 120 A |
| **Total printed on the breakers** | **≈ 410 A** |

Four hundred and ten amps of breakers, sitting on a two-hundred-amp service.

And nothing is on fire. The lights work. Nothing trips.

**That is the single most important fact in this entire subject.** A panel is not a bucket you fill to the top. The breakers add up to roughly twice the service rating in almost every house in America, and it works fine — because you never run everything at the same time. Electricians call this *diversity*. You are not baking, drying clothes, running the air conditioning, microwaving, and vacuuming simultaneously at three in the morning.

Counting breakers is not the math. It has never been the math. But it *looks* like the math, and that's why it gets used to sell panel upgrades.

---

## Part 2: What the real math is — and why there are two of them

The National Electrical Code gives you two legitimate ways to calculate what a house actually demands. Both are in Article 220. Both are legal. **They produce different answers.**

### Method One: the Standard Method (NEC Article 220, Part III)

This one goes piece by piece, with a separate rule for each category.

- **General lighting and outlets** — 3 volt-amperes per square foot (Table 220.12, dwelling units)
- **Kitchen counter circuits** — 1,500 VA each, minimum two (220.52(A))
- **Laundry circuit** — 1,500 VA (220.52(B))
- Those three get added together, then discounted on a sliding scale (**Table 220.42**): the first 3,000 VA counts at 100%, everything from 3,001 to 120,000 counts at only 35%
- **Electric range** — not its nameplate. Table 220.55 caps a single range at **8 kW** of demand
- **Electric dryer** — 5,000 VA or nameplate, whichever is larger (220.54)
- **Air conditioning** — added on top

### Method Two: the Optional Method (NEC 220.82)

This one throws almost everything into a single pot and discounts the pot.

- Add up **all** of it at nameplate: 3 VA/ft², the two kitchen circuits, laundry, range, dryer, water heater — everything
- Then: the **first 10,000 VA counts at 100%, and everything above that counts at only 40%**
- Then add heating **or** cooling — whichever is larger, never both (220.82(C)). You are not running the furnace and the air conditioner in the same hour.

---

## Part 3: The same house, both ways

**The house:** 2,000 square feet. 200-amp service. Electric range, electric dryer, gas heat, 3-ton central air.

### Standard Method

| Step | Math | Result |
|---|---|---|
| General lighting | 2,000 ft² × 3 VA | 6,000 VA |
| Kitchen circuits | 2 × 1,500 | 3,000 VA |
| Laundry | 1 × 1,500 | 1,500 VA |
| *Subtotal* | | *10,500 VA* |
| Table 220.42 discount | 3,000 @ 100% + 7,500 @ 35% | **5,625 VA** |
| Range (Table 220.55) | capped at 8 kW | 8,000 VA |
| Dryer (220.54) | 5,000 VA | 5,000 VA |
| Air conditioning | 3 tons | 3,600 VA |
| **TOTAL** | 22,225 VA ÷ 240 V | **≈ 93 amps** |

### Optional Method — NEC 220.82

| Step | Math | Result |
|---|---|---|
| Everything at nameplate | 6,000 + 3,000 + 1,500 + 8,000 + 5,000 | 23,500 VA |
| Demand factor | first 10,000 @ 100% + 13,500 @ 40% | **15,400 VA** |
| Heating or cooling, larger only | 3-ton AC | 3,600 VA |
| **TOTAL** | 19,000 VA ÷ 240 V | **≈ 79 amps** |

### Same house. Same appliances. 93 amps versus 79 amps.

Fourteen amps apart — and neither one is wrong. They are two different legal methods, and the optional method is the one written for exactly this situation: an existing home, being evaluated for one more big load.

On a 100-amp service, those fourteen amps are the entire difference between "you need a four-thousand-dollar upgrade" and "you're fine."

---

## Part 4: Now add the EV charger

A 48-amp charger is 48 amps at 240 volts.

| | Existing load | + EV charger | Total | On a 200 A service |
|---|---|---|---|---|
| Standard Method | 93 A | 48 A | **141 A** | 71% used |
| Optional Method (220.82) | 79 A | 48 A | **127 A** | 64% used |

Either way, this house has room. It never needed an upgrade. Nobody ever ran the calculation.

---

## Part 5: The second thing nobody tells you — you can just charge slower

Every conversation about home charging assumes you need the biggest charger sold. You almost certainly don't.

| Charging at | Range added overnight (8 hours) |
|---|---|
| 48 amps | ≈ 320 miles |
| 32 amps | ≈ 215 miles |
| 24 amps | ≈ 160 miles |
| 16 amps | ≈ 105 miles |

The average American drives about 37 miles a day.

At 16 amps you replace roughly a hundred miles every single night — nearly triple a typical day's driving — while adding only 16 amps to your panel instead of 48.

**Take that same 2,000 square foot house and put it on an older 100-amp service:**

- At 48 amps: 127 amps of demand on a 100-amp service. Over the limit. This is a real problem.
- At 16 amps: 95 amps. It fits. **No upgrade. Charge at home tonight.**

That is the answer for the roughly one in five homes that genuinely are tight. They are told they need to spend thousands. Very often they just need a smaller charger.

---

## Part 6: What this means for you

1. **Ignore the breaker count.** It adds up to about twice your service in nearly every house, and always has.
2. **Ask which method was used.** If somebody quotes you a panel upgrade, ask whether they ran the optional calculation in NEC 220.82. If the answer is vague, they didn't run anything.
3. **Ask about a smaller charger.** Fewer amps may cost you nothing in real life and save you thousands.
4. **Run the numbers before you call anyone.** There is a free NEC 220.82 calculator at evchargeright.com. A full read from a photo of your panel — with a report you can hand to a contractor — is $12.99.

The math takes ten minutes. The upsell takes ten seconds. That's the whole reason this gets sold as often as it does.

---

*Code references: NEC 220.12 and Table 220.12 (general lighting unit load), 220.42 and Table 220.42 (lighting demand factors), 220.52 (small-appliance and laundry), 220.54 (dryers), Table 220.55 (ranges), 220.82 (optional dwelling calculation), 230.79 (service rating). Worked examples use NEC 2017 text; the dwelling provisions cited are substantively unchanged through the 2023 edition. Nothing here is a substitute for a licensed electrician evaluating your specific home.*
