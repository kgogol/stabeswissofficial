# Architecture

The Stable Swiss Protocol (SSP) is an on-chain (crypto-collateralized) stablecoin protocol. It operates fully on-chain. Any off-chain information - exchange rates (e.g. ETHUSD or CHFUSD) - is received from oracles. In the long term, the connection to oracles is planned to be replaced by the on-chain algorithm estimating the exchange rates.

## Multi-Blockchain

The protocol runs on multiple smart-contract blockchains.

* Acala (Parachain of Polakdot) is the main blockchain for the protocol. Acala is the layer-2 blockchain operating on top of Polkadot - layer 1 chain, and is a DeFi hub of the Polakdot ecosystem. The protocol utilizes 1) real-time oracles resistant to flash loan attacks, 2) scheduler/keeper, 3) bridgesand other inter-operability properties of Acala and Polkadot.
* Ethereum, at the time of writing, is the major DeFi blockchain with highest TVL (total value locked) among all smart-contract blockchains

Other smart contract enabled blockchains, according to the decisions by the governance tokens SSN holders may be added at a later stage.

## Business Architecture

![](.gitbook/assets/Screen\_Shot\_2021-12-24\_at\_16.08.52.png)

Stabecoin Engine and Stablecoin Resources are the major architecture components. Stablecoin Engine is responsible for the price control, adjusting risk parameters, minting new coins or liquidating out-of-value collaterals. It manages the Stablecoin Resources:

* vaults (with collaterals) - locking crypto-assets as collateral,
* stability pools - supporting the price control when the collateralization level drops below the

defined threshold,

*   staking and reserve pools - maintain the price peg after the stability pools; reserves built out of savings generated by the stablecoin protocol by managing its reserves.

    Key External Actors include:
* Decentralized Exchanges (DEXes), at which collaterals are auctioned,
* Oracles, providing off-chain exchange rates (e.g. ETH-USD, BTC-USD or USD-CHF). In the long term, we plan to replace dependence on oracles by the on-chain algorithm estimating the required exchange rates.

## Multi-chain Architecture

![](.gitbook/assets/Screen\_Shot\_2021-12-24\_at\_16.08.34.png)

The stablecoin operates on multiple blockchains - Chain 1 - Ethereum, Chain 2 - Acala and Chain 3 - other chains. Acala is the main blockchain with bridges into Ethereum and other chains. This architecture - figure above - allows permissionless minting of stablecoins by users on each chain without bridge fees. The multi-chain aggregator will be used to determine the total value of reserves spread on various chains. The reserves - Savings and Stability Pools - will be transferred between chains via bridges according to the decisions by the governance token holders.
