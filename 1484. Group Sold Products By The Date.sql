SELECT
    sell_date,
    (COUNT(sell_date ) ) AS num_sold,
    GROUP_CONCAT(product ORDER BY product) AS products
FROM (SELECT DISTINCT
    sell_date,
    product
    FROM activities) AS activities GROUP BY sell_date;
