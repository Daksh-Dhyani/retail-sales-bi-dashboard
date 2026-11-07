# EDA Findings

All figures come from data/superstore_clean.csv (9,994 rows, 2014-2017),
calculated in notebooks/02_eda.ipynb.

## Headline numbers
- Total sales: 2,297,200.86
- Total profit: 286,397.02 (margin 12.47%)
- Unique orders: 5,009 | Average order value: 458.61

## Findings supported by the data
1. Sales dipped slightly in 2015, then grew in 2016 and 2017.
   Orders rose every year (969 to 1,687).
2. Technology and Office Supplies have margins of about 17%.
   Furniture has 2.49%.
3. Furniture's weak margin comes from Tables (-17,725 profit)
   and Bookcases (-3,473). Chairs and Furnishings are profitable.
4. Store-wide, profit turns negative above a 20% discount:
   0% discount: +320,988 | 1-20%: +100,785 |
   21-40%: -35,817 | over 40%: -99,559.
   Rows discounted above 20% lose about 135,000 in total.
5. West has the best margin (14.94%). Central has the worst (7.92%)
   and the heaviest discounting (24.0% average, 27.7% of rows above 20%).
6. Sales peak in September, November and December, and are lowest
   in January and February (4 years combined).

## Theory tested and NOT supported
- Hypothesis: November's low margin (10.06%) is caused by heavier discounting.
- Result: average discount is almost flat across months (14.6% to 16.5%),
  and April and October have the same discount (16.3%) but very different
  margins (8.41% vs 15.87%). Another factor is at work; not yet investigated.

## Limitations
- Association is not proof of cause: heavy discounts coincide with losses,
  but other factors (product mix, shipping cost) are not in this dataset.
- Only 4 years of data, from a sample dataset rather than a real company.