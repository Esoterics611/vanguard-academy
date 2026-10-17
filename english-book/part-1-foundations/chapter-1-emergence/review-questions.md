# Review Questions — Chapter 1

Test your understanding of the core concepts from Chapter 1. Try to answer each question before expanding the guidance.

---

### Question 1

Explain the five primary categories of DAOs by economic function and describe how investment banking service needs differ across categories.

<details>
<summary>Reveal Answer Guidance</summary>

**The five categories are:**

1. **Protocol DAOs** (Uniswap, Aave, Lido) — Closest to traditional companies. IB services focus on valuation, M&A advisory, capital structure optimization, and treasury management. These are the primary focus of the handbook.

2. **Investment DAOs** (The LAO, MetaCartel Ventures) — Function like VC funds. IB needs center on fund structuring, portfolio valuation, and LP relations.

3. **Social DAOs** (FWB, Bankless DAO) — Community-driven organizations. Require advisory on membership economics, media monetization, and treasury management for community treasuries.

4. **Service DAOs** (Raid Guild, DXdao) — Professional services networks. Valuation challenges revolve around human capital, client relationships, and recurring revenue.

5. **Collector/Curator DAOs** (PleasrDAO, FlamingoDAO) — Digital asset investment vehicles. Need specialized frameworks for illiquid, non-fungible assets.

**Key differentiator:** Protocol DAOs have the most direct analogy to traditional corporate IB because they generate recurring revenue and have identifiable competitive moats. Other categories require more specialized frameworks.

</details>

---

### Question 2

A DAO's treasury holds $50 million in stablecoins, $200 million in native tokens (at market price), and $30 million in ETH. Monthly operational expenses are $4 million.

Calculate the DAO's runway under:
- **(a)** An assumption that native tokens can be liquidated at full market value
- **(b)** An assumption that native tokens are illiquid and cannot be sold

Discuss the analytical implications of the difference.

<details>
<summary>Reveal Hint</summary>

Use the runway formula from Section 2.1.3:

`Runway (months) = Liquid Treasury Assets / Monthly Net Operating Cash Outflow`

Consider which assets qualify as "liquid" under each scenario.

</details>

<details>
<summary>Reveal Full Solution</summary>

**Scenario A — Full Liquidity:**

Liquid assets = $50M (stablecoins) + $200M (native tokens) + $30M (ETH) = **$280M**

Runway = $280M / $4M = **70 months (5.8 years)**

**Scenario B — Native Tokens Illiquid:**

Liquid assets = $50M (stablecoins) + $30M (ETH) = **$80M**

Runway = $80M / $4M = **20 months (1.7 years)**

**Analytical Implications:**

The 50-month difference (4+ years!) demonstrates the **"treasury paradox"** — the DAO is simultaneously wealthy on paper and potentially cash-constrained in practice.

In reality, the truth lies between the two extremes. Native tokens *can* be sold, but:
- Large sales create significant price impact (depressing the value of remaining holdings)
- Market conditions during the selling period are unpredictable
- Selling native tokens sends a negative signal to the market

A sophisticated analysis would apply a **liquidity discount** (typically 30-70%) to the native token holdings based on token liquidity depth, and model the runway under multiple scenarios.

This is precisely why DAO treasury management advisory is a core IB function.

</details>

---

### Question 3

Describe three ways in which fiduciary duty operates differently for a DAO investment banker compared to a traditional investment banker advising a publicly-traded corporation.

<details>
<summary>Reveal Answer Guidance</summary>

**Three key differences:**

1. **The beneficiary is broader.** Traditional IB fiduciary duty runs to the corporation (represented by its board). DAO fiduciary duty runs to the protocol and its entire community — token holders, users, contributors, and ecosystem partners. There is no board to serve as a proxy for community interests.

2. **Stakeholder conflicts are more visible and direct.** In a corporation, the board mediates between management and shareholders. In a DAO, conflicts between token holders (who want price appreciation), users (who want low fees), and contributors (who want stable pay) play out in public governance forums. The banker must present transparent trade-off analysis rather than privately advising one constituency.

3. **Enforcement is reputation-based rather than legal.** Traditional fiduciary breaches can result in regulatory sanctions, civil liability, and criminal prosecution. DAO enforcement mechanisms are still developing — reputation (on-chain track record, public analysis quality) is the primary accountability mechanism. This makes *building and maintaining professional reputation* even more critical in DAO IB than in traditional finance.

**Strong answers will also note:** the transparency paradox — on-chain transparency makes conflicts of interest more visible but doesn't eliminate them, and may actually make it harder for advisors to take contrarian positions.

</details>

---

### Question 4

You are constructing an income statement for a lending protocol. The protocol facilitates $500 million in active loans with an average interest rate of 8%. The protocol retains 15% of interest collected as protocol revenue. Calculate annual protocol revenue. If the DAO spends $3 million per month on operations, is the protocol self-sustaining?

<details>
<summary>Reveal Hint</summary>

Break this into two steps:
1. Calculate total interest generated → then protocol's share
2. Compare annual revenue to annual expenses

</details>

<details>
<summary>Reveal Full Solution</summary>

**Step 1: Calculate gross interest**

$500M in loans × 8% interest rate = **$40M in annual interest generated**

**Step 2: Calculate protocol revenue**

$40M × 15% protocol take rate = **$6M in annual protocol revenue**

**Step 3: Calculate annual expenses**

$3M/month × 12 months = **$36M in annual operational expenses**

**Step 4: Assess sustainability**

Revenue: $6M
Expenses: $36M
**Net: -$30M per year**

**The protocol is NOT self-sustaining.** It runs at a significant operating loss and must fund the $30M annual deficit from its treasury.

If the treasury holds $100M in liquid assets, runway = $100M / $2.5M monthly deficit = 40 months.

**To become self-sustaining, the protocol would need to:**
- Increase active loans to ~$3B (6x growth) at current rates, OR
- Increase the protocol take rate from 15% to ~90% (likely uncompetitive), OR
- Dramatically reduce operating expenses, OR
- Some combination of the above

This type of analysis is exactly what a DAO investment banker would present in a strategic advisory engagement.

</details>

---

### Question 5

Explain why Total Value Locked (TVL) is an imperfect measure of protocol success. What supplementary metrics would you use to assess a DeFi lending protocol's true economic health?

<details>
<summary>Reveal Answer Guidance</summary>

**TVL limitations:**

1. **Inflatable via recursive strategies** — Users can deposit, borrow against deposits, redeposit, and repeat, artificially inflating TVL
2. **Incentive-driven, not organic** — TVL attracted by token incentives leaves when rewards end ("mercenary capital")
3. **Cross-protocol double-counting** — The same dollar deposited in Protocol A, then used as collateral in Protocol B, appears in both TVLs
4. **Composition matters** — $1B in stablecoins vs. $1B in volatile altcoins represent very different risk and utility profiles
5. **Says nothing about revenue** — High TVL with zero fees generates no value for token holders

**Supplementary metrics for a lending protocol:**

- **Protocol Revenue** (net fees accruing to treasury/token holders)
- **Revenue per TVL** (capital efficiency — how much revenue per dollar locked)
- **Utilization Rate** (what % of deposited capital is actively being borrowed)
- **Daily Active Users / Unique Borrowers** (demand-side health)
- **Bad Debt / Liquidation Efficiency** (risk management quality)
- **Market Share** (% of total lending market by volume or TVL)
- **Governance Participation Rate** (community engagement health)
- **Developer Activity** (GitHub commits, feature velocity)

**Strong answers will emphasize** that no single metric tells the full story — the protocol deep dive framework (Section 2.4) integrates multiple dimensions.

</details>

---

### Question 6

You are a DAO investment banker asked to advise on a fee switch proposal. The protocol generates $300 million in annual fees for service providers (liquidity providers). A 10% fee switch would redirect $30 million annually to the DAO treasury. What analysis would you perform?

<details>
<summary>Reveal Answer Guidance</summary>

**A comprehensive advisory would analyze:**

**1. Competitive Impact**
- Would a fee switch drive liquidity to competing protocols?
- How price-sensitive are LPs? Model LP retention under various fee switch levels (5%, 10%, 15%, 20%)
- What is the protocol's competitive moat (network effects, integrations, brand) that would retain LPs despite lower returns?

**2. Revenue and Valuation Impact**
- Model treasury revenue under the fee switch
- Calculate resulting P/E and P/S ratios vs. comparable protocols
- Estimate token price impact using DCF with the new revenue stream
- Compare "value created for token holders" vs. "value transferred from LPs"

**3. Regulatory Risk**
- Does distributing protocol revenue to token holders strengthen the argument that the token is a security?
- Review SEC guidance on the Howey test in this context
- Assess jurisdictional exposure and legal structuring options

**4. Strategic Timing**
- Is the protocol's market share growing or declining?
- Is competitive intensity increasing (new entrants, aggregator dominance)?
- Would the fee switch be better implemented during a period of dominance or vulnerability?

**5. Implementation Design**
- Should the fee go to the treasury (for operational use) or directly to token holders (via buyback/burn or staking rewards)?
- Should the fee switch be gradual (phased in) or immediate?
- What governance safeguards allow adjusting or reverting the switch?

**6. Stakeholder Communication**
- How to present the analysis to the governance community
- How to address LP concerns transparently
- How to frame the decision as a long-term value creation move vs. short-term extraction

This is the Uniswap "fee switch" scenario described in Section 2.1.3 — one of the most consequential corporate finance decisions in DeFi history.

</details>
