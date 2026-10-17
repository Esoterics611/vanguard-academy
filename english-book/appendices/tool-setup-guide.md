# Tool Setup Guide

This guide walks you through setting up the data platforms you'll need for the analytical exercises in this handbook.

---

## Dune Analytics

**What it is:** A platform for writing SQL queries against indexed blockchain data.

**Why you need it:** Custom on-chain analysis is the core analytical competency of DAO investment banking. Dune lets you query raw blockchain data to extract protocol-specific metrics that don't exist on any dashboard.

**Setup:**
1. Go to [dune.com](https://dune.com) and create a free account
2. Explore existing dashboards to understand the interface
3. Start with the SQL editor — write simple queries against token transfer tables
4. Build toward custom protocol revenue and treasury tracking queries

**Key tables to know:**
- `ethereum.transactions` — all Ethereum transactions
- `erc20_ethereum.evt_Transfer` — ERC-20 token transfers
- `prices.usd` — historical token prices
- `dex.trades` — aggregated DEX trading data

{% hint style="info" %}
**Tip:** Start by forking existing queries related to your target protocol. Modify them to understand how they work, then build your own from scratch.
{% endhint %}

---

## DefiLlama

**What it is:** An aggregator of TVL, protocol revenue, and standardized DeFi metrics.

**Why you need it:** The starting point for competitive analysis, market sizing, and quick financial overviews.

**Setup:**
1. Go to [defillama.com](https://defillama.com) — no account needed
2. Explore the Protocols, Chains, and Fees sections
3. Use the Compare feature to build peer comparison tables
4. The API is free and well-documented for programmatic access

**Key sections:**
- **Overview** — TVL by chain and protocol
- **Fees/Revenue** — Protocol fee generation data
- **Stablecoins** — Supply and peg tracking
- **Yields** — Pool and vault yield data

---

## Token Terminal

**What it is:** Protocol financial data standardized into formats familiar to traditional analysts.

**Why you need it:** Quick access to P/E ratios, P/S ratios, revenue multiples, and other traditional financial metrics applied to protocols.

**Setup:**
1. Go to [tokenterminal.com](https://tokenterminal.com) and create an account (free tier available)
2. Explore the Dashboard and Data Tables sections
3. Use the Peer Groups feature for comparable analysis

---

## Etherscan (and other Block Explorers)

**What it is:** A tool for viewing transaction-level blockchain data.

**Why you need it:** Verifying on-chain claims, monitoring treasury wallets, reviewing smart contract code, checking token holder distributions.

**Setup:**
1. Go to [etherscan.io](https://etherscan.io) — no account needed for basic use
2. Create a free API account if you need programmatic access
3. Bookmark the addresses of the protocols you're analyzing (treasury wallets, contract addresses)

**For other chains:**
- Arbitrum: [arbiscan.io](https://arbiscan.io)
- Optimism: [optimistic.etherscan.io](https://optimistic.etherscan.io)
- Base: [basescan.org](https://basescan.org)
- Polygon: [polygonscan.com](https://polygonscan.com)

---

## Governance Platforms

**Snapshot** — Off-chain governance voting
- [snapshot.org](https://snapshot.org)
- Search for your target protocol's space to see proposals and voting history

**Tally** — On-chain governance tracking
- [tally.xyz](https://tally.xyz)
- Tracks on-chain governance proposals, delegate activity, and voting power distribution

**Governance Forums** — Each major protocol has its own forum:
- Usually hosted on Discourse or Commonwealth
- Search "[Protocol Name] governance forum" to find it
- This is where proposals are discussed before going to a vote

---

## GitHub

**Why you need it:** Developer activity is a key health metric. GitHub reveals commit frequency, contributor count, code quality, and roadmap execution.

**What to check:**
- Commit frequency (daily/weekly trends)
- Number of active contributors
- Open issues and PR velocity
- Last meaningful code update

---

{% hint style="success" %}
**Getting Started Checklist**

- [ ] Dune Analytics account created
- [ ] DefiLlama bookmarked and explored
- [ ] Token Terminal account created
- [ ] Etherscan bookmarked with key protocol addresses
- [ ] Governance forums identified for your target protocol
- [ ] Protocol GitHub repositories bookmarked
{% endhint %}
