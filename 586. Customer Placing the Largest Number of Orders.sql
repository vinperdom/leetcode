SELECT customer_number
FROM orders GROUP BY customer_number ORDER BY count(order_number) DESC LIMIT 1;
