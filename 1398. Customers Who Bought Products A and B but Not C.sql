SELECT
    customers.customer_id,
    customers.customer_name
FROM
    customers
INNER JOIN
    orders ON customers.customer_id = orders.customer_id
WHERE
    customers.customer_id = orders.customer_id
GROUP BY
    customers.customer_id
HAVING
    sum(
        CASE WHEN orders.product_name = 'A' THEN 1 ELSE 0 END
    ) > 0 AND sum(
        CASE WHEN orders.product_name = 'B' THEN 1 ELSE 0 END
    ) > 0 AND sum( CASE WHEN orders.product_name = 'C' THEN 1 ELSE 0 END) = 0
ORDER BY customer_id;
