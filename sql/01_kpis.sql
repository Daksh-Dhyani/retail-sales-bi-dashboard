SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM(Sales) / COUNT(DISTINCT "Order ID"), 2) AS avg_order_value
FROM orders;