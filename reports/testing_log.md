# Testing & Quality Checks Log

## Data quality (notebooks/03_quality_checks.ipynb)
| Check | Result |
|---|---|
| Missing values | 0 |
| Duplicate rows | 0 |
| Duplicate Row IDs | 0 |
| Sales <= 0 | 0 |
| Quantity <= 0 | 0 |
| Discount outside 0-1 | 0 |
| Shipped before ordered | 0 |

## Totals cross-checked across tools
| Measure | Python | SQL | Power BI |
|---|---|---|---|
| Total sales | 2,297,200.86 | matches | matches |
| Total profit | 286,397.02 | matches | matches |
| Unique orders | 5,009 | matches | matches |
| Profit margin | 12.47% | matches | matches |

## Region cross-check (Python vs Power BI cards)
| Region | Sales | Profit | Orders | Margin |
|---|---|---|---|---|
| Central | 501,239.89 | 39,706.36 | 1,175 | 7.92% |
| East | 678,781.24 | 91,522.78 | 1,401 | 13.48% |
| South | 391,721.90 | 46,749.43 | 822 | 11.93% |
| West | 725,457.82 | 108,418.45 | 1,611 | 14.94% |
Regional orders add up to 5,009 and regional sales and profit add up to the totals.

## Dashboard interaction tests
- Clicking a region updates the cards, the monthly line chart and the
  sub-category chart.
- Clicking a sub-category updates the cards.
- The year slicer filters every visual.
- Combining a year and a region filters correctly.

## Known issues
- Power BI shows Total Orders as 5.01K on the card (not 5,009) and as 822.00
  when a filter leaves fewer than 1,000 orders. This is a display setting of the
  card, not a data error. The exact value is on the Validations page.
- Indian digit grouping (for example 22,97,201) appears in some tables. The
  values are the same.