# Collateral Types

The protocol accepts various types of collateral, provided that the collateral type is approved by SSN stakeholders. In the first phase, the protocol supports crypto-currencies - ETH (Ether) or ACA (Acala) - as volatile collateral and on-chain collateralized stablecoins - DAI - as a low volatile collateral. In the second phase, illiquid collaterals - NFTs and equity tokens - will be introduced.

![](.gitbook/assets/Screen\_Shot\_2021-12-25\_at\_10.08.22.png)

## Liquid collateral

The protocol accepts as a collateral, in the first phase, crypto-currencies of the protocol underlying blockchains as well as other decentralized stablecoins, which are pegged to other fiat currency than the protocol.

#### Non-volatile collateral

Non-volatile collateral, like other stablecoins, pegged to another fiat currency, will be admitted if the design is regarded as relatively safe for the protocol. Significant, high percentage, price drops in a short period of time between two fiat currencies (e.g. USD and CHF) is very unlikely. Risk parameters can be set less conservatively for non-volatile collateral.

#### Volatile collateral

Volatile collateral is more challenging for the stability mechanism of the protocol. Significant, high percentage, price drops in a short period of time between a crypto-currency and a fiat currency (e.g. ETH and CHF) may occur. In case of collateral liquidations combined with collateral auctions, collateral may first be swapped to less volatile collateral like DAI or aUSD. Risk parameters will be set more conservatively for a volatile collateral.

#### Illiquid collateral based on auctions

Tokenized shares or NFTs could be used by the protocol as illiquid collaterals. These types of crypto- assets have recently gained significant value, making the idea of using them very appealing. Usually when a type of collateral is illiquid, reasonable price estimations are not possible. The protocol for illiquid assets acting as collateral could, however, be designed without price information, provided a significant amount of stable coins have already been minted. The illiquid collateral cannot be used for bootstrapping but could, at a later stage, enhance the utilization possibilities of SSP and benefit the broader DeFi space.

* The holder of an illiquid asset puts it on a sCCY auction for a loan by a different user. The percentage p.a. and the maturity date must be specified at the beginning. For example: 1 NFT, 10% p.a., 1 year. The stabilization fee is set, to e.g. 2% p.a.
* sCCY offered by the winner of the auction are blocked (staked) in the system. The same amount of sCCY is newly minted and provided to the borrower. The illiquid asset is also blocked in the system. Let’s say the winner of the action agrees to give a loan of 1,000 sCCY for the NFT for 1 year and 10% p.a.
* Any time before the 1 year period, the borrower can give back the borrowed amount of sCCY
* interest rates + stabilization fee. In our case: 1,000 + 100 (interest rate) + 20 (stabilization fee) = 1,120 sCCY. In the case that the borrower gets their illiquid collateral back, 1,000 CHF, staked by the winner of the auction, are burned; the winner of the auction gets 1,100 sCCY provided by the borrower, 20 sCCY stays in the system as a fee.
* If the borrower does not pay their debt back before the maturity date, the illiquid asset is transferred to the auction winner and all sCCY staked by the auction winner are burned. No stabilization fee or liquidity penalty can be deducted from the borrower in such a case, although it could be deducted from the auction winner before the illiquid collateral is transferred to them.
* An additional auction system may be designed for selling the debt before its maturity date. Analyzing our example, the auction owner may want to sell the debt after 6 months of time because they do want to wait for the repayment and are not interested in the possibility of owning the NFT anylonger, or just have doubts about its future price development. Therefore, they may sell the debt on a secondary auction. If someone offers for the debt, let’s say, 1,030 sCCY, the initial auction owner gets the amount of 1,030 sCCY minus auction debt fee, let’s say 5%. In such a case, they get 978.5 sCCY and 51.5 sCCY stays in the system as a fee. The winner of the last auction takes over all responsibilities from the initial one. There is no change for the borrower; they are still obliged to repay its debt on time.
* It is important to state that the auction winner is taking the risk that the debt might not be paid back, and they will eventually become the new owner of the illiquid collateral. The system does not take any responsibility if the sCCY debt is not repaid by the borrower.

#### Illiquid collateral based on a guaranty pool

Another option for providing a loan based on illiquid collateral is the introduction of a guaranty pool. A platform, which manages and creates illiquid tokens, for example, tokenized equities, could provide price-related information about them. The platform could also decide the maximum loan which can be given for a specified token type and the maximal duration. In the case of successful repayment of the loan, both the platform and the stablecoin protocol would gain fees or profit. In the case of lack of repayment, the guaranty pool would need to cover losses. The platform could create the guaranty pool and provide initial resources. Additional users could also be invited to participate in the guaranty pool, and they would proportionally participate in generated gains and losses.

An example:

* Platform managing tokenized assets provides loan-related information about various tokenized assets: tAssetX, price 100 CURR, max loan duration 6 months, max loan percentage 30% tAs- setY, price 200 CURR, max loan duration 3 months, max loan percentage 20% tAssetZ, price 500 CURR, max loan duration 1 year, max loan percentage 40%
* Additionally, the platform provides a guarantee to its guaranty pool, let’s say 100,000 CURR. Any owner of listed assets can take a loan in sCCY, providing them as collateral as long as the guaranty pool has free funds.

Let’s say user A gets a 10,000-sCCY loan for one year providing 40 tAssetZ as collateral. It is possible because (40\*500 CURR)\*50%=10,000 CURR is within the provided risk parameters, and there is also enough free assets in the guaranty pool (100,000 sCCY). The 10,000 sCCY will be allocated as the guarantee for the loan in the guaranty pool, and the 10,000 sCCY are newly minted.

Other users are further able to get the loan from the protocol as long as there are enough free funds in the guaranty pool.

User A is obliged to pay their debt, including a fee (let’s say 10%), back within a year, 11,000 sCCY in that case. If they do so, the user gets their illiquid collateral back, the 10,000 sCCY are burned and the 1,000 sCCY provided as fees are distributed between protocol and the guaranty provider.

If the user A does not pay their loan back, the guarantee provider gets the collateral - the 10,000 sCCY allocated in the guaranty pool are burned. The guarantor may also be forced to pay the liquidation penalty before getting the collateral back.
