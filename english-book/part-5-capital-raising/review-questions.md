# Review Questions and Practice Exercises

## Review Questions — Part V: Capital Raising for DAOs

### Question 1: Three-Bucket Treasury Allocation

**A DAO has a treasury of $30 million in stablecoins, $5 million in ETH, 500 million native tokens (at $2.00 each = $1 billion notional), and monthly operating expenses of $2.5 million. Apply the Three-Bucket Model to design the treasury allocation. How much should be in each bucket? What is the DAO's operational runway?**

**Expected answer:**

**Step 1 — Identify liquid (non-native) treasury assets:**

| Asset | Value | Notes |
|-------|-------|-------|
| Stablecoins (USDC/DAI) | $30,000,000 | Liquid, no market risk |
| ETH | $5,000,000 | Liquid, subject to market volatility |
| **Total non-native treasury** | **$35,000,000** | Excludes native tokens due to reflexivity risk |
| Native tokens | $1,000,000,000 notional | Excluded from allocation model — selling native tokens depresses price; cannot be relied upon for operating expenses |

{% hint style="warning" %}
**Critical concept:** Native tokens should never be counted as part of the liquid treasury for allocation purposes. Their notional value is reflexive — any significant sale would move the market against the DAO. Treasury planning must be based on non-native assets only.
{% endhint %}

**Step 2 — Three-Bucket Allocation:**

| Bucket | Purpose | Target Range | Recommended Allocation | Amount |
|--------|---------|-------------|----------------------|--------|
| **Operating Reserve** | Cover 12-24 months of operating expenses | 12-24 months x monthly burn | 18 months x $2.5M = $45M (target) | $30,000,000 (stablecoins) |
| **Strategic Reserve** | Partnerships, M&A, emergency liquidity | 15-30% of non-native treasury | 20% x $35M | $5,000,000 (ETH) |
| **Growth Portfolio** | Yield generation, DeFi deployments, diversification | Remainder of non-native treasury | $35M - $30M - $5M | $0 |

**Step 3 — Runway analysis:**

```
Stablecoins-only runway:
  $30,000,000 / $2,500,000 per month = 12 months

Total non-native runway:
  $35,000,000 / $2,500,000 per month = 14 months

Target runway (18-24 months):
  18 months x $2,500,000 = $45,000,000
  24 months x $2,500,000 = $60,000,000

Shortfall to 18-month target: $45M - $35M = $10,000,000
Shortfall to 24-month target: $60M - $35M = $25,000,000
```

**Step 4 — Assessment and recommendations:**

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Operating runway (stablecoins) | 12 months | 18-24 months | Below target |
| Operating runway (total non-native) | 14 months | 18-24 months | Below target |
| Growth portfolio allocation | $0 (0%) | 10-30% of non-native | No capacity |
| Strategic reserve | $5M (14.3%) | 15-30% of non-native | At lower bound |

**Key finding:** The DAO has a 14-month runway on non-native assets, which falls below the recommended 18-24 month minimum. The entire non-native treasury is consumed by the Operating Reserve and Strategic Reserve, leaving zero capacity for the Growth Portfolio. The DAO should prioritize a capital raise of at least $10-25 million to reach the 18-24 month runway target and fund growth initiatives. Alternatively, the DAO should explore reducing its monthly burn rate or implementing revenue-generating strategies to extend runway.

---

### Question 2: Capital Raising Instrument Comparison

**Compare OTC token sales, protocol bonds, and convertible notes as capital raising instruments. For each, describe the optimal circumstances for its use, the cost to the DAO (dilution or interest), and the primary risk to the DAO.**

**Expected answer:**

| Dimension | OTC Token Sale | Protocol Bond | Convertible Note |
|-----------|---------------|---------------|-----------------|
| **Mechanism** | Direct sale of native tokens to investors at a negotiated discount to market price, with lock-up and vesting | DAO issues on-chain debt instrument paying fixed coupon in stablecoins or ETH, with principal repayment at maturity | Short-term debt that converts to tokens at a future pricing event (e.g., next round or TGE), typically at a discount |
| **Optimal circumstances** | DAO needs immediate capital; token has established market price and sufficient liquidity; DAO is willing to accept dilution | DAO has predictable revenue streams to service debt; wants to avoid dilution; strong credit fundamentals | Valuation is uncertain or contested; bridge financing needed between milestones; DAO wants to defer pricing to a future event |
| **Cost to DAO** | **Dilution:** Direct supply expansion; typically 2-10% of total supply sold at 10-25% discount to market | **Interest:** Fixed coupon of 8-15% annually; no dilution unless the DAO defaults | **Hybrid:** Discount of 15-25% on future conversion price; dilution occurs at conversion but amount is uncertain until the conversion event |
| **Primary risk to DAO** | Token price decline after sale erodes investor confidence; cliff unlock events create sell pressure; large discounts set unfavorable precedent for future raises | Debt service obligation in bear markets when revenue may decline; covenant violations can trigger accelerated repayment; creates senior claims on treasury | Conversion at unfavorable terms if token price drops; valuation cap may lock in low FDV; uncertainty of final dilution makes treasury planning difficult |
| **Investor profile** | Crypto-native funds, VCs, strategic partners seeking governance influence and token upside | Yield-seeking investors, DeFi treasuries, credit-focused funds | Early-stage investors willing to accept pricing uncertainty for discount protection |
| **Complexity** | Low — standard term sheet, governance vote, escrow execution | Medium — requires coupon payment infrastructure, covenant monitoring, sinking fund | Medium — requires conversion mechanics, cap/discount negotiation, trigger event definition |
| **Time to close** | 2-6 weeks | 4-8 weeks | 2-4 weeks |

**Decision framework:**

```
IF revenue is predictable AND dilution must be avoided:
    → Protocol Bond

IF token has established market price AND immediate capital needed:
    → OTC Token Sale

IF valuation is uncertain OR bridge financing needed:
    → Convertible Note

IF large raise needed (>$50M):
    → Consider combining instruments (e.g., OTC + Bond tranche)
```

---

### Question 3: OTC Token Sale Calculation

**A DAO proposes to sell 30 million tokens (3% of total supply) through an OTC sale at a 15% discount to the 30-day VWAP of $4.00 per token, with a 12-month lock-up and 6-month vesting thereafter. Calculate the total capital raised, the effective price per token, and the dilution to existing holders. Evaluate whether the terms are fair to existing token holders.**

**Expected answer:**

**Step 1 — Price calculation:**

```
30-day VWAP:           $4.00
Discount:              15%
Effective price:       $4.00 x (1 - 0.15) = $4.00 x 0.85 = $3.40 per token
```

**Step 2 — Capital raised:**

```
Tokens sold:           30,000,000
Price per token:       $3.40
Total capital raised:  30,000,000 x $3.40 = $102,000,000
```

**Step 3 — Dilution analysis:**

| Metric | Before Sale | After Sale |
|--------|------------|------------|
| Total supply | 1,000,000,000 | 1,000,000,000 (no new minting — sold from treasury or authorized supply) |
| Circulating supply (est.) | ~500,000,000 | ~500,000,000 (tokens locked for 12 months) |
| Allocated supply increase | — | +30,000,000 tokens |
| Dilution to existing holders | — | 30M / 1.03B = **~2.91%** |
| Effective FDV at sale price | $4.00 x 1B = $4.0B | $3.40 x 1B = $3.4B (at sale price) |
| Post-sale treasury increase | — | +$102,000,000 in stablecoins |

{% hint style="info" %}
**Note on dilution calculation:** If the tokens are sold from existing treasury allocation (already minted), dilution is measured as the increase in non-DAO-controlled supply relative to total supply. If new tokens are minted, total supply increases. The calculation above assumes tokens are sold from an existing treasury or reserve allocation, so total supply remains at 1 billion but the effective circulating supply increases by 3% upon full unlock.
{% endhint %}

**Step 4 — Fairness evaluation:**

| Factor | Assessment | Fair? |
|--------|-----------|-------|
| **Discount (15%)** | Within standard range of 10-25% for OTC sales; reasonable given 18-month total illiquidity period | Yes |
| **Lock-up (12 months)** | Strong protection — investors cannot sell for a full year, aligning incentives with long-term value creation | Yes |
| **Vesting (6 months post-lock)** | Linear vesting over 6 months after the 12-month lock prevents cliff dump events; 18 months total to full liquidity | Yes |
| **Size (3% of supply)** | Moderate dilution; below the 5% threshold that typically raises concern | Yes |
| **Capital raised ($102M)** | Substantial treasury addition that strengthens operational runway | Yes |
| **Discount vs. lock-up trade-off** | 15% discount for 18 months of illiquidity is reasonable; investors bear significant opportunity cost and market risk | Yes |

**Overall evaluation:** The terms are **fair to existing token holders.** The 15% discount is reasonable compensation for 18 months of total illiquidity (12-month lock + 6-month vest). The 3% dilution is moderate, and the $102 million raised significantly strengthens the DAO's treasury position. The key protection for existing holders is the lock-up structure, which prevents immediate selling pressure and aligns investor incentives with protocol growth.

**Potential improvements:**
- Consider adding performance-based unlock milestones tied to protocol KPIs
- Include anti-dilution provisions if the DAO conducts another raise at a lower implied FDV within 12 months
- Add governance participation requirements during the lock-up period

---

### Question 4: Governance Report Template Design

**Design a quarterly governance report template for a lending protocol DAO. List all sections that should be included and explain why each section is important for governance transparency and investor confidence.**

**Expected answer:**

**Quarterly Governance Report — Template Structure:**

| # | Section | Key Contents | Why It Matters |
|---|---------|-------------|----------------|
| 1 | **Executive Summary** | Key metrics dashboard: TVL, revenue, expenses, runway, governance participation rate, major decisions | Provides at-a-glance status for time-constrained stakeholders; serves as the "front page" that determines whether readers engage further |
| 2 | **Financial Statements** | Treasury balance sheet (assets by type, liabilities, net position), income statement (revenue, expenses, net burn), cash flow statement | Core financial transparency — allows token holders to assess the DAO's economic health; mirrors TradFi reporting standards for institutional comfort |
| 3 | **Treasury Composition** | Breakdown by asset class (stablecoins, ETH/BTC, native tokens, DeFi positions), concentration risk analysis, changes from prior quarter | Reveals risk exposure; concentrated positions or excessive native token reliance are red flags for sophisticated investors |
| 4 | **Revenue Analysis** | Revenue by source (lending fees, liquidation penalties, interest spread), quarter-over-quarter growth, revenue per unit of TVL | Demonstrates business model sustainability; revenue diversification reduces existential risk from any single source |
| 5 | **Expense Report** | Contributor compensation, infrastructure costs, audit fees, grants, marketing, legal — categorized as essential vs. discretionary | Accountability for spending; allows governance participants to evaluate cost efficiency and identify potential waste |
| 6 | **Operational Runway** | Current runway in months (non-native assets / monthly burn), scenario analysis (base/bear/bull), path to sustainability | Most critical forward-looking metric — runway below 12 months should trigger immediate treasury action |
| 7 | **Risk Management** | Smart contract risk exposure, counterparty risk, oracle dependencies, insurance coverage, recent audit results, active bug bounty stats | Lending protocols face unique systemic risks; transparent risk reporting builds confidence and identifies vulnerabilities before they become exploits |
| 8 | **Governance Activity** | Proposals submitted/passed/rejected, voter participation rates, delegation stats, quorum achievement rates, contentious votes summary | Measures governance health; declining participation may indicate voter apathy or centralization concerns |
| 9 | **Protocol Performance** | TVL trends, utilization rates by market, liquidation volumes, bad debt incurred, new markets added, integration partnerships | Core product metrics — allows assessment of protocol competitiveness and product-market fit |
| 10 | **Strategic Initiatives** | Progress updates on approved roadmap items, new proposals in discussion, partnership pipeline, competitive landscape changes | Forward-looking context; shows the DAO is actively executing strategy, not merely maintaining status quo |
| 11 | **Contributor Update** | Team size changes, key hires/departures, contributor vesting status, organizational structure updates | People are the DAO's most important asset; unexpected departures or team instability are material risks |
| 12 | **Regulatory and Legal** | Jurisdictional developments affecting the protocol, legal entity updates, compliance actions taken, upcoming regulatory milestones | Proactive regulatory transparency reduces surprise risk; institutional investors require this for their own compliance |
| 13 | **Outlook and Guidance** | Next quarter priorities, expected treasury needs, upcoming governance votes, risk factors to monitor | Sets expectations and provides accountability benchmarks for the next reporting period |

{% hint style="info" %}
**Best practice:** Publish the governance report on-chain (IPFS with governance forum link) within 30 days of quarter-end. Include a recorded community call walkthrough and a dedicated Q&A period. Make the raw data available in a public dashboard for independent verification.
{% endhint %}

**Why comprehensive reporting matters for a lending protocol specifically:**
- Lending protocols hold user deposits, creating fiduciary-like obligations for transparency
- Bad debt events can cascade across DeFi — clear risk reporting helps the ecosystem, not just the DAO
- Institutional depositors (other DAO treasuries, funds) require standardized reporting before allocating capital
- Regulatory scrutiny is increasing — proactive reporting demonstrates good faith and operational maturity

---

### Question 5: Emergency Treasury Withdrawal Authority

**A DAO treasury manager discovers that 25% of the growth portfolio is deployed in a single DeFi protocol that has just disclosed a potential vulnerability. The protocol has not been exploited yet, but the treasury manager believes immediate withdrawal is warranted. Under the treasury governance framework described in this chapter, does the treasury manager have the authority to withdraw? What process should they follow?**

**Expected answer:**

**Authority analysis: YES — the treasury committee has emergency authority to withdraw funds from compromised or at-risk protocols without a full governance vote.**

**Justification:**

| Principle | Application |
|-----------|-------------|
| **Fiduciary duty** | The treasury committee has a fiduciary obligation to protect DAO assets; waiting for a multi-day governance vote while a vulnerability is disclosed would be a breach of that duty |
| **Emergency powers** | The treasury governance framework grants the treasury committee (or designated multi-sig signers) emergency authority for protective actions — specifically withdrawals from protocols with disclosed vulnerabilities, active exploits, or sudden liquidity crises |
| **Scope limitation** | Emergency authority covers **protective withdrawals only** — it does not extend to redeployment into new protocols, which requires standard governance approval |

**Process the treasury manager should follow:**

| Step | Timeframe | Action | Details |
|------|-----------|--------|---------|
| 1 | **Immediate** (T+0) | Assess severity | Evaluate the vulnerability disclosure: is it theoretical, confirmed, or actively exploited? What is the exposure amount? |
| 2 | **Immediate** (T+0 to T+2h) | Execute emergency withdrawal | Initiate withdrawal from the affected protocol using the emergency multi-sig process (e.g., 2-of-3 treasury committee signers) |
| 3 | **Within 24 hours** | Notify governance | Post a public governance forum notification explaining: the vulnerability, the exposure, the action taken, and the current status of withdrawn funds |
| 4 | **Within 48 hours** | Secure withdrawn assets | Park withdrawn assets in the Operating Reserve bucket (stablecoins) or a battle-tested protocol (e.g., Aave, Compound) pending governance direction |
| 5 | **Within 7 days** | Present post-action report | Deliver a formal report to governance covering: timeline of events, decision rationale, funds recovered, any losses incurred, and recommendations for future risk limits |
| 6 | **Within 14 days** | Governance ratification vote | Submit the emergency action for retroactive ratification by governance; include updated risk management policies if needed |

{% hint style="warning" %}
**Key distinction:** Emergency authority is for **withdrawal only** (reducing risk), never for **deployment** (taking new risk). The treasury manager can pull funds out of danger but cannot unilaterally deploy them into a new protocol. Redeployment requires standard governance approval.
{% endhint %}

**Risk management improvements to recommend after the incident:**

1. **Concentration limits:** No single protocol should hold more than 15-20% of the growth portfolio (this allocation was at 25%, already in violation of best practices)
2. **Protocol risk scoring:** Implement a standardized risk scoring framework for all DeFi deployments (audit quality, TVL stability, track record, insurance coverage)
3. **Monitoring alerts:** Establish automated monitoring for governance disclosures, audit findings, and anomalous on-chain activity across all deployed protocols
4. **Insurance coverage:** Evaluate DeFi insurance protocols (Nexus Mutual, Unslashed) for tail-risk protection on significant treasury deployments

---

### Question 6: Institutional Capital Raise Structure Design

**You are advising a DAO on its first institutional capital raise. The DAO needs $25 million and has 1 billion tokens outstanding with an FDV of $300 million. Design three alternative capital raising structures (OTC sale, bond, convertible note), calculate the key terms for each (price/coupon, dilution, cost of capital), and recommend the optimal structure with supporting analysis.**

**Expected answer:**

**Baseline metrics:**

```
Token price (current):       $300M FDV / 1B tokens = $0.30 per token
Capital needed:              $25,000,000
Total supply:                1,000,000,000 tokens
```

**Structure 1: OTC Token Sale**

| Term | Value | Calculation |
|------|-------|-------------|
| Discount to market | 15% | Standard range for 12-18 month lockup |
| Sale price per token | $0.255 | $0.30 x (1 - 0.15) = $0.255 |
| Tokens sold | 98,039,216 | $25,000,000 / $0.255 |
| % of total supply | ~9.80% | 98.04M / 1B |
| Dilution to existing holders | ~8.93% | 98.04M / (1B + 98.04M) if minted; or 98.04M / 1B = 9.80% if from treasury |
| Lock-up | 12 months | Standard institutional terms |
| Vesting | 6 months linear post-lock | Prevents cliff dump |
| Cost of capital | 15% discount + opportunity cost | One-time dilution event |

**Structure 2: Protocol Bond**

| Term | Value | Calculation |
|------|-------|-------------|
| Principal | $25,000,000 | Face value of bond issuance |
| Coupon rate | 10-12% annually | Market rate for DAO credit; assume 11% |
| Annual interest expense | $2,750,000 | $25M x 11% |
| Maturity | 2 years | Standard DAO bond term |
| Total interest paid | $5,500,000 | $2.75M x 2 years |
| Total cost of capital | $5,500,000 (22% of principal) | Over 2-year life |
| Dilution | 0% | Debt instrument, no token issuance |
| Collateral requirement | 150-200% over-collateralization | Likely in native tokens or stablecoins |
| Revenue coverage ratio | Revenue / Debt service > 2x | DAO must demonstrate sufficient cash flow |

**Structure 3: Convertible Note**

| Term | Value | Calculation |
|------|-------|-------------|
| Principal | $25,000,000 | Note face value |
| Interest rate | 5-8% annually | Lower than bond due to equity upside; assume 6% |
| Conversion discount | 20% | Discount to FDV at next qualifying event |
| Valuation cap | $300,000,000 | Current FDV as cap |
| Conversion price (at cap) | $0.24 | $300M cap / 1B tokens x (1 - 0.20) = $0.24 |
| Tokens on conversion (at cap) | 104,166,667 | $25M / $0.24 |
| Maximum dilution | ~10.42% | If conversion at cap with full discount |
| Maturity (if no conversion) | 18 months | Must be repaid or converted |
| Annual interest expense | $1,500,000 | $25M x 6% |

**Comparative analysis:**

| Factor | OTC Sale | Protocol Bond | Convertible Note |
|--------|---------|---------------|-----------------|
| **Immediate dilution** | ~9.80% | 0% | 0% (deferred) |
| **Maximum dilution** | 9.80% (fixed) | 0% | ~10.42% (variable) |
| **Cash outflow** | None | $2.75M/year | $1.5M/year (pre-conversion) |
| **Complexity** | Low | Medium | Medium |
| **Treasury impact** | +$25M stablecoins, one-time | +$25M now, -$2.75M/year, -$25M at maturity | +$25M now, -$1.5M/year until conversion |
| **Bear market risk** | Low (no ongoing obligations) | High (must service debt regardless of market) | Medium (conversion may not trigger; repayment risk) |
| **Investor appetite** | High (direct token exposure) | Moderate (yield-focused only) | High (downside protection + upside) |
| **Speed to close** | 2-4 weeks | 4-8 weeks | 2-4 weeks |

**Recommendation: OTC Token Sale** (with specific conditions)

**Rationale:**

1. **No ongoing cash obligation:** The DAO avoids committing $2.75M/year (bond) or $1.5M/year (note) from operating cash flow. For a DAO raising its first institutional round, preserving cash flow is paramount.

2. **Certainty of dilution:** The 9.80% dilution is fixed and known at close. The convertible note creates dilution uncertainty (range of 0-10.42%), complicating treasury planning.

3. **Simplicity:** First-time institutional raises benefit from simple structures. OTC sales require standard legal documentation, a governance vote, and escrow execution — minimal infrastructure.

4. **Investor alignment:** Token-based compensation aligns investor incentives with long-term protocol success. Bond investors are incentivized to extract yield, not grow the protocol.

5. **No default risk:** Bond default would be reputationally catastrophic for a first-time issuer. OTC sales carry no default risk.

**Recommended OTC terms:**

```
Tokens:          ~98M tokens (9.8% of supply)
Price:           $0.255 (15% discount to $0.30)
Lock-up:         12 months
Vesting:         6 months linear post-lock
Governance:      Voting rights active during lock-up
Minimum ticket:  $2,000,000 (limit to ~12 investors max)
```

{% hint style="info" %}
**When to choose differently:** If the DAO has strong, predictable revenue (>$5M/year) and wants to avoid any dilution, the protocol bond becomes attractive. If valuation is contentious or the DAO expects a significant FDV increase within 12 months, the convertible note allows deferring the pricing decision.
{% endhint %}

---

## Practice Exercise 15.1: Treasury Strategy

**Design a 12-month treasury strategy for a DAO with the following profile:**

- **Native tokens:** 200 million tokens at $3.00 = $600 million notional
- **Stablecoins:** $15 million USDC
- **ETH holdings:** $8 million
- **Monthly burn:** $2.5 million
- **Monthly revenue:** $1.5 million (growing 10% quarter-over-quarter)
- **Existing debt:** None

Your strategy should include:

1. **Three-Bucket allocation** — assign all non-native assets to the Operating Reserve, Strategic Reserve, and Growth Portfolio with specific dollar amounts and justification
2. **Diversification plan** — how and when to diversify the treasury over 12 months (native token sales, revenue accumulation, yield strategies)
3. **Yield optimization** — specific protocols and strategies for the Growth Portfolio with expected APY, risk rating, and concentration limits
4. **Risk management framework** — concentration limits, drawdown triggers, rebalancing schedule, and emergency procedures
5. **Capital raising plan (if needed)** — evaluate whether a raise is required, recommend structure and timing, calculate minimum viable raise amount

**Present your strategy as a "Treasury Management Proposal" suitable for a governance vote.**

**Deliverable format:**
- Executive summary with key metrics dashboard
- Current state assessment (strengths, weaknesses, risks)
- Three-Bucket allocation table with justification
- 12-month cash flow projection (monthly, three scenarios: base/bull/bear)
- Yield strategy specification with protocol-level detail
- Risk management policy document
- Capital raise recommendation (if applicable) with term sheet
- Implementation timeline with governance milestones

{% hint style="info" %}
**Evaluation Criteria**

Your treasury strategy will be assessed on: mathematical consistency (do the cash flows balance?), risk-adjusted yield optimization (not just highest APY), operational feasibility (can the DAO actually execute this?), and governance clarity (would token holders understand and approve this proposal?).
{% endhint %}

**Key calculations to include:**

```
Net monthly burn:       $2,500,000 - $1,500,000 = $1,000,000 net
Current runway (gross): ($15M + $8M) / $2.5M = 9.2 months
Current runway (net):   ($15M + $8M) / $1.0M = 23 months
Revenue growth path:    Q1: $1.5M/mo → Q2: $1.65M/mo → Q3: $1.82M/mo → Q4: $2.0M/mo
Breakeven estimate:     ~Month 10-12 (when revenue ≥ expenses)
```

---

## Practice Exercise 16.1: Capital Raise Execution

**You have received governance approval for a $20 million OTC token sale for a DAO with the following profile:**

- **Token price:** $5.00 (current market)
- **30-day VWAP:** $4.80
- **Total supply:** 500 million tokens
- **Circulating supply:** 250 million tokens

Design the complete capital raise execution including:

1. **One-page term sheet** — all material terms (price, discount, lock-up, vesting, governance rights, anti-dilution, minimum ticket size, closing conditions)
2. **Top 10 target investor list** — investor name/type, rationale for inclusion, estimated ticket size, strategic value beyond capital
3. **Token calculations at multiple discount levels:**

| Discount | Price per Token | Tokens Sold | % of Total Supply | % of Circulating | Capital Raised |
|----------|----------------|-------------|-------------------|-----------------|----------------|
| 10% | $4.32 | ? | ? | ? | $20,000,000 |
| 15% | $4.08 | ? | ? | ? | $20,000,000 |
| 20% | $3.84 | ? | ? | ? | $20,000,000 |

4. **Governance proposal draft** — full proposal text suitable for on-chain submission, including background, rationale, terms, risk factors, and voting parameters
5. **Post-close treasury impact analysis** — pro forma treasury balance sheet, updated runway calculation, dilution waterfall table

**Deliverable format:**
- Term sheet (one page, standard legal formatting)
- Investor pipeline table with scoring matrix
- Token economics sensitivity table (3 discount scenarios)
- Governance proposal (forum-ready markdown)
- Pro forma financial impact analysis

{% hint style="warning" %}
**Pricing nuance:** The term sheet should use the 30-day VWAP ($4.80), not the spot price ($5.00), as the reference price for discount calculations. VWAP-based pricing is industry standard because it smooths short-term volatility and provides a more defensible reference point for governance approval.
{% endhint %}

**Required token calculations (VWAP-based):**

```
At 10% discount:  $4.80 x 0.90 = $4.32 → $20M / $4.32 = 4,629,630 tokens (0.93% of supply)
At 15% discount:  $4.80 x 0.85 = $4.08 → $20M / $4.08 = 4,901,961 tokens (0.98% of supply)
At 20% discount:  $4.80 x 0.80 = $3.84 → $20M / $3.84 = 5,208,333 tokens (1.04% of supply)
```

---

## Self-Assessment Rubric

### Mastery Level Indicators

**Beginner (1-2):**
- Can explain the purpose of the Three-Bucket Model for treasury allocation
- Understands the difference between OTC sales, bonds, and convertible notes at a high level
- Knows why native tokens should be excluded from liquid treasury calculations
- Can identify the basic components of a governance report

**Intermediate (3-4):**
- Designs treasury allocations using the Three-Bucket Model with specific dollar amounts
- Calculates OTC sale terms including discount pricing, token amounts, and dilution
- Compares capital raising instruments with trade-offs and optimal use cases
- Designs quarterly governance report templates with appropriate sections
- Understands emergency withdrawal authority and the governance process for treasury actions

**Advanced (5-6):**
- Builds complete 12-month treasury strategies with cash flow projections under multiple scenarios
- Designs capital raise structures with full term sheets and investor targeting
- Calculates cost of capital across OTC, bond, and convertible note structures
- Constructs risk management frameworks with concentration limits and rebalancing triggers
- Evaluates fairness of OTC terms from the perspective of existing token holders
- Structures emergency treasury procedures within governance frameworks

**Expert (7-8):**
- Advises DAOs on live capital raises with institutional investors
- Designs novel treasury structures combining multiple instruments
- Builds dynamic treasury models that adjust allocation based on market conditions and runway projections
- Structures capital raises that optimize for cost of capital, dilution, and strategic value simultaneously
- Publishes treasury analysis that influences DAO governance decisions and industry best practices

### Assessment Questions

After completing Part V, you should be able to answer:

1. **Can you explain the Three-Bucket Model and why native tokens are excluded from the allocation?** (Beginner)
2. **Can you calculate an OTC sale price, capital raised, and dilution from a term sheet?** (Intermediate)
3. **Can you compare OTC sales, bonds, and convertible notes with specific trade-offs?** (Intermediate)
4. **Can you design a quarterly governance report template for a specific protocol type?** (Intermediate)
5. **Can you determine when emergency treasury authority applies and outline the required process?** (Intermediate)
6. **Can you design a complete 12-month treasury strategy with cash flow projections?** (Advanced)
7. **Can you structure a capital raise with multiple alternatives and a supported recommendation?** (Advanced)
8. **Can you advise on live institutional capital raise execution across multiple instrument types?** (Expert)

---

**End of Part V: Capital Raising for DAOs**

**Next:** [Part VI: Strategic Advisory](../part-6-strategic-advisory/README.md)
