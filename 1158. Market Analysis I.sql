SELECT
    user_id AS buyer_id,
    join_date,
    COUNT(order_id) AS orders_in_2019
FROM
    users
LEFT JOIN
    orders ON users.user_id = orders.buyer_id AND YEAR(order_date) = 2019
GROUP BY user_id;
