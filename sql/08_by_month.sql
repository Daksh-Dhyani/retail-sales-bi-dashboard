SELECT
    SUBSTR("Order Date", 6, 2) AS month,
    ROUND(SUM(Sales), 2) AS sales,
    ROUND(SUM(Profit), 2) AS profit
FROM orders
GROUP BY month
ORDER BY month;