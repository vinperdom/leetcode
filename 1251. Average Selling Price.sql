SELECT
    prices.product_id,
    ROUND(SUM(units * price) / SUM(units), 2) AS average_price
FROM
    prices
INNER JOIN
    unitssold ON prices.product_id = unitssold.product_id
WHERE
    purchase_date >= start_date AND purchase_date <= end_date
GROUP BY prices.product_id;
