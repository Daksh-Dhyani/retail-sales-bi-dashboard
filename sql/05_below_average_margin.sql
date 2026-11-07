SELECT
    "Sub-Category" AS sub_category,
    ROUND(SUM(Sales), 2) AS sales,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS margin_pct
FROM orders
GROUP BY "Sub-Category"
HAVING SUM(Profit) / SUM(Sales) < (SELECT SUM(Profit) / SUM(Sales) FROM orders)
ORDER BY margin_pct;