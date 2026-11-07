SELECT
    c.customer_name,
    c.segment,
    COUNT(DISTINCT o."Order ID") AS orders,
    ROUND(SUM(o.Sales), 2) AS sales,
    ROUND(SUM(o.Profit), 2) AS profit
FROM orders AS o
JOIN customers AS c ON o."Customer ID" = c.customer_id
GROUP BY c.customer_id, c.customer_name, c.segment
ORDER BY sales DESC
LIMIT 10;