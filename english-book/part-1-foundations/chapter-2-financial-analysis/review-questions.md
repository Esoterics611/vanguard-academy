# Review Questions — Chapter 2

Test your understanding of the financial analysis frameworks from Chapter 2. Try each question before expanding the guidance.

---

### Question 1

A DAO's treasury holds $50 million in stablecoins, $200 million in native tokens (at market price), and $30 million in ETH. Monthly operational expenses are $4 million.

Calculate the DAO's runway under:
- **(a)** Full liquidity assumption
- **(b)** Native tokens illiquid
- **(c)** Native tokens with a 60% liquidity discount

<details>
<summary>Reveal Full Solution</summary>

**Scenario A — Full Liquidity:**

`Liquid assets = $50M + $200M + $30M = $280M`
`Runway = $280M / $4M = 70 months (5.8 years)`

**Scenario B — Native Tokens Illiquid:**

`Liquid assets = $50M + $30M = $80M`
`Runway = $80M / $4M = 20 months (1.7 years)`

**Scenario C — 60% Liquidity Discount on Native Tokens:**

`Discounted native tokens = $200M × (1 - 0.60) = $80M`
`Liquid assets = $50M + $80M + $30M = $160M`
`Runway = $160M / $4M = 40 months (3.3 years)`

**Analytical takeaway:** The three scenarios span from 20 to 70 months — a massive range demonstrating why the treatment of native token holdings is critical. Scenario C (40 months) is likely the most realistic, placing the DAO in a healthy but not unlimited position.

</details>

---

### Question 2

Construct an income statement for a lending protocol given the following data:
- Active loans: $500M
- Average interest rate: 8%
- Protocol take rate: 15%
- Monthly contributor compensation: $2M
- Monthly grants: $500K
- Monthly infrastructure costs: $200K

Is the protocol self-sustaining?

<details>
<summary>Reveal Hint</summary>

Calculate revenue first:
`Gross interest → Protocol share → Annual revenue`

Then annualize expenses and compare.

</details>

<details>
<summary>Reveal Full Solution</summary>

**Revenue:**
- Gross interest: $500M × 8% = $40M
- Protocol revenue: $40M × 15% = **$6M per year**

**Expenses:**
- Contributor compensation: $2M × 12 = $24M
- Grants: $500K × 12 = $6M
- Infrastructure: $200K × 12 = $2.4M
- **Total: $32.4M per year**

**Operating Income: $6M - $32.4M = -$26.4M**

**The protocol is NOT self-sustaining.** It burns $26.4M annually and needs to fund this gap from its treasury.

To break even, the protocol would need ~$2.7B in active loans at current rates and take rate ($2.7B × 8% × 15% = $32.4M).

</details>

---

### Question 3

Explain why Total Value Locked (TVL) is an imperfect measure of protocol success. Provide at least four specific limitations and suggest superior metrics.

<details>
<summary>Reveal Answer Guidance</summary>

**Limitations:**
1. **Recursive inflation** — deposit-borrow-redeposit loops inflate TVL artificially
2. **Mercenary capital** — incentive-driven TVL leaves when rewards end
3. **Cross-protocol double-counting** — same dollar appears in multiple protocols
4. **Composition-blind** — doesn't distinguish between stablecoins and volatile assets
5. **Revenue-agnostic** — $10B TVL generating $0 in protocol revenue has no IB value

**Superior metrics:**
- **Protocol Revenue** (actual economic output)
- **Revenue / TVL** (capital efficiency)
- **Daily Active Users** (demand-side health)
- **Market Share** (competitive positioning)
- **Governance Participation** (community health)
- **Developer Activity** (innovation capacity)

The strongest analysis combines TVL with these metrics rather than discarding it entirely — TVL has informational value, just not on its own.

</details>

---

### Question 4

You are analyzing the balance sheet of a protocol DAO. The treasury contains:
- 500M native tokens (market price: $2 each = $1B notional)
- $20M in USDC
- $15M in ETH
- Vesting obligations: 100M tokens over 3 years
- Annual operating commitments: $10M

Construct a simplified balance sheet. Should you include the native tokens? At what discount?

<details>
<summary>Reveal Answer Guidance</summary>

**Present the balance sheet in two versions:**

**Version 1 — Including Native Tokens (65% liquidity discount)**

| Line Item | Amount |
|-----------|--------|
| Native tokens (500M × $2 × 35%) | $350M |
| USDC | $20M |
| ETH | $15M |
| **Total Assets** | **$385M** |
| Vesting obligations (100M × $2 × 35%) | $70M |
| Operating commitments (1 year) | $10M |
| **Total Liabilities** | **$80M** |
| **Net Position** | **$305M** |

**Version 2 — Excluding Native Tokens**

| Line Item | Amount |
|-----------|--------|
| USDC | $20M |
| ETH | $15M |
| **Total Assets** | **$35M** |
| Operating commitments (1 year) | $10M |
| **Total Liabilities** | **$10M** |
| **Net Position** | **$25M** |

The difference ($305M vs. $25M) is the treasury paradox. The 65% discount reflects the reality that selling a significant portion of the native token treasury would destroy its value. The exact discount depends on token liquidity depth, market conditions, and selling timeframe.

</details>

---

### Question 5

Describe the seven sections of a protocol deep dive and explain why each is essential for investment banking advisory.

<details>
<summary>Reveal Answer Guidance</summary>

1. **Protocol Overview** — Establishes what you're analyzing. Without understanding the core mechanism, no further analysis is meaningful.

2. **Smart Contract Architecture** — Reveals upgradeability risk, governance control surfaces, and technical debt. A protocol that can be upgraded by a 2-of-3 multi-sig has different risk than one governed by token voting with timelock.

3. **Tokenomics** — Determines who benefits economically, what dilution lies ahead, and how governance power is distributed. Central to valuation.

4. **Financial Analysis** — The quantitative core: revenue, expenses, runway, profitability. Without this, advisory is opinion, not analysis.

5. **Governance Analysis** — In DAO IB, the client is the governance process. Understanding how decisions are made, who participates, and what can go wrong is essential.

6. **Competitive Analysis** — Every strategic recommendation depends on understanding the competitive landscape. Is the moat growing or eroding?

7. **Risk Assessment** — No advisory is complete without honest risk identification. The banker who ignores risks fails their fiduciary duty.

**Why all seven are essential:** Each section can veto or transform the conclusions of the others. A protocol with excellent financials but critical smart contract vulnerabilities is not investable. A dominant market position means nothing if governance is captured.

</details>

---

### Question 6

You are a DAO investment banker asked to advise on a fee switch proposal. The protocol generates $300 million in annual fees for liquidity providers. A 10% fee switch would redirect $30 million annually to the DAO treasury. What analysis would you perform?

<details>
<summary>Reveal Answer Guidance</summary>

A comprehensive advisory would analyze:

**1. Competitive Impact**
- Model LP retention under 5%, 10%, 15%, 20% fee switch levels
- Assess the protocol's competitive moat (would LPs actually leave?)
- Compare to competitors' fee structures

**2. Revenue & Valuation Impact**
- Model treasury revenue under the fee switch
- Calculate implied P/E and P/S ratios vs. comparables
- Build a DCF incorporating the new revenue stream
- Quantify value creation for token holders vs. value transfer from LPs

**3. Regulatory Risk**
- Does revenue distribution strengthen the "security" classification argument?
- Howey test analysis in context of fee distribution
- Jurisdictional exposure assessment

**4. Strategic Timing**
- Is market share growing or declining?
- Competitive intensity trends?
- Better to implement during dominance or vulnerability?

**5. Implementation Design**
- Treasury allocation vs. direct distribution to holders (buyback/burn/staking)?
- Gradual phase-in vs. immediate?
- Governance safeguards for adjustment/reversion?

**6. Stakeholder Communication**
- How to present to governance community
- How to address LP concerns transparently
- Framing as long-term value creation vs. extraction

</details>
