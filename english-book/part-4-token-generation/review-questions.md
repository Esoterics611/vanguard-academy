# Review Questions and Practice Exercises

## Review Questions — Part IV: Token Generation Events

### Question 1: TGE Readiness Assessment

**You are advising a DeFi lending protocol on TGE timing. The protocol has $200 million in TVL, $10 million in annualized revenue, a completed audit from one reputable firm, and an active community of 8,000 Discord members. Apply the TGE Readiness Checklist and identify any areas where the protocol may not be ready. What steps would you recommend before proceeding?**

**Expected answer:**

| Dimension | Status | Assessment |
|-----------|--------|------------|
| **Product-Market Fit** | Likely ready | $200M TVL and $10M revenue demonstrate real usage and organic demand |
| **Technical Maturity** | Needs work | Only one audit — industry standard is 2-3 from different firms; no mention of formal verification or bug bounty program |
| **Team Stability** | Insufficient data | No information provided on contributor tenure or retention |
| **Legal Preparedness** | Insufficient data | No mention of legal counsel, entity structure, or regulatory analysis |
| **Community Engagement** | Borderline | 8,000 Discord members is moderate; need to assess governance forum activity, contributor pipeline, and engagement quality (not just count) |
| **Treasury Runway** | Insufficient data | No information on existing treasury or post-TGE operating budget |

**Recommendations before proceeding:**
1. Commission a second smart contract audit from a different top-tier firm
2. Establish a bug bounty program with meaningful rewards ($500K+)
3. Engage qualified legal counsel in relevant jurisdictions for securities analysis
4. Assess team stability — ensure key contributors have 2+ year vesting commitments
5. Build governance infrastructure — launch governance forum, conduct test votes
6. Model post-TGE treasury runway to ensure 18-24 months of operating expenses
7. Consider formal verification for critical lending and liquidation logic

---

### Question 2: Token Allocation Design

**Design a complete token allocation for a new DEX protocol. Total supply is 1 billion tokens. The protocol has raised $20 million in a seed round ($50M FDV) and $40 million in a Series A ($200M FDV). The team consists of 15 core contributors. Justify each allocation percentage with reference to industry benchmarks.**

**Expected answer:**

| Category | Allocation | Tokens | Vesting | Justification |
|----------|-----------|--------|---------|---------------|
| **Community & Ecosystem** | 35% | 350M | 4-year emission schedule, front-loaded Year 1 | Industry benchmark: 25-40%; largest allocation to ensure broad distribution |
| **Core Team** | 18% | 180M | 1-year cliff + 3-year linear vest | Industry benchmark: 15-25%; 12M tokens per contributor, competitive retention |
| **Seed Investors** | 10% | 100M | 1-year cliff + 2-year linear vest | $20M at $50M FDV = 40% of supply at FDV pricing; actual allocation 10% reflects standard discount |
| **Series A Investors** | 15% | 150M | 6-month cliff + 18-month linear vest | $40M at $200M FDV = 20% of supply at FDV pricing; actual allocation 15% |
| **Treasury** | 15% | 150M | Governance-controlled, no automatic vesting | Operations, grants, future hires, strategic partnerships |
| **Airdrop** | 7% | 70M | Immediate distribution at TGE | Reward early users and bootstrap governance participation |

**Key design choices to justify:**
- Team vesting (4-year total) aligns with industry standard and signals long-term commitment
- Investor vesting shorter than team (demonstrates team's longer-term alignment)
- Community allocation is the single largest category
- Treasury controlled by governance, not team multi-sig
- Initial circulating supply at TGE: ~10-15% (airdrop + partial ecosystem emissions)

**Verification checks:**
```
Total: 35% + 18% + 10% + 15% + 15% + 7% = 100%
Initial float (TGE): ~7% airdrop + ~3% ecosystem = ~10%
Year 1 insider unlock: 0% (all cliffs > 6 months)
```

---

### Question 3: Value Accrual Mechanism Comparison

**Compare the value accrual properties of fee distribution, buyback-and-burn, and vote-escrow mechanisms. For each mechanism, describe the conditions under which it would be the optimal choice and a real-world protocol that implements it effectively.**

**Expected answer:**

| Mechanism | How Value Accrues | Optimal Conditions | Real-World Example |
|-----------|------------------|-------------------|-------------------|
| **Fee Distribution** | Direct yield to stakers/holders from protocol revenue | Sustainable, predictable revenue; mature protocol with established cash flows | Aave Safety Module — AAVE stakers receive rewards funded by protocol revenue while providing economic security |
| **Buyback-and-Burn** | Supply reduction increases value per remaining token | Variable revenue (burn scales automatically); desire to benefit all holders equally (not just stakers) | MakerDAO Surplus Buffer — DAI surplus buys and burns MKR through on-chain auctions |
| **Vote-Escrow (ve)** | Lock-up reduces circulating supply; locked holders receive boosted yields and governance power | Need to incentivize long-term commitment; competitive dynamics where governance power has tangible value (e.g., directing emissions) | Curve Finance — veCRV holders direct CRV emissions to liquidity pools, creating the "Curve Wars" competitive dynamic |

**Deeper analysis:**

- **Fee distribution** is cleanest when revenue is stable and sufficient to provide meaningful yield (APR > risk-free rate). Tax clarity is better when distributed in stablecoins/ETH. Weakness: requires staking, creating a two-tier holder base.

- **Buyback-burn** is fairest (all holders benefit equally) and simplest. Works well with variable revenue since burns scale naturally. Weakness: no governance engagement incentive; value accrual is indirect.

- **Ve-model** is most powerful for governance engagement but most complex. Creates deep moats through competitive locking dynamics. Weakness: the liquid wrapper problem (Convex) undermines lock-up commitment. No design has been fully wrapper-resistant.

---

### Question 4: Airdrop Design with Sybil Defense

**You are designing an airdrop for a protocol with 50,000 unique users. The Sybil analysis identifies 12,000 likely Sybil wallets. Design the eligibility criteria, distribution formula, and anti-Sybil measures. Calculate the expected Gini coefficient of the airdrop distribution and discuss whether it is appropriately balanced.**

**Expected answer:**

**Step 1 — Eligibility criteria:**

| Criterion | Threshold | Weight |
|-----------|----------|--------|
| Transaction count | Minimum 5 transactions | Binary gate (pass/fail) |
| Activity duration | Active in 3+ distinct months | Binary gate |
| Volume transacted | Tiered: $1K-$10K (1x), $10K-$100K (2x), $100K+ (3x) | Weighted multiplier |
| Governance participation | Voted on 1+ proposal | 1.5x bonus multiplier |
| Early user bonus | First 6 months of protocol existence | 1.25x bonus multiplier |

**Step 2 — Sybil defense:**
- Remove 12,000 identified Sybil wallets (cluster analysis, shared funding sources)
- Remaining eligible: ~38,000 wallets (50,000 - 12,000)
- Apply minimum activity thresholds to filter an additional ~8,000 low-activity wallets
- Final eligible set: ~30,000 wallets

**Step 3 — Distribution formula:**
```
Base allocation = Total airdrop pool / Number of eligible wallets
Individual allocation = Base × Volume multiplier × Governance bonus × Early bonus
Cap: Maximum 0.1% of airdrop pool per wallet (prevents whale concentration)
Floor: Minimum allocation must exceed gas costs by 10x
```

**Step 4 — Gini coefficient analysis:**
- With volume-weighted tiers (1x/2x/3x) and a hard cap, expect Gini ~0.40-0.50
- Target: 0.40-0.55 (below 0.40 may be too flat to reward genuine power users; above 0.55 concentrates too much in few wallets)
- Compare to benchmarks: Uniswap UNI airdrop Gini ~0.35 (very flat), Optimism OP ~0.50 (moderately concentrated)

**Discussion:** A Gini of ~0.45 represents a reasonable balance — genuine heavy users receive meaningfully more, but the distribution is broad enough to create a diverse governance base.

---

### Question 5: Market Maker Agreement Evaluation

**A market maker proposes the following terms: 3% of total supply token loan for 24 months, with a call option at 50% of estimated TGE price. Evaluate whether these terms are favorable, neutral, or unfavorable for the protocol. What counterterms would you propose?**

**Expected answer:**

**Evaluation:**

| Term | Assessment | Reasoning |
|------|-----------|-----------|
| **3% token loan** | Borderline high | Standard range is 2-5%; 3% is within range but on the higher side for protocols that don't require extraordinary liquidity depth |
| **24-month duration** | Standard | Within the 12-24 month range; acceptable |
| **Call option at 50% of TGE price** | Unfavorable (red flag) | Strike significantly below expected market value — this is a major red flag identified in Section 14.1. The market maker extracts value through the option rather than through genuine market making |

**Overall assessment: Unfavorable.** The call option at 50% of TGE price is the critical problem. If the token appreciates (the expected scenario for a successful launch), the market maker can exercise the option and receive tokens at half the launch price — effectively receiving a massive hidden discount. This makes the market maker's real compensation far exceed what appears on the surface.

**Proposed counterterms:**

| Term | Counterproposal | Rationale |
|------|-----------------|-----------|
| **Loan size** | 2% of supply | Sufficient for liquidity on 2-3 exchanges with concentrated positions |
| **Duration** | 12 months with mutual renewal option | Shorter initial commitment; renewal demonstrates mutual satisfaction |
| **Call option** | Strike at 110% of TGE price (at-the-money or above) | Option only has value if market maker helps create genuine price appreciation |
| **Performance requirements** | Maximum 1.5% spread, minimum $100K depth on each side, 95% uptime | Ensures actual liquidity provision, not just token hoarding |
| **Reporting** | Weekly inventory reports, monthly performance dashboards | Transparency obligation |
| **Clawback** | Return mechanism if performance thresholds not met for 30 consecutive days | Protects against non-performance |

---

### Question 6: Howey Test Analysis

**Analyze the securities classification risk under the Howey Test for a governance token with the following characteristics: (a) distributed via airdrop to past users with no purchase price, (b) confers voting rights over protocol parameters, (c) includes a fee distribution mechanism sharing 20% of protocol revenue with token holders, and (d) the protocol development is managed by a foundation with 15 employees. Which Howey prongs are satisfied? What modifications would reduce classification risk?**

**Expected answer:**

| Howey Prong | Analysis | Risk Level |
|-------------|----------|-----------|
| **1. Investment of money** | Airdrop recipients paid no capital — weakest prong. However, secondary market purchasers did invest money. Mixed analysis. | **Moderate** — weak for airdrop recipients, strong for secondary buyers |
| **2. Common enterprise** | Token value correlates with protocol performance; all holders share in the same revenue pool. This prong is likely satisfied. | **High** — clearly a common enterprise |
| **3. Expectation of profits** | **Critical issue.** The 20% fee distribution creates a direct expectation of financial returns. This is the strongest indicator of security classification. | **Very High** — fee distribution creates clear profit expectation |
| **4. Efforts of others** | A foundation with 15 employees managing development strongly suggests success depends on the efforts of an identifiable team. | **High** — concentrated development team |

**Overall risk: HIGH.** Prongs 2, 3, and 4 are likely satisfied. Prong 1 is mixed but courts may find it satisfied for secondary market purchasers.

**Modifications to reduce classification risk:**

1. **Fee distribution (Prong 3 mitigation):** Replace passive fee distribution with a mechanism requiring active governance participation to receive rewards. Alternatively, redirect all revenue to treasury (governed by token holders) rather than distributing directly — this reframes the economic right as governance over a collective resource rather than passive income.

2. **Foundation staffing (Prong 4 mitigation):** Establish a credible decentralization roadmap — transition development authority from the foundation to independent contributor teams. Set a target date for foundation dissolution or transition to a pure grant-making body.

3. **Governance utility emphasis:** Ensure the token's primary marketed utility is governance, not financial return. All communications should emphasize voting rights and protocol stewardship.

4. **Progressive decentralization:** Reduce foundation control over time with measurable milestones (e.g., foundation holds < 10% of voting power within 2 years).

5. **Legal counsel:** Engage securities counsel in the U.S. and all target jurisdictions before implementation. The investment banker should identify these risks but defer to qualified legal professionals for definitive classification.

---

## Practice Exercise 12.1: Complete Tokenomics Design

**Design the complete tokenomics for a new liquid staking protocol that has been operating for 12 months with $500 million in TVL and $15 million in annualized revenue.**

Your design should include:

1. **Total supply and emission schedule** — fixed, inflationary, or dynamic model with justification
2. **Complete allocation** with vesting schedules for each category (team, investors, community, treasury, airdrop)
3. **Value accrual mechanism design** — select and design one or more mechanisms with specific parameters and economic analysis
4. **Governance token design** — voting model, delegation, quorum, timelock, and emergency mechanisms
5. **5-year token supply model** — monthly circulating supply projections under base, bull, and bear scenarios
6. **Market making strategy** — recommended model (loan vs. retainer), proposed terms, and DEX liquidity sizing

**Present your tokenomics as a "Tokenomics Paper" suitable for publication to the protocol's community.**

**Deliverable format:**
- Executive summary (1 page)
- Supply and allocation tables with visual charts
- Value accrual mechanism specification
- Governance parameter table
- 5-year supply projection chart (3 scenarios)
- Market making term sheet
- Risk analysis section

{% hint style="info" %}
**Evaluation Criteria**

Your tokenomics paper will be assessed on: internal consistency (do the numbers add up?), alignment with industry benchmarks, protection against known attack vectors (governance attacks, mercenary capital, cliff dump events), and clarity of presentation.
{% endhint %}

---

## Practice Exercise 13.1: TGE Execution Plan

**You are the lead investment banker on a TGE for a cross-chain bridge protocol. The protocol has raised $30 million from investors at a $150 million FDV and expects to launch with a $400 million FDV.**

Design the complete TGE execution plan including:

1. **Airdrop design** — eligibility criteria (considering bridge-specific user behavior), distribution formula, Sybil defense measures, and expected Gini coefficient
2. **Private sale terms** for a final pre-TGE round — pricing, allocation, vesting, investor selection criteria
3. **Market maker selection** — evaluation criteria, proposed agreement terms (loan model vs. retainer), and red flags to watch for
4. **Exchange listing strategy** — which exchanges (Tier 1 and Tier 2), in what order, with what timeline relative to TGE
5. **Launch day coordination timeline** — T-72h through T+1 week detailed playbook
6. **Regulatory risk mitigation** — Howey test analysis for this specific token, geographic restrictions, and structural recommendations

**Present your work as a "TGE Execution Plan" suitable for presentation to the protocol's governance council.**

**Deliverable format:**
- TGE readiness assessment summary
- Airdrop specification with eligibility table and distribution formula
- Private sale term sheet
- Market maker comparison matrix and proposed terms
- Exchange listing timeline (Gantt-style)
- Launch day coordination table (T-72h to T+1w)
- Regulatory risk matrix with mitigation strategies

{% hint style="warning" %}
**Bridge-Specific Considerations**

Cross-chain bridges have unique characteristics that affect TGE design: user behavior is transactional (bridge and leave), Sybil farming is particularly prevalent, and security risk is elevated (bridges have been the largest exploit targets in DeFi history). Your design should address these specific challenges.
{% endhint %}

---

## Self-Assessment Rubric

### Mastery Level Indicators

**Beginner (1-2):**
- Can explain the purpose of a TGE and its key workstreams
- Understands basic token allocation categories and vesting concepts
- Knows the Howey test prongs at a high level

**Intermediate (3-4):**
- Designs token allocations within industry benchmark ranges
- Compares value accrual mechanisms with trade-offs
- Evaluates market maker proposals and identifies red flags
- Applies the Howey test to specific token designs
- Calculates basic airdrop distributions

**Advanced (5-6):**
- Designs complete tokenomics with internally consistent parameters
- Constructs 5-year supply models under multiple scenarios
- Designs airdrop programs with Sybil defense and Gini analysis
- Negotiates market maker terms protecting protocol interests
- Coordinates multi-venue launch execution plans
- Navigates international regulatory considerations

**Expert (7-8):**
- Advises protocols on live TGE execution
- Designs novel value accrual mechanisms addressing known limitations
- Conducts agent-based simulations to stress-test tokenomics
- Structures TGEs that minimize regulatory risk across multiple jurisdictions
- Publishes tokenomics analysis that influences protocol design decisions

### Assessment Questions

After completing Part IV, you should be able to answer:

1. **Can you explain the six TGE advisory workstreams?** (Beginner)
2. **Can you design a token allocation within benchmark ranges?** (Intermediate)
3. **Can you evaluate a market maker proposal for red flags?** (Intermediate)
4. **Can you analyze a token under the Howey test?** (Intermediate)
5. **Can you design a complete airdrop with Sybil defense?** (Advanced)
6. **Can you build a multi-year token supply model?** (Advanced)
7. **Can you coordinate a multi-venue TGE launch?** (Advanced)
8. **Can you advise on live TGE execution across jurisdictions?** (Expert)

---

**End of Part IV: Token Generation Events**

**Next:** [Part V: Capital Raising for DAOs](../part-5-capital-raising/README.md)
