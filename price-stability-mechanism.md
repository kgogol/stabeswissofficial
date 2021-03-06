# Price Stability Mechanism

## Risk Management

The DAO - SSN token holders decide on all of the following Risk Parameters for each type of the collateral:

* Creation fee Initially paid by the creator.
* Stability Fee Calculated daily, accrued by the creator at the time of creation and paid typically at the end of the loan period or earlier.
* Liquidation fee Paid by the creator in case the collateral needs to be liquidated.
* Duration time of the loan Maximum time before the loan needs to be paid back. If exceeded the collateral may be liquidated at any time without notice.
* Liquidation Level If the coverage level of collateral against CHF falls under the liquidation level, the collateral will be liquidated.
* Emergency liquidation level If the overall coverage level (for collateral of all creators) falls under that level, the collateral of all creators which falls under that level will be liquidated. After the liquidation, any sources left, after the deduction of all fees, are return to the creator.
* Reserve Pool level Desired amount of sources in the reserve pool.
* Surplus level Amount of sources of in the Reserve Pool which trigger Surplus auctions. It must be higher then ‘Reserve Pool level’.

#### Stability Pool

In case of liquidation, liquidated collateral is transferred to the stability pool. A corresponding amount of sCCY will be burned in such a case. For Example: Collateral covers only 108% of the loan of 1000 sCCY and the liquidation level is set to 110%. The Collateral is transferred to the Stability Pool and redistributed proportionally among its participants. 1000 sCCY is burned in the stability pool. Stability pool participants earn a gain of 8%. Anybody can provide sCCY into the stability pool.

#### Collateral Auctions

If no sources are found in the stability pool, the collateral will be sold on an auction against sCCY. sCCY bought at the auction will be burned. In case of volatile collateral, it shall first be exchanged to a “reserve” less volatile collateral like DAI or aUSD. It’s the reserve collateral which will be sold on an auction. Introduction of reserve currency significantly reduces the stress level of the protocol in case of a price drop.

#### Reserve Pool

All gains and revenues generated by the protocol are transferred to the Reserve Pool. In the case that sources from Collateral Auctions do not cover the whole debt calculated in sCCY missing sCCY coins shall be removed and burned from the Reserve Pool. SSN holders define the minimal level of the stability Pool, for example 10%. If there are no enough sources in the Reserve Pool, any crypto-users can stake their sCCY coins for a specified period of time. The incentive is the interest rates paid in the governance token SSN. For Example: Desired level of the Reserve Pool is set to 10%. The Amount of sCCY in circulation is 1 million and the amount in of sCCY in the Reserve Pool is 8 million. Stakers are invited to put 2 million of sCCY into the Reserve Pool for a period of 1 week with interest rates of 30% p.a. paid in the SSN token.

#### Debt Auctions

If debt has been generated and it can not be covered with sources from the Reserve Pool, debt auctions are triggered where bidders compete with decreasing “amount requests” of SSN. SSN are newly minted in such a case and so that the value of exiting SSN tokens is decreasing. SSN holders want to avoid such a situation and are trying to provide the whole system with risk parameters which provide stability.

#### Surplus Actions

All profits generated by the protocol are booked in the Reserve Pool. If the amount of sources in the Reserve Pool exceed a level defined by the SSN holders, for example 15%, surplus auctions are triggered wherein Bidders compete with increasing amounts of SSN for sCCYs earned by the protocol. SSN bought during the auction are burned, and so the value of outstanding SSN tokens is increasing. SSN holders profit from the decrease of SSN token in circulation.

#### Quantitative Measures

The values of risk parameters for each collateral type are to be set by the DAO. The decision will be supported by the quantitative measure of risk of each collateral type. The following Quantitative Measures will be calculated:

Definition 5.1 (Value At Risk). Let X be a profit and loss distribution (loss negative and profit positive). The VaR at level α ∈ (0, 1) is the smallest number y such that the probability that Y := −X does not exceed y is at least 1 − α. Mathematically,

V aRα (X ) = − inf 􏰃x ∈ R : FX (x) > α􏰄 = F −1 (1 − α).

Definition 5.2 (Expected Shortfall). If X ∈ Lp(F) (an Lp space) is the payoff of a portfolio at some future time and 0 < α < 1 then we define the expected shortfall as

1􏰅α

ESα(X) = −α

VaRγ(X)dγ where VaRγ is the value at risk.

In practice, the 95% VaR corresponds to the loss value y, for which there is 95% probability that the loss will be less then y; or equivalently, there is 5% probability that the loss is grater then y. In the event of so severe losses, which occur less then (1−α)% of the time, the average loss is ESα(X). Informally, for a given portfolio, time horizon, and probability p, the p VaR can be defined as the maximum possible loss during that time after excluding all worse outcomes whose combined probability is at most p. The expected shortfall at q% level is the expected return on the portfolio in the worst q% of cases.

Those measures allow better understanding of the overall risk of the protocol. In the case of significant price drops of the underlying collateral, there is a risk that emergency vault liquidations is triggered. It can potentially cause losses to the protocol in case of not adequate resources in the Stability and Reserve Pools combined with not adequate liquidation auctions. Quantitative Measures such as Value At Risk or Expected Shortfall are to be monitored in relation to Stability and Reserve Pool levels. The more resources in the Stability and Reserve pool, the smaller the risk of Protocol generating losses is. Active monitoring and publishing of those parameters will create transparency to all protocol participants and help establish proactive actions by the Stability Advisory Committee.

For Example, in case of significant price drops of the collateral, causing unfavourable development of risk measures, the Stability Advisory Committee shall propose extension of Reserve Pool or shall make the Stability Pool more attractive for the participants. In such scenario, the risk measures are adjusted to the acceptable level.
