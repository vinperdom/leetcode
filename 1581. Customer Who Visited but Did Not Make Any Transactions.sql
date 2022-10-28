SELECT
    *,
    count(customer_id) AS count_no_trans
FROM
    (
        SELECT visits.customer_id
        FROM
            visits
        LEFT JOIN
            transactions ON visits.visit_id = transactions.visit_id
        WHERE transaction_id IS NULL
    ) AS t
GROUP BY customer_id;
