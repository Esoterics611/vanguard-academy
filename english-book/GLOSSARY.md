# Glossary

A comprehensive reference of key terms used throughout this handbook. Terms are organized alphabetically.

---

## A

**Agent-Based Simulation (cadCAD)**: A computational modeling technique using complex adaptive dynamics Computer Aided Design to simulate multi-agent systems. Used to stress-test tokenomics designs by modeling how different stakeholder behaviors (rational stakers, mercenary capital, governance attackers) affect token dynamics before deployment in immutable smart contracts.

**Airdrop**: A token distribution mechanism where tokens are granted to existing users or community members, typically based on historical protocol usage. Designed to achieve broad token ownership, reward early adopters, and bootstrap governance participation. Key design variables include eligibility criteria, distribution formula, and anti-Sybil measures.

**AML (Anti-Money Laundering)**: Regulatory framework requiring financial service providers to verify client identities, monitor transactions, and report suspicious activity. Applies to DAO investment bankers who facilitate token sales or treasury management.

**AUM (Assets Under Management)**: Total market value of assets managed on behalf of clients. In the DAO context, analogous to the total value of DAO treasuries under advisory management.

**Advisory Services**: Investment banking counsel on strategic transactions including mergers, acquisitions, divestitures, and restructurings. In the DAO context, advice delivered through governance proposals and published analysis.

## B

**Buyback-and-Burn**: A value accrual mechanism where protocol revenue (in ETH or stablecoins) is used to purchase native tokens on the open market and permanently destroy them. Reduces circulating supply, benefiting all token holders equally. MakerDAO's Surplus Buffer and Flap Auction is the canonical implementation.

**Basis Point (bps)**: One hundredth of a percentage point (0.01%). 50 basis points = 0.50%. Used to express small differences in rates and fees.

**Block Explorer**: A tool (like Etherscan) for viewing transaction-level blockchain data, contract code, token holder information, and treasury wallet contents.

## C

**Call Option (Market Maker)**: A contract provision in token loan agreements giving the market maker the right to purchase tokens at a predetermined strike price. If the strike is set significantly below expected market value, it functions as hidden compensation — a major red flag in market maker negotiations.

**Capital Efficiency**: Revenue generated per dollar of capital deployed. Calculated as Protocol Revenue / TVL. Higher ratios indicate a protocol extracts more value from its locked capital.

**Chinese Wall**: An information barrier within a financial services firm preventing conflicts of interest between advisory and trading functions. In DAO IB, enforced through disclosure and recusal policies.

**Competitive Moat**: A sustainable competitive advantage that protects a protocol from competitors. Sources include network effects, switching costs, brand recognition, and integration density.

**Cliff (Vesting)**: A period during which no tokens vest, followed by a large unlock. Team cliffs are typically 12 months; investor cliffs 6-12 months. Cliff unlock events create concentrated sell pressure and must be modeled in supply projections.

**Concentrated Liquidity**: A DEX liquidity provision model (pioneered by Uniswap V3) where liquidity providers allocate capital within specific price ranges. More capital-efficient than full-range positions but requires active management. Protocol-owned concentrated liquidity typically requires $5-20M in paired assets.

**Contingent Liability**: A potential obligation depending on an uncertain future event — such as losses from smart contract exploits, regulatory actions, or litigation.

## D

**DAO (Decentralized Autonomous Organization)**: A digitally-native organization whose governance rules are encoded in smart contracts, whose membership is represented by cryptographic tokens, and whose operations are coordinated through on-chain governance.

**DAU (Daily Active Users)**: Unique wallet addresses interacting with a protocol per day. Directional trends are meaningful despite limitations (multiple wallets per person, bot activity).

**DCF (Discounted Cash Flow)**: A valuation method that estimates present value by discounting projected future cash flows. Adapted for DAOs in Part II.

**DefiLlama**: An aggregator of TVL, protocol revenue, and standardized DeFi metrics across the ecosystem. The starting point for competitive analysis and market sizing.

**Dune Analytics**: A platform for writing SQL queries against indexed blockchain data. The primary tool for custom on-chain protocol analysis. Proficiency is non-negotiable for DAO investment bankers.

## E

**Emission Schedule**: The predetermined rate at which new tokens are released into circulation over time. May be front-loaded (higher early emissions declining over time), linear, or halving-based. Emission rate must be balanced against revenue growth to avoid dilution pressure.

**Earnout**: A deal structure where a portion of acquisition consideration is contingent on post-merger performance milestones. In DAO M&A, implemented via smart contracts that release tokens when on-chain verifiable conditions (TVL, revenue, user targets) are met.

**Engagement Letter**: The formal agreement between an investment bank and its client defining scope, deliverables, fees, and terms. In DAOs, replaced or supplemented by governance proposals.

**Exchange Ratio**: The number of acquirer tokens received for each target token in a token-swap merger. The central negotiating point of any DAO M&A transaction, reflecting standalone valuations, synergy allocation, and market price premiums.

## F

**Fairness Opinion**: An independent assessment that a proposed transaction price is fair, from a financial point of view, to token holders. In DAO M&A, not legally required but practically critical for increasing governance approval probability. Uses DCF, comparable, and precedent transaction analysis.

**Fork Risk**: The risk that disaffected community members replicate the protocol's open-source code and create a competing entity. Unique to DAO M&A — has no equivalent in traditional corporate transactions. Makes community integration existentially important.

**FATF (Financial Action Task Force)**: The intergovernmental body that sets global AML standards. Has issued guidance on DAO activities and virtual asset service providers.

**Fee Pool**: The aggregate fees available in a market segment. Used to size the DAO IB market opportunity.

**Fee Switch**: A governance-controlled mechanism to redirect a portion of protocol fees from service providers (e.g., liquidity providers) to the DAO treasury or token holders.

**Fiduciary Duty**: The legal and ethical obligation to act in the best interest of clients, placing their interests above your own. In DAO IB, owed to the protocol and its entire community.

## G

**Genesis Supply**: The total number of tokens created at TGE. Includes all tokens whether immediately circulating or locked in vesting contracts, treasury, or emission reserves.

**Gini Coefficient**: A measure of distribution inequality (0 = perfect equality, 1 = perfect inequality). Applied to token holdings to assess governance centralization risk.

**Governance Token**: A cryptographic token that confers voting rights over a DAO's decisions. May or may not carry economic rights (fee capture, staking rewards, etc.).

**Gross Protocol Revenue**: Total fees generated by a protocol's economic activity, before any distribution to service providers, the treasury, or token holders.

## G (continued)

**Governance Takeover**: The acquisition of sufficient governance tokens to control a DAO's decision-making without community cooperation. May require only a fraction of total supply if governance participation is low (e.g., 3% of supply to control a DAO with 5% voter turnout).

## H

**Howey Test**: The U.S. legal framework defining an investment contract (security) based on four prongs: (1) investment of money, (2) common enterprise, (3) expectation of profits, (4) derived from the efforts of others. The primary regulatory constraint on TGE design. Tokens designed to minimize Howey risk emphasize governance utility over profit rights, operational protocols over promises, and genuine decentralization.

**Hostile Acquisition**: A governance takeover attempted without the cooperation of the target DAO's existing governance community. The DAO equivalent of a hostile takeover bid in traditional M&A.

**100-Day Plan**: A structured post-merger integration playbook spanning three phases: Foundation (Days 1-30), Integration (Days 31-60), and Optimization (Days 61-100). Adapted from management consulting PMI methodology.

## I

**IDO (Initial DEX Offering)**: A token launch conducted on a decentralized exchange as the primary venue for initial price discovery, before or instead of centralized exchange listings. Avoids exchange fees and gatekeeping; aligns with decentralized ethos but provides less orderly price discovery.

**Integration Density**: The number and quality of other protocols and applications that integrate with a given protocol. Creates network effects and switching costs.

**Integration Steering Committee**: A cross-community committee with governance-granted authority to make operational integration decisions without requiring a governance vote for each decision. Essential for efficient post-merger execution.

## K

**KYC (Know Your Customer)**: Regulatory requirement to verify client identity before providing financial services. Part of the AML framework.

## L

**Liquid Wrapper**: A third-party protocol that creates transferable representations of locked token positions (e.g., Convex's cvxCRV for locked veCRV). Undermines the governance commitment that vote-escrow models are designed to create by allowing holders to gain ve benefits without personally committing to a lock-up.

**Liquidity Mining**: A token distribution mechanism where tokens are awarded to users who provide liquidity or engage in protocol activities. Designed in 3-6 month phases with declining emission rates. Key risk: mercenary capital that farms rewards and exits immediately.

**Liquidity Discount**: A reduction applied to asset values reflecting the market impact of selling large positions. Applied to native token holdings on DAO balance sheets (typically 30-70%).

## M

**MAC Clause (Material Adverse Change)**: A deal protection provision specifying conditions under which a merger can be terminated — such as smart contract exploits, regulatory action, or token price collapse beyond a threshold. Adapted from traditional M&A for DAO governance context.

**Market Making**: Providing liquidity by posting bid and ask prices. In DeFi, this includes managing AMM positions and facilitating OTC token transactions.

**MEV (Maximal Extractable Value)**: Value that can be captured by reordering, inserting, or censoring transactions within a blockchain block.

**Mercenary Capital**: Liquidity or staking participation attracted solely by token incentives, with no long-term commitment to the protocol. Mercenary capital farms rewards and exits as soon as incentives decline. Mitigation strategies include time-weighted rewards, lock-up requirements, and declining emission schedules.

**MiCA (Markets in Crypto-Assets)**: The EU's comprehensive regulatory framework for crypto-assets, indirectly affecting DAO operations and advisory services.

**MNPI (Material Non-Public Information)**: Information that would affect an investment decision and is not yet publicly available. In DAOs, includes pre-publication governance proposals and treasury decisions.

## N

**Net Deployable Treasury**: Liquid treasury assets minus outstanding commitments minus a 12-month operating reserve. Represents the capital actually available for strategic deployment in M&A transactions.

**Net Protocol Revenue**: Fees actually accruing to the DAO treasury or token holders after distribution to service providers. Often much less than gross protocol revenue.

**Non-Forkable Assets**: The components of a DAO that cannot be replicated by forking the open-source code: team institutional knowledge, user base, liquidity, brand equity, integration network, and governance community. The acquisition premium over the cost of forking represents the value of these assets — the DAO equivalent of goodwill.

## O

**OTC (Over-the-Counter)**: Negotiated transactions conducted directly between parties rather than through a public exchange. DAOs often sell treasury tokens OTC to institutional investors at a discount.

## P

**Protocol-Owned Liquidity (POL)**: DEX liquidity deployed from the protocol's own treasury (native tokens paired with stablecoins or ETH). Creates permanent, protocol-controlled liquidity independent of third-party market makers or mining incentives. Typical sizing: $5-20M in paired assets for $500K-$2M daily volume with <2% slippage.

**PCV (Protocol-Controlled Value)**: Assets deployed in DeFi protocols (LP positions, lending positions, yield farming strategies) controlled by the DAO treasury.

**Protocol Deep Dive**: A comprehensive 7-section analysis establishing the factual foundation for advisory work. Covers: overview, smart contracts, tokenomics, financials, governance, competition, and risks.

**Protocol Revenue**: Fees generated by a protocol's core economic function. Examples: trading fees (DEX), interest spread (lending), staking commission (liquid staking), stability fees (stablecoin issuer).

## R

**Residual Claim**: In traditional finance, an equity holder's claim on assets and cash flows after all obligations (debt, expenses) are met. Governance tokens may or may not confer equivalent rights.

**Runway**: The number of months a DAO can sustain operations from its liquid treasury. Calculated as: Liquid Treasury Assets / Monthly Net Operating Cash Outflow.

## R (continued)

**Risk-Adjusted Valuation**: A valuation method that modifies standalone DCF value by subtracting probability-weighted risks (smart contract, regulatory, key person, governance, integration) and adding probability-weighted synergy and optionality values. Represents the maximum price an acquirer should pay.

## S

**Sybil Attack**: The creation of multiple fake identities (wallet addresses) to exploit distribution mechanisms like airdrops. Defense measures include cluster analysis (identifying wallets funded from the same source), minimum activity thresholds, and proof-of-personhood systems.

**SubDAO**: A subsidiary entity created within a DAO's governance structure to house a specific business line or function. Analogous to a corporate subsidiary or spin-off. MakerDAO's Endgame plan (creating SubDAOs for lending, farming, ecosystem development) is the most ambitious example.

**Switching Costs**: The costs (financial, time, or effort) a user incurs when moving from one protocol to a competitor. Higher switching costs strengthen competitive positioning.

**Synergy (Revenue/Cost)**: Value created by combining two entities. Revenue synergies (cross-selling, combined liquidity) typically take 12-24 months to materialize. Cost synergies (eliminated duplicates, shared infrastructure) typically realize within 6-12 months. Net synergy value = PV(revenue) + PV(cost) - integration costs - PV(dis-synergies).

## T

**TAM (Total Addressable Market)**: The total revenue opportunity available if a service achieves 100% market share in its target market.

**TGE (Token Generation Event)**: The initial creation and distribution of a protocol's token. The DAO equivalent of an IPO.

**Token Float**: The percentage of total token supply that is freely tradable (not locked in vesting, team allocations, or treasury). Low float indicates future dilution pressure.

**Token Terminal**: A platform that standardizes protocol financial data into formats familiar to traditional analysts (P/E ratios, revenue multiples, etc.).

**Token Loan Model**: The standard market maker agreement structure where a protocol lends tokens (2-5% of supply) for 12-24 months. The market maker uses these plus their own capital for liquidity provision. Critical negotiation points: loan size, call option strike price, performance requirements, and clawback mechanisms.

**Token Velocity**: The rate at which tokens change hands. High velocity may indicate tokens are being traded rather than used for governance.

**Token-Based Compensation**: Payment to contributors in native tokens rather than stablecoins. Represents a real economic cost (dilution) and a non-cash expense.

**Token Swap (M&A)**: The most common DAO M&A execution mechanism — a smart contract allowing target token holders to deposit target tokens and receive acquirer tokens at a specified exchange ratio. Should be non-custodial, audited, and include a deadline and claim mechanism.

**Treasury Paradox**: The state where a DAO is wealthy in notional token value but cash-poor in actually deployable capital, because selling native tokens would destroy their value.

**TVL (Total Value Locked)**: Total value of assets deposited in a protocol's smart contracts. Widely cited but has significant limitations as a standalone metric.

## U

**Underwriting**: The process of facilitating the issuance of securities (or tokens) to raise capital. Includes pricing, book building, allocation, and aftermarket support.

## V

**Vote-Escrow (ve) Model**: A value accrual and governance mechanism where token holders lock tokens for a specified period (typically up to 4 years) in exchange for boosted governance power and yield. veToken balance decays linearly as the lock approaches expiration. Pioneered by Curve Finance (veCRV). Vulnerability: liquid wrappers (e.g., Convex) can circumvent lock-up commitment.

**VASP (Virtual Asset Service Provider)**: Any entity that facilitates virtual asset transactions. A FATF classification that may trigger AML/KYC obligations for DAO investment bankers.

**Vesting Schedule**: A timeline defining when locked tokens become freely available. Large unlock events create selling pressure and must be modeled in financial analysis.

**Vertical Integration (DAO)**: A merger between protocols occupying different positions in the DeFi stack — such as a lending protocol acquiring an oracle network, or a stablecoin issuer acquiring a lending market. Reduces dependency on third parties and captures more of the value chain.

**VWAP (Volume-Weighted Average Price)**: The average price of a token weighted by trading volume over a specified period. Commonly used as a reference for OTC transactions. Standard reference periods: 7-day, 14-day, or 30-day.

## W

**Winner-Take-Most Dynamics**: Competitive dynamics where network effects create outcomes in which the leading protocol in each category captures a disproportionate share of activity. The gap between first and second place is enormous, intensifying competitive rivalry.

---

# Part V & VI Terms

## C (continued)

**Cap Table (DAO)**: A record tracking token ownership across all stakeholder categories — foundation/team, investors, community, and treasury — along with vesting schedules, lock-up provisions, and effective cost basis for each category.

**Concentration Risk**: The risk arising from excessive exposure to any single asset, protocol, chain, or counterparty. Recommended limits: no single non-native asset exceeding 20% of deployable treasury, no single DeFi protocol exceeding 10%, no single chain (excluding home chain) exceeding 25%.

**Convertible Note (Protocol)**: A hybrid instrument combining debt and equity elements. The investor provides capital for a note that accrues interest and converts to governance tokens under specified conditions (time, price, or event triggers) at a predetermined discount or valuation cap.

**Covenant (Protocol Bond)**: Governance-enforceable commitments made by a DAO to bondholders. Examples include minimum treasury balance maintenance, maximum additional debt limits, and revenue coverage ratios.

## D (continued)

**Delegate Relations**: The practice of identifying, engaging, incentivizing, and tracking accountability of governance delegates — individuals or entities controlling significant delegated voting power.

**Dilution Analysis**: The calculation of how a capital raising event reduces each existing token holder's percentage ownership. Pre-money ownership minus post-money ownership equals dilution.

## F (continued)

**Flywheel Model**: A self-reinforcing growth cycle where each element strengthens the others. DEX example: more liquidity leads to better execution, more traders, more fees, higher LP returns, and more liquidity.

## G (continued)

**Growth Matrix (Protocol)**: An adaptation of the Ansoff Growth Matrix to protocols. Four strategies: market penetration (existing product, existing market), market extension (existing product, new market), product extension (new product, existing market), and diversification (new product, new market).

**GTM Canvas (Protocol)**: A go-to-market planning framework with eight components: target users, value proposition, discovery channels, conversion mechanism, retention strategy, growth metrics, competitive response, and timeline/milestones.

## I (continued)

**Investment Memorandum (DAO)**: A comprehensive document prepared for institutional investors covering protocol overview, financial performance, tokenomics analysis, governance health, treasury status, use of proceeds, risk factors, and transaction terms.

**Investor Relations (DAO)**: The function managing communication and relationships between a DAO and its token holder constituency. Core activities include regular financial reporting, governance communication, strategic updates, investor engagement, and crisis communication.

## O (continued)

**Operating Reserve**: The first bucket in the Three-Bucket Treasury Model. Target: 12-24 months of operating expenses in 100% stablecoins, immediately accessible. The DAO's survival guarantee.

## P (continued)

**Porter's Five Forces (DeFi)**: An adaptation of Michael Porter's competitive analysis framework for DeFi: threat of new entrants, bargaining power of suppliers (LPs, validators, developers), bargaining power of buyers (users), threat of substitutes (CeFi, TradFi), and competitive rivalry.

**Protocol Bond**: A debt instrument allowing DAOs to raise capital without selling governance tokens. The DAO receives capital upfront and commits to repaying principal plus interest (coupon) from future protocol revenue. Expected coupon rates: 8-15% for investment-grade protocols, 15-25% for growth-stage.

**Protocol Competitive Matrix**: A framework comparing a protocol against 5-10 competitors across 10 dimensions (market position, product quality, liquidity, security, governance, financial strength, ecosystem integration, team, regulatory positioning, community/brand), scored 1-5 and visualized as a radar chart.

**Protocol Positioning Statement**: A statement answering four questions that define a protocol's market identity: For whom (target user), What (function), Unlike (differentiation), Because (credibility).

## R (continued)

**Revenue Sharing Agreement**: A capital raising instrument where the DAO sells a percentage of future revenue for upfront capital. The investor receives protocol revenue until a specified return multiple (typically 2-5x) is achieved.

**RWA (Real-World Assets)**: Traditional financial assets — primarily U.S. Treasury bills and fixed-income instruments — accessed through tokenized wrappers for DAO treasury allocation. MakerDAO pioneered this trend with over $1 billion in T-bill allocations.

## S (continued)

**Strategic Pitch Book**: The primary deliverable of a strategic advisory engagement. A 30-50 page document covering situation assessment, competitive analysis, strategic options, recommended strategy, financial impact analysis, risk analysis, and implementation plan.

**Strategic Reserve**: The second bucket in the Three-Bucket Treasury Model. Target: 15-30% of non-native-token treasury, diversified across stablecoins (40-60%), ETH (20-30%), and DeFi yield (10-20%). Accessible within 1-7 days.

**Stress Testing (Treasury)**: Quarterly evaluation of treasury performance under adverse scenarios including crypto winter (ETH -70%, native token -85%), smart contract exploits, regulatory shocks, and CeFi contagion events.

## T (continued)

**Three-Bucket Treasury Model**: A framework for organizing DAO treasury assets into three buckets based on purpose: Operating Reserve (survival), Strategic Reserve (opportunities), and Growth Portfolio (returns). Each bucket has distinct asset composition, risk tolerance, and liquidity requirements.

**Treasury Management Committee**: A dedicated governance body with 5-7 elected members and delegated authority for day-to-day treasury operations within approved parameters. May take emergency action (withdraw from compromised protocols) without a full governance vote.

**Treasury Risk Dashboard**: A real-time monitoring tool providing governance with visibility into treasury risk. Components: total value breakdown, asset allocation vs. targets, concentration analysis, smart contract exposure, liquidity analysis, market risk metrics (VaR), and performance attribution.
