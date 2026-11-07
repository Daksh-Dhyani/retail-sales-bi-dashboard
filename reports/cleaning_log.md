# Data Cleaning Log

Raw file: data/superstore_raw.csv (never edited)
Clean file: data/superstore_clean.csv

## Checks performed
| Check | Result | Action |
|---|---|---|
| Missing values | None in any of 21 columns | None needed |
| Duplicate rows | 0 | None needed |
| Order Date / Ship Date type | Stored as text | Converted to datetime (format month/day/year) |
| Ship Date earlier than Order Date | 0 rows | None needed |
| Shipping time | 0 to 7 days | Added column "Days to Ship" |
| Discount range | 0 to 0.8 | None needed |
| Quantity range | 1 to 14 | None needed |
| Sales and Profit outliers | Max sale 22,638; min profit -6,599.98 | Kept. Looks like real business events; to be investigated in EDA |

## Notes
- Date range of the data: 2014-01-03 to 2017-12-30
- Rows: 9,994 | Columns: 22 (21 original + Days to Ship)
- Postal Code is stored as a number but treated as an ID