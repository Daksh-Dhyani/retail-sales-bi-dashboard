SELECT COUNT(*) AS joined_rows
FROM orders AS o
JOIN customers AS c ON o."Customer ID" = c.customer_id;