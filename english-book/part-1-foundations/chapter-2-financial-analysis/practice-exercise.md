# Practice Exercise 1.1: Protocol Deep Dive

{% hint style="info" %}
**Exercise Overview**

| Attribute | Detail |
|-----------|--------|
| Type | Individual research project |
| Estimated Time | 8-12 hours |
| Deliverable | Written analysis (15+ pages) |
| Data Sources | Dune Analytics, DefiLlama, Token Terminal, governance forums, GitHub |
{% endhint %}

---

## Assignment

Select **one** of the following protocols and prepare a complete protocol deep dive using the 7-section template from [Section 2.4](2.4-protocol-deep-dive.md):

{% tabs %}
{% tab title="Aave" %}
**Category:** Lending Protocol

**Why this choice:** Aave is one of the largest and most established DeFi lending protocols. It has rich on-chain data, active governance, and complex tokenomics (including the Safety Module). Excellent for demonstrating income statement construction and competitive analysis against Compound and newer lending protocols.
{% endtab %}

{% tab title="Compound" %}
**Category:** Lending Protocol

**Why this choice:** Compound pioneered the lending protocol model and the governance token distribution concept. Interesting for its trajectory — once dominant, now facing competitive pressure. Good for analyzing market share trends and governance evolution.
{% endtab %}

{% tab title="Curve Finance" %}
**Category:** DEX (Stablecoin-focused)

**Why this choice:** Curve has one of the most complex tokenomics systems in DeFi (veCRV, gauge weights, bribing). Excellent for demonstrating advanced tokenomics analysis and governance mechanism design. The "Curve Wars" provide rich material for competitive analysis.
{% endtab %}

{% tab title="GMX" %}
**Category:** Perpetual DEX

**Why this choice:** GMX represents the newer generation of DeFi protocols with a different fee distribution model (directly to stakers). Good for analyzing novel revenue sharing mechanisms and comparing DEX subtypes (spot vs. perpetual).
{% endtab %}
{% endtabs %}

---

## Requirements

Your analysis should follow the 7-section template and include:

### Section 1: Protocol Overview
- Clear description of core functionality and economic mechanism
- Founding history and team assessment
- Current development stage and roadmap

### Section 2: Smart Contract Architecture
- High-level architecture diagram or description
- Key contracts identified with their functions
- Upgradeability assessment
- Audit history summary

### Section 3: Tokenomics
- Complete supply schedule with vesting timeline
- Token utility breakdown
- Holder distribution analysis (top holders, Gini estimate)
- Price history with key events annotated

### Section 4: Financial Analysis
- **Constructed income statement** (trailing twelve months)
- **Balance sheet** with treasury composition (with and without native token holdings)
- **Cash flow analysis** with runway calculation
- Key financial metrics with trend data

### Section 5: Governance Analysis
- Governance mechanism description
- Participation rate data
- Summary of 3-5 key governance decisions and outcomes
- Governance risk assessment

### Section 6: Competitive Analysis
- Market definition and sizing
- Competitor comparison table (at least 3 competitors)
- Market share data with trend
- Competitive moat assessment

### Section 7: Risk Assessment
- At least one risk identified in each category (smart contract, regulatory, market, governance, operational)
- Qualitative severity and likelihood assessment for each

---

## Evaluation Criteria

<details>
<summary>What makes a strong submission?</summary>

**Data rigor:** Claims are backed by specific on-chain data, not generalizations. Revenue figures come from Dune or DefiLlama queries you can reference. Treasury composition is verified against actual wallet addresses.

**Analytical depth:** The financial statements are constructed, not copied from a dashboard. The competitive analysis goes beyond listing competitors to assess competitive dynamics and positioning.

**Professional quality:** The analysis reads like a professional investment banking memo — clear structure, precise language, transparent methodology, honest about limitations and unknowns.

**Original insight:** The best submissions identify something non-obvious — a governance risk others have missed, a revenue trend that changes the valuation thesis, a competitive dynamic that isn't captured in market share data alone.

</details>

<details>
<summary>Common pitfalls to avoid</summary>

- Reporting TVL without discussing its limitations
- Using gross protocol revenue instead of net when calculating valuations
- Ignoring token-based compensation as a real expense
- Treating the governance forum as ground truth without cross-referencing on-chain data
- Writing promotional copy instead of objective analysis
- Failing to quantify — every financial claim should have a number behind it

</details>

---

{% hint style="success" %}
**Key Point**: This exercise establishes the foundational analytical skills applied throughout the remainder of this handbook. If you cannot construct a comprehensive protocol deep dive, the valuation, M&A, and advisory work in later Parts will be built on shaky ground. Take this exercise seriously.
{% endhint %}

---

**Next:** [Review Questions — Chapter 2](review-questions.md)
