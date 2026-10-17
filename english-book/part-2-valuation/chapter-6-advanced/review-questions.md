# Review Questions and Practice Exercises

## Review Questions — Part II: Valuation

### Question 1: Four Layers of Protocol Value

**Explain the four layers of protocol value. For each layer, identify which valuation methodology is best suited to capture it, and give an example of a protocol where that layer represents a significant portion of total value.**

**Expected answer structure:**
- Layer 1: Cash flow value → DCF methodology → Example protocol
- Layer 2: Governance/strategic value → Real options, precedent transactions → Example protocol
- Layer 3: Network/ecosystem value → Network models (Metcalfe's Law, NVT) → Example protocol
- Layer 4: Optionality value → Real options analysis → Example protocol

**Evaluation criteria:**
- Understanding of distinct value layers
- Appropriate methodology matching
- Relevant protocol examples
- Explanation of why each layer dominates for chosen protocols

---

### Question 2: DEX Protocol Valuation

**You are valuing a DEX protocol that generates $40 million in annualized revenue, has a treasury with $25 million in stablecoins and $100 million in native tokens, and has 50 million tokens outstanding. The comparable peer group trades at 15-25x revenue.**

**Calculate:**
a) The implied valuation range
b) Per-token valuation
c) Explain what qualitative factors would push you toward the high or low end of the range

**Solution framework:**
```
Low estimate: $40M × 15 = $600M
High estimate: $40M × 25 = $1,000M

Add liquid treasury (exclude native tokens):
Low: $600M + $25M = $625M
High: $1,000M + $25M = $1,025M

Per-token valuation:
Low: $625M / 50M = $12.50
High: $1,025M / 50M = $20.50
```

**Qualitative factors:**
- High end: Strong growth, competitive moats, capital efficiency, multi-chain presence
- Low end: Competitive threats, declining market share, execution risk, regulatory concerns

---

### Question 3: Lending Protocol DCF Model

**Build a simplified DCF model for a lending protocol with the following assumptions:**
- Year 1 revenue: $100M
- Revenue growth: 25% annually for 5 years
- Operating expenses: Start at $30M, grow at 15% annually
- Cost of equity: 30%
- Terminal growth rate: 3%
- Tokens outstanding: 200 million

**Calculate:**
a) Protocol Free Cash Flow for each year
b) Present value of projected cash flows
c) Terminal value
d) Enterprise value
e) Per-token intrinsic value

**Solution approach:**

**Year-by-year cash flows:**
| Year | Revenue | Expenses | PFCF | Discount Factor | PV |
|------|---------|----------|------|----------------|-----|
| 1 | $100M | $30M | $70M | 0.769 | $53.8M |
| 2 | $125M | $34.5M | $90.5M | 0.592 | $53.6M |
| 3 | $156M | $39.7M | $116.3M | 0.455 | $52.9M |
| 4 | $195M | $45.7M | $149.3M | 0.350 | $52.3M |
| 5 | $244M | $52.5M | $191.5M | 0.269 | $51.5M |

**PV of projected cash flows:** $264.1M

**Terminal value:**
```
TV = PFCF₅ × (1 + g) / (r - g)
   = $191.5M × 1.03 / (0.30 - 0.03)
   = $197.2M / 0.27
   = $730.4M

PV(TV) = $730.4M × 0.269 = $196.5M
```

**Enterprise value:** $264.1M + $196.5M = **$460.6M**

**Per-token value:** $460.6M / 200M = **$2.30**

---

### Question 4: Token Velocity Problem

**Explain the token velocity problem and describe three token design mechanisms that reduce velocity and support valuation. For each mechanism, identify a real protocol that implements it.**

**Expected answer:**

**The problem:**
From MV = PQ, token market cap M = PQ/V. Higher velocity V reduces required market cap for given economic activity PQ.

**Three mechanisms:**

1. **Staking requirements**
   - Locks tokens to participate in consensus or governance
   - Example: Ethereum (ETH staking)
   - Effect: Reduces circulating supply, lowers velocity

2. **Vote-escrow (ve) tokenomics**
   - Lock tokens for extended periods (up to 4 years) to gain voting power
   - Example: Curve (veCRV)
   - Effect: Dramatically reduces velocity (can approach 0.25-0.5)

3. **Utility requirements + yield**
   - Must hold tokens to access services; tokens earn yield when held
   - Example: GMX (esGMX vesting, fee distribution)
   - Effect: Incentivizes long-term holding, reduces velocity

---

### Question 5: Incentive-Adjusted Revenue

**A protocol has $200 million in annualized revenue driven by a token incentive program that distributes $250 million in tokens annually.**

**Calculate:**
a) The incentive-adjusted revenue
b) Would you invest in this protocol based on its current economics?
c) What conditions would need to change for the protocol to be sustainably valuable?

**Solution:**

**a) Incentive-adjusted revenue:**
```
Incentive-Adjusted Revenue = Gross Revenue - Token Incentives
                          = $200M - $250M
                          = -$50M
```

**b) Investment decision:**
**No, do not invest.** Protocol is paying users $250M to generate $200M in revenue—it loses $50M annually. This is unsustainable.

**c) Conditions for sustainability:**
1. **Reduce incentives to below revenue** → Achieve positive incentive-adjusted revenue
2. **Grow organic usage** → Prove activity persists without incentives
3. **Path to profitability** → Clear plan to eliminate incentive dependency
4. **Reasonable user retention** → Evidence that >30-40% of users remain post-incentives
5. **Strategic rationale** → If burning capital for growth, must show path to market dominance

**Benchmark:** Protocol needs to reach at least break-even incentive-adjusted revenue (ideally +$50M positive) before being investable.

---

### Question 6: Fee Switch Real Options Analysis

**You are advising a DAO on whether to activate its fee switch. The protocol generates $300 million in annual gross fees to service providers. A 10% fee switch would redirect $30 million to the treasury.**

**Using real options analysis, estimate the value of the fee switch option given the following assumptions:**
- 60% probability of activation within 2 years
- 20% probability of negative competitive impact reducing volume by 25%
- Protocol trades at 20x revenue

**Calculate:**
a) Expected value of fee revenue if switch activated
b) Expected cost of competitive impact
c) Net expected value of the option
d) Compare option value to cost of potential volume loss

**Solution:**

**a) Expected fee revenue:**
```
Annual protocol revenue = $300M × 10% = $30M
Valuation at 20x = $30M × 20 = $600M
Probability-adjusted value = $600M × 60% = $360M
```

**b) Expected cost of competitive impact:**
```
Volume reduction scenario:
- 25% volume loss → 25% revenue loss
- Lost revenue: $30M × 25% = $7.5M annually
- Lost value: $7.5M × 20x = $150M
- Probability-adjusted: $150M × 20% = $30M
```

**c) Net expected value:**
```
Net EV = Expected benefit - Expected cost
       = $360M - $30M
       = $330M
```

**d) Comparison to volume loss risk:**
```
Full downside if volume collapse: $150M (20% probability)
Expected upside: $600M (60% probability)

Risk-adjusted payoff: ($600M × 0.6) - ($150M × 0.2) = $360M - $30M = $330M
```

**Recommendation:** **Activate fee switch.** Expected value is strongly positive ($330M), and even in downside scenario (20% probability), the loss ($150M) is smaller than the upside in success scenario ($600M).

---

## Practice Exercise 4.1: Complete Protocol DCF

**Select one of the following protocols and build a complete 5-year DCF model using real on-chain data:**
- Compound
- Curve Finance
- GMX
- Lido Finance

**Your model should include:**

a) **Historical revenue analysis** (trailing 12 months minimum)
   - Source: Token Terminal, DefiLlama, protocol dashboards
   - Document revenue sources and methodology

b) **Revenue projection** with clearly stated assumptions
   - Growth drivers
   - Market share assumptions
   - Competitive dynamics
   - Macro environment

c) **Operating expense projection**
   - Contributor costs
   - Infrastructure
   - Development CapEx
   - Grant programs

d) **Protocol Free Cash Flow calculation**
   - PFCF = Revenue - Expenses - CapEx - Treasury Reserve

e) **Discount rate selection with justification**
   - Cost of equity: 25-40% range
   - Protocol-specific risk factors
   - Comparable protocols for reference

f) **Terminal value estimation** using both methods
   - Perpetuity growth method (1-3% terminal growth)
   - Exit multiple method (15-25x revenue)
   - Compare and explain preference

g) **Sensitivity analysis** across discount rates and growth assumptions
   - Discount rate: ±5pp
   - Terminal growth: ±1pp
   - Revenue CAGR: ±10pp

h) **Per-token value calculation** with dilution adjustment
   - Current circulating supply
   - Future dilution from unlocks
   - Weighted average shares

i) **Comparison to current market price** with a buy/sell/hold recommendation
   - Football field chart
   - Investment thesis
   - Risk factors

**Present your analysis in a format suitable for inclusion in an advisory pitch book.**

---

## Practice Exercise 5.1: Comparable Company Analysis

**Construct a comprehensive comparable analysis for the liquid staking sector.**

**Protocols to include:**
- Lido
- Rocket Pool
- Frax Ether
- Coinbase cbETH
- Any other relevant protocols

**Calculate for each comparable:**

1. **P/R (Price-to-Revenue) multiple**
   ```
   P/R = Fully Diluted Market Cap / Annualized Protocol Revenue
   ```

2. **Market Cap/TVL ratio**
   ```
   MC/TVL = Market Cap / Total Value Locked
   ```

3. **Revenue/TVL (capital efficiency)**
   ```
   Rev/TVL = Annual Revenue / TVL
   ```

4. **Token unlock schedule assessment**
   - Float ratio
   - Major upcoming unlocks

**Then:**

Identify the appropriate multiple range for a new liquid staking protocol entering the market with:
- $500 million TVL
- $15 million in annualized revenue
- 3% commission rate (competitive with Lido)
- Multi-chain deployment (Ethereum + 2 L2s)

**Justify your multiple selection based on:**
- Position within peer group distribution
- Growth expectations vs. peers
- Capital efficiency comparison
- Risk factors (new entrant, execution risk)
- Competitive positioning

**Deliverable format:**
- Comparable company table with all metrics
- Distribution analysis (25th, 50th, 75th percentile)
- Multiple selection rationale
- Implied valuation range for target protocol
- Investment recommendation

---

## Additional Challenge: MakerDAO Sum-of-the-Parts

**Build a complete SOTP valuation for MakerDAO/Sky using current data:**

**Required components:**
1. Crypto-collateralized lending
2. Real-World Asset (RWA) revenue
3. Spark Protocol
4. DSR/SSR spread
5. Treasury value
6. Brand/ecosystem value (if quantifiable)

**For each component:**
- Estimate current annual revenue
- Select appropriate valuation multiple with justification
- Calculate component value
- Identify key risks and sensitivities

**Then:**
- Sum all component values
- Apply synergy premium or conglomerate discount (justify)
- Calculate per-MKR/SKY token value
- Compare to current market price
- Present in professional format with football field chart

---

## Self-Assessment Rubric

### Mastery Level Indicators

**Beginner (1-2):**
- Can calculate basic valuation metrics
- Understands DCF structure
- Knows standard multiples

**Intermediate (3-4):**
- Builds complete DCF models
- Constructs comparable company analyses
- Interprets valuation ranges
- Identifies major risk factors

**Advanced (5-6):**
- Integrates multiple valuation methodologies
- Applies real options frameworks
- Builds SOTP valuations
- Creates professional pitch materials
- Defends valuation assumptions under scrutiny

**Expert (7-8):**
- Designs custom valuation frameworks for novel protocols
- Triangulates across 5+ methodologies
- Identifies market mispricing opportunities
- Advises DAOs on strategic transactions
- Publishes credible research that moves markets

### Assessment Questions

After completing Part II, you should be able to answer:

1. **Can you build a 5-year DCF model from scratch?** (Intermediate)
2. **Can you construct a peer group and apply multiples?** (Intermediate)
3. **Can you value strategic options using real options frameworks?** (Advanced)
4. **Can you create a football field chart integrating 4+ methods?** (Advanced)
5. **Can you identify the 5 common pitfalls in live protocol valuations?** (Intermediate)
6. **Can you present a valuation to a DAO governance forum?** (Advanced)
7. **Can you defend your assumptions against skilled critics?** (Expert)

---

**End of Part II: Protocol Valuation**

**Next:** [Part III: Mergers and Acquisitions of DAOs](../../part-3-mergers-acquisitions/README.md) — Due diligence, transaction structuring, governance integration, and post-merger integration.
