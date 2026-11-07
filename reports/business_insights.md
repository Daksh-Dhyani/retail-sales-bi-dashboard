# Business Insights & Recommendations

Based on the Superstore dataset (2014-2017) analysed in Python, SQL and Power BI.
Each insight separates what the data shows (observation) from what is only a
possible explanation (assumption).

## Executive summary
The business earns a healthy overall margin (12.47%) but loses money on
deeply discounted sales. Discount policy, not demand, is the clearest lever
for improving profit.

## Insight 1: Growth is real, and profit grew faster than sales
- Observation: Sales were about 484K in 2014, dipped to about 471K in 2015,
  then rose to about 609K (2016) and 733K (2017). Orders rose every year
  (969 to 1,687).
- Observation: Profit grew from about 49.5K (2014) to about 93.4K (2017).
- Evidence: Power BI yearly table, notebooks/02_eda.ipynb.

## Insight 2: Discounts above 20% destroy profit
- Observation: Profit by discount level: 0% = +320,988; 1-20% = +100,785;
  21-40% = -35,817; over 40% = -99,559. Rows discounted above 20% lose
  about 135,000 in total.
- Evidence: Discount bands table in 02_eda.ipynb.
- Assumption (not proven): heavy discounts push prices below cost. The
  dataset has no cost column, so this cannot be confirmed.
- Recommendation: Cap routine discounts at 20% and require approval above it.

## Insight 3: Furniture is weak because of Tables and Bookcases
- Observation: Furniture margin is 2.49%, versus about 17% for Technology and
  Office Supplies. Tables lose 17,725 and Bookcases lose 3,473 in profit.
  Chairs and Furnishings are profitable.
- Observation: Tables earn +13,276 at 0% discount (72 rows) but lose money in
  every discounted band. The 122 rows discounted 40% or more lose about 27,296.
- Recommendation: Review the discount policy for Tables and Bookcases first.
  Check pricing and supplier cost before cutting the products.

## Insight 4: Central region has a discount problem
- Observation: West has the best margin (14.94%). Central has the worst
  (7.92%) and the heaviest discounting (24.0% average, 27.7% of rows above
  20% discount).
- Assumption (not proven): Central's low margin is largely caused by its
  discounting. Other factors may contribute.
- Recommendation: Review how discounts are approved in Central.

## Insight 5: Sales are seasonal
- Observation: Sales peak in September, November and December and are lowest
  in January and February (4 years combined).
- Recommendation: Plan stock and staffing ahead of the September-December period.

## Hypothesis tested and not supported
- Idea: November's low margin (10.06%) comes from heavier discounting.
- Result: Average discount is almost flat across months (14.6% to 16.5%).
  April and October have the same discount (16.3%) but very different margins
  (8.41% vs 15.87%).
- Conclusion: Something else drives monthly margin. This is not yet
  investigated.

## Limitations
- Association is not proof of cause. Product mix and shipping cost are not in
  this dataset.
- Only 4 years of data, from a sample dataset rather than a real company.
- No cost column, so loss-making sales cannot be explained by cost.