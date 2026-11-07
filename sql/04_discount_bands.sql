SELECT
    CASE
        WHEN Discount = 0 THEN '0%'
        WHEN Discount <= 0.2 THEN '1-20%'
        WHEN Discount <= 0.4 THEN '21-40%'
        ELSE 'Over 40%'
    END AS discount_band,
    COUNT(*) AS row_count,
    ROUND(SUM(Sales), 2) AS sales,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS margin_pct
FROM orders
GROUP BY discount_band
ORDER BY MIN(Discount);