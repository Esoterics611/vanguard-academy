# Review Questions and Practice Exercises

## Review Questions — Part III: Mergers and Acquisitions

### Question 1: DAO M&A Transaction Types

**Compare and contrast the six types of DAO M&A transactions (DAO-to-DAO merger, protocol acquisition, CeFi acquisition of DeFi, SubDAO spin-off, token swap/alliance, hostile governance takeover). For each type, identify the primary risk factor and describe how the investment banker should mitigate it.**

**Expected answer structure:**

| Transaction Type | Primary Risk | Mitigation Strategy |
|-----------------|-------------|-------------------|
| DAO-to-DAO Merger | Governance approval failure on one or both sides | Stakeholder mapping, governance campaign, attractive terms |
| Protocol Acquisition | Overpayment / inadequate DD | Comprehensive 10-workstream DD, risk-adjusted valuation |
| CeFi Acquisition of DeFi | Loss of developer talent post-acquisition | Retention packages with long vesting, role guarantees |
| SubDAO Spin-off | Governance fragmentation, unclear authority | Clear charter defining SubDAO autonomy boundaries |
| Token Swap/Alliance | Misaligned incentives, governance dilution | Careful sizing of swap, governance rights limitations |
| Hostile Governance Takeover | Community backlash and fork risk | Generally avoid; if defensive, implement governance protections |

---

### Question 2: Due Diligence Audit Gap

**You are conducting due diligence on a lending protocol acquisition target. The protocol has $800 million in TVL, $40 million in annual revenue, and has been audited three times by reputable firms. The most recent audit was 18 months ago, and the protocol has undergone two significant upgrades since then. What concerns does this raise, and what actions would you recommend before proceeding?**

**Expected answer:**

**Concerns:**
1. The most recent audit does not cover the currently deployed code — two upgrades have been made since
2. The upgrades may have introduced new vulnerabilities not present in the audited version
3. $800M TVL creates a large incentive for attackers — the protocol is a high-value target
4. The Fei/Rari case demonstrates that code modifications (even to well-audited base code) can introduce critical vulnerabilities

**Recommended actions:**
1. Commission a new full-scope audit from a top-tier firm covering all post-upgrade code
2. Request a diff analysis between the last audited version and the current deployment
3. Engage formal verification for critical components (lending logic, liquidation mechanisms)
4. Review the upgrade mechanism — who authorized the upgrades, was community review conducted?
5. Make the new audit a condition precedent to closing — do not proceed without it
6. Include smart contract risk adjustment in the valuation (probability-weighted potential loss)

---

### Question 3: Exchange Ratio Calculation

**A DAO with 100 million tokens trading at $10 (market cap $1 billion) is acquiring a target DAO with 50 million tokens trading at $3 (market cap $150 million). The acquirer's DCF analysis values the target at $200 million standalone, with $75 million in expected synergies (60% allocated to the target).**

**Calculate:**
a) The appropriate exchange ratio
b) How many new tokens the acquirer must mint
c) Post-merger dilution to existing acquirer holders

**Solution:**

**a) Exchange ratio:**
```
Target value per token (standalone): $200M / 50M = $4.00
Target's synergy share per token:    ($75M × 60%) / 50M = $0.90
Total target value per token:         $4.00 + $0.90 = $4.90
Acquirer value per token:             $10.00

Exchange Ratio = $4.90 / $10.00 = 0.49 acquirer tokens per target token
```

**b) New tokens to mint:**
```
New tokens = 50M target tokens × 0.49 = 24.5 million acquirer tokens
```

**c) Post-merger dilution:**
```
Pre-merger acquirer tokens:  100 million
New tokens issued:           24.5 million
Total post-merger:           124.5 million

Dilution = 24.5M / 124.5M = 19.7%
```

**Market price reality check:**
```
Premium to market: ($4.90 - $3.00) / $3.00 = 63% premium
```

This premium is on the high end but justifiable given $75M in projected synergies.

---

### Question 4: Governance Integration Models

**Describe the four governance integration models (absorption, federal, merger-of-equals, temporary dual governance). For each model, identify the type of transaction where it would be most appropriate and the primary risk.**

**Expected answer:**

| Model | Best Transaction Type | Primary Risk |
|-------|----------------------|-------------|
| **Absorption** | Clear acquisition where acquirer is 5x+ larger | Target community resistance and talent attrition |
| **Federal (SubDAO)** | Vertical integration; complementary functions | Unclear authority boundaries; slow decision-making |
| **Merger-of-Equals** | Similar-sized protocols with equal strategic contribution | Governance deadlock; no tiebreaker mechanism |
| **Temporary Dual Governance** | High-complexity mergers needing gradual transition | Transition drift; may never fully integrate |

---

### Question 5: Pre-Merger Crisis Protocol

**Using the Fei/Rari case study, develop a "Pre-Merger Crisis Protocol" that the combined entity could have adopted.**

**Your protocol should specify:**

**a) Crisis triggers:**
- Smart contract exploit exceeding $10M or 5% of combined TVL
- Regulatory enforcement action against either protocol
- Token price decline exceeding 50% within 30 days
- Governance deadlock lasting more than 30 days
- Departure of 3+ key contributors within 30 days

**b) Emergency decision authority:**
- Integration Steering Committee (6 members: 3 from each community)
- Emergency powers: pause contracts, deploy up to $20M for incident response, engage security firms
- Requires 4-of-6 approval for emergency actions

**c) Post-crisis ratification:**
- Emergency decisions ratified by full governance within 14 days
- If ratification fails, emergency measures unwound where possible
- Detailed post-mortem published within 30 days

**d) Financial liability allocation:**
- Pre-merger code vulnerabilities: 70% borne by originating community, 30% shared
- Post-merger code: shared proportionally based on token holdings
- User reimbursement: up to $50M from combined treasury approved by emergency vote; above $50M requires full governance
- Insurance fund established at closing (5% of combined liquid treasury)

**e) Contributor crisis obligations:**
- 90-day crisis period: contributors cannot voluntarily resign
- Departure during crisis triggers full clawback of unvested tokens
- Crisis bonus of 25% of monthly compensation for contributors who remain and actively contribute to resolution

---

### Question 6: Hostile Governance Takeover

**You are advising a DAO considering a hostile governance takeover of a competitor. The target has 100 million tokens; governance votes typically see 5% participation (5 million tokens). The target token trades at $2.00.**

**Calculate:**
a) Minimum investment required to control governance outcomes
b) Discuss ethical implications and practical risks

**Solution:**

**a) Minimum investment:**
```
Typical voting participation: 5 million tokens (5% of 100M)
To control outcome: Need >50% of votes cast = 2.5M+ tokens
Safety margin (60% of votes): 3 million tokens

Cost: 3M tokens × $2.00 = $6 million

Note: Accumulating 3M tokens may move the price significantly.
With 20-30% slippage: ~$7-8 million total cost
```

**b) Ethical implications:**
- Violates the spirit of decentralized governance
- May trigger community backlash and fork
- Sets a precedent that undermines trust in governance
- The Beanstalk governance exploit demonstrated the fragility of low-participation governance
- Most professional DAO investment banking standards discourage hostile approaches

**Practical risks:**
- Community forks the protocol, rendering acquired governance tokens worthless
- Token accumulation is visible on-chain, alerting the target community
- Target may implement emergency governance protections (quorum increases, token lock requirements)
- Reputational damage to the acquirer in the broader ecosystem
- Regulatory risk — may be viewed as market manipulation

---

## Practice Exercise 8.1: Complete Due Diligence Report

**Select a real DeFi protocol (Compound, Curve, GMX, Balancer, or Rocket Pool) and prepare a complete due diligence report covering all ten workstreams described in Chapter 8.**

Use publicly available on-chain data, governance forum records, audit reports, and any other sources. Your report should include:

1. **Smart Contract DD** — Audit history, code architecture, exploit history
2. **Tokenomic DD** — Supply analysis, value accrual, token compatibility assessment
3. **Financial DD** — Revenue quality, treasury audit, burn rate analysis
4. **Governance DD** — Mechanism analysis, health assessment, feasibility
5. **Legal DD** — Entity structure, regulatory exposure, IP
6. **Team DD** — Key persons, retention risk, cultural compatibility
7. **Competitive DD** — Market position verification, synergy/dis-synergy analysis
8. **On-Chain Forensics** — Treasury transactions, token flows, Sybil analysis
9. **Community DD** — Health metrics, merger sentiment
10. **Integration Risk** — Complexity matrix, risk-adjusted valuation

**Deliverable:** A risk-adjusted valuation and clear recommendation (proceed / proceed with conditions / do not proceed) with supporting analysis.

**Recommended data sources:** Dune Analytics, DefiLlama, Token Terminal, Etherscan, protocol governance forums, audit reports (published on GitHub or protocol websites).

---

## Practice Exercise 9.1: Transaction Structuring

**Two DAOs are merging:**

| Metric | Protocol A (DEX) | Protocol B (Yield Aggregator) |
|--------|-----------------|------------------------------|
| FDV | $500M | $100M |
| Revenue | $20M annually | $5M annually |
| Token supply | 200M at $2.50 | 100M at $1.00 |
| TVL | $1.2B | $200M |
| Specialization | Broad market DEX | Multi-strategy yield optimization |

**Design a complete transaction structure including:**

1. **Exchange ratio** with supporting DCF, comparable, and precedent analysis
2. **Lock-up provisions** for each class of holder (core team, delegates, retail)
3. **Earnout milestones** with on-chain verification mechanisms
4. **Governance integration model** selection with justification
5. **100-day integration plan** with specific milestones

**Present your work as a formal Transaction Proposal suitable for submission as a governance proposal, using the template from Section 9.3.2.**

---

## Self-Assessment Rubric

### Mastery Level Indicators

**Beginner (1-2):**
- Can identify types of DAO M&A transactions
- Understands the basic M&A process phases
- Knows what due diligence covers at a high level

**Intermediate (3-4):**
- Calculates exchange ratios with synergy allocation
- Conducts basic DD across multiple workstreams
- Selects appropriate governance integration models
- Identifies major risks in proposed transactions

**Advanced (5-6):**
- Designs complete transaction structures with all components
- Conducts comprehensive multi-workstream due diligence
- Writes governance proposals suitable for community submission
- Constructs fairness opinions with multiple methodologies
- Develops integration plans with measurable KPIs

**Expert (7-8):**
- Advises DAOs on live M&A transactions
- Navigates governance politics to achieve approval
- Designs crisis protocols and risk management frameworks
- Identifies and mitigates cultural integration risks pre-emptively
- Publishes analysis that influences DAO governance decisions

### Assessment Questions

After completing Part III, you should be able to answer:

1. **Can you classify any DAO transaction into the correct type?** (Beginner)
2. **Can you calculate an exchange ratio with synergy allocation?** (Intermediate)
3. **Can you conduct smart contract DD and identify red flags?** (Intermediate)
4. **Can you design a governance campaign for merger approval?** (Advanced)
5. **Can you construct a fairness opinion for a token swap?** (Advanced)
6. **Can you design a 100-day integration plan with KPIs?** (Advanced)
7. **Can you advise on crisis protocol design?** (Expert)

---

**End of Part III: Mergers and Acquisitions of DAOs**

**Next:** [Part IV: Token Generation Events](../part-4-token-generation/README.md)
