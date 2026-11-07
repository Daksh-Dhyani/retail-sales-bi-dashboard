SELECT
    SUBSTR("Order Date", 1, 4) AS year,
    ROUND(SUM(Sales), 2) AS sales,
    ROUND(SUM(Profit), 2) AS profit,
    COUNT(DISTINCT "Order ID") AS orders
FROM orders
GROUP BY year
ORDER BY year;